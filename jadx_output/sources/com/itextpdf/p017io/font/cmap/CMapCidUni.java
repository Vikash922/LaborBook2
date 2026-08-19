package com.itextpdf.p017io.font.cmap;

import com.facebook.internal.NativeProtocol;
import com.itextpdf.p017io.util.IntHashtable;
import com.itextpdf.p017io.util.TextUtil;

/* JADX INFO: loaded from: classes6.dex */
public class CMapCidUni extends AbstractCMap {
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
            this.map.put(((Integer) cMapObject.getValue()).intValue(), iCharAt);
        }
    }

    public int lookup(int i) {
        return this.map.get(i);
    }

    public int[] getCids() {
        return this.map.getKeys();
    }
}
