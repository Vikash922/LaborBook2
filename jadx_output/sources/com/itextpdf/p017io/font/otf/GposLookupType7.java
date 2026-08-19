package com.itextpdf.p017io.font.otf;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.p017io.font.otf.OpenTableLookup;
import com.itextpdf.p017io.font.otf.lookuptype7.PosTableLookup7Format2;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class GposLookupType7 extends OpenTableLookup {
    private static final Logger LOGGER = LoggerFactory.getLogger((Class<?>) GposLookupType7.class);
    protected List<ContextualTable<ContextualPositionRule>> subTables;

    public GposLookupType7(OpenTypeFontTableReader openTypeFontTableReader, int i, int[] iArr) throws IOException {
        super(openTypeFontTableReader, i, iArr);
        this.subTables = new ArrayList();
        readSubTables();
    }

    @Override // com.itextpdf.p017io.font.otf.OpenTableLookup
    public boolean transformOne(GlyphLine glyphLine) {
        int i = glyphLine.start;
        int i2 = glyphLine.end;
        int i3 = glyphLine.idx;
        Iterator<ContextualTable<ContextualPositionRule>> it = this.subTables.iterator();
        while (it.hasNext()) {
            ContextualPositionRule contextualPositionRule = (ContextualPositionRule) it.next().getMatchingContextRule(glyphLine);
            if (contextualPositionRule != null) {
                int i4 = glyphLine.end;
                PosLookupRecord[] posLookupRecords = contextualPositionRule.getPosLookupRecords();
                OpenTableLookup.GlyphIndexer glyphIndexer = new OpenTableLookup.GlyphIndexer();
                glyphIndexer.line = glyphLine;
                boolean z = false;
                for (PosLookupRecord posLookupRecord : posLookupRecords) {
                    glyphIndexer.idx = i3;
                    for (int i5 = 0; i5 < posLookupRecord.sequenceIndex; i5++) {
                        glyphIndexer.nextGlyph(this.openReader, this.lookupFlag);
                    }
                    glyphLine.idx = glyphIndexer.idx;
                    z = this.openReader.getLookupTable(posLookupRecord.lookupListIndex).transformOne(glyphLine) || z;
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

    @Override // com.itextpdf.p017io.font.otf.OpenTableLookup
    protected void readSubTable(int i) throws IOException {
        this.openReader.f2875rf.seek(i);
        short s = this.openReader.f2875rf.readShort();
        if (s != 1) {
            if (s == 2) {
                readSubTableFormat2(i);
                return;
            } else if (s != 3) {
                throw new IllegalArgumentException("Bad subtable format identifier: " + ((int) s));
            }
        }
        LOGGER.warn(MessageFormatUtil.format(IoLogMessageConstant.GPOS_LOOKUP_SUBTABLE_FORMAT_NOT_SUPPORTED, Integer.valueOf(s), 7));
    }

    protected void readSubTableFormat2(int i) throws IOException {
        ArrayList arrayList;
        int unsignedShort = this.openReader.f2875rf.readUnsignedShort();
        int unsignedShort2 = this.openReader.f2875rf.readUnsignedShort();
        int unsignedShort3 = this.openReader.f2875rf.readUnsignedShort();
        int[] uShortArray = this.openReader.readUShortArray(unsignedShort3, i);
        PosTableLookup7Format2 posTableLookup7Format2 = new PosTableLookup7Format2(this.openReader, this.lookupFlag, new HashSet(this.openReader.readCoverageFormat(unsignedShort + i)), this.openReader.readClassDefinition(i + unsignedShort2));
        ArrayList arrayList2 = new ArrayList(unsignedShort3);
        for (int i2 = 0; i2 < unsignedShort3; i2++) {
            if (uShortArray[i2] != 0) {
                this.openReader.f2875rf.seek(uShortArray[i2]);
                int unsignedShort4 = this.openReader.f2875rf.readUnsignedShort();
                int[] uShortArray2 = this.openReader.readUShortArray(unsignedShort4, uShortArray[i2]);
                arrayList = new ArrayList(unsignedShort4);
                for (int i3 = 0; i3 < unsignedShort4; i3++) {
                    this.openReader.f2875rf.seek(uShortArray2[i3]);
                    arrayList.add(new PosTableLookup7Format2.PosRuleFormat2(posTableLookup7Format2, this.openReader.readUShortArray(this.openReader.f2875rf.readUnsignedShort() - 1), this.openReader.readPosLookupRecords(this.openReader.f2875rf.readUnsignedShort())));
                }
            } else {
                arrayList = null;
            }
            arrayList2.add(arrayList);
        }
        posTableLookup7Format2.setPosClassSets(arrayList2);
        this.subTables.add(posTableLookup7Format2);
    }
}
