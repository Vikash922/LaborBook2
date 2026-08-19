package com.itextpdf.p017io.font.otf;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.p017io.source.RandomAccessFileOrArray;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public class OtfReadCommon {
    public static int[] readUShortArray(RandomAccessFileOrArray randomAccessFileOrArray, int i, int i2) throws IOException {
        int[] iArr = new int[i];
        for (int i3 = 0; i3 < i; i3++) {
            int unsignedShort = randomAccessFileOrArray.readUnsignedShort();
            if (unsignedShort != 0) {
                unsignedShort += i2;
            }
            iArr[i3] = unsignedShort;
        }
        return iArr;
    }

    public static int[] readUShortArray(RandomAccessFileOrArray randomAccessFileOrArray, int i) throws IOException {
        return readUShortArray(randomAccessFileOrArray, i, 0);
    }

    public static void readCoverages(RandomAccessFileOrArray randomAccessFileOrArray, int[] iArr, List<Set<Integer>> list) throws IOException {
        for (int i : iArr) {
            list.add(new HashSet(readCoverageFormat(randomAccessFileOrArray, i)));
        }
    }

    public static List<Integer> readCoverageFormat(RandomAccessFileOrArray randomAccessFileOrArray, int i) throws IOException {
        ArrayList arrayList;
        randomAccessFileOrArray.seek(i);
        short s = randomAccessFileOrArray.readShort();
        int i2 = 0;
        if (s == 1) {
            int unsignedShort = randomAccessFileOrArray.readUnsignedShort();
            arrayList = new ArrayList(unsignedShort);
            while (i2 < unsignedShort) {
                arrayList.add(Integer.valueOf(randomAccessFileOrArray.readUnsignedShort()));
                i2++;
            }
        } else if (s == 2) {
            int unsignedShort2 = randomAccessFileOrArray.readUnsignedShort();
            arrayList = new ArrayList();
            while (i2 < unsignedShort2) {
                readRangeRecord(randomAccessFileOrArray, arrayList);
                i2++;
            }
        } else {
            throw new UnsupportedOperationException(MessageFormatUtil.format("Invalid coverage format: {0}", Integer.valueOf(s)));
        }
        return Collections.unmodifiableList(arrayList);
    }

    private static void readRangeRecord(RandomAccessFileOrArray randomAccessFileOrArray, List<Integer> list) throws IOException {
        int unsignedShort = randomAccessFileOrArray.readUnsignedShort();
        randomAccessFileOrArray.readShort();
        for (int unsignedShort2 = randomAccessFileOrArray.readUnsignedShort(); unsignedShort2 <= unsignedShort; unsignedShort2++) {
            list.add(Integer.valueOf(unsignedShort2));
        }
    }

    public static GposValueRecord readGposValueRecord(OpenTypeFontTableReader openTypeFontTableReader, int i) throws IOException {
        GposValueRecord gposValueRecord = new GposValueRecord();
        if ((i & 1) != 0) {
            gposValueRecord.XPlacement = (openTypeFontTableReader.f2875rf.readShort() * 1000) / openTypeFontTableReader.getUnitsPerEm();
        }
        if ((i & 2) != 0) {
            gposValueRecord.YPlacement = (openTypeFontTableReader.f2875rf.readShort() * 1000) / openTypeFontTableReader.getUnitsPerEm();
        }
        if ((i & 4) != 0) {
            gposValueRecord.XAdvance = (openTypeFontTableReader.f2875rf.readShort() * 1000) / openTypeFontTableReader.getUnitsPerEm();
        }
        if ((i & 8) != 0) {
            gposValueRecord.YAdvance = (openTypeFontTableReader.f2875rf.readShort() * 1000) / openTypeFontTableReader.getUnitsPerEm();
        }
        if ((i & 16) != 0) {
            openTypeFontTableReader.f2875rf.skip(2L);
        }
        if ((i & 32) != 0) {
            openTypeFontTableReader.f2875rf.skip(2L);
        }
        if ((i & 64) != 0) {
            openTypeFontTableReader.f2875rf.skip(2L);
        }
        if ((i & 128) != 0) {
            openTypeFontTableReader.f2875rf.skip(2L);
        }
        return gposValueRecord;
    }

    public static GposAnchor readGposAnchor(OpenTypeFontTableReader openTypeFontTableReader, int i) throws IOException {
        if (i == 0) {
            return null;
        }
        openTypeFontTableReader.f2875rf.seek(i);
        openTypeFontTableReader.f2875rf.readUnsignedShort();
        GposAnchor gposAnchor = new GposAnchor();
        gposAnchor.XCoordinate = (openTypeFontTableReader.f2875rf.readShort() * 1000) / openTypeFontTableReader.getUnitsPerEm();
        gposAnchor.YCoordinate = (openTypeFontTableReader.f2875rf.readShort() * 1000) / openTypeFontTableReader.getUnitsPerEm();
        return gposAnchor;
    }

    public static List<OtfMarkRecord> readMarkArray(OpenTypeFontTableReader openTypeFontTableReader, int i) throws IOException {
        openTypeFontTableReader.f2875rf.seek(i);
        int unsignedShort = openTypeFontTableReader.f2875rf.readUnsignedShort();
        int[] iArr = new int[unsignedShort];
        int[] iArr2 = new int[unsignedShort];
        for (int i2 = 0; i2 < unsignedShort; i2++) {
            iArr[i2] = openTypeFontTableReader.f2875rf.readUnsignedShort();
            iArr2[i2] = openTypeFontTableReader.f2875rf.readUnsignedShort() + i;
        }
        ArrayList arrayList = new ArrayList();
        for (int i3 = 0; i3 < unsignedShort; i3++) {
            OtfMarkRecord otfMarkRecord = new OtfMarkRecord();
            otfMarkRecord.markClass = iArr[i3];
            otfMarkRecord.anchor = readGposAnchor(openTypeFontTableReader, iArr2[i3]);
            arrayList.add(otfMarkRecord);
        }
        return arrayList;
    }

    public static SubstLookupRecord[] readSubstLookupRecords(RandomAccessFileOrArray randomAccessFileOrArray, int i) throws IOException {
        SubstLookupRecord[] substLookupRecordArr = new SubstLookupRecord[i];
        for (int i2 = 0; i2 < i; i2++) {
            SubstLookupRecord substLookupRecord = new SubstLookupRecord();
            substLookupRecord.sequenceIndex = randomAccessFileOrArray.readUnsignedShort();
            substLookupRecord.lookupListIndex = randomAccessFileOrArray.readUnsignedShort();
            substLookupRecordArr[i2] = substLookupRecord;
        }
        return substLookupRecordArr;
    }

    public static PosLookupRecord[] readPosLookupRecords(RandomAccessFileOrArray randomAccessFileOrArray, int i) throws IOException {
        PosLookupRecord[] posLookupRecordArr = new PosLookupRecord[i];
        for (int i2 = 0; i2 < i; i2++) {
            PosLookupRecord posLookupRecord = new PosLookupRecord();
            posLookupRecord.sequenceIndex = randomAccessFileOrArray.readUnsignedShort();
            posLookupRecord.lookupListIndex = randomAccessFileOrArray.readUnsignedShort();
            posLookupRecordArr[i2] = posLookupRecord;
        }
        return posLookupRecordArr;
    }

    public static GposAnchor[] readAnchorArray(OpenTypeFontTableReader openTypeFontTableReader, int[] iArr, int i, int i2) throws IOException {
        GposAnchor[] gposAnchorArr = new GposAnchor[i2 - i];
        for (int i3 = i; i3 < i2; i3++) {
            gposAnchorArr[i3 - i] = readGposAnchor(openTypeFontTableReader, iArr[i3]);
        }
        return gposAnchorArr;
    }

    public static List<GposAnchor[]> readBaseArray(OpenTypeFontTableReader openTypeFontTableReader, int i, int i2) throws IOException {
        ArrayList arrayList = new ArrayList();
        openTypeFontTableReader.f2875rf.seek(i2);
        int unsignedShort = openTypeFontTableReader.f2875rf.readUnsignedShort();
        int[] uShortArray = readUShortArray(openTypeFontTableReader.f2875rf, unsignedShort * i, i2);
        int i3 = 0;
        int i4 = 0;
        while (i3 < unsignedShort) {
            int i5 = i4 + i;
            arrayList.add(readAnchorArray(openTypeFontTableReader, uShortArray, i4, i5));
            i3++;
            i4 = i5;
        }
        return arrayList;
    }

    public static List<List<GposAnchor[]>> readLigatureArray(OpenTypeFontTableReader openTypeFontTableReader, int i, int i2) throws IOException {
        ArrayList arrayList = new ArrayList();
        openTypeFontTableReader.f2875rf.seek(i2);
        int unsignedShort = openTypeFontTableReader.f2875rf.readUnsignedShort();
        int[] uShortArray = readUShortArray(openTypeFontTableReader.f2875rf, unsignedShort, i2);
        for (int i3 = 0; i3 < unsignedShort; i3++) {
            int i4 = uShortArray[i3];
            ArrayList arrayList2 = new ArrayList();
            openTypeFontTableReader.f2875rf.seek(i4);
            int unsignedShort2 = openTypeFontTableReader.f2875rf.readUnsignedShort();
            int[] uShortArray2 = readUShortArray(openTypeFontTableReader.f2875rf, i * unsignedShort2, i4);
            int i5 = 0;
            int i6 = 0;
            while (i5 < unsignedShort2) {
                int i7 = i6 + i;
                arrayList2.add(readAnchorArray(openTypeFontTableReader, uShortArray2, i6, i7));
                i5++;
                i6 = i7;
            }
            arrayList.add(arrayList2);
        }
        return arrayList;
    }
}
