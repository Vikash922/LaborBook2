package com.itextpdf.io.font.otf;

import com.itextpdf.io.source.RandomAccessFileOrArray;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class GlyphSubstitutionTableReader extends OpenTypeFontTableReader {
    public GlyphSubstitutionTableReader(RandomAccessFileOrArray randomAccessFileOrArray, int i, OpenTypeGdefTableReader openTypeGdefTableReader, Map<Integer, Glyph> map, int i2) throws IOException {
        super(randomAccessFileOrArray, i, openTypeGdefTableReader, map, i2);
        startReadingTable();
    }

    @Override // com.itextpdf.io.font.otf.OpenTypeFontTableReader
    protected OpenTableLookup readLookupTable(int i, int i2, int[] iArr) throws IOException {
        if (i == 7) {
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
                return new GsubLookupType1(this, i2, iArr);
            case 2:
                return new GsubLookupType2(this, i2, iArr);
            case 3:
                return new GsubLookupType3(this, i2, iArr);
            case 4:
                return new GsubLookupType4(this, i2, iArr);
            case 5:
                return new GsubLookupType5(this, i2, iArr);
            case 6:
                return new GsubLookupType6(this, i2, iArr);
            default:
                return null;
        }
    }
}
