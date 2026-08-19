package com.itextpdf.p017io.font.otf.lookuptype5;

import com.itextpdf.p017io.font.otf.ContextualSubstRule;
import com.itextpdf.p017io.font.otf.ContextualTable;
import com.itextpdf.p017io.font.otf.OpenTypeFontTableReader;
import com.itextpdf.p017io.font.otf.SubstLookupRecord;
import java.util.Collections;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public class SubTableLookup5Format3 extends ContextualTable<ContextualSubstRule> {
    ContextualSubstRule substitutionRule;

    public SubTableLookup5Format3(OpenTypeFontTableReader openTypeFontTableReader, int i, SubstRuleFormat3 substRuleFormat3) {
        super(openTypeFontTableReader, i);
        this.substitutionRule = substRuleFormat3;
    }

    @Override // com.itextpdf.p017io.font.otf.ContextualTable
    protected List<ContextualSubstRule> getSetOfRulesForStartGlyph(int i) {
        if (((SubstRuleFormat3) this.substitutionRule).coverages.get(0).contains(Integer.valueOf(i)) && !this.openReader.isSkip(i, this.lookupFlag)) {
            return Collections.singletonList(this.substitutionRule);
        }
        return Collections.emptyList();
    }

    public static class SubstRuleFormat3 extends ContextualSubstRule {
        List<Set<Integer>> coverages;
        SubstLookupRecord[] substLookupRecords;

        public SubstRuleFormat3(List<Set<Integer>> list, SubstLookupRecord[] substLookupRecordArr) {
            this.coverages = list;
            this.substLookupRecords = substLookupRecordArr;
        }

        @Override // com.itextpdf.p017io.font.otf.ContextualRule
        public int getContextLength() {
            return this.coverages.size();
        }

        @Override // com.itextpdf.p017io.font.otf.ContextualSubstRule
        public SubstLookupRecord[] getSubstLookupRecords() {
            return this.substLookupRecords;
        }

        @Override // com.itextpdf.p017io.font.otf.ContextualRule
        public boolean isGlyphMatchesInput(int i, int i2) {
            return this.coverages.get(i2).contains(Integer.valueOf(i));
        }
    }
}
