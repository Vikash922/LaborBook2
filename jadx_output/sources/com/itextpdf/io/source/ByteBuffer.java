package com.itextpdf.io.source;

import com.google.common.base.Ascii;
import com.itextpdf.commons.utils.MessageFormatUtil;

/* JADX INFO: loaded from: classes6.dex */
public class ByteBuffer {
    private static final byte[] bytes = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};
    private byte[] buffer;
    protected int count;

    public static int getHex(int i) {
        if (i >= 48 && i <= 57) {
            return i - 48;
        }
        if (i >= 65 && i <= 70) {
            return i - 55;
        }
        if (i < 97 || i > 102) {
            return -1;
        }
        return i - 87;
    }

    public ByteBuffer() {
        this(128);
    }

    public ByteBuffer(int i) {
        this.buffer = new byte[i < 1 ? 128 : i];
    }

    public ByteBuffer append(byte b) {
        int i = this.count + 1;
        byte[] bArr = this.buffer;
        if (i > bArr.length) {
            byte[] bArr2 = new byte[Math.max(bArr.length << 1, i)];
            System.arraycopy(this.buffer, 0, bArr2, 0, this.count);
            this.buffer = bArr2;
        }
        this.buffer[this.count] = b;
        this.count = i;
        return this;
    }

    public ByteBuffer append(byte[] bArr, int i, int i2) {
        int i3;
        if (i >= 0 && i <= bArr.length && i2 >= 0 && (i3 = i + i2) <= bArr.length && i3 >= 0 && i2 != 0) {
            int i4 = this.count + i2;
            byte[] bArr2 = this.buffer;
            if (i4 > bArr2.length) {
                byte[] bArr3 = new byte[Math.max(bArr2.length << 1, i4)];
                System.arraycopy(this.buffer, 0, bArr3, 0, this.count);
                this.buffer = bArr3;
            }
            System.arraycopy(bArr, i, this.buffer, this.count, i2);
            this.count = i4;
        }
        return this;
    }

    public ByteBuffer append(byte[] bArr) {
        return append(bArr, 0, bArr.length);
    }

    public ByteBuffer append(int i) {
        return append((byte) i);
    }

    public ByteBuffer append(String str) {
        return append(ByteUtils.getIsoBytes(str));
    }

    public ByteBuffer appendHex(byte b) {
        byte[] bArr = bytes;
        append(bArr[(b >> 4) & 15]);
        return append(bArr[b & Ascii.SI]);
    }

    public byte get(int i) {
        if (i >= this.count) {
            throw new IndexOutOfBoundsException(MessageFormatUtil.format("Index: {0}, Size: {1}", Integer.valueOf(i), Integer.valueOf(this.count)));
        }
        return this.buffer[i];
    }

    public byte[] getInternalBuffer() {
        return this.buffer;
    }

    public int size() {
        return this.count;
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    public int capacity() {
        return this.buffer.length;
    }

    public ByteBuffer reset() {
        this.count = 0;
        return this;
    }

    public byte[] toByteArray(int i, int i2) {
        byte[] bArr = new byte[i2];
        System.arraycopy(this.buffer, i, bArr, 0, i2);
        return bArr;
    }

    public byte[] toByteArray() {
        return toByteArray(0, this.count);
    }

    public boolean startsWith(byte[] bArr) {
        if (size() < bArr.length) {
            return false;
        }
        for (int i = 0; i < bArr.length; i++) {
            if (this.buffer[i] != bArr[i]) {
                return false;
            }
        }
        return true;
    }

    ByteBuffer prepend(byte b) {
        byte[] bArr = this.buffer;
        int length = bArr.length;
        int i = this.count;
        bArr[(length - i) - 1] = b;
        this.count = i + 1;
        return this;
    }

    ByteBuffer prepend(byte[] bArr) {
        byte[] bArr2 = this.buffer;
        System.arraycopy(bArr, 0, bArr2, (bArr2.length - this.count) - bArr.length, bArr.length);
        this.count += bArr.length;
        return this;
    }
}
