package com.itextpdf.p017io.font.otf;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class OpenTypeFeature {
    private OpenTypeFontTableReader openTypeReader;
    private List<FeatureRecord> records = new ArrayList();

    public OpenTypeFeature(OpenTypeFontTableReader openTypeFontTableReader, int i) throws IOException {
        this.openTypeReader = openTypeFontTableReader;
        openTypeFontTableReader.f2875rf.seek(i);
        for (TagAndLocation tagAndLocation : openTypeFontTableReader.readTagAndLocations(i)) {
            openTypeFontTableReader.f2875rf.seek(((long) tagAndLocation.location) + 2);
            int unsignedShort = openTypeFontTableReader.f2875rf.readUnsignedShort();
            FeatureRecord featureRecord = new FeatureRecord();
            featureRecord.tag = tagAndLocation.tag;
            featureRecord.lookups = openTypeFontTableReader.readUShortArray(unsignedShort);
            this.records.add(featureRecord);
        }
    }

    public List<FeatureRecord> getRecords() {
        return this.records;
    }

    public FeatureRecord getRecord(int i) {
        if (i < 0 || i >= this.records.size()) {
            return null;
        }
        return this.records.get(i);
    }
}
