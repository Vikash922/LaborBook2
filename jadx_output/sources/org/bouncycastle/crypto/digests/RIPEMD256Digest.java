package org.bouncycastle.crypto.digests;

import org.bouncycastle.util.Memoable;

/* JADX INFO: loaded from: classes5.dex */
public class RIPEMD256Digest extends GeneralDigest {
    private static final int DIGEST_LENGTH = 32;

    /* JADX INFO: renamed from: H0 */
    private int f3987H0;

    /* JADX INFO: renamed from: H1 */
    private int f3988H1;

    /* JADX INFO: renamed from: H2 */
    private int f3989H2;

    /* JADX INFO: renamed from: H3 */
    private int f3990H3;

    /* JADX INFO: renamed from: H4 */
    private int f3991H4;

    /* JADX INFO: renamed from: H5 */
    private int f3992H5;

    /* JADX INFO: renamed from: H6 */
    private int f3993H6;

    /* JADX INFO: renamed from: H7 */
    private int f3994H7;

    /* JADX INFO: renamed from: X */
    private int[] f3995X;
    private int xOff;

    public RIPEMD256Digest() {
        this.f3995X = new int[16];
        reset();
    }

    public RIPEMD256Digest(RIPEMD256Digest rIPEMD256Digest) {
        super(rIPEMD256Digest);
        this.f3995X = new int[16];
        copyIn(rIPEMD256Digest);
    }

    /* JADX INFO: renamed from: F1 */
    private int m2804F1(int i, int i2, int i3, int i4, int i5, int i6) {
        return m2808RL(i + m2809f1(i2, i3, i4) + i5, i6);
    }

    /* JADX INFO: renamed from: F2 */
    private int m2805F2(int i, int i2, int i3, int i4, int i5, int i6) {
        return m2808RL(i + m2810f2(i2, i3, i4) + i5 + 1518500249, i6);
    }

    /* JADX INFO: renamed from: F3 */
    private int m2806F3(int i, int i2, int i3, int i4, int i5, int i6) {
        return m2808RL(i + m2811f3(i2, i3, i4) + i5 + 1859775393, i6);
    }

    /* JADX INFO: renamed from: F4 */
    private int m2807F4(int i, int i2, int i3, int i4, int i5, int i6) {
        return m2808RL(((i + m2812f4(i2, i3, i4)) + i5) - 1894007588, i6);
    }

    private int FF1(int i, int i2, int i3, int i4, int i5, int i6) {
        return m2808RL(i + m2809f1(i2, i3, i4) + i5, i6);
    }

    private int FF2(int i, int i2, int i3, int i4, int i5, int i6) {
        return m2808RL(i + m2810f2(i2, i3, i4) + i5 + 1836072691, i6);
    }

    private int FF3(int i, int i2, int i3, int i4, int i5, int i6) {
        return m2808RL(i + m2811f3(i2, i3, i4) + i5 + 1548603684, i6);
    }

    private int FF4(int i, int i2, int i3, int i4, int i5, int i6) {
        return m2808RL(i + m2812f4(i2, i3, i4) + i5 + 1352829926, i6);
    }

    /* JADX INFO: renamed from: RL */
    private int m2808RL(int i, int i2) {
        return (i >>> (32 - i2)) | (i << i2);
    }

    private void copyIn(RIPEMD256Digest rIPEMD256Digest) {
        super.copyIn((GeneralDigest) rIPEMD256Digest);
        this.f3987H0 = rIPEMD256Digest.f3987H0;
        this.f3988H1 = rIPEMD256Digest.f3988H1;
        this.f3989H2 = rIPEMD256Digest.f3989H2;
        this.f3990H3 = rIPEMD256Digest.f3990H3;
        this.f3991H4 = rIPEMD256Digest.f3991H4;
        this.f3992H5 = rIPEMD256Digest.f3992H5;
        this.f3993H6 = rIPEMD256Digest.f3993H6;
        this.f3994H7 = rIPEMD256Digest.f3994H7;
        int[] iArr = rIPEMD256Digest.f3995X;
        System.arraycopy(iArr, 0, this.f3995X, 0, iArr.length);
        this.xOff = rIPEMD256Digest.xOff;
    }

