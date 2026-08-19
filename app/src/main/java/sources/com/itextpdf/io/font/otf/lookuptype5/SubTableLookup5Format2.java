package com.itextpdf.io.font.otf.lookuptype5;

import com.itextpdf.io.font.otf.ContextualSubstRule;
import com.itextpdf.io.font.otf.ContextualTable;
import com.itextpdf.io.font.otf.OpenTypeFontTableReader;
import com.itextpdf.io.font.otf.OtfClass;
import com.itextpdf.io.font.otf.SubstLookupRecord;
import java.util.Collections;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public class SubTableLookup5Format2 extends ContextualTable<ContextualSubstRule> {
    private OtfClass classDefinition;
    private List<List<ContextualSubstRule>> subClassSets;
    private Set<Integer> substCoverageGlyphIds;

    public SubTableLookup5Format2(OpenTypeFontTableReader openTypeFontTableReader, int i, Set<Integer> set, OtfClass otfClass) {
        super(openTypeFontTableReader, i);
        this.substCoverageGlyphIds = set;
        this.classDefinition = otfClass;
    }

    public void setSubClassSets(List<List<ContextualSubstRule>> list) {
        this.subClassSets = list;
    }

    @Override // com.itextpdf.io.font.otf.ContextualTable
    protected List<ContextualSubstRule> getSetOfRulesForStartGlyph(int i) {
        if (this.substCoverageGlyphIds.contains(Integer.valueOf(i)) && !this.openReader.isSkip(i, this.lookupFlag)) {
            return this.subClassSets.get(this.classDefinition.getOtfClass(i));
        }
        return Collections.emptyList();
    }

    public static class SubstRuleFormat2 extends ContextualSubstRule {
        private OtfClass classDefinition;
        private int[] inputClassIds;
        private SubstLookupRecord[] substLookupRecords;

        public SubstRuleFormat2(SubTableLookup5Format2 subTableLookup5Format2, int[] iArr, SubstLookupRecord[] substLookupRecordArr) {
            this.inputClassIds = iArr;
            this.substLookupRecords = substLookupRecordArr;
            this.classDefinition = subTableLookup5Format2.classDefinition;
        }

        @Override // com.itextpdf.io.font.otf.ContextualRule
        public int getContextLength() {
            return this.inputClassIds.length + 1;
        }

        @Override // com.itextpdf.io.font.otf.ContextualSubstRule
        public SubstLookupRecord[] getSubstLookupRecords() {
            return this.substLookupRecords;
        }

        @Override // com.itextpdf.io.font.otf.ContextualRule
        public boolean isGlyphMatchesInput(int i, int i2) {
            return this.classDefinition.getOtfClass(i) == this.inputClassIds[i2 - 1];
        }
    }
}
