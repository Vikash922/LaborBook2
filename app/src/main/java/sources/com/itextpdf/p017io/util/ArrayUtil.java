package com.itextpdf.p017io.util;

import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class ArrayUtil {
    private ArrayUtil() {
    }

    public static byte[] shortenArray(byte[] bArr, int i) {
        if (i >= bArr.length) {
            return bArr;
        }
        byte[] bArr2 = new byte[i];
        System.arraycopy(bArr, 0, bArr2, 0, i);
        return bArr2;
    }

    public static int[] toIntArray(Collection<Integer> collection) {
        int[] iArr = new int[collection.size()];
        Iterator<Integer> it = collection.iterator();
        int i = 0;
        while (it.hasNext()) {
            iArr[i] = it.next().intValue();
            i++;
        }
        return iArr;
    }

    public static int hashCode(byte[] bArr) {
        if (bArr == null) {
            return 0;
        }
        int i = 1;
        for (byte b : bArr) {
            i = (i * 31) + b;
        }
        return i;
    }

    public static int[] fillWithValue(int[] iArr, int i) {
        for (int i2 = 0; i2 < iArr.length; i2++) {
            iArr[i2] = i;
        }
        return iArr;
    }

    public static float[] fillWithValue(float[] fArr, float f) {
        for (int i = 0; i < fArr.length; i++) {
            fArr[i] = f;
        }
        return fArr;
    }

    public static <T> void fillWithValue(T[] tArr, T t) {
        for (int i = 0; i < tArr.length; i++) {
            tArr[i] = t;
        }
    }

    public static int[] cloneArray(int[] iArr) {
        return (int[]) iArr.clone();
    }

    public static int indexOf(Object[] objArr, Object obj) {
        for (int i = 0; i < objArr.length; i++) {
            if (objArr[i].equals(obj)) {
                return i;
            }
        }
        return -1;
    }
}
