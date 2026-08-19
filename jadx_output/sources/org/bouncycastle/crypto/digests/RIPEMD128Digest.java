package org.bouncycastle.crypto.digests;

import org.bouncycastle.util.Memoable;

/* JADX INFO: loaded from: classes5.dex */
public class RIPEMD128Digest extends GeneralDigest {
    private static final int DIGEST_LENGTH = 16;

    /* JADX INFO: renamed from: H0 */
    private int f3976H0;

    /* JADX INFO: renamed from: H1 */
    private int f3977H1;

    /* JADX INFO: renamed from: H2 */
    private int f3978H2;

    /* JADX INFO: renamed from: H3 */
    private int f3979H3;

    /* JADX INFO: renamed from: X */
    private int[] f3980X;
    private int xOff;

    public RIPEMD128Digest() {
        this.f3980X = new int[16];
        reset();
    }

    public RIPEMD128Digest(RIPEMD128Digest rIPEMD128Digest) {
        super(rIPEMD128Digest);
        this.f3980X = new int[16];
        copyIn(rIPEMD128Digest);
    }

    /* JADX INFO: renamed from: F1 */
    private int m2789F1(int i, int i2, int i3, int i4, int i5, int i6) {
        return m2793RL(i + m2794f1(i2, i3, i4) + i5, i6);
    }

    /* JADX INFO: renamed from: F2 */
    private int m2790F2(int i, int i2, int i3, int i4, int i5, int i6) {
        return m2793RL(i + m2795f2(i2, i3, i4) + i5 + 1518500249, i6);
    }

    /* JADX INFO: renamed from: F3 */
    private int m2791F3(int i, int i2, int i3, int i4, int i5, int i6) {
        return m2793RL(i + m2796f3(i2, i3, i4) + i5 + 1859775393, i6);
    }

    /* JADX INFO: renamed from: F4 */
    private int m2792F4(int i, int i2, int i3, int i4, int i5, int i6) {
        return m2793RL(((i + m2797f4(i2, i3, i4)) + i5) - 1894007588, i6);
    }

    private int FF1(int i, int i2, int i3, int i4, int i5, int i6) {
        return m2793RL(i + m2794f1(i2, i3, i4) + i5, i6);
    }

    private int FF2(int i, int i2, int i3, int i4, int i5, int i6) {
        return m2793RL(i + m2795f2(i2, i3, i4) + i5 + 1836072691, i6);
    }

    private int FF3(int i, int i2, int i3, int i4, int i5, int i6) {
        return m2793RL(i + m2796f3(i2, i3, i4) + i5 + 1548603684, i6);
    }

    private int FF4(int i, int i2, int i3, int i4, int i5, int i6) {
        return m2793RL(i + m2797f4(i2, i3, i4) + i5 + 1352829926, i6);
    }

    /* JADX INFO: renamed from: RL */
    private int m2793RL(int i, int i2) {
        return (i >>> (32 - i2)) | (i << i2);
    }

    private void copyIn(RIPEMD128Digest rIPEMD128Digest) {
        super.copyIn((GeneralDigest) rIPEMD128Digest);
        this.f3976H0 = rIPEMD128Digest.f3976H0;
        this.f3977H1 = rIPEMD128Digest.f3977H1;
        this.f3978H2 = rIPEMD128Digest.f3978H2;
        this.f3979H3 = rIPEMD128Digest.f3979H3;
        int[] iArr = rIPEMD128Digest.f3980X;
        System.arraycopy(iArr, 0, this.f3980X, 0, iArr.length);
        this.xOff = rIPEMD128Digest.xOff;
    }

    /* JADX INFO: renamed from: f1 */
    private int m2794f1(int i, int i2, int i3) {
        return (i ^ i2) ^ i3;
    }

    /* JADX INFO: renamed from: f2 */
    private int m2795f2(int i, int i2, int i3) {
        return ((~i) & i3) | (i2 & i);
    }

    /* JADX INFO: renamed from: f3 */
    private int m2796f3(int i, int i2, int i3) {
        return (i | (~i2)) ^ i3;
    }

