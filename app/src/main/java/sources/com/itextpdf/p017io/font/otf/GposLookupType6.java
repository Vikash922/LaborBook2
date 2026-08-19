package com.itextpdf.p017io.font.otf;

import com.itextpdf.p017io.font.otf.OpenTableLookup;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class GposLookupType6 extends OpenTableLookup {
    private final List<MarkToBaseMark> marksbases;

    public GposLookupType6(OpenTypeFontTableReader openTypeFontTableReader, int i, int[] iArr) throws IOException {
        super(openTypeFontTableReader, i, iArr);
        this.marksbases = new ArrayList();
        readSubTables();
    }

    @Override // com.itextpdf.p017io.font.otf.OpenTableLookup
    public boolean transformOne(GlyphLine glyphLine) {
        boolean z = false;
        if (glyphLine.idx >= glyphLine.end) {
            return false;
        }
        if (this.openReader.isSkip(glyphLine.get(glyphLine.idx).getCode(), this.lookupFlag)) {
            glyphLine.idx++;
            return false;
        }
        Iterator<MarkToBaseMark> it = this.marksbases.iterator();
        OpenTableLookup.GlyphIndexer glyphIndexer = null;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            MarkToBaseMark next = it.next();
            OtfMarkRecord otfMarkRecord = next.marks.get(Integer.valueOf(glyphLine.get(glyphLine.idx).getCode()));
            if (otfMarkRecord != null) {
                if (glyphIndexer == null) {
                    OpenTableLookup.GlyphIndexer glyphIndexer2 = new OpenTableLookup.GlyphIndexer();
                    glyphIndexer2.idx = glyphLine.idx;
                    glyphIndexer2.line = glyphLine;
                    while (true) {
                        int i = glyphIndexer2.idx;
                        glyphIndexer2.previousGlyph(this.openReader, this.lookupFlag);
                        if (glyphIndexer2.idx != -1) {
                            for (int i2 = glyphIndexer2.idx; i2 < i; i2++) {
                                if (this.openReader.getGlyphClass(glyphLine.get(i2).getCode()) == 1) {
                                    glyphIndexer2.glyph = null;
                                    break;
                                }
                            }
                        }
                        if (glyphIndexer2.glyph == null || next.baseMarks.containsKey(Integer.valueOf(glyphIndexer2.glyph.getCode()))) {
                            break;
                        }
                    }
                    if (glyphIndexer2.glyph == null) {
                        break;
                    }
                    glyphIndexer = glyphIndexer2;
                }
                GposAnchor[] gposAnchorArr = next.baseMarks.get(Integer.valueOf(glyphIndexer.glyph.getCode()));
                if (gposAnchorArr != null) {
                    GposAnchor gposAnchor = gposAnchorArr[otfMarkRecord.markClass];
                    GposAnchor gposAnchor2 = otfMarkRecord.anchor;
                    glyphLine.set(glyphLine.idx, new Glyph(glyphLine.get(glyphLine.idx), gposAnchor.XCoordinate + (-gposAnchor2.XCoordinate), (-gposAnchor2.YCoordinate) + gposAnchor.YCoordinate, 0, 0, glyphIndexer.idx - glyphLine.idx));
                    z = true;
                    break;
                }
            }
        }
        glyphLine.idx++;
        return z;
    }

    @Override // com.itextpdf.p017io.font.otf.OpenTableLookup
    protected void readSubTable(int i) throws IOException {
        this.openReader.f2875rf.seek(i);
        this.openReader.f2875rf.readUnsignedShort();
        int unsignedShort = this.openReader.f2875rf.readUnsignedShort() + i;
        int unsignedShort2 = this.openReader.f2875rf.readUnsignedShort() + i;
        int unsignedShort3 = this.openReader.f2875rf.readUnsignedShort();
        int unsignedShort4 = this.openReader.f2875rf.readUnsignedShort() + i;
        int unsignedShort5 = this.openReader.f2875rf.readUnsignedShort() + i;
        List<Integer> coverageFormat = this.openReader.readCoverageFormat(unsignedShort);
        List<Integer> coverageFormat2 = this.openReader.readCoverageFormat(unsignedShort2);
        List<OtfMarkRecord> markArray = OtfReadCommon.readMarkArray(this.openReader, unsignedShort4);
        MarkToBaseMark markToBaseMark = new MarkToBaseMark();
        for (int i2 = 0; i2 < coverageFormat.size(); i2++) {
            markToBaseMark.marks.put(coverageFormat.get(i2), markArray.get(i2));
        }
        List<GposAnchor[]> baseArray = OtfReadCommon.readBaseArray(this.openReader, unsignedShort3, unsignedShort5);
        for (int i3 = 0; i3 < coverageFormat2.size(); i3++) {
            markToBaseMark.baseMarks.put(coverageFormat2.get(i3), baseArray.get(i3));
        }
        this.marksbases.add(markToBaseMark);
    }

    private static class MarkToBaseMark {
        public final Map<Integer, GposAnchor[]> baseMarks;
        public final Map<Integer, OtfMarkRecord> marks;

        private MarkToBaseMark() {
            this.marks = new HashMap();
            this.baseMarks = new HashMap();
        }
    }
}
