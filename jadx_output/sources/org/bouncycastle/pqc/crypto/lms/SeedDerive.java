package org.bouncycastle.pqc.crypto.lms;

import org.bouncycastle.crypto.Digest;

/* JADX INFO: loaded from: classes6.dex */
class SeedDerive {

    /* JADX INFO: renamed from: I */
    private final byte[] f4639I;
    private final Digest digest;

    /* JADX INFO: renamed from: j */
    private int f4640j;
    private final byte[] masterSeed;

    /* JADX INFO: renamed from: q */
    private int f4641q;

    public SeedDerive(byte[] bArr, byte[] bArr2, Digest digest) {
        this.f4639I = bArr;
        this.masterSeed = bArr2;
        this.digest = digest;
    }

    public void deriveSeed(byte[] bArr, boolean z) {
        deriveSeed(bArr, z, 0);
    }

    public void deriveSeed(byte[] bArr, boolean z, int i) {
        deriveSeed(bArr, i);
        if (z) {
            this.f4640j++;
        }
    }

    public byte[] deriveSeed(byte[] bArr, int i) {
        if (bArr.length < this.digest.getDigestSize()) {
            throw new IllegalArgumentException("target length is less than digest size.");
        }
        Digest digest = this.digest;
        byte[] bArr2 = this.f4639I;
        digest.update(bArr2, 0, bArr2.length);
        this.digest.update((byte) (this.f4641q >>> 24));
        this.digest.update((byte) (this.f4641q >>> 16));
        this.digest.update((byte) (this.f4641q >>> 8));
        this.digest.update((byte) this.f4641q);
        this.digest.update((byte) (this.f4640j >>> 8));
        this.digest.update((byte) this.f4640j);
        this.digest.update((byte) -1);
        Digest digest2 = this.digest;
        byte[] bArr3 = this.masterSeed;
        digest2.update(bArr3, 0, bArr3.length);
        this.digest.doFinal(bArr, i);
        return bArr;
    }

    public byte[] getI() {
        return this.f4639I;
    }

    public int getJ() {
        return this.f4640j;
    }

    public byte[] getMasterSeed() {
        return this.masterSeed;
    }

    public int getQ() {
        return this.f4641q;
    }

    public void setJ(int i) {
        this.f4640j = i;
    }

    public void setQ(int i) {
        this.f4641q = i;
    }
}