    /* JADX INFO: renamed from: f1 */
    private int m2809f1(int i, int i2, int i3) {
        return (i ^ i2) ^ i3;
    }

    /* JADX INFO: renamed from: f2 */
    private int m2810f2(int i, int i2, int i3) {
        return ((~i) & i3) | (i2 & i);
    }

    /* JADX INFO: renamed from: f3 */
    private int m2811f3(int i, int i2, int i3) {
        return (i | (~i2)) ^ i3;
    }

    /* JADX INFO: renamed from: f4 */
    private int m2812f4(int i, int i2, int i3) {
        return (i & i3) | (i2 & (~i3));
    }

    private void unpackWord(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) i;
        bArr[i2 + 1] = (byte) (i >>> 8);
        bArr[i2 + 2] = (byte) (i >>> 16);
        bArr[i2 + 3] = (byte) (i >>> 24);
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new RIPEMD256Digest(this);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        finish();
        unpackWord(this.f3987H0, bArr, i);
        unpackWord(this.f3988H1, bArr, i + 4);
        unpackWord(this.f3989H2, bArr, i + 8);
        unpackWord(this.f3990H3, bArr, i + 12);
        unpackWord(this.f3991H4, bArr, i + 16);
        unpackWord(this.f3992H5, bArr, i + 20);
        unpackWord(this.f3993H6, bArr, i + 24);
        unpackWord(this.f3994H7, bArr, i + 28);
        reset();
        return 32;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "RIPEMD256";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 32;
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    protected void processBlock() {
        int i = this.f3987H0;
        int i2 = this.f3988H1;
        int i3 = this.f3989H2;
        int i4 = this.f3990H3;
        int i5 = this.f3991H4;
        int i6 = this.f3992H5;
        int i7 = this.f3993H6;
        int i8 = this.f3994H7;
        int iM2804F1 = m2804F1(i, i2, i3, i4, this.f3995X[0], 11);
        int iM2804F12 = m2804F1(i4, iM2804F1, i2, i3, this.f3995X[1], 14);
        int iM2804F13 = m2804F1(i3, iM2804F12, iM2804F1, i2, this.f3995X[2], 15);
        int iM2804F14 = m2804F1(i2, iM2804F13, iM2804F12, iM2804F1, this.f3995X[3], 12);
        int iM2804F15 = m2804F1(iM2804F1, iM2804F14, iM2804F13, iM2804F12, this.f3995X[4], 5);
        int iM2804F16 = m2804F1(iM2804F12, iM2804F15, iM2804F14, iM2804F13, this.f3995X[5], 8);
        int iM2804F17 = m2804F1(iM2804F13, iM2804F16, iM2804F15, iM2804F14, this.f3995X[6], 7);
        int iM2804F18 = m2804F1(iM2804F14, iM2804F17, iM2804F16, iM2804F15, this.f3995X[7], 9);
        int iM2804F19 = m2804F1(iM2804F15, iM2804F18, iM2804F17, iM2804F16, this.f3995X[8], 11);
        int iM2804F110 = m2804F1(iM2804F16, iM2804F19, iM2804F18, iM2804F17, this.f3995X[9], 13);
        int iM2804F111 = m2804F1(iM2804F17, iM2804F110, iM2804F19, iM2804F18, this.f3995X[10], 14);
        int iM2804F112 = m2804F1(iM2804F18, iM2804F111, iM2804F110, iM2804F19, this.f3995X[11], 15);
        int iM2804F113 = m2804F1(iM2804F19, iM2804F112, iM2804F111, iM2804F110, this.f3995X[12], 6);
        int iM2804F114 = m2804F1(iM2804F110, iM2804F113, iM2804F112, iM2804F111, this.f3995X[13], 7);
        int iM2804F115 = m2804F1(iM2804F111, iM2804F114, iM2804F113, iM2804F112, this.f3995X[14], 9);
        int iM2804F116 = m2804F1(iM2804F112, iM2804F115, iM2804F114, iM2804F113, this.f3995X[15], 8);
        int iFF4 = FF4(i5, i6, i7, i8, this.f3995X[5], 8);
        int iFF42 = FF4(i8, iFF4, i6, i7, this.f3995X[14], 9);
        int iFF43 = FF4(i7, iFF42, iFF4, i6, this.f3995X[7], 9);
        int iFF44 = FF4(i6, iFF43, iFF42, iFF4, this.f3995X[0], 11);
        int iFF45 = FF4(iFF4, iFF44, iFF43, iFF42, this.f3995X[9], 13);
        int iFF46 = FF4(iFF42, iFF45, iFF44, iFF43, this.f3995X[2], 15);
        int iFF47 = FF4(iFF43, iFF46, iFF45, iFF44, this.f3995X[11], 15);
        int iFF48 = FF4(iFF44, iFF47, iFF46, iFF45, this.f3995X[4], 5);
        int iFF49 = FF4(iFF45, iFF48, iFF47, iFF46, this.f3995X[13], 7);
        int iFF410 = FF4(iFF46, iFF49, iFF48, iFF47, this.f3995X[6], 7);
        int iFF411 = FF4(iFF47, iFF410, iFF49, iFF48, this.f3995X[15], 8);
        int iFF412 = FF4(iFF48, iFF411, iFF410, iFF49, this.f3995X[8], 11);
        int iFF413 = FF4(iFF49, iFF412, iFF411, iFF410, this.f3995X[1], 14);
        int iFF414 = FF4(iFF410, iFF413, iFF412, iFF411, this.f3995X[10], 14);
        int iFF415 = FF4(iFF411, iFF414, iFF413, iFF412, this.f3995X[3], 12);
        int iFF416 = FF4(iFF412, iFF415, iFF414, iFF413, this.f3995X[12], 6);
        int iM2805F2 = m2805F2(iFF413, iM2804F116, iM2804F115, iM2804F114, this.f3995X[7], 7);
        int iM2805F22 = m2805F2(iM2804F114, iM2805F2, iM2804F116, iM2804F115, this.f3995X[4], 6);
        int iM2805F23 = m2805F2(iM2804F115, iM2805F22, iM2805F2, iM2804F116, this.f3995X[13], 8);
        int iM2805F24 = m2805F2(iM2804F116, iM2805F23, iM2805F22, iM2805F2, this.f3995X[1], 13);
        int iM2805F25 = m2805F2(iM2805F2, iM2805F24, iM2805F23, iM2805F22, this.f3995X[10], 11);
        int iM2805F26 = m2805F2(iM2805F22, iM2805F25, iM2805F24, iM2805F23, this.f3995X[6], 9);
        int iM2805F27 = m2805F2(iM2805F23, iM2805F26, iM2805F25, iM2805F24, this.f3995X[15], 7);
        int iM2805F28 = m2805F2(iM2805F24, iM2805F27, iM2805F26, iM2805F25, this.f3995X[3], 15);
        int iM2805F29 = m2805F2(iM2805F25, iM2805F28, iM2805F27, iM2805F26, this.f3995X[12], 7);
        int iM2805F210 = m2805F2(iM2805F26, iM2805F29, iM2805F28, iM2805F27, this.f3995X[0], 12);
        int iM2805F211 = m2805F2(iM2805F27, iM2805F210, iM2805F29, iM2805F28, this.f3995X[9], 15);
        int iM2805F212 = m2805F2(iM2805F28, iM2805F211, iM2805F210, iM2805F29, this.f3995X[5], 9);
        int iM2805F213 = m2805F2(iM2805F29, iM2805F212, iM2805F211, iM2805F210, this.f3995X[2], 11);
        int iM2805F214 = m2805F2(iM2805F210, iM2805F213, iM2805F212, iM2805F211, this.f3995X[14], 7);
        int iM2805F215 = m2805F2(iM2805F211, iM2805F214, iM2805F213, iM2805F212, this.f3995X[11], 13);
        int iM2805F216 = m2805F2(iM2805F212, iM2805F215, iM2805F214, iM2805F213, this.f3995X[8], 12);
        int iFF3 = FF3(iM2804F113, iFF416, iFF415, iFF414, this.f3995X[6], 9);
        int iFF32 = FF3(iFF414, iFF3, iFF416, iFF415, this.f3995X[11], 13);
        int iFF33 = FF3(iFF415, iFF32, iFF3, iFF416, this.f3995X[3], 15);
        int iFF34 = FF3(iFF416, iFF33, iFF32, iFF3, this.f3995X[7], 7);
        int iFF35 = FF3(iFF3, iFF34, iFF33, iFF32, this.f3995X[0], 12);
        int iFF36 = FF3(iFF32, iFF35, iFF34, iFF33, this.f3995X[13], 8);
        int iFF37 = FF3(iFF33, iFF36, iFF35, iFF34, this.f3995X[5], 9);
        int iFF38 = FF3(iFF34, iFF37, iFF36, iFF35, this.f3995X[10], 11);
        int iFF39 = FF3(iFF35, iFF38, iFF37, iFF36, this.f3995X[14], 7);
        int iFF310 = FF3(iFF36, iFF39, iFF38, iFF37, this.f3995X[15], 7);
        int iFF311 = FF3(iFF37, iFF310, iFF39, iFF38, this.f3995X[8], 12);
        int iFF312 = FF3(iFF38, iFF311, iFF310, iFF39, this.f3995X[12], 7);
        int iFF313 = FF3(iFF39, iFF312, iFF311, iFF310, this.f3995X[4], 6);
        int iFF314 = FF3(iFF310, iFF313, iFF312, iFF311, this.f3995X[9], 15);
        int iFF315 = FF3(iFF311, iFF314, iFF313, iFF312, this.f3995X[1], 13);
        int iFF316 = FF3(iFF312, iFF315, iFF314, iFF313, this.f3995X[2], 11);
        int iM2806F3 = m2806F3(iM2805F213, iFF316, iM2805F215, iM2805F214, this.f3995X[3], 11);
        int iM2806F32 = m2806F3(iM2805F214, iM2806F3, iFF316, iM2805F215, this.f3995X[10], 13);
        int iM2806F33 = m2806F3(iM2805F215, iM2806F32, iM2806F3, iFF316, this.f3995X[14], 6);
        int iM2806F34 = m2806F3(iFF316, iM2806F33, iM2806F32, iM2806F3, this.f3995X[4], 7);
        int iM2806F35 = m2806F3(iM2806F3, iM2806F34, iM2806F33, iM2806F32, this.f3995X[9], 14);
        int iM2806F36 = m2806F3(iM2806F32, iM2806F35, iM2806F34, iM2806F33, this.f3995X[15], 9);
        int iM2806F37 = m2806F3(iM2806F33, iM2806F36, iM2806F35, iM2806F34, this.f3995X[8], 13);
        int iM2806F38 = m2806F3(iM2806F34, iM2806F37, iM2806F36, iM2806F35, this.f3995X[1], 15);
        int iM2806F39 = m2806F3(iM2806F35, iM2806F38, iM2806F37, iM2806F36, this.f3995X[2], 14);
        int iM2806F310 = m2806F3(iM2806F36, iM2806F39, iM2806F38, iM2806F37, this.f3995X[7], 8);
        int iM2806F311 = m2806F3(iM2806F37, iM2806F310, iM2806F39, iM2806F38, this.f3995X[0], 13);
        int iM2806F312 = m2806F3(iM2806F38, iM2806F311, iM2806F310, iM2806F39, this.f3995X[6], 6);
        int iM2806F313 = m2806F3(iM2806F39, iM2806F312, iM2806F311, iM2806F310, this.f3995X[13], 5);
        int iM2806F314 = m2806F3(iM2806F310, iM2806F313, iM2806F312, iM2806F311, this.f3995X[11], 12);
        int iM2806F315 = m2806F3(iM2806F311, iM2806F314, iM2806F313, iM2806F312, this.f3995X[5], 7);
        int iM2806F316 = m2806F3(iM2806F312, iM2806F315, iM2806F314, iM2806F313, this.f3995X[12], 5);
        int iFF2 = FF2(iFF313, iM2805F216, iFF315, iFF314, this.f3995X[15], 9);
        int iFF22 = FF2(iFF314, iFF2, iM2805F216, iFF315, this.f3995X[5], 7);
        int iFF23 = FF2(iFF315, iFF22, iFF2, iM2805F216, this.f3995X[1], 15);
        int iFF24 = FF2(iM2805F216, iFF23, iFF22, iFF2, this.f3995X[3], 11);
        int iFF25 = FF2(iFF2, iFF24, iFF23, iFF22, this.f3995X[7], 8);
        int iFF26 = FF2(iFF22, iFF25, iFF24, iFF23, this.f3995X[14], 6);
        int iFF27 = FF2(iFF23, iFF26, iFF25, iFF24, this.f3995X[6], 6);
        int iFF28 = FF2(iFF24, iFF27, iFF26, iFF25, this.f3995X[9], 14);
        int iFF29 = FF2(iFF25, iFF28, iFF27, iFF26, this.f3995X[11], 12);
        int iFF210 = FF2(iFF26, iFF29, iFF28, iFF27, this.f3995X[8], 13);
        int iFF211 = FF2(iFF27, iFF210, iFF29, iFF28, this.f3995X[12], 5);
        int iFF212 = FF2(iFF28, iFF211, iFF210, iFF29, this.f3995X[2], 14);
        int iFF213 = FF2(iFF29, iFF212, iFF211, iFF210, this.f3995X[10], 13);
        int iFF214 = FF2(iFF210, iFF213, iFF212, iFF211, this.f3995X[0], 13);
        int iFF215 = FF2(iFF211, iFF214, iFF213, iFF212, this.f3995X[4], 7);
        int iFF216 = FF2(iFF212, iFF215, iFF214, iFF213, this.f3995X[13], 5);
        int iM2807F4 = m2807F4(iM2806F313, iM2806F316, iFF215, iM2806F314, this.f3995X[1], 11);
        int iM2807F42 = m2807F4(iM2806F314, iM2807F4, iM2806F316, iFF215, this.f3995X[9], 12);
        int iM2807F43 = m2807F4(iFF215, iM2807F42, iM2807F4, iM2806F316, this.f3995X[11], 14);
        int iM2807F44 = m2807F4(iM2806F316, iM2807F43, iM2807F42, iM2807F4, this.f3995X[10], 15);
        int iM2807F45 = m2807F4(iM2807F4, iM2807F44, iM2807F43, iM2807F42, this.f3995X[0], 14);
        int iM2807F46 = m2807F4(iM2807F42, iM2807F45, iM2807F44, iM2807F43, this.f3995X[8], 15);
        int iM2807F47 = m2807F4(iM2807F43, iM2807F46, iM2807F45, iM2807F44, this.f3995X[12], 9);
        int iM2807F48 = m2807F4(iM2807F44, iM2807F47, iM2807F46, iM2807F45, this.f3995X[4], 8);
        int iM2807F49 = m2807F4(iM2807F45, iM2807F48, iM2807F47, iM2807F46, this.f3995X[13], 9);
        int iM2807F410 = m2807F4(iM2807F46, iM2807F49, iM2807F48, iM2807F47, this.f3995X[3], 14);
        int iM2807F411 = m2807F4(iM2807F47, iM2807F410, iM2807F49, iM2807F48, this.f3995X[7], 5);
        int iM2807F412 = m2807F4(iM2807F48, iM2807F411, iM2807F410, iM2807F49, this.f3995X[15], 6);
        int iM2807F413 = m2807F4(iM2807F49, iM2807F412, iM2807F411, iM2807F410, this.f3995X[14], 8);
        int iM2807F414 = m2807F4(iM2807F410, iM2807F413, iM2807F412, iM2807F411, this.f3995X[5], 6);
        int iM2807F415 = m2807F4(iM2807F411, iM2807F414, iM2807F413, iM2807F412, this.f3995X[6], 5);
        int iM2807F416 = m2807F4(iM2807F412, iM2807F415, iM2807F414, iM2807F413, this.f3995X[2], 12);
        int iFF1 = FF1(iFF213, iFF216, iM2806F315, iFF214, this.f3995X[8], 15);
        int iFF12 = FF1(iFF214, iFF1, iFF216, iM2806F315, this.f3995X[6], 5);
        int iFF13 = FF1(iM2806F315, iFF12, iFF1, iFF216, this.f3995X[4], 8);
        int iFF14 = FF1(iFF216, iFF13, iFF12, iFF1, this.f3995X[1], 11);
        int iFF15 = FF1(iFF1, iFF14, iFF13, iFF12, this.f3995X[3], 14);
        int iFF16 = FF1(iFF12, iFF15, iFF14, iFF13, this.f3995X[11], 14);
        int iFF17 = FF1(iFF13, iFF16, iFF15, iFF14, this.f3995X[15], 6);
        int iFF18 = FF1(iFF14, iFF17, iFF16, iFF15, this.f3995X[0], 14);
        int iFF19 = FF1(iFF15, iFF18, iFF17, iFF16, this.f3995X[5], 6);
        int iFF110 = FF1(iFF16, iFF19, iFF18, iFF17, this.f3995X[12], 9);
        int iFF111 = FF1(iFF17, iFF110, iFF19, iFF18, this.f3995X[2], 12);
        int iFF112 = FF1(iFF18, iFF111, iFF110, iFF19, this.f3995X[13], 9);
        int iFF113 = FF1(iFF19, iFF112, iFF111, iFF110, this.f3995X[9], 12);
        int iFF114 = FF1(iFF110, iFF113, iFF112, iFF111, this.f3995X[7], 5);
        int iFF115 = FF1(iFF111, iFF114, iFF113, iFF112, this.f3995X[10], 15);
        int iFF116 = FF1(iFF112, iFF115, iFF114, iFF113, this.f3995X[14], 8);
        this.f3987H0 += iM2807F413;
        this.f3988H1 += iM2807F416;
        this.f3989H2 += iM2807F415;
        this.f3990H3 += iFF114;
        this.f3991H4 += iFF113;
        this.f3992H5 += iFF116;
        this.f3993H6 += iFF115;
        this.f3994H7 += iM2807F414;
        this.xOff = 0;
        int i9 = 0;
        while (true) {
            int[] iArr = this.f3995X;
            if (i9 == iArr.length) {
                return;
            }
            iArr[i9] = 0;
            i9++;
        }
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    protected void processLength(long j) {
        if (this.xOff > 14) {
            processBlock();
        }
        int[] iArr = this.f3995X;
        iArr[14] = (int) j;
        iArr[15] = (int) (j >>> 32);
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    protected void processWord(byte[] bArr, int i) {
        int[] iArr = this.f3995X;
        int i2 = this.xOff;
        int i3 = i2 + 1;
        this.xOff = i3;
        iArr[i2] = ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        if (i3 == 16) {
            processBlock();
        }
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest, org.bouncycastle.crypto.Digest
    public void reset() {
        super.reset();
        this.f3987H0 = 1732584193;
        this.f3988H1 = -271733879;
        this.f3989H2 = -1732584194;
        this.f3990H3 = 271733878;
        this.f3991H4 = 1985229328;
        this.f3992H5 = -19088744;
        this.f3993H6 = -1985229329;
        this.f3994H7 = 19088743;
        this.xOff = 0;
        int i = 0;
        while (true) {
            int[] iArr = this.f3995X;
            if (i == iArr.length) {
                return;
            }
            iArr[i] = 0;
            i++;
        }
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        copyIn((RIPEMD256Digest) memoable);
    }
}
