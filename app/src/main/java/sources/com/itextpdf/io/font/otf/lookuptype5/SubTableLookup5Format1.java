package com.itextpdf.io.font.otf.lookuptype5;

import com.itextpdf.io.font.otf.ContextualSubstRule;
import com.itextpdf.io.font.otf.ContextualTable;
import com.itextpdf.io.font.otf.OpenTypeFontTableReader;
import com.itextpdf.io.font.otf.SubstLookupRecord;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class SubTableLookup5Format1 extends ContextualTable<ContextualSubstRule> {
    private Map<Integer, List<ContextualSubstRule>> substMap;

    public SubTableLookup5Format1(OpenTypeFontTableReader openTypeFontTableReader, int i, Map<Integer, List<ContextualSubstRule>> map) {
        super(openTypeFontTableReader, i);
        this.substMap = map;
    }

    @Override // com.itextpdf.io.font.otf.ContextualTable
    protected List<ContextualSubstRule> getSetOfRulesForStartGlyph(int i) {
        if (this.substMap.containsKey(Integer.valueOf(i)) && !this.openReader.isSkip(i, this.lookupFlag)) {
            return this.substMap.get(Integer.valueOf(i));
        }
        return Collections.emptyList();
    }

    public static class SubstRuleFormat1 extends ContextualSubstRule {
        private int[] inputGlyphIds;
        private SubstLookupRecord[] substLookupRecords;

        public SubstRuleFormat1(int[] iArr, SubstLookupRecord[] substLookupRecordArr) {
            this.inputGlyphIds = iArr;
            this.substLookupRecords = substLookupRecordArr;
        }

        @Override // com.itextpdf.io.font.otf.ContextualRule
        public int getContextLength() {
            return this.inputGlyphIds.length + 1;
        }

        @Override // com.itextpdf.io.font.otf.ContextualSubstRule
        public SubstLookupRecord[] getSubstLookupRecords() {
            return this.substLookupRecords;
        }

        @Override // com.itextpdf.io.font.otf.ContextualRule
        public boolean isGlyphMatchesInput(int i, int i2) {
            return i == this.inputGlyphIds[i2 - 1];
        }
    }
}
