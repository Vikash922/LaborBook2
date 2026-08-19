package org.bouncycastle.crypto.digests;

import org.bouncycastle.util.Memoable;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class SHA384Digest extends LongDigest {
    private static final int DIGEST_LENGTH = 48;

    public SHA384Digest() {
    }

    public SHA384Digest(SHA384Digest sHA384Digest) {
        super(sHA384Digest);
    }

    public SHA384Digest(byte[] bArr) {
        restoreState(bArr);
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new SHA384Digest(this);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        finish();
        Pack.longToBigEndian(this.f3952H1, bArr, i);
        Pack.longToBigEndian(this.f3953H2, bArr, i + 8);
        Pack.longToBigEndian(this.f3954H3, bArr, i + 16);
        Pack.longToBigEndian(this.f3955H4, bArr, i + 24);
        Pack.longToBigEndian(this.f3956H5, bArr, i + 32);
        Pack.longToBigEndian(this.f3957H6, bArr, i + 40);
        reset();
        return 48;
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "SHA-384";
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return 48;
    }

    @Override // org.bouncycastle.crypto.digests.EncodableDigest
    public byte[] getEncodedState() {
        byte[] bArr = new byte[getEncodedStateSize()];
        super.populateState(bArr);
        return bArr;
    }

    @Override // org.bouncycastle.crypto.digests.LongDigest, org.bouncycastle.crypto.Digest
    public void reset() {
        super.reset();
        this.f3952H1 = -3766243637369397544L;
        this.f3953H2 = 7105036623409894663L;
        this.f3954H3 = -7973340178411365097L;
        this.f3955H4 = 1526699215303891257L;
        this.f3956H5 = 7436329637833083697L;
        this.f3957H6 = -8163818279084223215L;
        this.f3958H7 = -2662702644619276377L;
        this.f3959H8 = 5167115440072839076L;
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        super.copyIn((SHA384Digest) memoable);
    }
}
