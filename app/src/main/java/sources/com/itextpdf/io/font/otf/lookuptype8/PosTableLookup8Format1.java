package com.itextpdf.io.font.otf.lookuptype8;

import com.itextpdf.io.font.otf.ChainingContextualTable;
import com.itextpdf.io.font.otf.ContextualPositionRule;
import com.itextpdf.io.font.otf.OpenTypeFontTableReader;
import com.itextpdf.io.font.otf.PosLookupRecord;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class PosTableLookup8Format1 extends ChainingContextualTable<ContextualPositionRule> {
    private Map<Integer, List<ContextualPositionRule>> posMap;

    public PosTableLookup8Format1(OpenTypeFontTableReader openTypeFontTableReader, int i, Map<Integer, List<ContextualPositionRule>> map) {
        super(openTypeFontTableReader, i);
        this.posMap = map;
    }

    @Override // com.itextpdf.io.font.otf.ContextualTable
    protected List<ContextualPositionRule> getSetOfRulesForStartGlyph(int i) {
        if (this.posMap.containsKey(Integer.valueOf(i)) && !this.openReader.isSkip(i, this.lookupFlag)) {
            return this.posMap.get(Integer.valueOf(i));
        }
        return Collections.emptyList();
    }

    public static class PosRuleFormat1 extends ContextualPositionRule {
        private static final long serialVersionUID = 2777822503157518715L;
        private int[] backtrackGlyphIds;
        private int[] inputGlyphIds;
        private int[] lookAheadGlyphIds;
        private PosLookupRecord[] posLookupRecords;

        public PosRuleFormat1(int[] iArr, int[] iArr2, int[] iArr3, PosLookupRecord[] posLookupRecordArr) {
            this.backtrackGlyphIds = iArr;
            this.inputGlyphIds = iArr2;
            this.lookAheadGlyphIds = iArr3;
            this.posLookupRecords = posLookupRecordArr;
        }

        @Override // com.itextpdf.io.font.otf.ContextualRule
        public int getContextLength() {
            return this.inputGlyphIds.length + 1;
        }

        @Override // com.itextpdf.io.font.otf.ContextualRule
        public int getLookaheadContextLength() {
            return this.lookAheadGlyphIds.length;
        }

        @Override // com.itextpdf.io.font.otf.ContextualRule
        public int getBacktrackContextLength() {
            return this.backtrackGlyphIds.length;
        }

        @Override // com.itextpdf.io.font.otf.ContextualPositionRule
        public PosLookupRecord[] getPosLookupRecords() {
            return this.posLookupRecords;
        }

        @Override // com.itextpdf.io.font.otf.ContextualRule
        public boolean isGlyphMatchesInput(int i, int i2) {
            return i == this.inputGlyphIds[i2 - 1];
        }

        @Override // com.itextpdf.io.font.otf.ContextualRule
        public boolean isGlyphMatchesLookahead(int i, int i2) {
            return i == this.lookAheadGlyphIds[i2];
        }

        @Override // com.itextpdf.io.font.otf.ContextualRule
        public boolean isGlyphMatchesBacktrack(int i, int i2) {
            return i == this.backtrackGlyphIds[i2];
        }
    }
}
