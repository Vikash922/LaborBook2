package com.itextpdf.io.font.woff2;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.io.codec.brotli.dec.BrotliInputStream;
import com.itextpdf.io.exceptions.FontCompressionException;
import com.itextpdf.io.font.woff2.Woff2Common;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes6.dex */
class Woff2Dec {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int FLAG_ARG_1_AND_2_ARE_WORDS = 1;
    private static final int FLAG_MORE_COMPONENTS = 32;
    private static final int FLAG_WE_HAVE_AN_X_AND_Y_SCALE = 64;
    private static final int FLAG_WE_HAVE_A_SCALE = 8;
    private static final int FLAG_WE_HAVE_A_TWO_BY_TWO = 128;
    private static final int FLAG_WE_HAVE_INSTRUCTIONS = 256;
    private static final int kDefaultGlyphBuf = 5120;
    private static final int kEndPtsOfContoursOffset = 10;
    private static final int kGlyfOnCurve = 1;
    private static final int kGlyfRepeat = 8;
    private static final int kGlyfThisXIsSame = 16;
    private static final int kGlyfThisYIsSame = 32;
    private static final int kGlyfXShort = 2;
    private static final int kGlyfYShort = 4;
    private static final float kMaxPlausibleCompressionRatio = 100.0f;

    private static int withSign(int i, int i2) {
        return (i & 1) != 0 ? i2 : -i2;
    }

    Woff2Dec() {
    }

    private static class TtcFont {
        public int dst_offset;
        public int flavor;
        public int header_checksum;
        public short[] table_indices;

        private TtcFont() {
        }
    }

    private static class Woff2Header {
        public int compressed_length;
        public int compressed_offset;
        public int flavor;
        public int header_version;
        public short num_tables;
        public Woff2Common.Table[] tables;
        public TtcFont[] ttc_fonts;
        public int uncompressed_size;

        private Woff2Header() {
        }
    }

    private static class Woff2FontInfo {
        public short index_format;
        public short num_glyphs;
        public short num_hmetrics;
        public Map<Integer, Integer> table_entry_by_tag;
        public short[] x_mins;

        private Woff2FontInfo() {
            this.table_entry_by_tag = new HashMap();
        }
    }

    private static class RebuildMetadata {
        Map<TableChecksumInfo, Integer> checksums;
        Woff2FontInfo[] font_infos;
        int header_checksum;

        private RebuildMetadata() {
            this.checksums = new HashMap();
        }
    }

    private static class TableChecksumInfo {
        public int offset;
        public int tag;

        public TableChecksumInfo(int i, int i2) {
            this.tag = i;
            this.offset = i2;
        }

