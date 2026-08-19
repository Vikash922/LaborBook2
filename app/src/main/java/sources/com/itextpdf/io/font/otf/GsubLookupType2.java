package com.itextpdf.io.font.otf;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class GsubLookupType2 extends OpenTableLookup {
    private Map<Integer, int[]> substMap;

    public GsubLookupType2(OpenTypeFontTableReader openTypeFontTableReader, int i, int[] iArr) throws IOException {
        super(openTypeFontTableReader, i, iArr);
        this.substMap = new HashMap();
        readSubTables();
    }

    @Override // com.itextpdf.io.font.otf.OpenTableLookup
    public boolean transformOne(GlyphLine glyphLine) {
        int[] iArr;
        boolean z = false;
        if (glyphLine.idx >= glyphLine.end) {
            return false;
        }
        Glyph glyph = glyphLine.get(glyphLine.idx);
        if (!this.openReader.isSkip(glyph.getCode(), this.lookupFlag) && (iArr = this.substMap.get(Integer.valueOf(glyph.getCode()))) != null && iArr.length > 0) {
            glyphLine.substituteOneToMany(this.openReader, iArr);
            z = true;
        }
        glyphLine.idx++;
        return z;
    }

    @Override // com.itextpdf.io.font.otf.OpenTableLookup
    protected void readSubTable(int i) throws IOException {
        this.openReader.rf.seek(i);
        int unsignedShort = this.openReader.rf.readUnsignedShort();
        if (unsignedShort == 1) {
            int unsignedShort2 = this.openReader.rf.readUnsignedShort();
            int unsignedShort3 = this.openReader.rf.readUnsignedShort();
            int[] uShortArray = this.openReader.readUShortArray(unsignedShort3, i);
            List<Integer> coverageFormat = this.openReader.readCoverageFormat(i + unsignedShort2);
            for (int i2 = 0; i2 < unsignedShort3; i2++) {
                this.openReader.rf.seek(uShortArray[i2]);
                this.substMap.put(coverageFormat.get(i2), this.openReader.readUShortArray(this.openReader.rf.readUnsignedShort()));
            }
            return;
        }
        throw new IllegalArgumentException("Bad substFormat: " + unsignedShort);
    }

    @Override // com.itextpdf.io.font.otf.OpenTableLookup
    public boolean hasSubstitution(int i) {
        return this.substMap.containsKey(Integer.valueOf(i));
    }
}
