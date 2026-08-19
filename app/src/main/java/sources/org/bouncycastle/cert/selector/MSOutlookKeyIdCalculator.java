package org.bouncycastle.cert.selector;

import com.google.common.base.Ascii;
import java.io.IOException;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.x509.SubjectPublicKeyInfo;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
class MSOutlookKeyIdCalculator {

    private static abstract class GeneralDigest {
        private static final int BYTE_LENGTH = 64;
        private long byteCount;
        private byte[] xBuf;
        private int xBufOff;

        protected GeneralDigest() {
            this.xBuf = new byte[4];
            this.xBufOff = 0;
        }

        protected GeneralDigest(GeneralDigest generalDigest) {
            this.xBuf = new byte[generalDigest.xBuf.length];
            copyIn(generalDigest);
        }

        protected void copyIn(GeneralDigest generalDigest) {
            byte[] bArr = generalDigest.xBuf;
            System.arraycopy(bArr, 0, this.xBuf, 0, bArr.length);
            this.xBufOff = generalDigest.xBufOff;
            this.byteCount = generalDigest.byteCount;
        }

        public void finish() {
            long j = this.byteCount << 3;
            byte b = -128;
            while (true) {
                update(b);
                if (this.xBufOff == 0) {
                    processLength(j);
                    processBlock();
                    return;
                }
                b = 0;
            }
        }

        protected abstract void processBlock();

        protected abstract void processLength(long j);

        protected abstract void processWord(byte[] bArr, int i);

        public void reset() {
            this.byteCount = 0L;
            this.xBufOff = 0;
            int i = 0;
            while (true) {
                byte[] bArr = this.xBuf;
                if (i >= bArr.length) {
                    return;
                }
                bArr[i] = 0;
                i++;
            }
        }

        public void update(byte b) {
            byte[] bArr = this.xBuf;
            int i = this.xBufOff;
            int i2 = i + 1;
            this.xBufOff = i2;
            bArr[i] = b;
            if (i2 == bArr.length) {
                processWord(bArr, 0);
                this.xBufOff = 0;
            }
            this.byteCount++;
        }

        public void update(byte[] bArr, int i, int i2) {
            while (this.xBufOff != 0 && i2 > 0) {
                update(bArr[i]);
                i++;
                i2--;
            }
            while (i2 > this.xBuf.length) {
                processWord(bArr, i);
                byte[] bArr2 = this.xBuf;
                i += bArr2.length;
                i2 -= bArr2.length;
                this.byteCount += (long) bArr2.length;
            }
            while (i2 > 0) {
                update(bArr[i]);
                i++;
                i2--;
            }
        }
    }

    private static class SHA1Digest extends GeneralDigest {
        private static final int DIGEST_LENGTH = 20;

        /* JADX INFO: renamed from: Y1 */
        private static final int f3863Y1 = 1518500249;

        /* JADX INFO: renamed from: Y2 */
        private static final int f3864Y2 = 1859775393;

        /* JADX INFO: renamed from: Y3 */
        private static final int f3865Y3 = -1894007588;

        /* JADX INFO: renamed from: Y4 */
        private static final int f3866Y4 = -899497514;

        /* JADX INFO: renamed from: H1 */
        private int f3867H1;

        /* JADX INFO: renamed from: H2 */
        private int f3868H2;

        /* JADX INFO: renamed from: H3 */
        private int f3869H3;

        /* JADX INFO: renamed from: H4 */
        private int f3870H4;

        /* JADX INFO: renamed from: H5 */
        private int f3871H5;

        /* JADX INFO: renamed from: X */
        private int[] f3872X = new int[80];
        private int xOff;

        public SHA1Digest() {
            reset();
        }

        /* JADX INFO: renamed from: f */
        private int m2766f(int i, int i2, int i3) {
            return ((~i) & i3) | (i2 & i);
        }

        /* JADX INFO: renamed from: g */
        private int m2767g(int i, int i2, int i3) {
            return (i & (i2 | i3)) | (i2 & i3);
        }

        /* JADX INFO: renamed from: h */
        private int m2768h(int i, int i2, int i3) {
            return (i ^ i2) ^ i3;
        }

        public int doFinal(byte[] bArr, int i) {
            finish();
            Pack.intToBigEndian(this.f3867H1, bArr, i);
            Pack.intToBigEndian(this.f3868H2, bArr, i + 4);
            Pack.intToBigEndian(this.f3869H3, bArr, i + 8);
            Pack.intToBigEndian(this.f3870H4, bArr, i + 12);
            Pack.intToBigEndian(this.f3871H5, bArr, i + 16);
            reset();
            return 20;
        }

