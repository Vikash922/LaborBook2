package com.itextpdf.p017io.font.otf;

import com.itextpdf.p017io.exceptions.IOException;
import com.itextpdf.p017io.font.otf.lookuptype8.PosTableLookup8Format1;
import com.itextpdf.p017io.font.otf.lookuptype8.PosTableLookup8Format2;
import com.itextpdf.p017io.font.otf.lookuptype8.PosTableLookup8Format3;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class GposLookupType8 extends GposLookupType7 {
    protected GposLookupType8(OpenTypeFontTableReader openTypeFontTableReader, int i, int[] iArr) throws IOException, java.io.IOException {
        super(openTypeFontTableReader, i, iArr);
        this.subTables = new ArrayList();
        readSubTables();
    }

    @Override // com.itextpdf.p017io.font.otf.GposLookupType7, com.itextpdf.p017io.font.otf.OpenTableLookup
    protected void readSubTable(int i) throws java.io.IOException {
        this.openReader.f2875rf.seek(i);
        short s = this.openReader.f2875rf.readShort();
        if (s == 1) {
            readSubTableFormat1(i);
        } else if (s == 2) {
            readSubTableFormat2(i);
        } else {
            if (s == 3) {
                readSubTableFormat3(i);
                return;
            }
            throw new IllegalArgumentException("Bad subtable format identifier: " + ((int) s));
        }
    }

    @Override // com.itextpdf.p017io.font.otf.GposLookupType7
    protected void readSubTableFormat2(int i) throws java.io.IOException {
        int unsignedShort = this.openReader.f2875rf.readUnsignedShort();
        int unsignedShort2 = this.openReader.f2875rf.readUnsignedShort();
        int unsignedShort3 = this.openReader.f2875rf.readUnsignedShort();
        int unsignedShort4 = this.openReader.f2875rf.readUnsignedShort();
        int unsignedShort5 = this.openReader.f2875rf.readUnsignedShort();
        int[] uShortArray = this.openReader.readUShortArray(unsignedShort5, i);
        PosTableLookup8Format2 posTableLookup8Format2 = new PosTableLookup8Format2(this.openReader, this.lookupFlag, new HashSet(this.openReader.readCoverageFormat(unsignedShort + i)), this.openReader.readClassDefinition(unsignedShort2 + i), this.openReader.readClassDefinition(i + unsignedShort3), this.openReader.readClassDefinition(i + unsignedShort4));
        for (int i2 = 0; i2 < unsignedShort5; i2++) {
            List<ContextualPositionRule> listEmptyList = Collections.emptyList();
            if (uShortArray[i2] != 0) {
                this.openReader.f2875rf.seek(uShortArray[i2]);
                int unsignedShort6 = this.openReader.f2875rf.readUnsignedShort();
                int[] uShortArray2 = this.openReader.readUShortArray(unsignedShort6, uShortArray[i2]);
                ArrayList arrayList = new ArrayList(unsignedShort6);
                for (int i3 = 0; i3 < unsignedShort6; i3++) {
                    this.openReader.f2875rf.seek(uShortArray2[i3]);
                    arrayList.add(new PosTableLookup8Format2.PosRuleFormat2(posTableLookup8Format2, this.openReader.readUShortArray(this.openReader.f2875rf.readUnsignedShort()), this.openReader.readUShortArray(this.openReader.f2875rf.readUnsignedShort() - 1), this.openReader.readUShortArray(this.openReader.f2875rf.readUnsignedShort()), this.openReader.readPosLookupRecords(this.openReader.f2875rf.readUnsignedShort())));
                }
                listEmptyList = arrayList;
            }
            posTableLookup8Format2.addPosClassSet(listEmptyList);
        }
        this.subTables.add(posTableLookup8Format2);
    }

    private void readSubTableFormat1(int i) throws java.io.IOException {
        HashMap map = new HashMap();
        int unsignedShort = this.openReader.f2875rf.readUnsignedShort();
        int unsignedShort2 = this.openReader.f2875rf.readUnsignedShort();
        int[] uShortArray = this.openReader.readUShortArray(unsignedShort2, i);
        List<Integer> coverageFormat = this.openReader.readCoverageFormat(i + unsignedShort);
        for (int i2 = 0; i2 < unsignedShort2; i2++) {
            this.openReader.f2875rf.seek(uShortArray[i2]);
            int unsignedShort3 = this.openReader.f2875rf.readUnsignedShort();
            int[] uShortArray2 = this.openReader.readUShortArray(unsignedShort3, uShortArray[i2]);
            ArrayList arrayList = new ArrayList(unsignedShort3);
            for (int i3 = 0; i3 < unsignedShort3; i3++) {
                this.openReader.f2875rf.seek(uShortArray2[i3]);
                arrayList.add(new PosTableLookup8Format1.PosRuleFormat1(this.openReader.readUShortArray(this.openReader.f2875rf.readUnsignedShort()), this.openReader.readUShortArray(this.openReader.f2875rf.readUnsignedShort() - 1), this.openReader.readUShortArray(this.openReader.f2875rf.readUnsignedShort()), this.openReader.readPosLookupRecords(this.openReader.f2875rf.readUnsignedShort())));
            }
            map.put(coverageFormat.get(i2), arrayList);
        }
        this.subTables.add(new PosTableLookup8Format1(this.openReader, this.lookupFlag, map));
    }

    private void readSubTableFormat3(int i) throws java.io.IOException {
        int unsignedShort = this.openReader.f2875rf.readUnsignedShort();
        int[] uShortArray = this.openReader.readUShortArray(unsignedShort, i);
        int unsignedShort2 = this.openReader.f2875rf.readUnsignedShort();
        int[] uShortArray2 = this.openReader.readUShortArray(unsignedShort2, i);
        int unsignedShort3 = this.openReader.f2875rf.readUnsignedShort();
        int[] uShortArray3 = this.openReader.readUShortArray(unsignedShort3, i);
        PosLookupRecord[] posLookupRecords = this.openReader.readPosLookupRecords(this.openReader.f2875rf.readUnsignedShort());
        ArrayList arrayList = new ArrayList(unsignedShort);
        this.openReader.readCoverages(uShortArray, arrayList);
        ArrayList arrayList2 = new ArrayList(unsignedShort2);
        this.openReader.readCoverages(uShortArray2, arrayList2);
        ArrayList arrayList3 = new ArrayList(unsignedShort3);
        this.openReader.readCoverages(uShortArray3, arrayList3);
        this.subTables.add(new PosTableLookup8Format3(this.openReader, this.lookupFlag, new PosTableLookup8Format3.PosRuleFormat3(arrayList, arrayList2, arrayList3, posLookupRecords)));
    }
}
