package com.itextpdf.p017io.font.otf;

import com.itextpdf.p017io.font.otf.OpenTableLookup;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class GposLookupType5 extends OpenTableLookup {
    private final List<MarkToLigature> marksligatures;

    public static class MarkToLigature {
        public final Map<Integer, OtfMarkRecord> marks = new HashMap();
        public final Map<Integer, List<GposAnchor[]>> ligatures = new HashMap();
    }

    public GposLookupType5(OpenTypeFontTableReader openTypeFontTableReader, int i, int[] iArr) throws IOException {
        super(openTypeFontTableReader, i, iArr);
        this.marksligatures = new ArrayList();
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
        Iterator<MarkToLigature> it = this.marksligatures.iterator();
        OpenTableLookup.GlyphIndexer glyphIndexer = null;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            MarkToLigature next = it.next();
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
                    } while (next.marks.containsKey(Integer.valueOf(glyphIndexer2.glyph.getCode())));
                    if (glyphIndexer2.glyph == null) {
                        break;
                    }
                    glyphIndexer = glyphIndexer2;
                }
                List<GposAnchor[]> list = next.ligatures.get(Integer.valueOf(glyphIndexer.glyph.getCode()));
                if (list != null) {
                    int i = otfMarkRecord.markClass;
                    int size = list.size() - 1;
                    while (true) {
                        if (size < 0) {
                            break;
                        }
                        if (list.get(size)[i] != null) {
                            GposAnchor gposAnchor = list.get(size)[i];
                            GposAnchor gposAnchor2 = otfMarkRecord.anchor;
                            glyphLine.set(glyphLine.idx, new Glyph(glyphLine.get(glyphLine.idx), gposAnchor.XCoordinate - gposAnchor2.XCoordinate, gposAnchor.YCoordinate - gposAnchor2.YCoordinate, 0, 0, glyphIndexer.idx - glyphLine.idx));
                            z = true;
                            break;
                        }
                        size--;
                    }
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
        MarkToLigature markToLigature = new MarkToLigature();
        for (int i2 = 0; i2 < coverageFormat.size(); i2++) {
            markToLigature.marks.put(coverageFormat.get(i2), markArray.get(i2));
        }
        List<List<GposAnchor[]>> ligatureArray = OtfReadCommon.readLigatureArray(this.openReader, unsignedShort3, unsignedShort5);
        for (int i3 = 0; i3 < coverageFormat2.size(); i3++) {
            markToLigature.ligatures.put(coverageFormat2.get(i3), ligatureArray.get(i3));
        }
        this.marksligatures.add(markToLigature);
    }
}