        public String getAlgorithmName() {
            return "SHA-1";
        }

        public int getDigestSize() {
            return 20;
        }

        @Override // org.bouncycastle.cert.selector.MSOutlookKeyIdCalculator.GeneralDigest
        protected void processBlock() {
            for (int i = 16; i < 80; i++) {
                int[] iArr = this.f3872X;
                int i2 = ((iArr[i - 3] ^ iArr[i - 8]) ^ iArr[i - 14]) ^ iArr[i - 16];
                iArr[i] = (i2 >>> 31) | (i2 << 1);
            }
            int iM2768h = this.f3867H1;
            int iM2768h2 = this.f3868H2;
            int i3 = this.f3869H3;
            int i4 = this.f3870H4;
            int i5 = this.f3871H5;
            int i6 = 0;
            for (int i7 = 0; i7 < 4; i7++) {
                int iM2766f = i5 + ((iM2768h << 5) | (iM2768h >>> 27)) + m2766f(iM2768h2, i3, i4) + this.f3872X[i6] + f3863Y1;
                int i8 = (iM2768h2 >>> 2) | (iM2768h2 << 30);
                int iM2766f2 = i4 + ((iM2766f << 5) | (iM2766f >>> 27)) + m2766f(iM2768h, i8, i3) + this.f3872X[i6 + 1] + f3863Y1;
                int i9 = (iM2768h >>> 2) | (iM2768h << 30);
                int iM2766f3 = i3 + ((iM2766f2 << 5) | (iM2766f2 >>> 27)) + m2766f(iM2766f, i9, i8) + this.f3872X[i6 + 2] + f3863Y1;
                i5 = (iM2766f >>> 2) | (iM2766f << 30);
                int i10 = i6 + 4;
                iM2768h2 = i8 + ((iM2766f3 << 5) | (iM2766f3 >>> 27)) + m2766f(iM2766f2, i5, i9) + this.f3872X[i6 + 3] + f3863Y1;
                i4 = (iM2766f2 >>> 2) | (iM2766f2 << 30);
                i6 += 5;
                iM2768h = i9 + ((iM2768h2 << 5) | (iM2768h2 >>> 27)) + m2766f(iM2766f3, i4, i5) + this.f3872X[i10] + f3863Y1;
                i3 = (iM2766f3 >>> 2) | (iM2766f3 << 30);
            }
            for (int i11 = 0; i11 < 4; i11++) {
                int iM2768h3 = i5 + ((iM2768h << 5) | (iM2768h >>> 27)) + m2768h(iM2768h2, i3, i4) + this.f3872X[i6] + f3864Y2;
                int i12 = (iM2768h2 >>> 2) | (iM2768h2 << 30);
                int iM2768h4 = i4 + ((iM2768h3 << 5) | (iM2768h3 >>> 27)) + m2768h(iM2768h, i12, i3) + this.f3872X[i6 + 1] + f3864Y2;
                int i13 = (iM2768h >>> 2) | (iM2768h << 30);
                int iM2768h5 = i3 + ((iM2768h4 << 5) | (iM2768h4 >>> 27)) + m2768h(iM2768h3, i13, i12) + this.f3872X[i6 + 2] + f3864Y2;
                i5 = (iM2768h3 >>> 2) | (iM2768h3 << 30);
                int i14 = i6 + 4;
                iM2768h2 = i12 + ((iM2768h5 << 5) | (iM2768h5 >>> 27)) + m2768h(iM2768h4, i5, i13) + this.f3872X[i6 + 3] + f3864Y2;
                i4 = (iM2768h4 >>> 2) | (iM2768h4 << 30);
                i6 += 5;
                iM2768h = i13 + ((iM2768h2 << 5) | (iM2768h2 >>> 27)) + m2768h(iM2768h5, i4, i5) + this.f3872X[i14] + f3864Y2;
                i3 = (iM2768h5 >>> 2) | (iM2768h5 << 30);
            }
            for (int i15 = 0; i15 < 4; i15++) {
                int iM2767g = i5 + ((iM2768h << 5) | (iM2768h >>> 27)) + m2767g(iM2768h2, i3, i4) + this.f3872X[i6] + f3865Y3;
                int i16 = (iM2768h2 >>> 2) | (iM2768h2 << 30);
                int iM2767g2 = i4 + ((iM2767g << 5) | (iM2767g >>> 27)) + m2767g(iM2768h, i16, i3) + this.f3872X[i6 + 1] + f3865Y3;
                int i17 = (iM2768h >>> 2) | (iM2768h << 30);
                int iM2767g3 = i3 + ((iM2767g2 << 5) | (iM2767g2 >>> 27)) + m2767g(iM2767g, i17, i16) + this.f3872X[i6 + 2] + f3865Y3;
                i5 = (iM2767g >>> 2) | (iM2767g << 30);
                int i18 = i6 + 4;
                iM2768h2 = i16 + ((iM2767g3 << 5) | (iM2767g3 >>> 27)) + m2767g(iM2767g2, i5, i17) + this.f3872X[i6 + 3] + f3865Y3;
                i4 = (iM2767g2 >>> 2) | (iM2767g2 << 30);
                i6 += 5;
                iM2768h = i17 + ((iM2768h2 << 5) | (iM2768h2 >>> 27)) + m2767g(iM2767g3, i4, i5) + this.f3872X[i18] + f3865Y3;
                i3 = (iM2767g3 >>> 2) | (iM2767g3 << 30);
            }
            for (int i19 = 0; i19 <= 3; i19++) {
                int iM2768h6 = i5 + ((iM2768h << 5) | (iM2768h >>> 27)) + m2768h(iM2768h2, i3, i4) + this.f3872X[i6] + f3866Y4;
                int i20 = (iM2768h2 >>> 2) | (iM2768h2 << 30);
                int iM2768h7 = i4 + ((iM2768h6 << 5) | (iM2768h6 >>> 27)) + m2768h(iM2768h, i20, i3) + this.f3872X[i6 + 1] + f3866Y4;
                int i21 = (iM2768h >>> 2) | (iM2768h << 30);
                int iM2768h8 = i3 + ((iM2768h7 << 5) | (iM2768h7 >>> 27)) + m2768h(iM2768h6, i21, i20) + this.f3872X[i6 + 2] + f3866Y4;
                i5 = (iM2768h6 >>> 2) | (iM2768h6 << 30);
                int i22 = i6 + 4;
                iM2768h2 = i20 + ((iM2768h8 << 5) | (iM2768h8 >>> 27)) + m2768h(iM2768h7, i5, i21) + this.f3872X[i6 + 3] + f3866Y4;
                i4 = (iM2768h7 >>> 2) | (iM2768h7 << 30);
                i6 += 5;
                iM2768h = i21 + ((iM2768h2 << 5) | (iM2768h2 >>> 27)) + m2768h(iM2768h8, i4, i5) + this.f3872X[i22] + f3866Y4;
                i3 = (iM2768h8 >>> 2) | (iM2768h8 << 30);
            }
            this.f3867H1 += iM2768h;
            this.f3868H2 += iM2768h2;
            this.f3869H3 += i3;
            this.f3870H4 += i4;
            this.f3871H5 += i5;
            this.xOff = 0;
            for (int i23 = 0; i23 < 16; i23++) {
                this.f3872X[i23] = 0;
            }
        }

