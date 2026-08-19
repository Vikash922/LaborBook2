package com.itextpdf.io.font.otf;

import com.itextpdf.io.font.otf.OpenTableLookup;
import com.itextpdf.io.font.otf.lookuptype5.SubTableLookup5Format1;
import com.itextpdf.io.font.otf.lookuptype5.SubTableLookup5Format2;
import com.itextpdf.io.font.otf.lookuptype5.SubTableLookup5Format3;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class GsubLookupType5 extends OpenTableLookup {
    protected List<ContextualTable<ContextualSubstRule>> subTables;

    protected GsubLookupType5(OpenTypeFontTableReader openTypeFontTableReader, int i, int[] iArr) throws IOException {
        super(openTypeFontTableReader, i, iArr);
        this.subTables = new ArrayList();
        readSubTables();
    }

    @Override // com.itextpdf.io.font.otf.OpenTableLookup
    public boolean transformOne(GlyphLine glyphLine) {
        int i = glyphLine.start;
        int i2 = glyphLine.end;
        int i3 = glyphLine.idx;
        Iterator<ContextualTable<ContextualSubstRule>> it = this.subTables.iterator();
        while (it.hasNext()) {
            ContextualSubstRule contextualSubstRule = (ContextualSubstRule) it.next().getMatchingContextRule(glyphLine);
            if (contextualSubstRule != null) {
                int i4 = glyphLine.end;
                SubstLookupRecord[] substLookupRecords = contextualSubstRule.getSubstLookupRecords();
                OpenTableLookup.GlyphIndexer glyphIndexer = new OpenTableLookup.GlyphIndexer();
                glyphIndexer.line = glyphLine;
                boolean z = false;
                for (SubstLookupRecord substLookupRecord : substLookupRecords) {
                    glyphIndexer.idx = i3;
                    for (int i5 = 0; i5 < substLookupRecord.sequenceIndex; i5++) {
                        glyphIndexer.nextGlyph(this.openReader, this.lookupFlag);
                    }
                    glyphLine.idx = glyphIndexer.idx;
                    z = this.openReader.getLookupTable(substLookupRecord.lookupListIndex).transformOne(glyphLine) || z;
                }
                glyphLine.idx = glyphLine.end;
                glyphLine.start = i;
                glyphLine.end = i2 - (i4 - glyphLine.end);
                return z;
            }
        }
        glyphLine.idx++;
        return false;
    }

    @Override // com.itextpdf.io.font.otf.OpenTableLookup
    protected void readSubTable(int i) throws IOException {
        this.openReader.rf.seek(i);
        short s = this.openReader.rf.readShort();
        if (s == 1) {
            readSubTableFormat1(i);
        } else if (s == 2) {
            readSubTableFormat2(i);
        } else {
            if (s == 3) {
                readSubTableFormat3(i);
                return;
            }
            throw new IllegalArgumentException("Bad substFormat: " + ((int) s));
        }
    }

    protected void readSubTableFormat1(int i) throws IOException {
        HashMap map = new HashMap();
        int unsignedShort = this.openReader.rf.readUnsignedShort();
        int unsignedShort2 = this.openReader.rf.readUnsignedShort();
        int[] uShortArray = this.openReader.readUShortArray(unsignedShort2, i);
        List<Integer> coverageFormat = this.openReader.readCoverageFormat(i + unsignedShort);
        for (int i2 = 0; i2 < unsignedShort2; i2++) {
            this.openReader.rf.seek(uShortArray[i2]);
            int unsignedShort3 = this.openReader.rf.readUnsignedShort();
            int[] uShortArray2 = this.openReader.readUShortArray(unsignedShort3, uShortArray[i2]);
            ArrayList arrayList = new ArrayList(unsignedShort3);
            for (int i3 = 0; i3 < unsignedShort3; i3++) {
                this.openReader.rf.seek(uShortArray2[i3]);
                arrayList.add(new SubTableLookup5Format1.SubstRuleFormat1(this.openReader.readUShortArray(this.openReader.rf.readUnsignedShort() - 1), this.openReader.readSubstLookupRecords(this.openReader.rf.readUnsignedShort())));
            }
            map.put(coverageFormat.get(i2), arrayList);
        }
        this.subTables.add(new SubTableLookup5Format1(this.openReader, this.lookupFlag, map));
    }

    protected void readSubTableFormat2(int i) throws IOException {
        ArrayList arrayList;
        int unsignedShort = this.openReader.rf.readUnsignedShort();
        int unsignedShort2 = this.openReader.rf.readUnsignedShort();
        int unsignedShort3 = this.openReader.rf.readUnsignedShort();
        int[] uShortArray = this.openReader.readUShortArray(unsignedShort3, i);
        SubTableLookup5Format2 subTableLookup5Format2 = new SubTableLookup5Format2(this.openReader, this.lookupFlag, new HashSet(this.openReader.readCoverageFormat(unsignedShort + i)), this.openReader.readClassDefinition(i + unsignedShort2));
        ArrayList arrayList2 = new ArrayList(unsignedShort3);
        for (int i2 = 0; i2 < unsignedShort3; i2++) {
            if (uShortArray[i2] != 0) {
                this.openReader.rf.seek(uShortArray[i2]);
                int unsignedShort4 = this.openReader.rf.readUnsignedShort();
                int[] uShortArray2 = this.openReader.readUShortArray(unsignedShort4, uShortArray[i2]);
                arrayList = new ArrayList(unsignedShort4);
                for (int i3 = 0; i3 < unsignedShort4; i3++) {
                    this.openReader.rf.seek(uShortArray2[i3]);
                    arrayList.add(new SubTableLookup5Format2.SubstRuleFormat2(subTableLookup5Format2, this.openReader.readUShortArray(this.openReader.rf.readUnsignedShort() - 1), this.openReader.readSubstLookupRecords(this.openReader.rf.readUnsignedShort())));
                }
            } else {
                arrayList = null;
            }
            arrayList2.add(arrayList);
        }
        subTableLookup5Format2.setSubClassSets(arrayList2);
        this.subTables.add(subTableLookup5Format2);
    }

    protected void readSubTableFormat3(int i) throws IOException {
        int unsignedShort = this.openReader.rf.readUnsignedShort();
        int unsignedShort2 = this.openReader.rf.readUnsignedShort();
        int[] uShortArray = this.openReader.readUShortArray(unsignedShort, i);
        SubstLookupRecord[] substLookupRecords = this.openReader.readSubstLookupRecords(unsignedShort2);
        ArrayList arrayList = new ArrayList(unsignedShort);
        this.openReader.readCoverages(uShortArray, arrayList);
        this.subTables.add(new SubTableLookup5Format3(this.openReader, this.lookupFlag, new SubTableLookup5Format3.SubstRuleFormat3(arrayList, substLookupRecords)));
    }
}
