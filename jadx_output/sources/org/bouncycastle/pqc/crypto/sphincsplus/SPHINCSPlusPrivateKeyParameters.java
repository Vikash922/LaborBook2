package org.bouncycastle.pqc.crypto.sphincsplus;

import org.bouncycastle.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public class SPHINCSPlusPrivateKeyParameters extends SPHINCSPlusKeyParameters {

    /* JADX INFO: renamed from: pk */
    final C4762PK f4708pk;

    /* JADX INFO: renamed from: sk */
    final C4763SK f4709sk;

    SPHINCSPlusPrivateKeyParameters(SPHINCSPlusParameters sPHINCSPlusParameters, C4763SK c4763sk, C4762PK c4762pk) {
        super(true, sPHINCSPlusParameters);
        this.f4709sk = c4763sk;
        this.f4708pk = c4762pk;
    }

    public SPHINCSPlusPrivateKeyParameters(SPHINCSPlusParameters sPHINCSPlusParameters, byte[] bArr) {
        super(true, sPHINCSPlusParameters);
        int i = sPHINCSPlusParameters.getEngine().f4706N;
        int i2 = i * 4;
        if (bArr.length != i2) {
            throw new IllegalArgumentException("private key encoding does not match parameters");
        }
        int i3 = i * 2;
        this.f4709sk = new C4763SK(Arrays.copyOfRange(bArr, 0, i), Arrays.copyOfRange(bArr, i, i3));
        int i4 = i * 3;
        this.f4708pk = new C4762PK(Arrays.copyOfRange(bArr, i3, i4), Arrays.copyOfRange(bArr, i4, i2));
    }

    public byte[] getEncoded() {
        return Arrays.concatenate(this.f4709sk.seed, this.f4709sk.prf, this.f4708pk.seed, this.f4708pk.root);
    }

    public byte[] getPrf() {
        return Arrays.clone(this.f4709sk.prf);
    }

    public byte[] getPublicKey() {
        return Arrays.concatenate(this.f4708pk.seed, this.f4708pk.root);
    }

    public byte[] getPublicSeed() {
        return Arrays.clone(this.f4708pk.seed);
    }

    public byte[] getSeed() {
        return Arrays.clone(this.f4709sk.seed);
    }
}
