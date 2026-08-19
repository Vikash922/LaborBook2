package com.itextpdf.p017io.font.cmap;

import com.facebook.internal.NativeProtocol;
import com.itextpdf.p017io.util.IntHashtable;
import com.itextpdf.p017io.util.TextUtil;

/* JADX INFO: loaded from: classes6.dex */
public class CMapUniCid extends AbstractCMap {
    private IntHashtable map = new IntHashtable(NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REPLY);

    @Override // com.itextpdf.p017io.font.cmap.AbstractCMap
    void addChar(String str, CMapObject cMapObject) {
        int iCharAt;
        if (cMapObject.isNumber()) {
            String unicodeString = toUnicodeString(str, true);
            if (TextUtil.isSurrogatePair(unicodeString, 0)) {
                iCharAt = TextUtil.convertToUtf32(unicodeString, 0);
            } else {
                iCharAt = unicodeString.charAt(0);
            }
            this.map.put(iCharAt, ((Integer) cMapObject.getValue()).intValue());
        }
    }

    public int lookup(int i) {
        return this.map.get(i);
    }

    public CMapToUnicode exportToUnicode() {
        CMapToUnicode cMapToUnicode = new CMapToUnicode();
        for (int i : this.map.toOrderedKeys()) {
            cMapToUnicode.addChar(this.map.get(i), TextUtil.convertFromUtf32(i));
        }
        int iLookup = lookup(32);
        if (iLookup != 0) {
            cMapToUnicode.addChar(iLookup, TextUtil.convertFromUtf32(32));
        }
        return cMapToUnicode;
    }
}