        public int hashCode() {
            return (new Integer(this.tag).hashCode() * 13) + new Integer(this.offset).hashCode();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof TableChecksumInfo)) {
                return false;
            }
            TableChecksumInfo tableChecksumInfo = (TableChecksumInfo) obj;
            return this.tag == tableChecksumInfo.tag && this.offset == tableChecksumInfo.offset;
        }
    }

    private static int tripletDecode(byte[] bArr, int i, int i2, int i3, int i4, Woff2Common.Point[] pointArr) {
        int iWithSign;
        int iWithSign2;
        int iWithSign3;
        int iWithSign4;
        if (i4 > i3) {
            throw new FontCompressionException(FontCompressionException.RECONSTRUCT_GLYPH_FAILED);
        }
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (i5 < i4) {
            int iAsU8 = JavaUnsignedUtil.asU8(bArr[i5 + i]);
            boolean z = (iAsU8 >> 7) == 0;
            int i9 = iAsU8 & 127;
            int i10 = i6 + (i9 < 84 ? 1 : i9 < 120 ? 2 : i9 < 124 ? 3 : 4);
            if (i10 > i3 || i10 < i6) {
                throw new FontCompressionException(FontCompressionException.RECONSTRUCT_GLYPH_FAILED);
            }
            if (i9 < 10) {
                iWithSign = withSign(i9, ((iAsU8 & 14) << 7) + JavaUnsignedUtil.asU8(bArr[i2 + i6]));
                iWithSign2 = 0;
            } else if (i9 < 20) {
                iWithSign2 = withSign(i9, (((i9 - 10) & 14) << 7) + JavaUnsignedUtil.asU8(bArr[i2 + i6]));
                iWithSign = 0;
            } else {
                if (i9 < 84) {
                    int i11 = i9 - 20;
                    int iAsU82 = JavaUnsignedUtil.asU8(bArr[i2 + i6]);
                    iWithSign3 = withSign(i9, (i11 & 48) + 1 + (iAsU82 >> 4));
                    iWithSign4 = withSign(i9 >> 1, ((i11 & 12) << 2) + 1 + (iAsU82 & 15));
                } else if (i9 < 120) {
                    int i12 = i9 - 84;
                    int i13 = i2 + i6;
                    iWithSign3 = withSign(i9, ((i12 / 12) << 8) + 1 + JavaUnsignedUtil.asU8(bArr[i13]));
                    iWithSign4 = withSign(i9 >> 1, (((i12 % 12) >> 2) << 8) + 1 + JavaUnsignedUtil.asU8(bArr[i13 + 1]));
                } else if (i9 < 124) {
                    int i14 = i2 + i6;
                    int iAsU83 = JavaUnsignedUtil.asU8(bArr[i14 + 1]);
                    int iWithSign5 = withSign(i9, (JavaUnsignedUtil.asU8(bArr[i14]) << 4) + (iAsU83 >> 4));
                    iWithSign = withSign(i9 >> 1, ((iAsU83 & 15) << 8) + JavaUnsignedUtil.asU8(bArr[i14 + 2]));
                    iWithSign2 = iWithSign5;
                } else {
                    int i15 = i2 + i6;
                    int iWithSign6 = withSign(i9, (JavaUnsignedUtil.asU8(bArr[i15]) << 8) + JavaUnsignedUtil.asU8(bArr[i15 + 1]));
                    iWithSign = withSign(i9 >> 1, (JavaUnsignedUtil.asU8(bArr[i15 + 2]) << 8) + JavaUnsignedUtil.asU8(bArr[i15 + 3]));
                    iWithSign2 = iWithSign6;
                }
                iWithSign = iWithSign4;
                iWithSign2 = iWithSign3;
            }
            i7 += iWithSign2;
            i8 += iWithSign;
            pointArr[i5] = new Woff2Common.Point(i7, i8, z);
            i5++;
            i6 = i10;
        }
        return i6;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v18 */
    /* JADX WARN: Type inference failed for: r5v19 */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v8, types: [int] */
    private static int storePoints(int i, Woff2Common.Point[] pointArr, int i2, int i3, byte[] bArr, int i4) {
        int i5;
        ?? r5;
        ?? r52;
        int iStoreU16 = (i2 * 2) + 12 + i3;
        ?? r4 = -1;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        while (i6 < i) {
            Woff2Common.Point point = pointArr[i6];
            boolean z = point.on_curve;
            int i12 = point.x - i10;
            int i13 = point.y - i11;
            if (i12 == 0) {
                r5 = (z ? 1 : 0) | 16;
            } else if (i12 <= -256 || i12 >= 256) {
                i8 += 2;
                r5 = z;
            } else {
                i8++;
                r5 = (z ? 1 : 0) | (i12 > 0 ? (char) 16 : (char) 0) | 2;
            }
            if (i13 == 0) {
                r52 = (r5 == true ? 1 : 0) | 32;
            } else if (i13 <= -256 || i13 >= 256) {
                i9 += 2;
                r52 = r5;
            } else {
                i9++;
                r52 = (r5 == true ? 1 : 0) | (i13 > 0 ? ' ' : (char) 0) | 4;
            }
            if (r52 == r4 && i7 != 255) {
                int i14 = iStoreU16 - 1;
                bArr[i14] = (byte) (bArr[i14] | 8);
                i7++;
            } else {
                if (i7 != 0) {
                    if (iStoreU16 >= i4) {
                        throw new FontCompressionException(FontCompressionException.RECONSTRUCT_POINT_FAILED);
                    }
                    bArr[iStoreU16] = (byte) i7;
                    iStoreU16++;
                }
                if (iStoreU16 >= i4) {
                    throw new FontCompressionException(FontCompressionException.RECONSTRUCT_POINT_FAILED);
                }
                bArr[iStoreU16] = (byte) r52;
                iStoreU16++;
                i7 = 0;
            }
            i10 = point.x;
            i11 = point.y;
            i6++;
            r4 = r52;
        }
        if (i7 != 0) {
            if (iStoreU16 >= i4) {
                throw new FontCompressionException(FontCompressionException.RECONSTRUCT_POINT_FAILED);
            }
            bArr[iStoreU16] = (byte) i7;
            iStoreU16++;
        }
        int i15 = i9 + i8;
        if (i15 < i8 || (i5 = i15 + iStoreU16) < iStoreU16 || i5 > i4) {
            throw new FontCompressionException(FontCompressionException.RECONSTRUCT_POINT_FAILED);
        }
        int iStoreU162 = i8 + iStoreU16;
        int i16 = 0;
        int i17 = 0;
        for (int i18 = 0; i18 < i; i18++) {
            int i19 = pointArr[i18].x - i16;
            if (i19 != 0) {
                if (i19 > -256 && i19 < 256) {
                    bArr[iStoreU16] = (byte) Math.abs(i19);
                    iStoreU16++;
                } else {
                    iStoreU16 = StoreBytes.storeU16(bArr, iStoreU16, i19);
                }
            }
            i16 += i19;
            int i20 = pointArr[i18].y - i17;
            if (i20 != 0) {
                if (i20 > -256 && i20 < 256) {
                    bArr[iStoreU162] = (byte) Math.abs(i20);
                    iStoreU162++;
                } else {
                    iStoreU162 = StoreBytes.storeU16(bArr, iStoreU162, i20);
                }
            }
            i17 += i20;
        }
        return iStoreU162;
    }

    private static void computeBbox(int i, Woff2Common.Point[] pointArr, byte[] bArr) {
        int iMax;
        int iMax2;
        int iMin;
        int iMin2 = 0;
        if (i > 0) {
            int i2 = pointArr[0].x;
            iMax2 = pointArr[0].x;
            iMin = pointArr[0].y;
            iMax = pointArr[0].y;
            iMin2 = i2;
        } else {
            iMax = 0;
            iMax2 = 0;
            iMin = 0;
        }
        for (int i3 = 1; i3 < i; i3++) {
            int i4 = pointArr[i3].x;
            int i5 = pointArr[i3].y;
            iMin2 = Math.min(i4, iMin2);
            iMax2 = Math.max(i4, iMax2);
            iMin = Math.min(i5, iMin);
            iMax = Math.max(i5, iMax);
        }
        StoreBytes.storeU16(bArr, StoreBytes.storeU16(bArr, StoreBytes.storeU16(bArr, StoreBytes.storeU16(bArr, 2, iMin2), iMin), iMax2), iMax);
    }

    private static CompositeGlyphInfo sizeOfComposite(Buffer buffer) {
        Buffer buffer2 = new Buffer(buffer);
        int offset = buffer2.getOffset();
        boolean z = false;
        int iAsU16 = 32;
        while ((iAsU16 & 32) != 0) {
            iAsU16 = JavaUnsignedUtil.asU16(buffer2.readShort());
            z |= (iAsU16 & 256) != 0;
            int i = (iAsU16 & 1) != 0 ? 6 : 4;
            if ((iAsU16 & 8) != 0) {
                i += 2;
            } else if ((iAsU16 & 64) != 0) {
                i += 4;
            } else if ((iAsU16 & 128) != 0) {
                i += 8;
            }
            buffer2.skip(i);
        }
        return new CompositeGlyphInfo(buffer2.getOffset() - offset, z);
    }

    private static class CompositeGlyphInfo {
        public boolean have_instructions;
        public int size;

        public CompositeGlyphInfo(int i, boolean z) {
            this.size = i;
            this.have_instructions = z;
        }
    }

    private static void pad4(Woff2Out woff2Out) {
        byte[] bArr = {0, 0, 0};
        if (woff2Out.size() + 3 < woff2Out.size()) {
            throw new FontCompressionException(FontCompressionException.PADDING_OVERFLOW);
        }
        int iRound4 = Round.round4(woff2Out.size()) - woff2Out.size();
        if (iRound4 > 0) {
            woff2Out.write(bArr, 0, iRound4);
        }
    }

    private static int storeLoca(int[] iArr, int i, Woff2Out woff2Out) {
        long length = iArr.length;
        long j = i != 0 ? 4L : 2L;
        if (((length << 2) >> 2) != length) {
            throw new FontCompressionException(FontCompressionException.LOCA_SIZE_OVERFLOW);
        }
        int i2 = (int) (length * j);
        byte[] bArr = new byte[i2];
        int iStoreU16 = 0;
        for (int i3 : iArr) {
            if (i != 0) {
                iStoreU16 = StoreBytes.storeU32(bArr, iStoreU16, i3);
            } else {
                iStoreU16 = StoreBytes.storeU16(bArr, iStoreU16, i3 >> 1);
            }
        }
        int iComputeULongSum = Woff2Common.computeULongSum(bArr, 0, i2);
        woff2Out.write(bArr, 0, i2);
        return iComputeULongSum;
    }

    private static Checksums reconstructGlyf(byte[] bArr, int i, Woff2Common.Table table, int i2, Woff2Common.Table table2, int i3, Woff2FontInfo woff2FontInfo, Woff2Out woff2Out) {
        int i4;
        Buffer buffer;
        Buffer buffer2;
        Buffer buffer3;
        Buffer buffer4;
        int i5;
        Buffer buffer5;
        int[] iArr;
        int i6;
        ArrayList arrayList;
        Buffer buffer6;
        int i7;
        byte[] bArr2;
        int iStorePoints;
        Woff2Common.Point[] pointArr;
        int i8;
        Woff2Common.Point[] pointArr2;
        Woff2FontInfo woff2FontInfo2;
        char c;
        byte[] bArr3;
        int i9;
        byte[] bArr4 = bArr;
        Woff2FontInfo woff2FontInfo3 = woff2FontInfo;
        Buffer buffer7 = new Buffer(bArr4, i, table.transform_length);
        ArrayList arrayList2 = new ArrayList(7);
        int size = woff2Out.size();
        buffer7.readInt();
        woff2FontInfo3.num_glyphs = buffer7.readShort();
        woff2FontInfo3.index_format = buffer7.readShort();
        int i10 = 36;
        if (36 > table.transform_length) {
            throw new FontCompressionException(FontCompressionException.RECONSTRUCT_GLYF_TABLE_FAILED);
        }
        int i11 = 0;
        for (int i12 = 7; i11 < i12; i12 = 7) {
            int i13 = buffer7.readInt();
            if (i13 > table.transform_length - i10) {
                throw new FontCompressionException(FontCompressionException.RECONSTRUCT_GLYF_TABLE_FAILED);
            }
            arrayList2.add(new StreamInfo(i + i10, i13));
            i10 += i13;
            i11++;
        }
        Buffer buffer8 = new Buffer(bArr4, ((StreamInfo) arrayList2.get(0)).offset, ((StreamInfo) arrayList2.get(0)).length);
        Buffer buffer9 = new Buffer(bArr4, ((StreamInfo) arrayList2.get(1)).offset, ((StreamInfo) arrayList2.get(1)).length);
        Buffer buffer10 = new Buffer(bArr4, ((StreamInfo) arrayList2.get(2)).offset, ((StreamInfo) arrayList2.get(2)).length);
        Buffer buffer11 = new Buffer(bArr4, ((StreamInfo) arrayList2.get(3)).offset, ((StreamInfo) arrayList2.get(3)).length);
        Buffer buffer12 = new Buffer(bArr4, ((StreamInfo) arrayList2.get(4)).offset, ((StreamInfo) arrayList2.get(4)).length);
        Buffer buffer13 = new Buffer(bArr4, ((StreamInfo) arrayList2.get(5)).offset, ((StreamInfo) arrayList2.get(5)).length);
        Buffer buffer14 = new Buffer(bArr4, ((StreamInfo) arrayList2.get(6)).offset, ((StreamInfo) arrayList2.get(6)).length);
        int[] iArr2 = new int[JavaUnsignedUtil.asU16(woff2FontInfo3.num_glyphs) + 1];
        ArrayList arrayList3 = new ArrayList();
        int[] iArr3 = iArr2;
        int initialOffset = buffer13.getInitialOffset();
        Woff2Common.Point[] pointArr3 = new Woff2Common.Point[0];
        char c2 = 2;
        int iAsU16 = ((JavaUnsignedUtil.asU16(woff2FontInfo3.num_glyphs) + 31) >> 5) << 2;
        buffer13.skip(iAsU16);
        byte[] bArr5 = new byte[kDefaultGlyphBuf];
        woff2FontInfo3.x_mins = new short[JavaUnsignedUtil.asU16(woff2FontInfo3.num_glyphs)];
        int i14 = i2;
        byte[] bArr6 = bArr5;
        int i15 = 0;
        int i16 = 0;
        int i17 = kDefaultGlyphBuf;
        while (i16 < JavaUnsignedUtil.asU16(woff2FontInfo3.num_glyphs)) {
            System.arraycopy(bArr4, initialOffset, new byte[iAsU16], 0, iAsU16);
            boolean z = (bArr4[(i16 >> 3) + initialOffset] & (128 >> (i16 & 7))) != 0;
            int iAsU162 = JavaUnsignedUtil.asU16(buffer8.readShort());
            int i18 = iAsU16;
            if (iAsU162 != 65535) {
                i4 = initialOffset;
                buffer = buffer8;
                if (iAsU162 > 0) {
                    arrayList3.clear();
                    int i19 = 0;
                    int i20 = 0;
                    while (i19 < iAsU162) {
                        int i21 = VariableLength.read255UShort(buffer9);
                        arrayList3.add(Integer.valueOf(i21));
                        int i22 = i21 + i20;
                        if (i22 < i20) {
                            throw new FontCompressionException(FontCompressionException.RECONSTRUCT_GLYF_TABLE_FAILED);
                        }
                        i19++;
                        i20 = i22;
                    }
                    if (i20 > buffer10.getLength() - buffer10.getOffset()) {
                        throw new FontCompressionException(FontCompressionException.RECONSTRUCT_GLYF_TABLE_FAILED);
                    }
                    int initialOffset2 = buffer10.getInitialOffset() + buffer10.getOffset();
                    int initialOffset3 = buffer11.getInitialOffset() + buffer11.getOffset();
                    int length = buffer11.getLength() - buffer11.getOffset();
                    ArrayList arrayList4 = arrayList3;
                    int i23 = i15;
                    if (i23 < i20) {
                        pointArr = new Woff2Common.Point[i20];
                        i8 = i20;
                        buffer5 = buffer9;
                        arrayList = arrayList4;
                    } else {
                        buffer5 = buffer9;
                        pointArr = pointArr3;
                        arrayList = arrayList4;
                        i8 = i23;
                    }
                    i5 = i16;
                    buffer6 = buffer11;
                    iArr = iArr3;
                    i6 = i18;
                    buffer2 = buffer12;
                    buffer3 = buffer10;
                    buffer4 = buffer14;
                    int iTripletDecode = tripletDecode(bArr, initialOffset2, initialOffset3, length, i20, pointArr);
                    buffer3.skip(i20);
                    buffer6.skip(iTripletDecode);
                    int i24 = VariableLength.read255UShort(buffer6);
                    if (i20 >= 134217728 || i24 >= 1073741824) {
                        throw new FontCompressionException(FontCompressionException.RECONSTRUCT_GLYF_TABLE_FAILED);
                    }
                    int i25 = (iAsU162 * 2) + 12 + (i20 * 5) + i24;
                    if (i17 < i25) {
                        bArr2 = new byte[i25];
                        i17 = i25;
                    } else {
                        bArr2 = bArr6;
                    }
                    int iStoreU16 = StoreBytes.storeU16(bArr2, 0, iAsU162);
                    if (z) {
                        buffer13.read(bArr2, iStoreU16, 8);
                        pointArr2 = pointArr;
                    } else {
                        pointArr2 = pointArr;
                        computeBbox(i20, pointArr2, bArr2);
                    }
                    int iStoreU162 = 10;
                    int iIntValue = -1;
                    for (int i26 = 0; i26 < iAsU162; i26++) {
                        iIntValue += ((Integer) arrayList.get(i26)).intValue();
                        if (iIntValue >= 65536) {
                            throw new FontCompressionException(FontCompressionException.RECONSTRUCT_GLYF_TABLE_FAILED);
                        }
                        iStoreU162 = StoreBytes.storeU16(bArr2, iStoreU162, iIntValue);
                    }
                    buffer4.read(bArr2, StoreBytes.storeU16(bArr2, iStoreU162, i24), i24);
                    Woff2Common.Point[] pointArr4 = pointArr2;
                    iStorePoints = storePoints(i20, pointArr2, iAsU162, i24, bArr2, i17);
                    i7 = i8;
                    pointArr3 = pointArr4;
                } else {
                    buffer2 = buffer12;
                    buffer3 = buffer10;
                    buffer4 = buffer14;
                    i5 = i16;
                    buffer5 = buffer9;
                    iArr = iArr3;
                    i6 = i18;
                    arrayList = arrayList3;
                    buffer6 = buffer11;
                    i7 = i15;
                    bArr2 = bArr6;
                    iStorePoints = 0;
                }
            } else {
                if (!z) {
                    throw new FontCompressionException(FontCompressionException.RECONSTRUCT_GLYF_TABLE_FAILED);
                }
                CompositeGlyphInfo compositeGlyphInfoSizeOfComposite = sizeOfComposite(buffer12);
                boolean z2 = compositeGlyphInfoSizeOfComposite.have_instructions;
                int i27 = compositeGlyphInfoSizeOfComposite.size;
                int i28 = z2 ? VariableLength.read255UShort(buffer11) : 0;
                i4 = initialOffset;
                int i29 = i27 + 12 + i28;
                if (i17 < i29) {
                    i9 = i29;
                    bArr3 = new byte[i29];
                    buffer = buffer8;
                } else {
                    buffer = buffer8;
                    bArr3 = bArr6;
                    i9 = i17;
                }
                int iStoreU163 = StoreBytes.storeU16(bArr3, 0, iAsU162);
                buffer13.read(bArr3, iStoreU163, 8);
                int i30 = iStoreU163 + 8;
                buffer12.read(bArr3, i30, i27);
                int i31 = i30 + i27;
                if (z2) {
                    int iStoreU164 = StoreBytes.storeU16(bArr3, i31, i28);
                    buffer14.read(bArr3, iStoreU164, i28);
                    i31 = iStoreU164 + i28;
                }
                buffer2 = buffer12;
                i5 = i16;
                bArr2 = bArr3;
                buffer5 = buffer9;
                iArr = iArr3;
                i17 = i9;
                i6 = i18;
                arrayList = arrayList3;
                buffer6 = buffer11;
                buffer4 = buffer14;
                iStorePoints = i31;
                i7 = i15;
                buffer3 = buffer10;
            }
            int[] iArr4 = iArr;
            iArr4[i5] = woff2Out.size() - size;
            woff2Out.write(bArr2, 0, iStorePoints);
            pad4(woff2Out);
            int iComputeULongSum = i14 + Woff2Common.computeULongSum(bArr2, 0, iStorePoints);
            if (iAsU162 > 0) {
                c = 2;
                woff2FontInfo2 = woff2FontInfo;
                woff2FontInfo2.x_mins[i5] = new Buffer(bArr2, 2, 2).readShort();
            } else {
                woff2FontInfo2 = woff2FontInfo;
                c = 2;
            }
            bArr4 = bArr;
            i15 = i7;
            i14 = iComputeULongSum;
            bArr6 = bArr2;
            buffer11 = buffer6;
            arrayList3 = arrayList;
            iAsU16 = i6;
            buffer12 = buffer2;
            buffer9 = buffer5;
            iArr3 = iArr4;
            i16 = i5 + 1;
            buffer14 = buffer4;
            c2 = c;
            woff2FontInfo3 = woff2FontInfo2;
            buffer10 = buffer3;
            initialOffset = i4;
            buffer8 = buffer;
        }
        Woff2FontInfo woff2FontInfo4 = woff2FontInfo3;
        int[] iArr5 = iArr3;
        table.dst_length = woff2Out.size() - table.dst_offset;
        table2.dst_offset = woff2Out.size();
        iArr5[JavaUnsignedUtil.asU16(woff2FontInfo4.num_glyphs)] = table.dst_length;
        int iStoreLoca = storeLoca(iArr5, woff2FontInfo4.index_format, woff2Out);
        table2.dst_length = woff2Out.size() - table2.dst_offset;
        return new Checksums(iStoreLoca, i14);
    }

    private static class Checksums {
        public int glyph_checksum;
        public int loca_checksum;

        public Checksums(int i, int i2) {
            this.loca_checksum = i;
            this.glyph_checksum = i2;
        }
    }

    private static class StreamInfo {
        public int length;
        public int offset;

        public StreamInfo(int i, int i2) {
            this.offset = i;
            this.length = i2;
        }
    }

    private static Woff2Common.Table findTable(ArrayList<Woff2Common.Table> arrayList, int i) {
        for (Woff2Common.Table table : arrayList) {
            if (table.tag == i) {
                return table;
            }
        }
        return null;
    }

    private static short readNumHMetrics(byte[] bArr, int i, int i2) {
        Buffer buffer = new Buffer(bArr, i, i2);
        buffer.skip(34);
        return buffer.readShort();
    }

    private static int reconstructTransformedHmtx(byte[] bArr, int i, int i2, int i3, int i4, short[] sArr, Woff2Out woff2Out) {
        short s;
        short s2;
        Buffer buffer = new Buffer(bArr, i, i2);
        int iAsU8 = JavaUnsignedUtil.asU8(buffer.readByte());
        boolean z = (iAsU8 & 1) == 0;
        boolean z2 = (iAsU8 & 2) == 0;
        if (z && z2) {
            throw new FontCompressionException(FontCompressionException.RECONSTRUCT_HMTX_TABLE_FAILED);
        }
        if (sArr == null || sArr.length != i3) {
            throw new FontCompressionException(FontCompressionException.RECONSTRUCT_HMTX_TABLE_FAILED);
        }
        if (i4 > i3) {
            throw new FontCompressionException(FontCompressionException.RECONSTRUCT_HMTX_TABLE_FAILED);
        }
        if (i4 < 1) {
            throw new FontCompressionException(FontCompressionException.RECONSTRUCT_HMTX_TABLE_FAILED);
        }
        short[] sArr2 = new short[i4];
        for (int i5 = 0; i5 < i4; i5++) {
            sArr2[i5] = buffer.readShort();
        }
        short[] sArr3 = new short[i3];
        for (int i6 = 0; i6 < i4; i6++) {
            if (z) {
                s2 = buffer.readShort();
            } else {
                s2 = sArr[i6];
            }
            sArr3[i6] = s2;
        }
        for (int i7 = i4; i7 < i3; i7++) {
            if (z2) {
                s = buffer.readShort();
            } else {
                s = sArr[i7];
            }
            sArr3[i7] = s;
        }
        int i8 = (i3 * 2) + (i4 * 2);
        byte[] bArr2 = new byte[i8];
        int iStoreU16 = 0;
        for (int i9 = 0; i9 < i3; i9++) {
            if (i9 < i4) {
                iStoreU16 = StoreBytes.storeU16(bArr2, iStoreU16, sArr2[i9]);
            }
            iStoreU16 = StoreBytes.storeU16(bArr2, iStoreU16, sArr3[i9]);
        }
        int iComputeULongSum = Woff2Common.computeULongSum(bArr2, 0, i8);
        woff2Out.write(bArr2, 0, i8);
        return iComputeULongSum;
    }

    private static void woff2Uncompress(byte[] bArr, int i, int i2, byte[] bArr2, int i3, int i4) {
        try {
            BrotliInputStream brotliInputStream = new BrotliInputStream(new ByteArrayInputStream(bArr2, i3, i4));
            int i5 = i2;
            while (i5 > 0) {
                int i6 = brotliInputStream.read(bArr, i, i2);
                if (i6 < 0) {
                    throw new FontCompressionException(FontCompressionException.BROTLI_DECODING_FAILED);
                }
                i5 -= i6;
            }
            if (brotliInputStream.read() != -1) {
                throw new FontCompressionException(FontCompressionException.BROTLI_DECODING_FAILED);
            }
            if (i5 != 0) {
                throw new FontCompressionException(FontCompressionException.BROTLI_DECODING_FAILED);
            }
        } catch (IOException unused) {
            throw new FontCompressionException(FontCompressionException.BROTLI_DECODING_FAILED);
        }
    }

    private static void readTableDirectory(Buffer buffer, Woff2Common.Table[] tableArr, int i) {
        int i2;
        int base128;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            Woff2Common.Table table = new Woff2Common.Table();
            tableArr[i3] = table;
            int iAsU8 = JavaUnsignedUtil.asU8(buffer.readByte());
            int i5 = iAsU8 & 63;
            if (i5 == 63) {
                i2 = buffer.readInt();
            } else {
                i2 = TableTags.kKnownTags[i5];
            }
            int i6 = (iAsU8 >> 6) & 3;
            int i7 = 256;
            if (i2 == 1735162214 || i2 == 1819239265 ? i6 != 0 : i6 == 0) {
                i7 = 0;
            }
            int i8 = i6 | i7;
            int base1282 = VariableLength.readBase128(buffer);
            if ((i8 & 256) != 0) {
                base128 = VariableLength.readBase128(buffer);
                if (i2 == 1819239265 && base128 != 0) {
                    throw new FontCompressionException(FontCompressionException.READ_TABLE_DIRECTORY_FAILED);
                }
            } else {
                base128 = base1282;
            }
            int i9 = i4 + base128;
            if (i9 < i4) {
                throw new FontCompressionException(FontCompressionException.READ_TABLE_DIRECTORY_FAILED);
            }
            table.src_offset = i4;
            table.src_length = base128;
            table.tag = i2;
            table.flags = i8;
            table.transform_length = base128;
            table.dst_length = base1282;
            i3++;
            i4 = i9;
        }
    }

    private static int storeOffsetTable(byte[] bArr, int i, int i2, int i3) {
        int iStoreU16 = StoreBytes.storeU16(bArr, StoreBytes.storeU32(bArr, i, i2), i3);
        int i4 = 0;
        while (true) {
            int i5 = i4 + 1;
            if ((1 << i5) > i3) {
                int i6 = (1 << i4) << 4;
                return StoreBytes.storeU16(bArr, StoreBytes.storeU16(bArr, StoreBytes.storeU16(bArr, iStoreU16, i6), i4), (i3 << 4) - i6);
            }
            i4 = i5;
        }
    }

    private static int storeTableEntry(byte[] bArr, int i, int i2) {
        return StoreBytes.storeU32(bArr, StoreBytes.storeU32(bArr, StoreBytes.storeU32(bArr, StoreBytes.storeU32(bArr, i, i2), 0), 0), 0);
    }

    private static int computeOffsetToFirstTable(Woff2Header woff2Header) {
        int iCollectionHeaderSize = (woff2Header.num_tables * 16) + 12;
        if (woff2Header.header_version != 0) {
            iCollectionHeaderSize = Woff2Common.collectionHeaderSize(woff2Header.header_version, woff2Header.ttc_fonts.length) + (woff2Header.ttc_fonts.length * 12);
            for (TtcFont ttcFont : woff2Header.ttc_fonts) {
                iCollectionHeaderSize += ttcFont.table_indices.length * 16;
            }
        }
        return iCollectionHeaderSize;
    }

    private static ArrayList<Woff2Common.Table> tables(Woff2Header woff2Header, int i) {
        ArrayList<Woff2Common.Table> arrayList = new ArrayList<>();
        if (woff2Header.header_version != 0) {
            for (short s : woff2Header.ttc_fonts[i].table_indices) {
                arrayList.add(woff2Header.tables[JavaUnsignedUtil.asU16(s)]);
            }
        } else {
            arrayList.addAll(Arrays.asList(woff2Header.tables));
        }
        return arrayList;
    }

    private static void reconstructFont(byte[] bArr, int i, int i2, RebuildMetadata rebuildMetadata, Woff2Header woff2Header, int i3, Woff2Out woff2Out) {
        Woff2Common.Table table;
        String str;
        int i4;
        int i5;
        char c;
        int iIntValue;
        int i6;
        int i7;
        byte[] bArr2 = bArr;
        int size = woff2Out.size();
        byte[] bArr3 = new byte[12];
        Woff2FontInfo woff2FontInfo = rebuildMetadata.font_infos[i3];
        ArrayList<Woff2Common.Table> arrayListTables = tables(woff2Header, i3);
        boolean z = findTable(arrayListTables, TableTags.kGlyfTableTag) == null;
        boolean z2 = findTable(arrayListTables, TableTags.kLocaTableTag) != null;
        String str2 = FontCompressionException.RECONSTRUCT_TABLE_DIRECTORY_FAILED;
        if (z == z2) {
            throw new FontCompressionException(FontCompressionException.RECONSTRUCT_TABLE_DIRECTORY_FAILED);
        }
        int i8 = rebuildMetadata.header_checksum;
        if (woff2Header.header_version != 0) {
            i8 = woff2Header.ttc_fonts[i3].header_checksum;
        }
        int iComputeULongSum = i8;
        int i9 = 0;
        int iReconstructTransformedHmtx = 0;
        while (i9 < arrayListTables.size()) {
            Woff2Common.Table table2 = arrayListTables.get(i9);
            TableChecksumInfo tableChecksumInfo = new TableChecksumInfo(table2.tag, table2.src_offset);
            boolean zContainsKey = rebuildMetadata.checksums.containsKey(tableChecksumInfo);
            if (i3 == 0 && zContainsKey) {
                throw new FontCompressionException(str2);
            }
            int i10 = i9;
            byte[] bArr4 = bArr3;
            ArrayList<Woff2Common.Table> arrayList = arrayListTables;
            if (((long) table2.src_offset) + ((long) table2.src_length) > i2) {
                throw new FontCompressionException(str2);
            }
            if (table2.tag == 1751672161) {
                woff2FontInfo.num_hmetrics = readNumHMetrics(bArr2, i + table2.src_offset, table2.src_length);
            }
            if (!zContainsKey) {
                if ((table2.flags & 256) != 256) {
                    if (table2.tag != 1751474532) {
                        i7 = 0;
                    } else {
                        if (table2.src_length < 12) {
                            throw new FontCompressionException(str2);
                        }
                        i7 = 0;
                        StoreBytes.storeU32(bArr2, i + table2.src_offset + 8, 0);
                    }
                    table2.dst_offset = size;
                    int iComputeULongSum2 = Woff2Common.computeULongSum(bArr2, i + table2.src_offset, table2.src_length);
                    woff2Out.write(bArr2, i + table2.src_offset, table2.src_length);
                    str = str2;
                    i5 = i7;
                    i4 = i10;
                    c = 25441;
                    table = table2;
                    i6 = iReconstructTransformedHmtx;
                    iReconstructTransformedHmtx = iComputeULongSum2;
                } else if (table2.tag == 1735162214) {
                    table2.dst_offset = size;
                    i4 = i10;
                    str = str2;
                    i5 = 0;
                    Checksums checksumsReconstructGlyf = reconstructGlyf(bArr, i + table2.src_offset, table2, 0, findTable(arrayList, TableTags.kLocaTableTag), iReconstructTransformedHmtx, woff2FontInfo, woff2Out);
                    int i11 = checksumsReconstructGlyf.glyph_checksum;
                    i6 = checksumsReconstructGlyf.loca_checksum;
                    iReconstructTransformedHmtx = i11;
                    table = table2;
                    c = 25441;
                } else {
                    str = str2;
                    i5 = 0;
                    i4 = i10;
                    table = table2;
                    if (table.tag == 1819239265) {
                        c = 25441;
                        i6 = iReconstructTransformedHmtx;
                    } else if (table.tag == 1752003704) {
                        table.dst_offset = size;
                        c = 25441;
                        int i12 = iReconstructTransformedHmtx;
                        iReconstructTransformedHmtx = reconstructTransformedHmtx(bArr, i + table.src_offset, table.src_length, JavaUnsignedUtil.asU16(woff2FontInfo.num_glyphs), JavaUnsignedUtil.asU16(woff2FontInfo.num_hmetrics), woff2FontInfo.x_mins, woff2Out);
                        i6 = i12;
                    } else {
                        throw new FontCompressionException(str);
                    }
                }
                rebuildMetadata.checksums.put(tableChecksumInfo, Integer.valueOf(iReconstructTransformedHmtx));
                int i13 = iReconstructTransformedHmtx;
                iReconstructTransformedHmtx = i6;
                iIntValue = i13;
            } else {
                table = table2;
                str = str2;
                i4 = i10;
                i5 = 0;
                c = 25441;
                iIntValue = rebuildMetadata.checksums.get(tableChecksumInfo).intValue();
            }
            StoreBytes.storeU32(bArr4, i5, iIntValue);
            StoreBytes.storeU32(bArr4, 4, table.dst_offset);
            StoreBytes.storeU32(bArr4, 8, table.dst_length);
            woff2Out.write(bArr4, i5, woff2FontInfo.table_entry_by_tag.get(Integer.valueOf(table.tag)).intValue() + 4, 12);
            iComputeULongSum = iComputeULongSum + iIntValue + Woff2Common.computeULongSum(bArr4, i5, 12);
            pad4(woff2Out);
            if (((long) table.dst_offset) + ((long) table.dst_length) > woff2Out.size()) {
                throw new FontCompressionException(str);
            }
            i9 = i4 + 1;
            bArr2 = bArr;
            str2 = str;
            arrayListTables = arrayList;
            bArr3 = bArr4;
            size = woff2Out.size();
        }
        ArrayList<Woff2Common.Table> arrayList2 = arrayListTables;
        String str3 = str2;
        Woff2Common.Table tableFindTable = findTable(arrayList2, TableTags.kHeadTableTag);
        if (tableFindTable != null) {
            if (tableFindTable.dst_length < 12) {
                throw new FontCompressionException(str3);
            }
            byte[] bArr5 = new byte[4];
            StoreBytes.storeU32(bArr5, 0, (-1313820742) - iComputeULongSum);
            woff2Out.write(bArr5, 0, tableFindTable.dst_offset + 8, 4);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void readWoff2Header(byte[] bArr, int i, Woff2Header woff2Header) {
        Buffer buffer = new Buffer(bArr, 0, i);
        if (buffer.readInt() != 2001684018) {
            throw new FontCompressionException(FontCompressionException.INCORRECT_SIGNATURE);
        }
        woff2Header.flavor = buffer.readInt();
        if (i != buffer.readInt()) {
            throw new FontCompressionException(FontCompressionException.READ_HEADER_FAILED);
        }
        woff2Header.num_tables = buffer.readShort();
        if (woff2Header.num_tables == 0) {
            throw new FontCompressionException(FontCompressionException.READ_HEADER_FAILED);
        }
        buffer.skip(6);
        woff2Header.compressed_length = buffer.readInt();
        buffer.skip(4);
        int i2 = buffer.readInt();
        int i3 = buffer.readInt();
        buffer.readInt();
        if (i2 != 0 && (i2 >= i || i - i2 < i3)) {
            throw new FontCompressionException(FontCompressionException.READ_HEADER_FAILED);
        }
        int i4 = buffer.readInt();
        int i5 = buffer.readInt();
        if (i4 != 0 && (i4 >= i || i - i4 < i5)) {
            throw new FontCompressionException(FontCompressionException.READ_HEADER_FAILED);
        }
        woff2Header.tables = new Woff2Common.Table[woff2Header.num_tables];
        readTableDirectory(buffer, woff2Header.tables, woff2Header.num_tables);
        Woff2Common.Table table = woff2Header.tables[woff2Header.tables.length - 1];
        woff2Header.uncompressed_size = table.src_offset + table.src_length;
        if (woff2Header.uncompressed_size < table.src_offset) {
            throw new FontCompressionException(FontCompressionException.READ_HEADER_FAILED);
        }
        woff2Header.header_version = 0;
        if (woff2Header.flavor == 1953784678) {
            woff2Header.header_version = buffer.readInt();
            if (woff2Header.header_version != 65536 && woff2Header.header_version != 131072) {
                throw new FontCompressionException(FontCompressionException.READ_COLLECTION_HEADER_FAILED);
            }
            int i6 = VariableLength.read255UShort(buffer);
            woff2Header.ttc_fonts = new TtcFont[i6];
            int i7 = 0;
            while (i7 < i6) {
                Woff2Common.Table table2 = null;
                TtcFont ttcFont = new TtcFont();
                woff2Header.ttc_fonts[i7] = ttcFont;
                int i8 = VariableLength.read255UShort(buffer);
                ttcFont.flavor = buffer.readInt();
                ttcFont.table_indices = new short[i8];
                Woff2Common.Table table3 = null;
                int i9 = 0;
                while (i9 < i8) {
                    int i10 = i6;
                    int i11 = VariableLength.read255UShort(buffer);
                    int i12 = i8;
                    if (i11 >= woff2Header.tables.length) {
                        throw new FontCompressionException(FontCompressionException.READ_COLLECTION_HEADER_FAILED);
                    }
                    TtcFont ttcFont2 = ttcFont;
                    ttcFont.table_indices[i9] = (short) i11;
                    Woff2Common.Table table4 = woff2Header.tables[i11];
                    if (table4.tag == 1819239265) {
                        table3 = table4;
                    }
                    if (table4.tag == 1735162214) {
                        table2 = table4;
                    }
                    i9++;
                    i6 = i10;
                    i8 = i12;
                    ttcFont = ttcFont2;
                }
                int i13 = i6;
                if ((table2 == null) != (table3 == null)) {
                    throw new FontCompressionException(FontCompressionException.READ_COLLECTION_HEADER_FAILED);
                }
                i7++;
                i6 = i13;
            }
        }
        woff2Header.compressed_offset = buffer.getOffset();
        int iRound4 = Round.round4(woff2Header.compressed_offset + woff2Header.compressed_length);
        if (iRound4 > i) {
            throw new FontCompressionException(FontCompressionException.READ_HEADER_FAILED);
        }
        if (i2 != 0) {
            if (iRound4 != i2) {
                throw new FontCompressionException(FontCompressionException.READ_HEADER_FAILED);
            }
            iRound4 = Round.round4(i2 + i3);
        }
        if (i4 != 0) {
            if (iRound4 != i4) {
                throw new FontCompressionException(FontCompressionException.READ_HEADER_FAILED);
            }
            iRound4 = Round.round4(i4 + i5);
        }
        if (iRound4 != Round.round4(i)) {
            throw new FontCompressionException(FontCompressionException.READ_HEADER_FAILED);
        }
    }

    private static void writeHeaders(byte[] bArr, int i, RebuildMetadata rebuildMetadata, Woff2Header woff2Header, Woff2Out woff2Out) {
        int iComputeOffsetToFirstTable = computeOffsetToFirstTable(woff2Header);
        byte[] bArr2 = new byte[iComputeOffsetToFirstTable];
        ArrayList arrayList = new ArrayList(Arrays.asList(woff2Header.tables));
        if (woff2Header.header_version != 0) {
            for (TtcFont ttcFont : woff2Header.ttc_fonts) {
                TreeMap treeMap = new TreeMap();
                for (short s : ttcFont.table_indices) {
                    treeMap.put(Integer.valueOf(woff2Header.tables[s].tag), Short.valueOf(s));
                }
                Iterator it = treeMap.entrySet().iterator();
                short s2 = 0;
                while (it.hasNext()) {
                    ttcFont.table_indices[s2] = ((Short) ((Map.Entry) it.next()).getValue()).shortValue();
                    s2 = (short) (s2 + 1);
                }
            }
        } else {
            Collections.sort(arrayList);
        }
        AnonymousClass1 anonymousClass1 = null;
        if (woff2Header.header_version != 0) {
            int iStoreU32 = StoreBytes.storeU32(bArr2, StoreBytes.storeU32(bArr2, StoreBytes.storeU32(bArr2, 0, woff2Header.flavor), woff2Header.header_version), woff2Header.ttc_fonts.length);
            int iStoreOffsetTable = iStoreU32;
            for (int i2 = 0; i2 < woff2Header.ttc_fonts.length; i2++) {
                iStoreOffsetTable = StoreBytes.storeU32(bArr2, iStoreOffsetTable, 0);
            }
            if (woff2Header.header_version == 131072) {
                iStoreOffsetTable = StoreBytes.storeU32(bArr2, StoreBytes.storeU32(bArr2, StoreBytes.storeU32(bArr2, iStoreOffsetTable, 0), 0), 0);
            }
            rebuildMetadata.font_infos = new Woff2FontInfo[woff2Header.ttc_fonts.length];
            int i3 = 0;
            while (i3 < woff2Header.ttc_fonts.length) {
                TtcFont ttcFont2 = woff2Header.ttc_fonts[i3];
                iStoreU32 = StoreBytes.storeU32(bArr2, iStoreU32, iStoreOffsetTable);
                ttcFont2.dst_offset = iStoreOffsetTable;
                iStoreOffsetTable = storeOffsetTable(bArr2, iStoreOffsetTable, ttcFont2.flavor, ttcFont2.table_indices.length);
                rebuildMetadata.font_infos[i3] = new Woff2FontInfo();
                for (short s3 : ttcFont2.table_indices) {
                    int i4 = woff2Header.tables[s3].tag;
                    rebuildMetadata.font_infos[i3].table_entry_by_tag.put(Integer.valueOf(i4), Integer.valueOf(iStoreOffsetTable));
                    iStoreOffsetTable = storeTableEntry(bArr2, iStoreOffsetTable, i4);
                }
                ttcFont2.header_checksum = Woff2Common.computeULongSum(bArr2, ttcFont2.dst_offset, iStoreOffsetTable - ttcFont2.dst_offset);
                i3++;
                anonymousClass1 = null;
            }
        } else {
            rebuildMetadata.font_infos = new Woff2FontInfo[1];
            int iStoreOffsetTable2 = storeOffsetTable(bArr2, 0, woff2Header.flavor, woff2Header.num_tables);
            rebuildMetadata.font_infos[0] = new Woff2FontInfo();
            for (int i5 = 0; i5 < woff2Header.num_tables; i5++) {
                rebuildMetadata.font_infos[0].table_entry_by_tag.put(Integer.valueOf(((Woff2Common.Table) arrayList.get(i5)).tag), Integer.valueOf(iStoreOffsetTable2));
                iStoreOffsetTable2 = storeTableEntry(bArr2, iStoreOffsetTable2, ((Woff2Common.Table) arrayList.get(i5)).tag);
            }
        }
        woff2Out.write(bArr2, 0, iComputeOffsetToFirstTable);
        rebuildMetadata.header_checksum = Woff2Common.computeULongSum(bArr2, 0, iComputeOffsetToFirstTable);
    }

    public static int computeWoff2FinalSize(byte[] bArr, int i) {
        Buffer buffer = new Buffer(bArr, 0, i);
        buffer.skip(16);
        return buffer.readInt();
    }

    public static void convertWoff2ToTtf(byte[] bArr, int i, Woff2Out woff2Out) {
        RebuildMetadata rebuildMetadata = new RebuildMetadata();
        Woff2Header woff2Header = new Woff2Header();
        readWoff2Header(bArr, i, woff2Header);
        writeHeaders(bArr, i, rebuildMetadata, woff2Header, woff2Out);
        float f = woff2Header.uncompressed_size / i;
        if (f > kMaxPlausibleCompressionRatio) {
            throw new FontCompressionException(MessageFormatUtil.format("Implausible compression ratio {0}", Float.valueOf(f)));
        }
        byte[] bArr2 = new byte[woff2Header.uncompressed_size];
        woff2Uncompress(bArr2, 0, woff2Header.uncompressed_size, bArr, woff2Header.compressed_offset, woff2Header.compressed_length);
        for (int i2 = 0; i2 < rebuildMetadata.font_infos.length; i2++) {
            reconstructFont(bArr2, 0, woff2Header.uncompressed_size, rebuildMetadata, woff2Header, i2, woff2Out);
        }
    }
}
