package org.bouncycastle.crypto.prng;

import com.google.common.base.Ascii;
import kotlin.p024io.encoding.Base64;
import okio.Utf8;
import org.bouncycastle.crypto.signers.PSSSigner;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class VMPCRandomGenerator implements RandomGenerator {

    /* JADX INFO: renamed from: n */
    private byte f4351n = 0;

    /* JADX INFO: renamed from: P */
    private byte[] f4350P = {-69, 44, 98, 127, -75, -86, -44, Ascii.f384CR, -127, -2, -78, -126, -53, -96, -95, 8, Ascii.CAN, 113, 86, -24, 73, 2, 16, -60, -34, 53, -91, -20, -128, Ascii.DC2, -72, 105, -38, 47, 117, -52, -94, 9, 54, 3, 97, 45, -3, -32, -35, 5, 67, -112, -83, -56, -31, -81, 87, -101, 76, -40, 81, -82, 80, -123, 60, 10, -28, -13, -100, 38, 35, 83, -55, -125, -105, 70, -79, -103, 100, 49, 119, -43, Ascii.f388GS, -42, 120, -67, 94, -80, -118, 34, 56, -8, 104, 43, 42, -59, -45, -9, PSSSigner.TRAILER_IMPLICIT, 111, -33, 4, -27, -107, 62, 37, -122, -90, Ascii.f397VT, -113, -15, 36, Ascii.f394SO, -41, 64, -77, -49, 126, 6, Ascii.NAK, -102, 77, Ascii.f387FS, -93, -37, 50, -110, 88, 17, 39, -12, 89, -48, 78, 106, Ascii.ETB, 91, -84, -1, 7, -64, 101, 121, -4, -57, -51, 118, 66, 93, -25, 58, 52, 122, 48, 40, Ascii.f393SI, 115, 1, -7, -47, -46, Ascii.f385EM, -23, -111, -71, 90, -19, 65, 109, -76, -61, -98, -65, 99, -6, Ascii.f396US, 51, 96, 71, -119, -16, -106, Ascii.SUB, 95, -109, Base64.padSymbol, 55, 75, -39, -88, -63, Ascii.ESC, -10, 57, -117, -73, Ascii.f386FF, 32, -50, -120, 110, -74, 116, -114, -115, Ascii.SYN, 41, -14, -121, -11, -21, 112, -29, -5, 85, -97, -58, 68, 74, 69, 125, -30, 107, 92, 108, 102, -87, -116, -18, -124, 19, -89, Ascii.f392RS, -99, -36, 103, 72, -70, 46, -26, -92, -85, 124, -108, 0, 33, -17, -22, -66, -54, 114, 79, 82, -104, Utf8.REPLACEMENT_BYTE, -62, Ascii.DC4, 123, 59, 84};

    /* JADX INFO: renamed from: s */
    private byte f4352s = -66;

    @Override // org.bouncycastle.crypto.prng.RandomGenerator
    public void addSeedMaterial(long j) {
        addSeedMaterial(Pack.longToBigEndian(j));
    }

    @Override // org.bouncycastle.crypto.prng.RandomGenerator
    public void addSeedMaterial(byte[] bArr) {
        for (byte b : bArr) {
            byte[] bArr2 = this.f4350P;
            byte b2 = this.f4352s;
            byte b3 = this.f4351n;
            byte b4 = bArr2[(b2 + bArr2[b3 & 255] + b) & 255];
            this.f4352s = b4;
            byte b5 = bArr2[b3 & 255];
            bArr2[b3 & 255] = bArr2[b4 & 255];
            bArr2[b4 & 255] = b5;
            this.f4351n = (byte) ((b3 + 1) & 255);
        }
    }

    @Override // org.bouncycastle.crypto.prng.RandomGenerator
    public void nextBytes(byte[] bArr) {
        nextBytes(bArr, 0, bArr.length);
    }

    @Override // org.bouncycastle.crypto.prng.RandomGenerator
    public void nextBytes(byte[] bArr, int i, int i2) {
        synchronized (this.f4350P) {
            int i3 = i2 + i;
            while (i != i3) {
                byte[] bArr2 = this.f4350P;
                byte b = this.f4352s;
                byte b2 = this.f4351n;
                byte b3 = bArr2[(b + bArr2[b2 & 255]) & 255];
                this.f4352s = b3;
                bArr[i] = bArr2[(bArr2[bArr2[b3 & 255] & 255] + 1) & 255];
                byte b4 = bArr2[b2 & 255];
                bArr2[b2 & 255] = bArr2[b3 & 255];
                bArr2[b3 & 255] = b4;
                this.f4351n = (byte) ((b2 + 1) & 255);
                i++;
            }
        }
    }
}
