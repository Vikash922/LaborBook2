package com.itextpdf.p017io.font.otf;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class GposLookupType1 extends OpenTableLookup {
    private Map<Integer, GposValueRecord> valueRecordMap;

    public GposLookupType1(OpenTypeFontTableReader openTypeFontTableReader, int i, int[] iArr) throws IOException {
        super(openTypeFontTableReader, i, iArr);
        this.valueRecordMap = new HashMap();
        readSubTables();
    }

    @Override // com.itextpdf.p017io.font.otf.OpenTableLookup
    public boolean transformOne(GlyphLine glyphLine) {
        boolean z = false;
        if (glyphLine.idx >= glyphLine.end) {
            return false;
        }
        if (this.openReader.isSkip(glyphLine.get(glyphLine.idx).getCode(), this.lookupFlag)) {
            glyphLine.idx++;
            return false;
        }
        GposValueRecord gposValueRecord = this.valueRecordMap.get(Integer.valueOf(glyphLine.get(glyphLine.idx).getCode()));
        if (gposValueRecord != null) {
            Glyph glyph = new Glyph(glyphLine.get(glyphLine.idx));
            glyph.setXAdvance((short) (glyph.getXAdvance() + gposValueRecord.XAdvance));
            glyph.setYAdvance((short) (glyph.getYAdvance() + gposValueRecord.YAdvance));
            glyphLine.set(glyphLine.idx, glyph);
            z = true;
        }
        glyphLine.idx++;
        return z;
    }

    @Override // com.itextpdf.p017io.font.otf.OpenTableLookup
    protected void readSubTable(int i) throws IOException {
        this.openReader.f2875rf.seek(i);
        short s = this.openReader.f2875rf.readShort();
        int unsignedShort = this.openReader.f2875rf.readUnsignedShort();
        int unsignedShort2 = this.openReader.f2875rf.readUnsignedShort();
        if (s == 1) {
            GposValueRecord gposValueRecord = OtfReadCommon.readGposValueRecord(this.openReader, unsignedShort2);
            Iterator<Integer> it = this.openReader.readCoverageFormat(i + unsignedShort).iterator();
            while (it.hasNext()) {
                this.valueRecordMap.put(Integer.valueOf(it.next().intValue()), gposValueRecord);
            }
            return;
        }
        if (s == 2) {
            int unsignedShort3 = this.openReader.f2875rf.readUnsignedShort();
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < unsignedShort3; i2++) {
                arrayList.add(OtfReadCommon.readGposValueRecord(this.openReader, unsignedShort2));
            }
            List<Integer> coverageFormat = this.openReader.readCoverageFormat(i + unsignedShort);
            for (int i3 = 0; i3 < coverageFormat.size(); i3++) {
                this.valueRecordMap.put(Integer.valueOf(coverageFormat.get(i3).intValue()), (GposValueRecord) arrayList.get(i3));
            }
            return;
        }
        throw new IllegalArgumentException("Bad subtable format identifier: " + ((int) s));
    }
}
