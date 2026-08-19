package com.itextpdf.io.font.otf;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class GsubLookupType3 extends OpenTableLookup {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private Map<Integer, int[]> substMap;

    public GsubLookupType3(OpenTypeFontTableReader openTypeFontTableReader, int i, int[] iArr) throws IOException {
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
        if (!this.openReader.isSkip(glyph.getCode(), this.lookupFlag) && (iArr = this.substMap.get(Integer.valueOf(glyph.getCode()))) != null && iArr[0] != glyph.getCode()) {
            glyphLine.substituteOneToOne(this.openReader, iArr[0]);
            z = true;
        }
        glyphLine.idx++;
        return z;
    }

    @Override // com.itextpdf.io.font.otf.OpenTableLookup
    protected void readSubTable(int i) throws IOException {
        this.openReader.rf.seek(i);
        this.openReader.rf.readShort();
        int unsignedShort = this.openReader.rf.readUnsignedShort();
        int unsignedShort2 = this.openReader.rf.readUnsignedShort();
        int[][] iArr = new int[unsignedShort2][];
        int[] uShortArray = this.openReader.readUShortArray(unsignedShort2, i);
        for (int i2 = 0; i2 < unsignedShort2; i2++) {
            this.openReader.rf.seek(uShortArray[i2]);
            iArr[i2] = this.openReader.readUShortArray(this.openReader.rf.readUnsignedShort());
        }
        List<Integer> coverageFormat = this.openReader.readCoverageFormat(i + unsignedShort);
        for (int i3 = 0; i3 < unsignedShort2; i3++) {
            this.substMap.put(coverageFormat.get(i3), iArr[i3]);
        }
    }

    @Override // com.itextpdf.io.font.otf.OpenTableLookup
    public boolean hasSubstitution(int i) {
        return this.substMap.containsKey(Integer.valueOf(i));
    }
}
