package com.itextpdf.p017io.font.cmap;

import com.itextpdf.p017io.logs.IoLogMessageConstant;
import com.itextpdf.p017io.util.IntHashtable;
import com.itextpdf.p017io.util.TextUtil;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class CMapToUnicode extends AbstractCMap {
    public static CMapToUnicode EmptyCMapToUnicodeMap = new CMapToUnicode(true);
    private Map<Integer, char[]> byteMappings;

    private CMapToUnicode(boolean z) {
        this.byteMappings = Collections.emptyMap();
    }

    public CMapToUnicode() {
        this.byteMappings = new HashMap();
    }

    public static CMapToUnicode getIdentity() {
        CMapToUnicode cMapToUnicode = new CMapToUnicode();
        for (int i = 0; i < 65537; i++) {
            cMapToUnicode.addChar(i, TextUtil.convertFromUtf32(i));
        }
        return cMapToUnicode;
    }

    public boolean hasByteMappings() {
        return this.byteMappings.size() != 0;
    }

    public char[] lookup(byte[] bArr, int i, int i2) {
        if (i2 == 1) {
            return this.byteMappings.get(Integer.valueOf(bArr[i] & 255));
        }
        if (i2 != 2) {
            return null;
        }
        return this.byteMappings.get(Integer.valueOf(((bArr[i] & 255) << 8) + (bArr[i + 1] & 255)));
    }

    public char[] lookup(byte[] bArr) {
        return lookup(bArr, 0, bArr.length);
    }

    public char[] lookup(int i) {
        return this.byteMappings.get(Integer.valueOf(i));
    }

    public Set<Integer> getCodes() {
        return this.byteMappings.keySet();
    }

    public IntHashtable createDirectMapping() {
        IntHashtable intHashtable = new IntHashtable();
        for (Map.Entry<Integer, char[]> entry : this.byteMappings.entrySet()) {
            if (entry.getValue().length == 1) {
                intHashtable.put(entry.getKey().intValue(), convertToInt(entry.getValue()));
            }
        }
        return intHashtable;
    }

    public Map<Integer, Integer> createReverseMapping() {
        HashMap map = new HashMap();
        for (Map.Entry<Integer, char[]> entry : this.byteMappings.entrySet()) {
            if (entry.getValue().length == 1) {
                map.put(Integer.valueOf(convertToInt(entry.getValue())), entry.getKey());
            }
        }
        return map;
    }

    private int convertToInt(char[] cArr) {
        int i = 0;
        for (int i2 = 0; i2 < cArr.length - 1; i2++) {
            i = (i + cArr[i2]) << 8;
        }
        return i + cArr[cArr.length - 1];
    }

    void addChar(int i, char[] cArr) {
        this.byteMappings.put(Integer.valueOf(i), cArr);
    }

    @Override // com.itextpdf.p017io.font.cmap.AbstractCMap
    void addChar(String str, CMapObject cMapObject) {
        if (str.length() == 1) {
            this.byteMappings.put(Integer.valueOf(str.charAt(0)), createCharsFromDoubleBytes((byte[]) cMapObject.getValue()));
        } else if (str.length() == 2) {
            this.byteMappings.put(Integer.valueOf((str.charAt(0) << '\b') + str.charAt(1)), createCharsFromDoubleBytes((byte[]) cMapObject.getValue()));
        } else {
            LoggerFactory.getLogger((Class<?>) CMapToUnicode.class).warn(IoLogMessageConstant.TOUNICODE_CMAP_MORE_THAN_2_BYTES_NOT_SUPPORTED);
        }
    }

    private char[] createCharsFromSingleBytes(byte[] bArr) {
        if (bArr.length == 1) {
            return new char[]{(char) (bArr[0] & 255)};
        }
        char[] cArr = new char[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            cArr[i] = (char) (bArr[i] & 255);
        }
        return cArr;
    }

    private char[] createCharsFromDoubleBytes(byte[] bArr) {
        char[] cArr = new char[bArr.length / 2];
        for (int i = 0; i < bArr.length; i += 2) {
            cArr[i / 2] = (char) (((bArr[i] & 255) << 8) + (bArr[i + 1] & 255));
        }
        return cArr;
    }
}
