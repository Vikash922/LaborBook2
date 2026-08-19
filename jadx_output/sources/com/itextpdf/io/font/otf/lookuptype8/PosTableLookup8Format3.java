package com.itextpdf.io.font.otf.lookuptype8;

import com.itextpdf.io.font.otf.ChainingContextualTable;
import com.itextpdf.io.font.otf.ContextualPositionRule;
import com.itextpdf.io.font.otf.OpenTypeFontTableReader;
import com.itextpdf.io.font.otf.PosLookupRecord;
import java.util.Collections;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public class PosTableLookup8Format3 extends ChainingContextualTable<ContextualPositionRule> {
    private PosRuleFormat3 posRule;

    public PosTableLookup8Format3(OpenTypeFontTableReader openTypeFontTableReader, int i, PosRuleFormat3 posRuleFormat3) {
        super(openTypeFontTableReader, i);
        this.posRule = posRuleFormat3;
    }

    @Override // com.itextpdf.io.font.otf.ContextualTable
    protected List<ContextualPositionRule> getSetOfRulesForStartGlyph(int i) {
        if (this.posRule.getInputCoverage(0).contains(Integer.valueOf(i)) && !this.openReader.isSkip(i, this.lookupFlag)) {
            return Collections.singletonList(this.posRule);
        }
        return Collections.emptyList();
    }

    public static class PosRuleFormat3 extends ContextualPositionRule {
        private List<Set<Integer>> backtrackCoverages;
        private List<Set<Integer>> inputCoverages;
        private List<Set<Integer>> lookaheadCoverages;
        private PosLookupRecord[] posLookupRecords;

        public PosRuleFormat3(List<Set<Integer>> list, List<Set<Integer>> list2, List<Set<Integer>> list3, PosLookupRecord[] posLookupRecordArr) {
            this.backtrackCoverages = list;
            this.inputCoverages = list2;
            this.lookaheadCoverages = list3;
            this.posLookupRecords = posLookupRecordArr;
        }

        @Override // com.itextpdf.io.font.otf.ContextualPositionRule
        public PosLookupRecord[] getPosLookupRecords() {
            return this.posLookupRecords;
        }

        @Override // com.itextpdf.io.font.otf.ContextualRule
        public int getContextLength() {
            return this.inputCoverages.size();
        }

        public Set<Integer> getInputCoverage(int i) {
            return this.inputCoverages.get(i);
        }

        @Override // com.itextpdf.io.font.otf.ContextualRule
        public boolean isGlyphMatchesInput(int i, int i2) {
            return getInputCoverage(i2).contains(Integer.valueOf(i));
        }

        @Override // com.itextpdf.io.font.otf.ContextualRule
        public int getLookaheadContextLength() {
            return this.lookaheadCoverages.size();
        }

        @Override // com.itextpdf.io.font.otf.ContextualRule
        public boolean isGlyphMatchesLookahead(int i, int i2) {
            return this.lookaheadCoverages.get(i2).contains(Integer.valueOf(i));
        }

        @Override // com.itextpdf.io.font.otf.ContextualRule
        public int getBacktrackContextLength() {
            return this.backtrackCoverages.size();
        }

        @Override // com.itextpdf.io.font.otf.ContextualRule
        public boolean isGlyphMatchesBacktrack(int i, int i2) {
            return this.backtrackCoverages.get(i2).contains(Integer.valueOf(i));
        }
    }
}
