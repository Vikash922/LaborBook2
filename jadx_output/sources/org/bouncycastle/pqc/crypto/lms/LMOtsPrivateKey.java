package org.bouncycastle.pqc.crypto.lms;

import org.bouncycastle.crypto.Digest;

/* JADX INFO: loaded from: classes6.dex */
class LMOtsPrivateKey {

    /* JADX INFO: renamed from: I */
    private final byte[] f4622I;
    private final byte[] masterSecret;
    private final LMOtsParameters parameter;

    /* JADX INFO: renamed from: q */
    private final int f4623q;

    public LMOtsPrivateKey(LMOtsParameters lMOtsParameters, byte[] bArr, int i, byte[] bArr2) {
        this.parameter = lMOtsParameters;
        this.f4622I = bArr;
        this.f4623q = i;
        this.masterSecret = bArr2;
    }

    SeedDerive getDerivationFunction() {
        SeedDerive seedDerive = new SeedDerive(this.f4622I, this.masterSecret, DigestUtil.getDigest(this.parameter.getDigestOID()));
        seedDerive.setQ(this.f4623q);
        return seedDerive;
    }

    public byte[] getI() {
        return this.f4622I;
    }

    public byte[] getMasterSecret() {
        return this.masterSecret;
    }

    public LMOtsParameters getParameter() {
        return this.parameter;
    }

    public int getQ() {
        return this.f4623q;
    }

    LMSContext getSignatureContext(LMSigParameters lMSigParameters, byte[][] bArr) {
        byte[] bArr2 = new byte[32];
        SeedDerive derivationFunction = getDerivationFunction();
        derivationFunction.setJ(-3);
        derivationFunction.deriveSeed(bArr2, false);
        Digest digest = DigestUtil.getDigest(this.parameter.getDigestOID());
        LmsUtils.byteArray(getI(), digest);
        LmsUtils.u32str(getQ(), digest);
        LmsUtils.u16str((short) -32383, digest);
        LmsUtils.byteArray(bArr2, digest);
        return new LMSContext(this, lMSigParameters, digest, bArr2, bArr);
    }
}