        @Override // org.bouncycastle.cert.selector.MSOutlookKeyIdCalculator.GeneralDigest
        protected void processLength(long j) {
            if (this.xOff > 14) {
                processBlock();
            }
            int[] iArr = this.f3872X;
            iArr[14] = (int) (j >>> 32);
            iArr[15] = (int) j;
        }

        @Override // org.bouncycastle.cert.selector.MSOutlookKeyIdCalculator.GeneralDigest
        protected void processWord(byte[] bArr, int i) {
            int i2 = (bArr[i + 3] & 255) | (bArr[i] << Ascii.CAN) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
            int[] iArr = this.f3872X;
            int i3 = this.xOff;
            iArr[i3] = i2;
            int i4 = i3 + 1;
            this.xOff = i4;
            if (i4 == 16) {
                processBlock();
            }
        }

        @Override // org.bouncycastle.cert.selector.MSOutlookKeyIdCalculator.GeneralDigest
        public void reset() {
            super.reset();
            this.f3867H1 = 1732584193;
            this.f3868H2 = -271733879;
            this.f3869H3 = -1732584194;
            this.f3870H4 = 271733878;
            this.f3871H5 = -1009589776;
            this.xOff = 0;
            int i = 0;
            while (true) {
                int[] iArr = this.f3872X;
                if (i == iArr.length) {
                    return;
                }
                iArr[i] = 0;
                i++;
            }
        }
    }

    MSOutlookKeyIdCalculator() {
    }

    static byte[] calculateKeyId(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        SHA1Digest sHA1Digest = new SHA1Digest();
        byte[] bArr = new byte[sHA1Digest.getDigestSize()];
        try {
            byte[] encoded = subjectPublicKeyInfo.getEncoded(ASN1Encoding.DER);
            sHA1Digest.update(encoded, 0, encoded.length);
            sHA1Digest.doFinal(bArr, 0);
            return bArr;
        } catch (IOException unused) {
            return new byte[0];
        }
    }
}
