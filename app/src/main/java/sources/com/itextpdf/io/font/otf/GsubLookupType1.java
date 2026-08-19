package com.itextpdf.io.font.otf;

import com.itextpdf.io.util.IntHashtable;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class GsubLookupType1 extends OpenTableLookup {
    private IntHashtable substMap;

    public GsubLookupType1(OpenTypeFontTableReader openTypeFontTableReader, int i, int[] iArr) throws IOException {
        super(openTypeFontTableReader, i, iArr);
        this.substMap = new IntHashtable();
        readSubTables();
    }

    @Override // com.itextpdf.io.font.otf.OpenTableLookup
    public boolean transformOne(GlyphLine glyphLine) {
        int i;
        boolean z = false;
        if (glyphLine.idx >= glyphLine.end) {
            return false;
        }
        Glyph glyph = glyphLine.get(glyphLine.idx);
        if (!this.openReader.isSkip(glyph.getCode(), this.lookupFlag) && (i = this.substMap.get(glyph.getCode())) != 0 && i != glyph.getCode()) {
            glyphLine.substituteOneToOne(this.openReader, i);
            z = true;
        }
        glyphLine.idx++;
        return z;
    }

    @Override // com.itextpdf.io.font.otf.OpenTableLookup
    protected void readSubTable(int i) throws IOException {
        this.openReader.rf.seek(i);
        short s = this.openReader.rf.readShort();
        if (s == 1) {
            int unsignedShort = this.openReader.rf.readUnsignedShort();
            short s2 = this.openReader.rf.readShort();
            Iterator<Integer> it = this.openReader.readCoverageFormat(i + unsignedShort).iterator();
            while (it.hasNext()) {
                int iIntValue = it.next().intValue();
                this.substMap.put(iIntValue, iIntValue + s2);
            }
            return;
        }
        if (s == 2) {
            int unsignedShort2 = this.openReader.rf.readUnsignedShort();
            int unsignedShort3 = this.openReader.rf.readUnsignedShort();
            int[] iArr = new int[unsignedShort3];
            for (int i2 = 0; i2 < unsignedShort3; i2++) {
                iArr[i2] = this.openReader.rf.readUnsignedShort();
            }
            List<Integer> coverageFormat = this.openReader.readCoverageFormat(i + unsignedShort2);
            for (int i3 = 0; i3 < unsignedShort3; i3++) {
                this.substMap.put(coverageFormat.get(i3).intValue(), iArr[i3]);
            }
            return;
        }
        throw new IllegalArgumentException("Bad substFormat: " + ((int) s));
    }

    @Override // com.itextpdf.io.font.otf.OpenTableLookup
    public boolean hasSubstitution(int i) {
        return this.substMap.containsKey(i);
    }
}
