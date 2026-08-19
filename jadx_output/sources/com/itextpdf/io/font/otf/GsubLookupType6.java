package com.itextpdf.io.font.otf;

import com.itextpdf.io.font.otf.lookuptype6.SubTableLookup6Format1;
import com.itextpdf.io.font.otf.lookuptype6.SubTableLookup6Format2;
import com.itextpdf.io.font.otf.lookuptype6.SubTableLookup6Format3;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class GsubLookupType6 extends GsubLookupType5 {
    protected GsubLookupType6(OpenTypeFontTableReader openTypeFontTableReader, int i, int[] iArr) throws IOException {
        super(openTypeFontTableReader, i, iArr);
    }

    @Override // com.itextpdf.io.font.otf.GsubLookupType5
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
                arrayList.add(new SubTableLookup6Format1.SubstRuleFormat1(this.openReader.readUShortArray(this.openReader.rf.readUnsignedShort()), this.openReader.readUShortArray(this.openReader.rf.readUnsignedShort() - 1), this.openReader.readUShortArray(this.openReader.rf.readUnsignedShort()), this.openReader.readSubstLookupRecords(this.openReader.rf.readUnsignedShort())));
            }
            map.put(coverageFormat.get(i2), arrayList);
        }
        this.subTables.add(new SubTableLookup6Format1(this.openReader, this.lookupFlag, map));
    }

    @Override // com.itextpdf.io.font.otf.GsubLookupType5
    protected void readSubTableFormat2(int i) throws IOException {
        ArrayList arrayList;
        int unsignedShort = this.openReader.rf.readUnsignedShort();
        int unsignedShort2 = this.openReader.rf.readUnsignedShort();
        int unsignedShort3 = this.openReader.rf.readUnsignedShort();
        int unsignedShort4 = this.openReader.rf.readUnsignedShort();
        int unsignedShort5 = this.openReader.rf.readUnsignedShort();
        int[] uShortArray = this.openReader.readUShortArray(unsignedShort5, i);
        SubTableLookup6Format2 subTableLookup6Format2 = new SubTableLookup6Format2(this.openReader, this.lookupFlag, new HashSet(this.openReader.readCoverageFormat(unsignedShort + i)), this.openReader.readClassDefinition(unsignedShort2 + i), this.openReader.readClassDefinition(i + unsignedShort3), this.openReader.readClassDefinition(i + unsignedShort4));
        ArrayList arrayList2 = new ArrayList(unsignedShort5);
        for (int i2 = 0; i2 < unsignedShort5; i2++) {
            if (uShortArray[i2] != 0) {
                this.openReader.rf.seek(uShortArray[i2]);
                int unsignedShort6 = this.openReader.rf.readUnsignedShort();
                int[] uShortArray2 = this.openReader.readUShortArray(unsignedShort6, uShortArray[i2]);
                arrayList = new ArrayList(unsignedShort6);
                for (int i3 = 0; i3 < unsignedShort6; i3++) {
                    this.openReader.rf.seek(uShortArray2[i3]);
                    arrayList.add(new SubTableLookup6Format2.SubstRuleFormat2(subTableLookup6Format2, this.openReader.readUShortArray(this.openReader.rf.readUnsignedShort()), this.openReader.readUShortArray(this.openReader.rf.readUnsignedShort() - 1), this.openReader.readUShortArray(this.openReader.rf.readUnsignedShort()), this.openReader.readSubstLookupRecords(this.openReader.rf.readUnsignedShort())));
                }
            } else {
                arrayList = null;
            }
            arrayList2.add(arrayList);
        }
        subTableLookup6Format2.setSubClassSets(arrayList2);
        this.subTables.add(subTableLookup6Format2);
    }

    @Override // com.itextpdf.io.font.otf.GsubLookupType5
    protected void readSubTableFormat3(int i) throws IOException {
        int unsignedShort = this.openReader.rf.readUnsignedShort();
        int[] uShortArray = this.openReader.readUShortArray(unsignedShort, i);
        int unsignedShort2 = this.openReader.rf.readUnsignedShort();
        int[] uShortArray2 = this.openReader.readUShortArray(unsignedShort2, i);
        int unsignedShort3 = this.openReader.rf.readUnsignedShort();
        int[] uShortArray3 = this.openReader.readUShortArray(unsignedShort3, i);
        SubstLookupRecord[] substLookupRecords = this.openReader.readSubstLookupRecords(this.openReader.rf.readUnsignedShort());
        ArrayList arrayList = new ArrayList(unsignedShort);
        this.openReader.readCoverages(uShortArray, arrayList);
        ArrayList arrayList2 = new ArrayList(unsignedShort2);
        this.openReader.readCoverages(uShortArray2, arrayList2);
        ArrayList arrayList3 = new ArrayList(unsignedShort3);
        this.openReader.readCoverages(uShortArray3, arrayList3);
        this.subTables.add(new SubTableLookup6Format3(this.openReader, this.lookupFlag, new SubTableLookup6Format3.SubstRuleFormat3(arrayList, arrayList2, arrayList3, substLookupRecords)));
    }
}
