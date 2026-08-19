package com.itextpdf.io.font.otf.lookuptype6;

import com.itextpdf.io.font.otf.ChainingContextualTable;
import com.itextpdf.io.font.otf.ContextualSubstRule;
import com.itextpdf.io.font.otf.OpenTypeFontTableReader;
import com.itextpdf.io.font.otf.OtfClass;
import com.itextpdf.io.font.otf.SubstLookupRecord;
import java.util.Collections;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public class SubTableLookup6Format2 extends ChainingContextualTable<ContextualSubstRule> {
    private OtfClass backtrackClassDefinition;
    private OtfClass inputClassDefinition;
    private OtfClass lookaheadClassDefinition;
    private List<List<ContextualSubstRule>> subClassSets;
    private Set<Integer> substCoverageGlyphIds;

    public SubTableLookup6Format2(OpenTypeFontTableReader openTypeFontTableReader, int i, Set<Integer> set, OtfClass otfClass, OtfClass otfClass2, OtfClass otfClass3) {
        super(openTypeFontTableReader, i);
        this.substCoverageGlyphIds = set;
        this.backtrackClassDefinition = otfClass;
        this.inputClassDefinition = otfClass2;
        this.lookaheadClassDefinition = otfClass3;
    }

    public void setSubClassSets(List<List<ContextualSubstRule>> list) {
        this.subClassSets = list;
    }

    @Override // com.itextpdf.io.font.otf.ContextualTable
    protected List<ContextualSubstRule> getSetOfRulesForStartGlyph(int i) {
        if (this.substCoverageGlyphIds.contains(Integer.valueOf(i)) && !this.openReader.isSkip(i, this.lookupFlag)) {
            return this.subClassSets.get(this.inputClassDefinition.getOtfClass(i));
        }
        return Collections.emptyList();
    }

    public static class SubstRuleFormat2 extends ContextualSubstRule {
        private int[] backtrackClassIds;
        private int[] inputClassIds;
        private int[] lookAheadClassIds;
        private SubTableLookup6Format2 subTable;
        private SubstLookupRecord[] substLookupRecords;

        public SubstRuleFormat2(SubTableLookup6Format2 subTableLookup6Format2, int[] iArr, int[] iArr2, int[] iArr3, SubstLookupRecord[] substLookupRecordArr) {
            this.subTable = subTableLookup6Format2;
            this.backtrackClassIds = iArr;
            this.inputClassIds = iArr2;
            this.lookAheadClassIds = iArr3;
            this.substLookupRecords = substLookupRecordArr;
        }

        @Override // com.itextpdf.io.font.otf.ContextualRule
        public int getContextLength() {
            return this.inputClassIds.length + 1;
        }

        @Override // com.itextpdf.io.font.otf.ContextualRule
        public int getLookaheadContextLength() {
            return this.lookAheadClassIds.length;
        }

        @Override // com.itextpdf.io.font.otf.ContextualRule
        public int getBacktrackContextLength() {
            return this.backtrackClassIds.length;
        }

        @Override // com.itextpdf.io.font.otf.ContextualSubstRule
        public SubstLookupRecord[] getSubstLookupRecords() {
            return this.substLookupRecords;
        }

        @Override // com.itextpdf.io.font.otf.ContextualRule
        public boolean isGlyphMatchesInput(int i, int i2) {
            return this.subTable.inputClassDefinition.getOtfClass(i) == this.inputClassIds[i2 - 1];
        }

        @Override // com.itextpdf.io.font.otf.ContextualRule
        public boolean isGlyphMatchesLookahead(int i, int i2) {
            return this.subTable.lookaheadClassDefinition.getOtfClass(i) == this.lookAheadClassIds[i2];
        }

        @Override // com.itextpdf.io.font.otf.ContextualRule
        public boolean isGlyphMatchesBacktrack(int i, int i2) {
            return this.subTable.backtrackClassDefinition.getOtfClass(i) == this.backtrackClassIds[i2];
        }
    }
}
