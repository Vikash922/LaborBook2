package com.itextpdf.p017io.font.otf;

import com.itextpdf.p017io.font.otf.OpenTableLookup;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class GposLookupType2 extends OpenTableLookup {
    private List<OpenTableLookup> listRules;

    public GposLookupType2(OpenTypeFontTableReader openTypeFontTableReader, int i, int[] iArr) throws IOException {
        super(openTypeFontTableReader, i, iArr);
        this.listRules = new ArrayList();
        readSubTables();
    }

    @Override // com.itextpdf.p017io.font.otf.OpenTableLookup
    public boolean transformOne(GlyphLine glyphLine) {
        if (glyphLine.idx >= glyphLine.end) {
            return false;
        }
        if (this.openReader.isSkip(glyphLine.get(glyphLine.idx).getCode(), this.lookupFlag)) {
            glyphLine.idx++;
            return false;
        }
        Iterator<OpenTableLookup> it = this.listRules.iterator();
        while (it.hasNext()) {
            if (it.next().transformOne(glyphLine)) {
                return true;
            }
        }
        glyphLine.idx++;
        return false;
    }

    @Override // com.itextpdf.p017io.font.otf.OpenTableLookup
    protected void readSubTable(int i) throws IOException {
        this.openReader.f2875rf.seek(i);
        short s = this.openReader.f2875rf.readShort();
        if (s == 1) {
            this.listRules.add(new PairPosAdjustmentFormat1(this.openReader, this.lookupFlag, i));
        } else {
            if (s != 2) {
                return;
            }
            this.listRules.add(new PairPosAdjustmentFormat2(this.openReader, this.lookupFlag, i));
        }
    }

    private static class PairPosAdjustmentFormat1 extends OpenTableLookup {
        private Map<Integer, Map<Integer, PairValueFormat>> gposMap;

        @Override // com.itextpdf.p017io.font.otf.OpenTableLookup
        protected void readSubTable(int i) {
        }

        public PairPosAdjustmentFormat1(OpenTypeFontTableReader openTypeFontTableReader, int i, int i2) throws IOException {
            super(openTypeFontTableReader, i, null);
            this.gposMap = new HashMap();
            readFormat(i2);
        }

        @Override // com.itextpdf.p017io.font.otf.OpenTableLookup
        public boolean transformOne(GlyphLine glyphLine) {
            PairValueFormat pairValueFormat;
            if (glyphLine.idx >= glyphLine.end || glyphLine.idx < glyphLine.start) {
                return false;
            }
            Glyph glyph = glyphLine.get(glyphLine.idx);
            Map<Integer, PairValueFormat> map = this.gposMap.get(Integer.valueOf(glyph.getCode()));
            if (map == null) {
                return false;
            }
            OpenTableLookup.GlyphIndexer glyphIndexer = new OpenTableLookup.GlyphIndexer();
            glyphIndexer.line = glyphLine;
            glyphIndexer.idx = glyphLine.idx;
            glyphIndexer.nextGlyph(this.openReader, this.lookupFlag);
            if (glyphIndexer.glyph == null || (pairValueFormat = map.get(Integer.valueOf(glyphIndexer.glyph.getCode()))) == null) {
                return false;
            }
            Glyph glyph2 = glyphIndexer.glyph;
            glyphLine.set(glyphLine.idx, new Glyph(glyph, 0, 0, pairValueFormat.first.XAdvance, pairValueFormat.first.YAdvance, 0));
            glyphLine.set(glyphIndexer.idx, new Glyph(glyph2, 0, 0, pairValueFormat.second.XAdvance, pairValueFormat.second.YAdvance, 0));
            glyphLine.idx = glyphIndexer.idx;
            return true;
        }

        protected void readFormat(int i) throws IOException {
            int unsignedShort = this.openReader.f2875rf.readUnsignedShort() + i;
            int unsignedShort2 = this.openReader.f2875rf.readUnsignedShort();
            int unsignedShort3 = this.openReader.f2875rf.readUnsignedShort();
            int unsignedShort4 = this.openReader.f2875rf.readUnsignedShort();
            int[] uShortArray = this.openReader.readUShortArray(unsignedShort4, i);
            List<Integer> coverageFormat = this.openReader.readCoverageFormat(unsignedShort);
            for (int i2 = 0; i2 < unsignedShort4; i2++) {
                this.openReader.f2875rf.seek(uShortArray[i2]);
                HashMap map = new HashMap();
                this.gposMap.put(coverageFormat.get(i2), map);
                int unsignedShort5 = this.openReader.f2875rf.readUnsignedShort();
                for (int i3 = 0; i3 < unsignedShort5; i3++) {
                    int unsignedShort6 = this.openReader.f2875rf.readUnsignedShort();
                    PairValueFormat pairValueFormat = new PairValueFormat();
                    pairValueFormat.first = OtfReadCommon.readGposValueRecord(this.openReader, unsignedShort2);
                    pairValueFormat.second = OtfReadCommon.readGposValueRecord(this.openReader, unsignedShort3);
                    map.put(Integer.valueOf(unsignedShort6), pairValueFormat);
                }
            }
        }
    }

    private static class PairPosAdjustmentFormat2 extends OpenTableLookup {
        private OtfClass classDef1;
        private OtfClass classDef2;
        private HashSet<Integer> coverageSet;
        private Map<Integer, PairValueFormat[]> posSubs;

        @Override // com.itextpdf.p017io.font.otf.OpenTableLookup
        protected void readSubTable(int i) {
        }

        public PairPosAdjustmentFormat2(OpenTypeFontTableReader openTypeFontTableReader, int i, int i2) throws IOException {
            super(openTypeFontTableReader, i, null);
            this.posSubs = new HashMap();
            readFormat(i2);
        }

        @Override // com.itextpdf.p017io.font.otf.OpenTableLookup
        public boolean transformOne(GlyphLine glyphLine) {
            if (glyphLine.idx >= glyphLine.end || glyphLine.idx < glyphLine.start) {
                return false;
            }
            Glyph glyph = glyphLine.get(glyphLine.idx);
            if (!this.coverageSet.contains(Integer.valueOf(glyph.getCode()))) {
                return false;
            }
            PairValueFormat[] pairValueFormatArr = this.posSubs.get(Integer.valueOf(this.classDef1.getOtfClass(glyph.getCode())));
            if (pairValueFormatArr == null) {
                return false;
            }
            OpenTableLookup.GlyphIndexer glyphIndexer = new OpenTableLookup.GlyphIndexer();
            glyphIndexer.line = glyphLine;
            glyphIndexer.idx = glyphLine.idx;
            glyphIndexer.nextGlyph(this.openReader, this.lookupFlag);
            if (glyphIndexer.glyph == null) {
                return false;
            }
            Glyph glyph2 = glyphIndexer.glyph;
            int otfClass = this.classDef2.getOtfClass(glyph2.getCode());
            if (otfClass >= pairValueFormatArr.length) {
                return false;
            }
            PairValueFormat pairValueFormat = pairValueFormatArr[otfClass];
            glyphLine.set(glyphLine.idx, new Glyph(glyph, 0, 0, pairValueFormat.first.XAdvance, pairValueFormat.first.YAdvance, 0));
            glyphLine.set(glyphIndexer.idx, new Glyph(glyph2, 0, 0, pairValueFormat.second.XAdvance, pairValueFormat.second.YAdvance, 0));
            glyphLine.idx = glyphIndexer.idx;
            return true;
        }

        protected void readFormat(int i) throws IOException {
            int unsignedShort = this.openReader.f2875rf.readUnsignedShort() + i;
            int unsignedShort2 = this.openReader.f2875rf.readUnsignedShort();
            int unsignedShort3 = this.openReader.f2875rf.readUnsignedShort();
            int unsignedShort4 = this.openReader.f2875rf.readUnsignedShort() + i;
            int unsignedShort5 = this.openReader.f2875rf.readUnsignedShort() + i;
            int unsignedShort6 = this.openReader.f2875rf.readUnsignedShort();
            int unsignedShort7 = this.openReader.f2875rf.readUnsignedShort();
            for (int i2 = 0; i2 < unsignedShort6; i2++) {
                PairValueFormat[] pairValueFormatArr = new PairValueFormat[unsignedShort7];
                this.posSubs.put(Integer.valueOf(i2), pairValueFormatArr);
                for (int i3 = 0; i3 < unsignedShort7; i3++) {
                    PairValueFormat pairValueFormat = new PairValueFormat();
                    pairValueFormat.first = OtfReadCommon.readGposValueRecord(this.openReader, unsignedShort2);
                    pairValueFormat.second = OtfReadCommon.readGposValueRecord(this.openReader, unsignedShort3);
                    pairValueFormatArr[i3] = pairValueFormat;
                }
            }
            this.coverageSet = new HashSet<>(this.openReader.readCoverageFormat(unsignedShort));
            this.classDef1 = this.openReader.readClassDefinition(unsignedShort4);
            this.classDef2 = this.openReader.readClassDefinition(unsignedShort5);
        }
    }

    private static class PairValueFormat {
        public GposValueRecord first;
        public GposValueRecord second;

        private PairValueFormat() {
        }
    }
}