    /* JADX INFO: renamed from: f4 */
    private int m2797f4(int i, int i2, int i3) {
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
        return new RIPEMD128Digest(this);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        finish();
        unpackWord(this.f3976H0, bArr, i);
        unpackWord(this.f3977H1, bArr, i + 4);
        unpackWord(this.f3978H2, bArr, i + 8);
        unpackWord(this.f3979H3, bArr, i + 12);
        reset();
        return 16;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "RIPEMD128";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    protected void processBlock() {
        int i = this.f3976H0;
        int i2 = this.f3977H1;
        int i3 = this.f3978H2;
        int i4 = this.f3979H3;
        int iM2789F1 = m2789F1(i, i2, i3, i4, this.f3980X[0], 11);
        int iM2789F12 = m2789F1(i4, iM2789F1, i2, i3, this.f3980X[1], 14);
        int iM2789F13 = m2789F1(i3, iM2789F12, iM2789F1, i2, this.f3980X[2], 15);
        int iM2789F14 = m2789F1(i2, iM2789F13, iM2789F12, iM2789F1, this.f3980X[3], 12);
        int iM2789F15 = m2789F1(iM2789F1, iM2789F14, iM2789F13, iM2789F12, this.f3980X[4], 5);
        int iM2789F16 = m2789F1(iM2789F12, iM2789F15, iM2789F14, iM2789F13, this.f3980X[5], 8);
        int iM2789F17 = m2789F1(iM2789F13, iM2789F16, iM2789F15, iM2789F14, this.f3980X[6], 7);
        int iM2789F18 = m2789F1(iM2789F14, iM2789F17, iM2789F16, iM2789F15, this.f3980X[7], 9);
        int iM2789F19 = m2789F1(iM2789F15, iM2789F18, iM2789F17, iM2789F16, this.f3980X[8], 11);
        int iM2789F110 = m2789F1(iM2789F16, iM2789F19, iM2789F18, iM2789F17, this.f3980X[9], 13);
        int iM2789F111 = m2789F1(iM2789F17, iM2789F110, iM2789F19, iM2789F18, this.f3980X[10], 14);
        int iM2789F112 = m2789F1(iM2789F18, iM2789F111, iM2789F110, iM2789F19, this.f3980X[11], 15);
        int iM2789F113 = m2789F1(iM2789F19, iM2789F112, iM2789F111, iM2789F110, this.f3980X[12], 6);
        int iM2789F114 = m2789F1(iM2789F110, iM2789F113, iM2789F112, iM2789F111, this.f3980X[13], 7);
        int iM2789F115 = m2789F1(iM2789F111, iM2789F114, iM2789F113, iM2789F112, this.f3980X[14], 9);
        int iM2789F116 = m2789F1(iM2789F112, iM2789F115, iM2789F114, iM2789F113, this.f3980X[15], 8);
        int iM2790F2 = m2790F2(iM2789F113, iM2789F116, iM2789F115, iM2789F114, this.f3980X[7], 7);
        int iM2790F22 = m2790F2(iM2789F114, iM2790F2, iM2789F116, iM2789F115, this.f3980X[4], 6);
        int iM2790F23 = m2790F2(iM2789F115, iM2790F22, iM2790F2, iM2789F116, this.f3980X[13], 8);
        int iM2790F24 = m2790F2(iM2789F116, iM2790F23, iM2790F22, iM2790F2, this.f3980X[1], 13);
        int iM2790F25 = m2790F2(iM2790F2, iM2790F24, iM2790F23, iM2790F22, this.f3980X[10], 11);
        int iM2790F26 = m2790F2(iM2790F22, iM2790F25, iM2790F24, iM2790F23, this.f3980X[6], 9);
        int iM2790F27 = m2790F2(iM2790F23, iM2790F26, iM2790F25, iM2790F24, this.f3980X[15], 7);
        int iM2790F28 = m2790F2(iM2790F24, iM2790F27, iM2790F26, iM2790F25, this.f3980X[3], 15);
        int iM2790F29 = m2790F2(iM2790F25, iM2790F28, iM2790F27, iM2790F26, this.f3980X[12], 7);
        int iM2790F210 = m2790F2(iM2790F26, iM2790F29, iM2790F28, iM2790F27, this.f3980X[0], 12);
        int iM2790F211 = m2790F2(iM2790F27, iM2790F210, iM2790F29, iM2790F28, this.f3980X[9], 15);
        int iM2790F212 = m2790F2(iM2790F28, iM2790F211, iM2790F210, iM2790F29, this.f3980X[5], 9);
        int iM2790F213 = m2790F2(iM2790F29, iM2790F212, iM2790F211, iM2790F210, this.f3980X[2], 11);
        int iM2790F214 = m2790F2(iM2790F210, iM2790F213, iM2790F212, iM2790F211, this.f3980X[14], 7);
        int iM2790F215 = m2790F2(iM2790F211, iM2790F214, iM2790F213, iM2790F212, this.f3980X[11], 13);
        int iM2790F216 = m2790F2(iM2790F212, iM2790F215, iM2790F214, iM2790F213, this.f3980X[8], 12);
        int iM2791F3 = m2791F3(iM2790F213, iM2790F216, iM2790F215, iM2790F214, this.f3980X[3], 11);
        int iM2791F32 = m2791F3(iM2790F214, iM2791F3, iM2790F216, iM2790F215, this.f3980X[10], 13);
        int iM2791F33 = m2791F3(iM2790F215, iM2791F32, iM2791F3, iM2790F216, this.f3980X[14], 6);
        int iM2791F34 = m2791F3(iM2790F216, iM2791F33, iM2791F32, iM2791F3, this.f3980X[4], 7);
        int iM2791F35 = m2791F3(iM2791F3, iM2791F34, iM2791F33, iM2791F32, this.f3980X[9], 14);
        int iM2791F36 = m2791F3(iM2791F32, iM2791F35, iM2791F34, iM2791F33, this.f3980X[15], 9);
        int iM2791F37 = m2791F3(iM2791F33, iM2791F36, iM2791F35, iM2791F34, this.f3980X[8], 13);
        int iM2791F38 = m2791F3(iM2791F34, iM2791F37, iM2791F36, iM2791F35, this.f3980X[1], 15);
        int iM2791F39 = m2791F3(iM2791F35, iM2791F38, iM2791F37, iM2791F36, this.f3980X[2], 14);
        int iM2791F310 = m2791F3(iM2791F36, iM2791F39, iM2791F38, iM2791F37, this.f3980X[7], 8);
        int iM2791F311 = m2791F3(iM2791F37, iM2791F310, iM2791F39, iM2791F38, this.f3980X[0], 13);
        int iM2791F312 = m2791F3(iM2791F38, iM2791F311, iM2791F310, iM2791F39, this.f3980X[6], 6);
        int iM2791F313 = m2791F3(iM2791F39, iM2791F312, iM2791F311, iM2791F310, this.f3980X[13], 5);
        int iM2791F314 = m2791F3(iM2791F310, iM2791F313, iM2791F312, iM2791F311, this.f3980X[11], 12);
        int iM2791F315 = m2791F3(iM2791F311, iM2791F314, iM2791F313, iM2791F312, this.f3980X[5], 7);
        int iM2791F316 = m2791F3(iM2791F312, iM2791F315, iM2791F314, iM2791F313, this.f3980X[12], 5);
        int iM2792F4 = m2792F4(iM2791F313, iM2791F316, iM2791F315, iM2791F314, this.f3980X[1], 11);
        int iM2792F42 = m2792F4(iM2791F314, iM2792F4, iM2791F316, iM2791F315, this.f3980X[9], 12);
        int iM2792F43 = m2792F4(iM2791F315, iM2792F42, iM2792F4, iM2791F316, this.f3980X[11], 14);
        int iM2792F44 = m2792F4(iM2791F316, iM2792F43, iM2792F42, iM2792F4, this.f3980X[10], 15);
        int iM2792F45 = m2792F4(iM2792F4, iM2792F44, iM2792F43, iM2792F42, this.f3980X[0], 14);
        int iM2792F46 = m2792F4(iM2792F42, iM2792F45, iM2792F44, iM2792F43, this.f3980X[8], 15);
        int iM2792F47 = m2792F4(iM2792F43, iM2792F46, iM2792F45, iM2792F44, this.f3980X[12], 9);
        int iM2792F48 = m2792F4(iM2792F44, iM2792F47, iM2792F46, iM2792F45, this.f3980X[4], 8);
        int iM2792F49 = m2792F4(iM2792F45, iM2792F48, iM2792F47, iM2792F46, this.f3980X[13], 9);
        int iM2792F410 = m2792F4(iM2792F46, iM2792F49, iM2792F48, iM2792F47, this.f3980X[3], 14);
        int iM2792F411 = m2792F4(iM2792F47, iM2792F410, iM2792F49, iM2792F48, this.f3980X[7], 5);
        int iM2792F412 = m2792F4(iM2792F48, iM2792F411, iM2792F410, iM2792F49, this.f3980X[15], 6);
        int iM2792F413 = m2792F4(iM2792F49, iM2792F412, iM2792F411, iM2792F410, this.f3980X[14], 8);
        int iM2792F414 = m2792F4(iM2792F410, iM2792F413, iM2792F412, iM2792F411, this.f3980X[5], 6);
        int iM2792F415 = m2792F4(iM2792F411, iM2792F414, iM2792F413, iM2792F412, this.f3980X[6], 5);
        int iM2792F416 = m2792F4(iM2792F412, iM2792F415, iM2792F414, iM2792F413, this.f3980X[2], 12);
        int iFF4 = FF4(i, i2, i3, i4, this.f3980X[5], 8);
        int iFF42 = FF4(i4, iFF4, i2, i3, this.f3980X[14], 9);
        int iFF43 = FF4(i3, iFF42, iFF4, i2, this.f3980X[7], 9);
        int iFF44 = FF4(i2, iFF43, iFF42, iFF4, this.f3980X[0], 11);
        int iFF45 = FF4(iFF4, iFF44, iFF43, iFF42, this.f3980X[9], 13);
        int iFF46 = FF4(iFF42, iFF45, iFF44, iFF43, this.f3980X[2], 15);
        int iFF47 = FF4(iFF43, iFF46, iFF45, iFF44, this.f3980X[11], 15);
        int iFF48 = FF4(iFF44, iFF47, iFF46, iFF45, this.f3980X[4], 5);
        int iFF49 = FF4(iFF45, iFF48, iFF47, iFF46, this.f3980X[13], 7);
        int iFF410 = FF4(iFF46, iFF49, iFF48, iFF47, this.f3980X[6], 7);
        int iFF411 = FF4(iFF47, iFF410, iFF49, iFF48, this.f3980X[15], 8);
        int iFF412 = FF4(iFF48, iFF411, iFF410, iFF49, this.f3980X[8], 11);
        int iFF413 = FF4(iFF49, iFF412, iFF411, iFF410, this.f3980X[1], 14);
        int iFF414 = FF4(iFF410, iFF413, iFF412, iFF411, this.f3980X[10], 14);
        int iFF415 = FF4(iFF411, iFF414, iFF413, iFF412, this.f3980X[3], 12);
        int iFF416 = FF4(iFF412, iFF415, iFF414, iFF413, this.f3980X[12], 6);
        int iFF3 = FF3(iFF413, iFF416, iFF415, iFF414, this.f3980X[6], 9);
        int iFF32 = FF3(iFF414, iFF3, iFF416, iFF415, this.f3980X[11], 13);
        int iFF33 = FF3(iFF415, iFF32, iFF3, iFF416, this.f3980X[3], 15);
        int iFF34 = FF3(iFF416, iFF33, iFF32, iFF3, this.f3980X[7], 7);
        int iFF35 = FF3(iFF3, iFF34, iFF33, iFF32, this.f3980X[0], 12);
        int iFF36 = FF3(iFF32, iFF35, iFF34, iFF33, this.f3980X[13], 8);
        int iFF37 = FF3(iFF33, iFF36, iFF35, iFF34, this.f3980X[5], 9);
        int iFF38 = FF3(iFF34, iFF37, iFF36, iFF35, this.f3980X[10], 11);
        int iFF39 = FF3(iFF35, iFF38, iFF37, iFF36, this.f3980X[14], 7);
        int iFF310 = FF3(iFF36, iFF39, iFF38, iFF37, this.f3980X[15], 7);
        int iFF311 = FF3(iFF37, iFF310, iFF39, iFF38, this.f3980X[8], 12);
        int iFF312 = FF3(iFF38, iFF311, iFF310, iFF39, this.f3980X[12], 7);
        int iFF313 = FF3(iFF39, iFF312, iFF311, iFF310, this.f3980X[4], 6);
        int iFF314 = FF3(iFF310, iFF313, iFF312, iFF311, this.f3980X[9], 15);
        int iFF315 = FF3(iFF311, iFF314, iFF313, iFF312, this.f3980X[1], 13);
        int iFF316 = FF3(iFF312, iFF315, iFF314, iFF313, this.f3980X[2], 11);
        int iFF2 = FF2(iFF313, iFF316, iFF315, iFF314, this.f3980X[15], 9);
        int iFF22 = FF2(iFF314, iFF2, iFF316, iFF315, this.f3980X[5], 7);
        int iFF23 = FF2(iFF315, iFF22, iFF2, iFF316, this.f3980X[1], 15);
        int iFF24 = FF2(iFF316, iFF23, iFF22, iFF2, this.f3980X[3], 11);
        int iFF25 = FF2(iFF2, iFF24, iFF23, iFF22, this.f3980X[7], 8);
        int iFF26 = FF2(iFF22, iFF25, iFF24, iFF23, this.f3980X[14], 6);
        int iFF27 = FF2(iFF23, iFF26, iFF25, iFF24, this.f3980X[6], 6);
        int iFF28 = FF2(iFF24, iFF27, iFF26, iFF25, this.f3980X[9], 14);
        int iFF29 = FF2(iFF25, iFF28, iFF27, iFF26, this.f3980X[11], 12);
        int iFF210 = FF2(iFF26, iFF29, iFF28, iFF27, this.f3980X[8], 13);
        int iFF211 = FF2(iFF27, iFF210, iFF29, iFF28, this.f3980X[12], 5);
        int iFF212 = FF2(iFF28, iFF211, iFF210, iFF29, this.f3980X[2], 14);
        int iFF213 = FF2(iFF29, iFF212, iFF211, iFF210, this.f3980X[10], 13);
        int iFF214 = FF2(iFF210, iFF213, iFF212, iFF211, this.f3980X[0], 13);
        int iFF215 = FF2(iFF211, iFF214, iFF213, iFF212, this.f3980X[4], 7);
        int iFF216 = FF2(iFF212, iFF215, iFF214, iFF213, this.f3980X[13], 5);
        int iFF1 = FF1(iFF213, iFF216, iFF215, iFF214, this.f3980X[8], 15);
        int iFF12 = FF1(iFF214, iFF1, iFF216, iFF215, this.f3980X[6], 5);
        int iFF13 = FF1(iFF215, iFF12, iFF1, iFF216, this.f3980X[4], 8);
        int iFF14 = FF1(iFF216, iFF13, iFF12, iFF1, this.f3980X[1], 11);
        int iFF15 = FF1(iFF1, iFF14, iFF13, iFF12, this.f3980X[3], 14);
        int iFF16 = FF1(iFF12, iFF15, iFF14, iFF13, this.f3980X[11], 14);
        int iFF17 = FF1(iFF13, iFF16, iFF15, iFF14, this.f3980X[15], 6);
        int iFF18 = FF1(iFF14, iFF17, iFF16, iFF15, this.f3980X[0], 14);
        int iFF19 = FF1(iFF15, iFF18, iFF17, iFF16, this.f3980X[5], 6);
        int iFF110 = FF1(iFF16, iFF19, iFF18, iFF17, this.f3980X[12], 9);
        int iFF111 = FF1(iFF17, iFF110, iFF19, iFF18, this.f3980X[2], 12);
        int iFF112 = FF1(iFF18, iFF111, iFF110, iFF19, this.f3980X[13], 9);
        int iFF113 = FF1(iFF19, iFF112, iFF111, iFF110, this.f3980X[9], 12);
        int iFF114 = FF1(iFF110, iFF113, iFF112, iFF111, this.f3980X[7], 5);
        int iFF115 = FF1(iFF111, iFF114, iFF113, iFF112, this.f3980X[10], 15);
        int iFF116 = FF1(iFF112, iFF115, iFF114, iFF113, this.f3980X[14], 8);
        int i5 = iFF114 + iM2792F415 + this.f3977H1;
        this.f3977H1 = this.f3978H2 + iM2792F414 + iFF113;
        this.f3978H2 = this.f3979H3 + iM2792F413 + iFF116;
        this.f3979H3 = this.f3976H0 + iM2792F416 + iFF115;
        this.f3976H0 = i5;
        this.xOff = 0;
        int i6 = 0;
        while (true) {
            int[] iArr = this.f3980X;
            if (i6 == iArr.length) {
                return;
            }
            iArr[i6] = 0;
            i6++;
        }
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    protected void processLength(long j) {
        if (this.xOff > 14) {
            processBlock();
        }
        int[] iArr = this.f3980X;
        iArr[14] = (int) j;
        iArr[15] = (int) (j >>> 32);
    }

    @Override // org.bouncycastle.crypto.digests.GeneralDigest
    protected void processWord(byte[] bArr, int i) {
        int[] iArr = this.f3980X;
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
        this.f3976H0 = 1732584193;
        this.f3977H1 = -271733879;
        this.f3978H2 = -1732584194;
        this.f3979H3 = 271733878;
        this.xOff = 0;
        int i = 0;
        while (true) {
            int[] iArr = this.f3980X;
            if (i == iArr.length) {
                return;
            }
            iArr[i] = 0;
            i++;
        }
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        copyIn((RIPEMD128Digest) memoable);
    }
}
