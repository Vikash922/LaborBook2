package com.itextpdf.p017io.font.otf.lookuptype8;

import com.itextpdf.p017io.font.otf.ChainingContextualTable;
import com.itextpdf.p017io.font.otf.ContextualPositionRule;
import com.itextpdf.p017io.font.otf.OpenTypeFontTableReader;
import com.itextpdf.p017io.font.otf.OtfClass;
import com.itextpdf.p017io.font.otf.PosLookupRecord;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public class PosTableLookup8Format2 extends ChainingContextualTable<ContextualPositionRule> {
    private OtfClass backtrackClassDefinition;
    private OtfClass inputClassDefinition;
    private OtfClass lookaheadClassDefinition;
    private List<List<ContextualPositionRule>> posClassSets;
    private Set<Integer> posCoverageGlyphIds;

    public PosTableLookup8Format2(OpenTypeFontTableReader openTypeFontTableReader, int i, Set<Integer> set, OtfClass otfClass, OtfClass otfClass2, OtfClass otfClass3) {
        super(openTypeFontTableReader, i);
        this.posCoverageGlyphIds = set;
        this.backtrackClassDefinition = otfClass;
        this.inputClassDefinition = otfClass2;
        this.lookaheadClassDefinition = otfClass3;
        this.posClassSets = new ArrayList();
    }

    public void addPosClassSet(List<ContextualPositionRule> list) {
        Iterator<ContextualPositionRule> it = list.iterator();
        while (it.hasNext()) {
            if (((PosRuleFormat2) it.next()).getPosTable() != this) {
                throw new IllegalArgumentException("Position class set is invalid. Position rule refers to another table");
            }
        }
        this.posClassSets.add(list);
    }

    @Override // com.itextpdf.p017io.font.otf.ContextualTable
    protected List<ContextualPositionRule> getSetOfRulesForStartGlyph(int i) {
        if (this.posCoverageGlyphIds.contains(Integer.valueOf(i)) && !this.openReader.isSkip(i, this.lookupFlag)) {
            return this.posClassSets.get(this.inputClassDefinition.getOtfClass(i));
        }
        return Collections.emptyList();
    }

    public static class PosRuleFormat2 extends ContextualPositionRule {
        private static final long serialVersionUID = 8583758144617770335L;
        private int[] backtrackClassIds;
        private int[] inputClassIds;
        private int[] lookAheadClassIds;
        private PosLookupRecord[] posLookupRecords;
        private PosTableLookup8Format2 posTable;

        public PosRuleFormat2(PosTableLookup8Format2 posTableLookup8Format2, int[] iArr, int[] iArr2, int[] iArr3, PosLookupRecord[] posLookupRecordArr) {
            this.posTable = posTableLookup8Format2;
            this.backtrackClassIds = iArr;
            this.inputClassIds = iArr2;
            this.lookAheadClassIds = iArr3;
            this.posLookupRecords = posLookupRecordArr;
        }

        @Override // com.itextpdf.p017io.font.otf.ContextualRule
        public int getContextLength() {
            return this.inputClassIds.length + 1;
        }

        @Override // com.itextpdf.p017io.font.otf.ContextualRule
        public int getLookaheadContextLength() {
            return this.lookAheadClassIds.length;
        }

        @Override // com.itextpdf.p017io.font.otf.ContextualRule
        public int getBacktrackContextLength() {
            return this.backtrackClassIds.length;
        }

        @Override // com.itextpdf.p017io.font.otf.ContextualPositionRule
        public PosLookupRecord[] getPosLookupRecords() {
            return this.posLookupRecords;
        }

        @Override // com.itextpdf.p017io.font.otf.ContextualRule
        public boolean isGlyphMatchesInput(int i, int i2) {
            return this.posTable.inputClassDefinition.getOtfClass(i) == this.inputClassIds[i2 - 1];
        }

        @Override // com.itextpdf.p017io.font.otf.ContextualRule
        public boolean isGlyphMatchesLookahead(int i, int i2) {
            return this.posTable.lookaheadClassDefinition.getOtfClass(i) == this.lookAheadClassIds[i2];
        }

        @Override // com.itextpdf.p017io.font.otf.ContextualRule
        public boolean isGlyphMatchesBacktrack(int i, int i2) {
            return this.posTable.backtrackClassDefinition.getOtfClass(i) == this.backtrackClassIds[i2];
        }

        public PosTableLookup8Format2 getPosTable() {
            return this.posTable;
        }
    }
}
