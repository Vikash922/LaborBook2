package com.itextpdf.p017io.codec;

import com.google.common.base.Ascii;
import com.itextpdf.p017io.exceptions.IOException;
import kotlin.p024io.encoding.Base64;
import okio.Utf8;
import org.bouncycastle.asn1.BERTags;
import org.bouncycastle.crypto.signers.PSSSigner;

/* JADX INFO: loaded from: classes6.dex */
public class TIFFFaxDecoder {
    private int[] currChangingElems;
    private byte[] data;
    private int fillOrder;

    /* JADX INFO: renamed from: h */
    private int f2856h;
    private int oneD;
    private int[] prevChangingElems;
    private boolean recoverFromImageError;

    /* JADX INFO: renamed from: w */
    private int f2857w;
    static int[] table1 = {0, 1, 3, 7, 15, 31, 63, 127, 255};
    static int[] table2 = {0, 128, 192, BERTags.FLAGS, 240, 248, 252, TIFFConstants.TIFFTAG_SUBFILETYPE, 255};
    public static byte[] flipTable = {0, -128, 64, -64, 32, -96, 96, -32, 16, -112, 80, -48, 48, -80, 112, -16, 8, -120, 72, -56, 40, -88, 104, -24, Ascii.CAN, -104, 88, -40, 56, -72, 120, -8, 4, -124, 68, -60, 36, -92, 100, -28, Ascii.DC4, -108, 84, -44, 52, -76, 116, -12, Ascii.f386FF, -116, 76, -52, 44, -84, 108, -20, Ascii.f387FS, -100, 92, -36, 60, PSSSigner.TRAILER_IMPLICIT, 124, -4, 2, -126, 66, -62, 34, -94, 98, -30, Ascii.DC2, -110, 82, -46, 50, -78, 114, -14, 10, -118, 74, -54, 42, -86, 106, -22, Ascii.SUB, -102, 90, -38, 58, -70, 122, -6, 6, -122, 70, -58, 38, -90, 102, -26, Ascii.SYN, -106, 86, -42, 54, -74, 118, -10, Ascii.f394SO, -114, 78, -50, 46, -82, 110, -18, Ascii.f392RS, -98, 94, -34, 62, -66, 126, -2, 1, -127, 65, -63, 33, -95, 97, -31, 17, -111, 81, -47, 49, -79, 113, -15, 9, -119, 73, -55, 41, -87, 105, -23, Ascii.f385EM, -103, 89, -39, 57, -71, 121, -7, 5, -123, 69, -59, 37, -91, 101, -27, Ascii.NAK, -107, 85, -43, 53, -75, 117, -11, Ascii.f384CR, -115, 77, -51, 45, -83, 109, -19, Ascii.f388GS, -99, 93, -35, Base64.padSymbol, -67, 125, -3, 3, -125, 67, -61, 35, -93, 99, -29, 19, -109, 83, -45, 51, -77, 115, -13, Ascii.f397VT, -117, 75, -53, 43, -85, 107, -21, Ascii.ESC, -101, 91, -37, 59, -69, 123, -5, 7, -121, 71, -57, 39, -89, 103, -25, Ascii.ETB, -105, 87, -41, 55, -73, 119, -9, Ascii.f393SI, -113, 79, -49, 47, -81, 111, -17, Ascii.f396US, -97, 95, -33, Utf8.REPLACEMENT_BYTE, -65, 127, -1};
    static short[] white = {6430, 6400, 6400, 6400, 3225, 3225, 3225, 3225, 944, 944, 944, 944, 976, 976, 976, 976, 1456, 1456, 1456, 1456, 1488, 1488, 1488, 1488, 718, 718, 718, 718, 718, 718, 718, 718, 750, 750, 750, 750, 750, 750, 750, 750, 1520, 1520, 1520, 1520, 1552, 1552, 1552, 1552, 428, 428, 428, 428, 428, 428, 428, 428, 428, 428, 428, 428, 428, 428, 428, 428, 654, 654, 654, 654, 654, 654, 654, 654, 1072, 1072, 1072, 1072, 1104, 1104, 1104, 1104, 1136, 1136, 1136, 1136, 1168, 1168, 1168, 1168, 1200, 1200, 1200, 1200, 1232, 1232, 1232, 1232, 622, 622, 622, 622, 622, 622, 622, 622, 1008, 1008, 1008, 1008, 1040, 1040, 1040, 1040, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 44, 396, 396, 396, 396, 396, 396, 396, 396, 396, 396, 396, 396, 396, 396, 396, 396, 1712, 1712, 1712, 1712, 1744, 1744, 1744, 1744, 846, 846, 846, 846, 846, 846, 846, 846, 1264, 1264, 1264, 1264, 1296, 1296, 1296, 1296, 1328, 1328, 1328, 1328, 1360, 1360, 1360, 1360, 1392, 1392, 1392, 1392, 1424, 1424, 1424, 1424, 686, 686, 686, 686, 686, 686, 686, 686, 910, 910, 910, 910, 910, 910, 910, 910, 1968, 1968, 1968, 1968, 2000, 2000, 2000, 2000, 2032, 2032, 2032, 2032, 16, 16, 16, 16, 10257, 10257, 10257, 10257, 12305, 12305, 12305, 12305, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 330, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 362, 878, 878, 878, 878, 878, 878, 878, 878, 1904, 1904, 1904, 1904, 1936, 1936, 1936, 1936, -18413, -18413, -16365, -16365, -14317, -14317, -10221, -10221, 590, 590, 590, 590, 590, 590, 590, 590, 782, 782, 782, 782, 782, 782, 782, 782, 1584, 1584, 1584, 1584, 1616, 1616, 1616, 1616, 1648, 1648, 1648, 1648, 1680, 1680, 1680, 1680, 814, 814, 814, 814, 814, 814, 814, 814, 1776, 1776, 1776, 1776, 1808, 1808, 1808, 1808, 1840, 1840, 1840, 1840, 1872, 1872, 1872, 1872, 6157, 6157, 6157, 6157, 6157, 6157, 6157, 6157, 6157, 6157, 6157, 6157, 6157, 6157, 6157, 6157, -12275, -12275, -12275, -12275, -12275, -12275, -12275, -12275, -12275, -12275, -12275, -12275, -12275, -12275, -12275, -12275, 14353, 14353, 14353, 14353, 16401, 16401, 16401, 16401, 22547, 22547, 24595, 24595, 20497, 20497, 20497, 20497, 18449, 18449, 18449, 18449, 26643, 26643, 28691, 28691, 30739, 30739, -32749, -32749, -30701, -30701, -28653, -28653, -26605, -26605, -24557, -24557, -22509, -22509, -20461, -20461, 8207, 8207, 8207, 8207, 8207, 8207, 8207, 8207, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 104, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 4107, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 266, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 298, 524, 524, 524, 524, 524, 524, 524, 524, 524, 524, 524, 524, 524, 524, 524, 524, 556, 556, 556, 556, 556, 556, 556, 556, 556, 556, 556, 556, 556, 556, 556, 556, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 168, 460, 460, 460, 460, 460, 460, 460, 460, 460, 460, 460, 460, 460, 460, 460, 460, 492, 492, 492, 492, 492, 492, 492, 492, 492, 492, 492, 492, 492, 492, 492, 492, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 2059, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 
    232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232, 232};
    public static short[] additionalMakeup = {28679, 28679, 31752, -32759, -31735, -30711, -29687, -28663, 29703, 29703, 30727, 30727, -27639, -26615, -25591, -24567};
    static short[] initBlack = {3226, 6412, 200, 168, 38, 38, 134, 134, 100, 100, 100, 100, 68, 68, 68, 68};
    static short[] twoBitBlack = {292, 260, 226, 226};
    static short[] black = {62, 62, 30, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 3225, 588, 588, 588, 588, 588, 588, 588, 588, 1680, 1680, 20499, 22547, 24595, 26643, 1776, 1776, 1808, 1808, -24557, -22509, -20461, -18413, 1904, 1904, 1936, 1936, -16365, -14317, 782, 782, 782, 782, 814, 814, 814, 814, -12269, -10221, 10257, 10257, 12305, 12305, 14353, 14353, 16403, 18451, 1712, 1712, 1744, 1744, 28691, 30739, -32749, -30701, -28653, -26605, 2061, 2061, 2061, 2061, 2061, 2061, 2061, 2061, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 424, 750, 750, 750, 750, 1616, 1616, 1648, 1648, 1424, 1424, 1456, 1456, 1488, 1488, 1520, 1520, 1840, 1840, 1872, 1872, 1968, 1968, 8209, 8209, 524, 524, 524, 524, 524, 524, 524, 524, 556, 556, 556, 556, 556, 556, 556, 556, 1552, 1552, 1584, 1584, 2000, 2000, 2032, 2032, 976, 976, 1008, 1008, 1040, 1040, 1072, 1072, 1296, 1296, 1328, 1328, 718, 718, 718, 718, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 456, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 326, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 358, 490, 490, 490, 490, 490, 490, 490, 490, 490, 490, 490, 490, 490, 490, 490, 490, 4113, 4113, 6161, 6161, 848, 848, 880, 880, 912, 912, 944, 944, 622, 622, 622, 622, 654, 654, 654, 654, 1104, 1104, 1136, 1136, 1168, 1168, 1200, 1200, 1232, 1232, 1264, 1264, 686, 686, 686, 686, 1360, 1360, 1392, 1392, 12, 12, 12, 12, 12, 12, 12, 12, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390, 390};
    static byte[] twoDCodes = {80, 88, Ascii.ETB, 71, Ascii.f392RS, Ascii.f392RS, 62, 62, 4, 4, 4, 4, 4, 4, 4, 4, Ascii.f397VT, Ascii.f397VT, Ascii.f397VT, Ascii.f397VT, Ascii.f397VT, Ascii.f397VT, Ascii.f397VT, Ascii.f397VT, Ascii.f397VT, Ascii.f397VT, Ascii.f397VT, Ascii.f397VT, Ascii.f397VT, Ascii.f397VT, Ascii.f397VT, Ascii.f397VT, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 35, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41};
    private int changingElemSize = 0;
    private int lastChangingElement = 0;
    private int compression = 2;
    private int uncompressedMode = 0;
    private int fillBits = 0;
    private int bitPointer = 0;
    private int bytePointer = 0;

