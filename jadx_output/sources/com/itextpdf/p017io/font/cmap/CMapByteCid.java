package com.itextpdf.p017io.font.cmap;

import com.itextpdf.p017io.exceptions.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class CMapByteCid extends AbstractCMap {
    private List<int[]> planes;

    protected static class Cursor {
        public int length;
        public int offset;

        public Cursor(int i, int i2) {
            this.offset = i;
            this.length = i2;
        }
    }

    public CMapByteCid() {
        ArrayList arrayList = new ArrayList();
        this.planes = arrayList;
        arrayList.add(new int[256]);
    }

    @Override // com.itextpdf.p017io.font.cmap.AbstractCMap
    void addChar(String str, CMapObject cMapObject) {
        if (cMapObject.isNumber()) {
            encodeSequence(decodeStringToByte(str), ((Integer) cMapObject.getValue()).intValue());
        }
    }

    public String decodeSequence(byte[] bArr, int i, int i2) {
        StringBuilder sb = new StringBuilder();
        Cursor cursor = new Cursor(i, i2);
        while (true) {
            int iDecodeSingle = decodeSingle(bArr, cursor);
            if (iDecodeSingle >= 0) {
                sb.append((char) iDecodeSingle);
            } else {
                return sb.toString();
            }
        }
    }

    protected int decodeSingle(byte[] bArr, Cursor cursor) {
        int i = cursor.offset + cursor.length;
        int i2 = 0;
        while (cursor.offset < i) {
            int i3 = cursor.offset;
            cursor.offset = i3 + 1;
            cursor.length--;
            int i4 = this.planes.get(i2)[bArr[i3] & 255];
            if ((32768 & i4) == 0) {
                return i4;
            }
            i2 = i4 & 32767;
        }
        return -1;
    }

    private void encodeSequence(byte[] bArr, int i) {
        int length = bArr.length - 1;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            int[] iArr = this.planes.get(i2);
            int i4 = bArr[i3] & 255;
            int size = iArr[i4];
            if (size != 0 && (size & 32768) == 0) {
                throw new IOException("Inconsistent mapping.");
            }
            if (size == 0) {
                this.planes.add(new int[256]);
                size = (this.planes.size() - 1) | 32768;
                iArr[i4] = size;
            }
            i2 = size & 32767;
        }
        int[] iArr2 = this.planes.get(i2);
        int i5 = bArr[length] & 255;
        if ((iArr2[i5] & 32768) != 0) {
            throw new IOException("Inconsistent mapping.");
        }
        iArr2[i5] = i;
    }
}
