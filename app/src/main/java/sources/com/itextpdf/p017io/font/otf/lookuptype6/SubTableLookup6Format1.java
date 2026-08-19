package com.itextpdf.p017io.font.otf.lookuptype6;

import com.itextpdf.p017io.font.otf.ChainingContextualTable;
import com.itextpdf.p017io.font.otf.ContextualSubstRule;
import com.itextpdf.p017io.font.otf.OpenTypeFontTableReader;
import com.itextpdf.p017io.font.otf.SubstLookupRecord;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class SubTableLookup6Format1 extends ChainingContextualTable<ContextualSubstRule> {
    private Map<Integer, List<ContextualSubstRule>> substMap;

    public SubTableLookup6Format1(OpenTypeFontTableReader openTypeFontTableReader, int i, Map<Integer, List<ContextualSubstRule>> map) {
        super(openTypeFontTableReader, i);
        this.substMap = map;
    }

    @Override // com.itextpdf.p017io.font.otf.ContextualTable
    protected List<ContextualSubstRule> getSetOfRulesForStartGlyph(int i) {
        if (this.substMap.containsKey(Integer.valueOf(i)) && !this.openReader.isSkip(i, this.lookupFlag)) {
            return this.substMap.get(Integer.valueOf(i));
        }
        return Collections.emptyList();
    }

    public static class SubstRuleFormat1 extends ContextualSubstRule {
        private int[] backtrackGlyphIds;
        private int[] inputGlyphIds;
        private int[] lookAheadGlyphIds;
        private SubstLookupRecord[] substLookupRecords;

        public SubstRuleFormat1(int[] iArr, int[] iArr2, int[] iArr3, SubstLookupRecord[] substLookupRecordArr) {
            this.backtrackGlyphIds = iArr;
            this.inputGlyphIds = iArr2;
            this.lookAheadGlyphIds = iArr3;
            this.substLookupRecords = substLookupRecordArr;
        }

        @Override // com.itextpdf.p017io.font.otf.ContextualRule
        public int getContextLength() {
            return this.inputGlyphIds.length + 1;
        }

        @Override // com.itextpdf.p017io.font.otf.ContextualRule
        public int getLookaheadContextLength() {
            return this.lookAheadGlyphIds.length;
        }

        @Override // com.itextpdf.p017io.font.otf.ContextualRule
        public int getBacktrackContextLength() {
            return this.backtrackGlyphIds.length;
        }

        @Override // com.itextpdf.p017io.font.otf.ContextualSubstRule
        public SubstLookupRecord[] getSubstLookupRecords() {
            return this.substLookupRecords;
        }

        @Override // com.itextpdf.p017io.font.otf.ContextualRule
        public boolean isGlyphMatchesInput(int i, int i2) {
            return i == this.inputGlyphIds[i2 - 1];
        }

        @Override // com.itextpdf.p017io.font.otf.ContextualRule
        public boolean isGlyphMatchesLookahead(int i, int i2) {
            return i == this.lookAheadGlyphIds[i2];
        }

        @Override // com.itextpdf.p017io.font.otf.ContextualRule
        public boolean isGlyphMatchesBacktrack(int i, int i2) {
            return i == this.backtrackGlyphIds[i2];
        }
    }
}
