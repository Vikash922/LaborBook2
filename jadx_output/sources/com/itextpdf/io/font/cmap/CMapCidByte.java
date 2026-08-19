package com.itextpdf.io.font.cmap;

import com.itextpdf.io.util.IntHashtable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class CMapCidByte extends AbstractCMap {
    private Map<Integer, byte[]> map = new HashMap();
    private final byte[] EMPTY = new byte[0];
    private List<byte[]> codeSpaceRanges = new ArrayList();

    @Override // com.itextpdf.io.font.cmap.AbstractCMap
    void addChar(String str, CMapObject cMapObject) {
        if (cMapObject.isNumber()) {
            this.map.put(Integer.valueOf(((Integer) cMapObject.getValue()).intValue()), decodeStringToByte(str));
        }
    }

    public byte[] lookup(int i) {
        byte[] bArr = this.map.get(Integer.valueOf(i));
        return bArr == null ? this.EMPTY : bArr;
    }

    public IntHashtable getReversMap() {
        IntHashtable intHashtable = new IntHashtable(this.map.size());
        Iterator<Integer> it = this.map.keySet().iterator();
        while (it.hasNext()) {
            int iIntValue = it.next().intValue();
            int i = 0;
            for (byte b : this.map.get(Integer.valueOf(iIntValue))) {
                i = (i << 8) + (b & 255);
            }
            intHashtable.put(i, iIntValue);
        }
        return intHashtable;
    }

    public List<byte[]> getCodeSpaceRanges() {
        return this.codeSpaceRanges;
    }

    @Override // com.itextpdf.io.font.cmap.AbstractCMap
    void addCodeSpaceRange(byte[] bArr, byte[] bArr2) {
        this.codeSpaceRanges.add(bArr);
        this.codeSpaceRanges.add(bArr2);
    }
}
