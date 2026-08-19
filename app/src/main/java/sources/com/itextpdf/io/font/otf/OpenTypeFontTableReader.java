package com.itextpdf.io.font.otf;

import com.itextpdf.io.source.RandomAccessFileOrArray;
import com.itextpdf.io.util.IntHashtable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public abstract class OpenTypeFontTableReader {
    protected OpenTypeFeature featuresType;
    private final OpenTypeGdefTableReader gdef;
    private final Map<Integer, Glyph> indexGlyphMap;
    protected List<OpenTableLookup> lookupList;
    protected final RandomAccessFileOrArray rf;
    protected OpenTypeScript scriptsType;
    protected final int tableLocation;
    private final int unitsPerEm;

    protected abstract OpenTableLookup readLookupTable(int i, int i2, int[] iArr) throws IOException;

    protected OpenTypeFontTableReader(RandomAccessFileOrArray randomAccessFileOrArray, int i, OpenTypeGdefTableReader openTypeGdefTableReader, Map<Integer, Glyph> map, int i2) {
        this.rf = randomAccessFileOrArray;
        this.tableLocation = i;
        this.indexGlyphMap = map;
        this.gdef = openTypeGdefTableReader;
        this.unitsPerEm = i2;
    }

    public Glyph getGlyph(int i) {
        return this.indexGlyphMap.get(Integer.valueOf(i));
    }

    public OpenTableLookup getLookupTable(int i) {
        if (i < 0 || i >= this.lookupList.size()) {
            return null;
        }
        return this.lookupList.get(i);
    }

    public List<ScriptRecord> getScriptRecords() {
        return this.scriptsType.getScriptRecords();
    }

    public List<FeatureRecord> getFeatureRecords() {
        return this.featuresType.getRecords();
    }

    public List<FeatureRecord> getFeatures(String[] strArr, String str) {
        LanguageRecord languageRecord = this.scriptsType.getLanguageRecord(strArr, str);
        if (languageRecord == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i : languageRecord.features) {
            arrayList.add(this.featuresType.getRecord(i));
        }
        return arrayList;
    }

    public List<FeatureRecord> getSpecificFeatures(List<FeatureRecord> list, String[] strArr) {
        if (strArr == null) {
            return list;
        }
        HashSet hashSet = new HashSet();
        for (String str : strArr) {
            hashSet.add(str);
        }
        ArrayList arrayList = new ArrayList();
        for (FeatureRecord featureRecord : list) {
            if (hashSet.contains(featureRecord.tag)) {
                arrayList.add(featureRecord);
            }
        }
        return arrayList;
    }

    public FeatureRecord getRequiredFeature(String[] strArr, String str) {
        LanguageRecord languageRecord = this.scriptsType.getLanguageRecord(strArr, str);
        if (languageRecord == null) {
            return null;
        }
        return this.featuresType.getRecord(languageRecord.featureRequired);
    }

    public List<OpenTableLookup> getLookups(FeatureRecord[] featureRecordArr) {
        IntHashtable intHashtable = new IntHashtable();
        for (FeatureRecord featureRecord : featureRecordArr) {
            for (int i : featureRecord.lookups) {
                intHashtable.put(i, 1);
            }
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 : intHashtable.toOrderedKeys()) {
            arrayList.add(this.lookupList.get(i2));
        }
        return arrayList;
    }

    public List<OpenTableLookup> getLookups(FeatureRecord featureRecord) {
        ArrayList arrayList = new ArrayList(featureRecord.lookups.length);
        for (int i : featureRecord.lookups) {
            arrayList.add(this.lookupList.get(i));
        }
        return arrayList;
    }

    public boolean isSkip(int i, int i2) {
        return this.gdef.isSkip(i, i2);
    }

    public int getGlyphClass(int i) {
        return this.gdef.getGlyphClassTable().getOtfClass(i);
    }

    public int getUnitsPerEm() {
        return this.unitsPerEm;
    }

    public LanguageRecord getLanguageRecord(String str) {
        return getLanguageRecord(str, null);
    }

    public LanguageRecord getLanguageRecord(String str, String str2) {
        if (str == null) {
            return null;
        }
        for (ScriptRecord scriptRecord : getScriptRecords()) {
            if (str.equals(scriptRecord.tag)) {
                if (str2 == null) {
                    return scriptRecord.defaultLanguage;
                }
                for (LanguageRecord languageRecord : scriptRecord.languages) {
                    if (str2.equals(languageRecord.tag)) {
                        return languageRecord;
                    }
                }
            }
        }
        return null;
    }

    protected final OtfClass readClassDefinition(int i) {
        return OtfClass.create(this.rf, i);
    }

    protected final int[] readUShortArray(int i, int i2) throws IOException {
        return OtfReadCommon.readUShortArray(this.rf, i, i2);
    }

    protected final int[] readUShortArray(int i) throws IOException {
        return OtfReadCommon.readUShortArray(this.rf, i);
    }

    protected void readCoverages(int[] iArr, List<Set<Integer>> list) throws IOException {
        OtfReadCommon.readCoverages(this.rf, iArr, list);
    }

    protected final List<Integer> readCoverageFormat(int i) throws IOException {
        return OtfReadCommon.readCoverageFormat(this.rf, i);
    }

    protected SubstLookupRecord[] readSubstLookupRecords(int i) throws IOException {
        return OtfReadCommon.readSubstLookupRecords(this.rf, i);
    }

    protected PosLookupRecord[] readPosLookupRecords(int i) throws IOException {
        return OtfReadCommon.readPosLookupRecords(this.rf, i);
    }

    protected TagAndLocation[] readTagAndLocations(int i) throws IOException {
        int unsignedShort = this.rf.readUnsignedShort();
        TagAndLocation[] tagAndLocationArr = new TagAndLocation[unsignedShort];
        for (int i2 = 0; i2 < unsignedShort; i2++) {
            TagAndLocation tagAndLocation = new TagAndLocation();
            tagAndLocation.tag = this.rf.readString(4, "utf-8");
            tagAndLocation.location = this.rf.readUnsignedShort() + i;
            tagAndLocationArr[i2] = tagAndLocation;
        }
        return tagAndLocationArr;
    }

    final void startReadingTable() throws FontReadingException {
        try {
            this.rf.seek(this.tableLocation);
            this.rf.readInt();
            int unsignedShort = this.rf.readUnsignedShort();
            int unsignedShort2 = this.rf.readUnsignedShort();
            int unsignedShort3 = this.rf.readUnsignedShort();
            this.scriptsType = new OpenTypeScript(this, this.tableLocation + unsignedShort);
            this.featuresType = new OpenTypeFeature(this, this.tableLocation + unsignedShort2);
            readLookupListTable(this.tableLocation + unsignedShort3);
        } catch (IOException e) {
            throw new FontReadingException("Error reading font file", e);
        }
    }

    private void readLookupListTable(int i) throws IOException {
        this.lookupList = new ArrayList();
        this.rf.seek(i);
        for (int i2 : readUShortArray(this.rf.readUnsignedShort(), i)) {
            if (i2 != 0) {
                readLookupTable(i2);
            }
        }
    }

    private void readLookupTable(int i) throws IOException {
        this.rf.seek(i);
        this.lookupList.add(readLookupTable(this.rf.readUnsignedShort(), this.rf.readUnsignedShort(), readUShortArray(this.rf.readUnsignedShort(), i)));
    }
}
