package com.itextpdf.io.font.otf;

import com.itextpdf.io.source.RandomAccessFileOrArray;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class GlyphPositioningTableReader extends OpenTypeFontTableReader {
    public GlyphPositioningTableReader(RandomAccessFileOrArray randomAccessFileOrArray, int i, OpenTypeGdefTableReader openTypeGdefTableReader, Map<Integer, Glyph> map, int i2) throws IOException {
        super(randomAccessFileOrArray, i, openTypeGdefTableReader, map, i2);
        startReadingTable();
    }

    @Override // com.itextpdf.io.font.otf.OpenTypeFontTableReader
    protected OpenTableLookup readLookupTable(int i, int i2, int[] iArr) throws IOException {
        if (i == 9) {
            int i3 = 0;
            while (i3 < iArr.length) {
                int i4 = iArr[i3];
                this.rf.seek(i4);
                this.rf.readUnsignedShort();
                int unsignedShort = this.rf.readUnsignedShort();
                iArr[i3] = i4 + this.rf.readInt();
                i3++;
                i = unsignedShort;
            }
        }
        switch (i) {
            case 1:
                return new GposLookupType1(this, i2, iArr);
            case 2:
                return new GposLookupType2(this, i2, iArr);
            case 3:
            default:
                return null;
            case 4:
                return new GposLookupType4(this, i2, iArr);
            case 5:
                return new GposLookupType5(this, i2, iArr);
            case 6:
                return new GposLookupType6(this, i2, iArr);
            case 7:
                return new GposLookupType7(this, i2, iArr);
            case 8:
                return new GposLookupType8(this, i2, iArr);
        }
    }
}
