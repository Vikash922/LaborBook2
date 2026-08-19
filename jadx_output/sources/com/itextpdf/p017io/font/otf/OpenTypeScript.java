package com.itextpdf.p017io.font.otf;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class OpenTypeScript {
    public static final String DEFAULT_SCRIPT = "DFLT";
    private OpenTypeFontTableReader openTypeReader;
    private List<ScriptRecord> records = new ArrayList();

    public OpenTypeScript(OpenTypeFontTableReader openTypeFontTableReader, int i) throws IOException {
        this.openTypeReader = openTypeFontTableReader;
        openTypeFontTableReader.f2875rf.seek(i);
        for (TagAndLocation tagAndLocation : openTypeFontTableReader.readTagAndLocations(i)) {
            readScriptRecord(tagAndLocation);
        }
    }

    public List<ScriptRecord> getScriptRecords() {
        return this.records;
    }

    public LanguageRecord getLanguageRecord(String[] strArr, String str) {
        LanguageRecord languageRecord;
        ScriptRecord next;
        Iterator<ScriptRecord> it = this.records.iterator();
        while (true) {
            languageRecord = null;
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (DEFAULT_SCRIPT.equals(next.tag)) {
                break;
            }
        }
        int i = 0;
        ScriptRecord scriptRecord = null;
        for (String str2 : strArr) {
            Iterator<ScriptRecord> it2 = this.records.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                ScriptRecord next2 = it2.next();
                if (next2.tag.equals(str2)) {
                    scriptRecord = next2;
                    break;
                }
                if (DEFAULT_SCRIPT.equals(str2)) {
                    next = next2;
                }
            }
            if (scriptRecord != null) {
                break;
            }
        }
        if (scriptRecord != null) {
            next = scriptRecord;
        }
        if (next == null) {
            return null;
        }
        LanguageRecord[] languageRecordArr = next.languages;
        int length = languageRecordArr.length;
        while (true) {
            if (i >= length) {
                break;
            }
            LanguageRecord languageRecord2 = languageRecordArr[i];
            if (languageRecord2.tag.equals(str)) {
                languageRecord = languageRecord2;
                break;
            }
            i++;
        }
        return languageRecord == null ? next.defaultLanguage : languageRecord;
    }

    private void readScriptRecord(TagAndLocation tagAndLocation) throws IOException {
        this.openTypeReader.f2875rf.seek(tagAndLocation.location);
        int unsignedShort = this.openTypeReader.f2875rf.readUnsignedShort();
        if (unsignedShort > 0) {
            unsignedShort += tagAndLocation.location;
        }
        TagAndLocation[] tagAndLocations = this.openTypeReader.readTagAndLocations(tagAndLocation.location);
        ScriptRecord scriptRecord = new ScriptRecord();
        scriptRecord.tag = tagAndLocation.tag;
        scriptRecord.languages = new LanguageRecord[tagAndLocations.length];
        for (int i = 0; i < tagAndLocations.length; i++) {
            scriptRecord.languages[i] = readLanguageRecord(tagAndLocations[i]);
        }
        if (unsignedShort > 0) {
            TagAndLocation tagAndLocation2 = new TagAndLocation();
            tagAndLocation2.tag = "";
            tagAndLocation2.location = unsignedShort;
            scriptRecord.defaultLanguage = readLanguageRecord(tagAndLocation2);
        }
        this.records.add(scriptRecord);
    }

    private LanguageRecord readLanguageRecord(TagAndLocation tagAndLocation) throws IOException {
        LanguageRecord languageRecord = new LanguageRecord();
        this.openTypeReader.f2875rf.seek(tagAndLocation.location + 2);
        languageRecord.featureRequired = this.openTypeReader.f2875rf.readUnsignedShort();
        languageRecord.features = this.openTypeReader.readUShortArray(this.openTypeReader.f2875rf.readUnsignedShort());
        languageRecord.tag = tagAndLocation.tag;
        return languageRecord;
    }
}
