package com.itextpdf.p017io.font.otf;

import com.itextpdf.p017io.font.otf.OpenTableLookup;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class GposLookupType4 extends OpenTableLookup {
    private final List<MarkToBase> marksbases;

    public static class MarkToBase {
        public final Map<Integer, OtfMarkRecord> marks = new HashMap();
        public final Map<Integer, GposAnchor[]> bases = new HashMap();
    }

    public GposLookupType4(OpenTypeFontTableReader openTypeFontTableReader, int i, int[] iArr) throws IOException {
        super(openTypeFontTableReader, i, iArr);
        this.marksbases = new ArrayList();
        readSubTables();
    }

    @Override // com.itextpdf.p017io.font.otf.OpenTableLookup
    public boolean transformOne(GlyphLine glyphLine) {
        int i;
        boolean z = false;
        z = false;
        int i2 = 0;
        if (glyphLine.idx >= glyphLine.end) {
            return false;
        }
        if (this.openReader.isSkip(glyphLine.get(glyphLine.idx).getCode(), this.lookupFlag)) {
            glyphLine.idx++;
            return false;
        }
        Iterator<MarkToBase> it = this.marksbases.iterator();
        OpenTableLookup.GlyphIndexer glyphIndexer = null;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            MarkToBase next = it.next();
            OtfMarkRecord otfMarkRecord = next.marks.get(Integer.valueOf(glyphLine.get(glyphLine.idx).getCode()));
            if (otfMarkRecord != null) {
                if (glyphIndexer == null) {
                    OpenTableLookup.GlyphIndexer glyphIndexer2 = new OpenTableLookup.GlyphIndexer();
                    glyphIndexer2.idx = glyphLine.idx;
                    glyphIndexer2.line = glyphLine;
                    do {
                        glyphIndexer2.previousGlyph(this.openReader, this.lookupFlag);
                        if (glyphIndexer2.glyph == null) {
                            break;
                        }
                    } while (this.openReader.getGlyphClass(glyphIndexer2.glyph.getCode()) == 3);
                    if (glyphIndexer2.glyph == null) {
                        break;
                    }
                    glyphIndexer = glyphIndexer2;
                }
                GposAnchor[] gposAnchorArr = next.bases.get(Integer.valueOf(glyphIndexer.glyph.getCode()));
                if (gposAnchorArr != null) {
                    GposAnchor gposAnchor = gposAnchorArr[otfMarkRecord.markClass];
                    if (gposAnchor != null) {
                        i2 = gposAnchor.XCoordinate;
                        i = gposAnchor.YCoordinate;
                    } else {
                        i = 0;
                    }
                    GposAnchor gposAnchor2 = otfMarkRecord.anchor;
                    if (gposAnchor2 != null) {
                        i2 -= gposAnchor2.XCoordinate;
                        i -= gposAnchor2.YCoordinate;
                    }
                    glyphLine.set(glyphLine.idx, new Glyph(glyphLine.get(glyphLine.idx), i2, i, 0, 0, glyphIndexer.idx - glyphLine.idx));
                    z = true;
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
        MarkToBase markToBase = new MarkToBase();
        for (int i2 = 0; i2 < coverageFormat.size(); i2++) {
            markToBase.marks.put(coverageFormat.get(i2), markArray.get(i2));
        }
        List<GposAnchor[]> baseArray = OtfReadCommon.readBaseArray(this.openReader, unsignedShort3, unsignedShort5);
        for (int i3 = 0; i3 < coverageFormat2.size(); i3++) {
            markToBase.bases.put(coverageFormat2.get(i3), baseArray.get(i3));
        }
        this.marksbases.add(markToBase);
    }
}