    public TIFFFaxDecoder(int i, int i2, int i3) {
        this.fillOrder = i;
        this.f2857w = i2;
        this.f2856h = i3;
        int i4 = i2 * 2;
        this.prevChangingElems = new int[i4];
        this.currChangingElems = new int[i4];
    }

    public static void reverseBits(byte[] bArr) {
        for (int i = 0; i < bArr.length; i++) {
            bArr[i] = flipTable[bArr[i] & 255];
        }
    }

    public void decode1D(byte[] bArr, byte[] bArr2, int i, int i2) {
        this.data = bArr2;
        int i3 = (this.f2857w + 7) / 8;
        this.bitPointer = 0;
        this.bytePointer = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i2; i5++) {
            decodeNextScanline(bArr, i4, i);
            i4 += i3;
        }
    }

    public void decodeNextScanline(byte[] bArr, int i, int i2) {
        this.changingElemSize = 0;
        boolean z = true;
        while (true) {
            if (i2 >= this.f2857w) {
                break;
            }
            while (z) {
                int iNextNBits = nextNBits(10);
                short s = white[iNextNBits];
                int i3 = s & 1;
                int i4 = (s >>> 1) & 15;
                if (i4 == 12) {
                    short s2 = additionalMakeup[nextLesserThan8Bits(2) | (12 & (iNextNBits << 2))];
                    i2 += (s2 >>> 4) & 4095;
                    updatePointer(4 - ((s2 >>> 1) & 7));
                } else {
                    if (i4 == 0) {
                        throw new IOException(IOException.InvalidCodeEncountered);
                    }
                    if (i4 == 15) {
                        throw new IOException(IOException.EolCodeWordEncounteredInWhiteRun);
                    }
                    i2 += (s >>> 5) & 2047;
                    updatePointer(10 - i4);
                    if (i3 == 0) {
                        int[] iArr = this.currChangingElems;
                        int i5 = this.changingElemSize;
                        this.changingElemSize = i5 + 1;
                        iArr[i5] = i2;
                        z = false;
                    }
                }
            }
            if (i2 == this.f2857w) {
                if (this.compression == 2) {
                    advancePointer();
                }
            } else {
                while (!z) {
                    short s3 = initBlack[nextLesserThan8Bits(4)];
                    int i6 = (s3 >>> 1) & 15;
                    int i7 = (s3 >>> 5) & 2047;
                    if (i7 == 100) {
                        short s4 = black[nextNBits(9)];
                        int i8 = s4 & 1;
                        int i9 = (s4 >>> 1) & 15;
                        int i10 = (s4 >>> 5) & 2047;
                        if (i9 == 12) {
                            updatePointer(5);
                            short s5 = additionalMakeup[nextLesserThan8Bits(4)];
                            int i11 = (s5 >>> 1) & 7;
                            int i12 = (s5 >>> 4) & 4095;
                            setToBlack(bArr, i, i2, i12);
                            i2 += i12;
                            updatePointer(4 - i11);
                        } else {
                            if (i9 == 15) {
                                throw new IOException(IOException.EolCodeWordEncounteredInWhiteRun);
                            }
                            setToBlack(bArr, i, i2, i10);
                            i2 += i10;
                            updatePointer(9 - i9);
                            if (i8 == 0) {
                                int[] iArr2 = this.currChangingElems;
                                int i13 = this.changingElemSize;
                                this.changingElemSize = i13 + 1;
                                iArr2[i13] = i2;
                            }
                        }
                    } else if (i7 == 200) {
                        short s6 = twoBitBlack[nextLesserThan8Bits(2)];
                        int i14 = (s6 >>> 5) & 2047;
                        setToBlack(bArr, i, i2, i14);
                        i2 += i14;
                        updatePointer(2 - ((s6 >>> 1) & 15));
                        int[] iArr3 = this.currChangingElems;
                        int i15 = this.changingElemSize;
                        this.changingElemSize = i15 + 1;
                        iArr3[i15] = i2;
                    } else {
                        setToBlack(bArr, i, i2, i7);
                        i2 += i7;
                        updatePointer(4 - i6);
                        int[] iArr4 = this.currChangingElems;
                        int i16 = this.changingElemSize;
                        this.changingElemSize = i16 + 1;
                        iArr4[i16] = i2;
                    }
                    z = true;
                }
                if (i2 == this.f2857w) {
                    if (this.compression == 2) {
                        advancePointer();
                    }
                }
            }
        }
        int[] iArr5 = this.currChangingElems;
        int i17 = this.changingElemSize;
        this.changingElemSize = i17 + 1;
        iArr5[i17] = i2;
    }

    public void decode2D(byte[] bArr, byte[] bArr2, int i, int i2, long j) {
        char c;
        char c2;
        this.data = bArr2;
        char c3 = 3;
        this.compression = 3;
        int i3 = 0;
        this.bitPointer = 0;
        this.bytePointer = 0;
        char c4 = '\b';
        int i4 = (this.f2857w + 7) / 8;
        int[] iArr = new int[2];
        this.oneD = (int) (j & 1);
        this.uncompressedMode = (int) ((j & 2) >> 1);
        this.fillBits = (int) ((j & 4) >> 2);
        if (readEOL() != 1) {
            throw new IOException(IOException.FirstScanlineMustBe1dEncoded);
        }
        decodeNextScanline(bArr, 0, i);
        int i5 = i4;
        int i6 = 1;
        while (i6 < i2) {
            if (readEOL() == 0) {
                int[] iArr2 = this.prevChangingElems;
                this.prevChangingElems = this.currChangingElems;
                this.currChangingElems = iArr2;
                this.lastChangingElement = i3;
                int i7 = -1;
                int iDecodeWhiteCodeWord = i;
                int i8 = i3;
                boolean z = true;
                while (iDecodeWhiteCodeWord < this.f2857w) {
                    getNextChangingElement(i7, z, iArr);
                    int i9 = iArr[i3];
                    i7 = iArr[1];
                    byte b = twoDCodes[nextLesserThan8Bits(7)];
                    int i10 = (b & 120) >>> 3;
                    int i11 = b & 7;
                    if (i10 == 0) {
                        if (!z) {
                            setToBlack(bArr, i5, iDecodeWhiteCodeWord, i7 - iDecodeWhiteCodeWord);
                        }
                        updatePointer(7 - i11);
                        iDecodeWhiteCodeWord = i7;
                    } else if (i10 == 1) {
                        updatePointer(7 - i11);
                        if (z) {
                            int iDecodeWhiteCodeWord2 = iDecodeWhiteCodeWord + decodeWhiteCodeWord();
                            int i12 = i8 + 1;
                            this.currChangingElems[i8] = iDecodeWhiteCodeWord2;
                            int iDecodeBlackCodeWord = decodeBlackCodeWord();
                            setToBlack(bArr, i5, iDecodeWhiteCodeWord2, iDecodeBlackCodeWord);
                            iDecodeWhiteCodeWord = iDecodeWhiteCodeWord2 + iDecodeBlackCodeWord;
                            i8 += 2;
                            this.currChangingElems[i12] = iDecodeWhiteCodeWord;
                        } else {
                            int iDecodeBlackCodeWord2 = decodeBlackCodeWord();
                            setToBlack(bArr, i5, iDecodeWhiteCodeWord, iDecodeBlackCodeWord2);
                            int i13 = iDecodeWhiteCodeWord + iDecodeBlackCodeWord2;
                            int i14 = i8 + 1;
                            this.currChangingElems[i8] = i13;
                            iDecodeWhiteCodeWord = i13 + decodeWhiteCodeWord();
                            i8 += 2;
                            this.currChangingElems[i14] = iDecodeWhiteCodeWord;
                        }
                        i7 = iDecodeWhiteCodeWord;
                    } else if (i10 <= 8) {
                        int i15 = i9 + (i10 - 5);
                        int i16 = i8 + 1;
                        this.currChangingElems[i8] = i15;
                        if (!z) {
                            setToBlack(bArr, i5, iDecodeWhiteCodeWord, i15 - iDecodeWhiteCodeWord);
                        }
                        z = !z;
                        updatePointer(7 - i11);
                        i7 = i15;
                        iDecodeWhiteCodeWord = i7;
                        i8 = i16;
                    } else {
                        throw new IOException(IOException.InvalidCodeEncounteredWhileDecoding2dGroup3CompressedData);
                    }
                    i3 = 0;
                }
                c2 = '\b';
                c = 3;
                this.currChangingElems[i8] = iDecodeWhiteCodeWord;
                this.changingElemSize = i8 + 1;
            } else {
                c = c3;
                c2 = c4;
                decodeNextScanline(bArr, i5, i);
            }
            i5 += i4;
            i6++;
            c4 = c2;
            c3 = c;
            i3 = 0;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:78:0x0174, code lost:
    
        if (r13 >= r9.length) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0176, code lost:
    
        r9[r13] = r12;
        r13 = r13 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x017b, code lost:
    
        r18.changingElemSize = r13;
        r8 = r8 + r4;
        r6 = r6 + 1;
        r3 = r22;
        r5 = r15;
        r2 = 0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v16 */
    /* JADX WARN: Type inference failed for: r14v17 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void decodeT6(byte[] r19, byte[] r20, int r21, int r22, long r23) {
        /*
            Method dump skipped, instruction units count: 391
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.p017io.codec.TIFFFaxDecoder.decodeT6(byte[], byte[], int, int, long):void");
    }

    private void setToBlack(byte[] bArr, int i, int i2, int i3) {
        int i4 = (i * 8) + i2;
        int i5 = i3 + i4;
        int i6 = i4 >> 3;
        int i7 = i4 & 7;
        if (i7 > 0) {
            int i8 = 1 << (7 - i7);
            byte b = bArr[i6];
            while (i8 > 0 && i4 < i5) {
                b = (byte) (b | ((byte) i8));
                i8 >>= 1;
                i4++;
            }
            bArr[i6] = b;
        }
        int i9 = i4 >> 3;
        while (i4 < i5 - 7) {
            bArr[i9] = -1;
            i4 += 8;
            i9++;
        }
        while (i4 < i5) {
            int i10 = i4 >> 3;
            if (!this.recoverFromImageError || i10 < bArr.length) {
                bArr[i10] = (byte) (bArr[i10] | ((byte) (1 << (7 - (i4 & 7)))));
            }
            i4++;
        }
    }

    private int decodeWhiteCodeWord() {
        boolean z = true;
        int i = 0;
        while (z) {
            int iNextNBits = nextNBits(10);
            short s = white[iNextNBits];
            int i2 = s & 1;
            int i3 = (s >>> 1) & 15;
            if (i3 == 12) {
                short s2 = additionalMakeup[((iNextNBits << 2) & 12) | nextLesserThan8Bits(2)];
                i += (s2 >>> 4) & 4095;
                updatePointer(4 - ((s2 >>> 1) & 7));
            } else {
                if (i3 == 0) {
                    throw new IOException(IOException.InvalidCodeEncountered);
                }
                if (i3 != 15) {
                    i += (s >>> 5) & 2047;
                    updatePointer(10 - i3);
                    if (i2 == 0) {
                    }
                } else if (i != 0) {
                    throw new IOException(IOException.EolCodeWordEncounteredInWhiteRun);
                }
                z = false;
            }
        }
        return i;
    }

    private int decodeBlackCodeWord() {
        boolean z = false;
        int i = 0;
        while (!z) {
            short s = initBlack[nextLesserThan8Bits(4)];
            int i2 = (s >>> 1) & 15;
            int i3 = (s >>> 5) & 2047;
            if (i3 == 100) {
                short s2 = black[nextNBits(9)];
                int i4 = s2 & 1;
                int i5 = (s2 >>> 1) & 15;
                int i6 = (s2 >>> 5) & 2047;
                if (i5 == 12) {
                    updatePointer(5);
                    short s3 = additionalMakeup[nextLesserThan8Bits(4)];
                    i += (s3 >>> 4) & 4095;
                    updatePointer(4 - ((s3 >>> 1) & 7));
                } else {
                    if (i5 == 15) {
                        throw new IOException(IOException.EolCodeWordEncounteredInBlackRun);
                    }
                    i += i6;
                    updatePointer(9 - i5);
                    if (i4 == 0) {
                    }
                }
            } else if (i3 == 200) {
                short s4 = twoBitBlack[nextLesserThan8Bits(2)];
                i += (s4 >>> 5) & 2047;
                updatePointer(2 - ((s4 >>> 1) & 15));
            } else {
                i += i3;
                updatePointer(4 - i2);
            }
            z = true;
        }
        return i;
    }

    private int readEOL() {
        while (nextLesserThan8Bits(1) == 0) {
        }
        updatePointer(12);
        if (nextNBits(12) != 1) {
            throw new IOException(IOException.AllFillBitsPrecedingEolCodeMustBe0);
        }
        if (this.oneD == 0) {
            return 1;
        }
        return nextLesserThan8Bits(1);
    }

    private void getNextChangingElement(int i, boolean z, int[] iArr) {
        int[] iArr2 = this.prevChangingElems;
        int i2 = this.changingElemSize;
        int i3 = this.lastChangingElement;
        int i4 = i3 > 0 ? i3 - 1 : 0;
        int i5 = z ? i4 & (-2) : i4 | 1;
        while (true) {
            if (i5 >= i2) {
                break;
            }
            int i6 = iArr2[i5];
            if (i6 > i) {
                this.lastChangingElement = i5;
                iArr[0] = i6;
                break;
            }
            i5 += 2;
        }
        int i7 = i5 + 1;
        if (i7 < i2) {
            iArr[1] = iArr2[i7];
        }
    }

    private int nextNBits(int i) {
        byte b;
        byte b2;
        byte b3;
        byte b4;
        byte b5;
        int i2;
        int i3;
        byte[] bArr = this.data;
        int length = bArr.length - 1;
        int i4 = this.bytePointer;
        int i5 = this.fillOrder;
        if (i5 == 1) {
            b3 = bArr[i4];
            if (i4 != length) {
                int i6 = i4 + 1;
                if (i6 == length) {
                    b4 = bArr[i6];
                    b5 = 0;
                } else {
                    b = bArr[i6];
                    b2 = bArr[i4 + 2];
                    byte b6 = b;
                    b5 = b2;
                    b4 = b6;
                }
            }
            b4 = 0;
            b5 = 0;
        } else if (i5 == 2) {
            byte[] bArr2 = flipTable;
            byte b7 = bArr2[bArr[i4] & 255];
            if (i4 == length) {
                b3 = b7;
                b4 = 0;
                b5 = 0;
            } else {
                int i7 = i4 + 1;
                if (i7 == length) {
                    b4 = bArr2[bArr[i7] & 255];
                    b3 = b7;
                    b5 = 0;
                } else {
                    b = bArr2[bArr[i7] & 255];
                    b2 = bArr2[bArr[i4 + 2] & 255];
                    b3 = b7;
                    byte b62 = b;
                    b5 = b2;
                    b4 = b62;
                }
            }
        } else {
            throw new IOException(IOException.TiffFillOrderTagMustBeEither1Or2);
        }
        int i8 = 8 - this.bitPointer;
        int i9 = i - i8;
        if (i9 > 8) {
            i3 = i9 - 8;
            i2 = 8;
        } else {
            i2 = i9;
            i3 = 0;
        }
        this.bytePointer = i4 + 1;
        int i10 = (b3 & table1[i8]) << i9;
        int[] iArr = table2;
        int i11 = (b4 & iArr[i2]) >>> (8 - i2);
        if (i3 != 0) {
            i11 = (i11 << i3) | ((b5 & iArr[i3]) >>> (8 - i3));
            this.bytePointer = i4 + 2;
            this.bitPointer = i3;
        } else if (i2 == 8) {
            this.bitPointer = 0;
            this.bytePointer = i4 + 2;
        } else {
            this.bitPointer = i2;
        }
        return i10 | i11;
    }

    private int nextLesserThan8Bits(int i) {
        byte b;
        byte b2;
        byte[] bArr = this.data;
        int length = bArr.length - 1;
        int i2 = this.bytePointer;
        int i3 = this.fillOrder;
        if (i3 == 1) {
            b2 = bArr[i2];
            b = i2 == length ? (byte) 0 : bArr[i2 + 1];
        } else if (i3 == 2) {
            if (!this.recoverFromImageError || i2 < bArr.length) {
                byte[] bArr2 = flipTable;
                byte b3 = bArr2[bArr[i2] & 255];
                b = i2 == length ? (byte) 0 : bArr2[bArr[i2 + 1] & 255];
                b2 = b3;
            } else {
                b = 0;
                b2 = 0;
            }
        } else {
            throw new IOException(IOException.TiffFillOrderTagMustBeEither1Or2);
        }
        int i4 = this.bitPointer;
        int i5 = 8 - i4;
        int i6 = i - i5;
        int i7 = i5 - i;
        if (i7 >= 0) {
            int i8 = (table1[i5] & b2) >>> i7;
            int i9 = i4 + i;
            this.bitPointer = i9;
            if (i9 != 8) {
                return i8;
            }
            this.bitPointer = 0;
            this.bytePointer = i2 + 1;
            return i8;
        }
        int i10 = ((b & table2[i6]) >>> (8 - i6)) | ((table1[i5] & b2) << (-i7));
        this.bytePointer = i2 + 1;
        this.bitPointer = i6;
        return i10;
    }

    private void updatePointer(int i) {
        int i2 = ((this.bytePointer * 8) + this.bitPointer) - i;
        this.bitPointer = i2 % 8;
        this.bytePointer = i2 / 8;
    }

    private boolean advancePointer() {
        if (this.bitPointer != 0) {
            this.bytePointer++;
            this.bitPointer = 0;
        }
        return true;
    }

    public void setRecoverFromImageError(boolean z) {
        this.recoverFromImageError = z;
    }
}
