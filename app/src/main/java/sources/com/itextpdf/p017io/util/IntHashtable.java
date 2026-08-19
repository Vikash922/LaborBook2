package com.itextpdf.p017io.util;

import com.itextpdf.commons.utils.MessageFormatUtil;
import java.util.Arrays;
import org.objectweb.asm.Opcodes;

/* JADX INFO: loaded from: classes6.dex */
public class IntHashtable implements Cloneable {
    int count;
    private float loadFactor;
    private Entry[] table;
    private int threshold;

    public IntHashtable() {
        this(Opcodes.FCMPG, 0.75f);
    }

    public IntHashtable(int i) {
        this(i, 0.75f);
    }

    public IntHashtable(int i, float f) {
        if (i < 0) {
            throw new IllegalArgumentException(MessageFormatUtil.format("Illegal Capacity: {0}", Integer.valueOf(i)));
        }
        if (f <= 0.0f) {
            throw new IllegalArgumentException(MessageFormatUtil.format("Illegal Load: {0}", Float.valueOf(f)));
        }
        i = i == 0 ? 1 : i;
        this.loadFactor = f;
        this.table = new Entry[i];
        this.threshold = (int) (i * f);
    }

    public IntHashtable(IntHashtable intHashtable) {
        this(intHashtable.table.length, intHashtable.loadFactor);
    }

    public int size() {
        return this.count;
    }

    public boolean isEmpty() {
        return this.count == 0;
    }

    public boolean contains(int i) {
        Entry[] entryArr = this.table;
        int length = entryArr.length;
        while (true) {
            int i2 = length - 1;
            if (length <= 0) {
                return false;
            }
            for (Entry entry = entryArr[i2]; entry != null; entry = entry.next) {
                if (entry.value == i) {
                    return true;
                }
            }
            length = i2;
        }
    }

    public boolean containsValue(int i) {
        return contains(i);
    }

    public boolean containsKey(int i) {
        Entry[] entryArr = this.table;
        for (Entry entry = entryArr[(Integer.MAX_VALUE & i) % entryArr.length]; entry != null; entry = entry.next) {
            if (entry.key == i) {
                return true;
            }
        }
        return false;
    }

    public int get(int i) {
        Entry[] entryArr = this.table;
        for (Entry entry = entryArr[(Integer.MAX_VALUE & i) % entryArr.length]; entry != null; entry = entry.next) {
            if (entry.key == i) {
                return entry.value;
            }
        }
        return 0;
    }

    protected void rehash() {
        Entry[] entryArr = this.table;
        int length = entryArr.length;
        int i = (length * 2) + 1;
        Entry[] entryArr2 = new Entry[i];
        this.threshold = (int) (i * this.loadFactor);
        this.table = entryArr2;
        while (true) {
            int i2 = length - 1;
            if (length <= 0) {
                return;
            }
            Entry entry = entryArr[i2];
            while (entry != null) {
                Entry entry2 = entry.next;
                int i3 = (entry.key & Integer.MAX_VALUE) % i;
                entry.next = entryArr2[i3];
                entryArr2[i3] = entry;
                entry = entry2;
            }
            length = i2;
        }
    }

    public int put(int i, int i2) {
        Entry[] entryArr = this.table;
        int i3 = Integer.MAX_VALUE & i;
        int length = i3 % entryArr.length;
        for (Entry entry = entryArr[length]; entry != null; entry = entry.next) {
            if (entry.key == i) {
                int i4 = entry.value;
                entry.value = i2;
                return i4;
            }
        }
        if (this.count >= this.threshold) {
            rehash();
            entryArr = this.table;
            length = i3 % entryArr.length;
        }
        entryArr[length] = new Entry(i, i2, entryArr[length]);
        this.count++;
        return 0;
    }

    public int remove(int i) {
        Entry[] entryArr = this.table;
        int length = (Integer.MAX_VALUE & i) % entryArr.length;
        Entry entry = null;
        for (Entry entry2 = entryArr[length]; entry2 != null; entry2 = entry2.next) {
            if (entry2.key != i) {
                entry = entry2;
            } else {
                if (entry != null) {
                    entry.next = entry2.next;
                } else {
                    entryArr[length] = entry2.next;
                }
                this.count--;
                int i2 = entry2.value;
                entry2.value = 0;
                return i2;
            }
        }
        return 0;
    }

    public void clear() {
        Entry[] entryArr = this.table;
        int length = entryArr.length;
        while (true) {
            length--;
            if (length >= 0) {
                entryArr[length] = null;
            } else {
                this.count = 0;
                return;
            }
        }
    }

    public static class Entry {
        int key;
        Entry next;
        int value;

        Entry(int i, int i2, Entry entry) {
            this.key = i;
            this.value = i2;
            this.next = entry;
        }

        public int getKey() {
            return this.key;
        }

        public int getValue() {
            return this.value;
        }

        protected Object clone() {
            int i = this.key;
            int i2 = this.value;
            Entry entry = this.next;
            return new Entry(i, i2, entry != null ? (Entry) entry.clone() : null);
        }

        public String toString() {
            return MessageFormatUtil.format("{0}={1}", Integer.valueOf(this.key), Integer.valueOf(this.value));
        }
    }

    public int[] toOrderedKeys() {
        int[] keys = getKeys();
        Arrays.sort(keys);
        return keys;
    }

    public int[] getKeys() {
        int i;
        int[] iArr = new int[this.count];
        int length = this.table.length;
        int i2 = 0;
        Entry entry = null;
        while (true) {
            if (entry == null) {
                while (true) {
                    i = length - 1;
                    if (length <= 0 || (entry = this.table[i]) != null) {
                        break;
                    }
                    length = i;
                }
                length = i;
            }
            if (entry == null) {
                return iArr;
            }
            Entry entry2 = entry.next;
            iArr[i2] = entry.key;
            entry = entry2;
            i2++;
        }
    }

    public int getOneKey() {
        if (this.count == 0) {
            return 0;
        }
        int length = this.table.length;
        Entry entry = null;
        while (true) {
            int i = length - 1;
            if (length <= 0 || (entry = this.table[i]) != null) {
                break;
            }
            length = i;
        }
        if (entry == null) {
            return 0;
        }
        return entry.key;
    }

    public Object clone() {
        IntHashtable intHashtable = new IntHashtable(this);
        intHashtable.table = new Entry[this.table.length];
        int length = this.table.length;
        while (true) {
            int i = length - 1;
            if (length > 0) {
                Entry[] entryArr = intHashtable.table;
                Entry entry = this.table[i];
                entryArr[i] = entry != null ? (Entry) entry.clone() : null;
                length = i;
            } else {
                intHashtable.count = this.count;
                return intHashtable;
            }
        }
    }
}
