package com.itextpdf.p017io.font.otf.lookuptype6;

import com.itextpdf.p017io.font.otf.ChainingContextualTable;
import com.itextpdf.p017io.font.otf.ContextualSubstRule;
import com.itextpdf.p017io.font.otf.OpenTypeFontTableReader;
import com.itextpdf.p017io.font.otf.SubstLookupRecord;
import java.util.Collections;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public class SubTableLookup6Format3 extends ChainingContextualTable<ContextualSubstRule> {
    ContextualSubstRule substitutionRule;

    public SubTableLookup6Format3(OpenTypeFontTableReader openTypeFontTableReader, int i, SubstRuleFormat3 substRuleFormat3) {
        super(openTypeFontTableReader, i);
        this.substitutionRule = substRuleFormat3;
    }

    @Override // com.itextpdf.p017io.font.otf.ContextualTable
    protected List<ContextualSubstRule> getSetOfRulesForStartGlyph(int i) {
        if (((SubstRuleFormat3) this.substitutionRule).inputCoverages.get(0).contains(Integer.valueOf(i)) && !this.openReader.isSkip(i, this.lookupFlag)) {
            return Collections.singletonList(this.substitutionRule);
        }
        return Collections.emptyList();
    }

    public static class SubstRuleFormat3 extends ContextualSubstRule {
        List<Set<Integer>> backtrackCoverages;
        List<Set<Integer>> inputCoverages;
        List<Set<Integer>> lookaheadCoverages;
        SubstLookupRecord[] substLookupRecords;

        public SubstRuleFormat3(List<Set<Integer>> list, List<Set<Integer>> list2, List<Set<Integer>> list3, SubstLookupRecord[] substLookupRecordArr) {
            this.backtrackCoverages = list;
            this.inputCoverages = list2;
            this.lookaheadCoverages = list3;
            this.substLookupRecords = substLookupRecordArr;
        }

        @Override // com.itextpdf.p017io.font.otf.ContextualRule
        public int getContextLength() {
            return this.inputCoverages.size();
        }

        @Override // com.itextpdf.p017io.font.otf.ContextualRule
        public int getLookaheadContextLength() {
            return this.lookaheadCoverages.size();
        }

        @Override // com.itextpdf.p017io.font.otf.ContextualRule
        public int getBacktrackContextLength() {
            return this.backtrackCoverages.size();
        }

        @Override // com.itextpdf.p017io.font.otf.ContextualSubstRule
        public SubstLookupRecord[] getSubstLookupRecords() {
            return this.substLookupRecords;
        }

        @Override // com.itextpdf.p017io.font.otf.ContextualRule
        public boolean isGlyphMatchesInput(int i, int i2) {
            return this.inputCoverages.get(i2).contains(Integer.valueOf(i));
        }

        @Override // com.itextpdf.p017io.font.otf.ContextualRule
        public boolean isGlyphMatchesLookahead(int i, int i2) {
            return this.lookaheadCoverages.get(i2).contains(Integer.valueOf(i));
        }

        @Override // com.itextpdf.p017io.font.otf.ContextualRule
        public boolean isGlyphMatchesBacktrack(int i, int i2) {
            return this.backtrackCoverages.get(i2).contains(Integer.valueOf(i));
        }
    }
}
