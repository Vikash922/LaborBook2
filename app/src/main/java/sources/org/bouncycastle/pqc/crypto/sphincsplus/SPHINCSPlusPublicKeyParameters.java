package org.bouncycastle.pqc.crypto.sphincsplus;

import org.bouncycastle.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public class SPHINCSPlusPublicKeyParameters extends SPHINCSPlusKeyParameters {

    /* JADX INFO: renamed from: pk */
    private final C4762PK f4710pk;

    SPHINCSPlusPublicKeyParameters(SPHINCSPlusParameters sPHINCSPlusParameters, C4762PK c4762pk) {
        super(false, sPHINCSPlusParameters);
        this.f4710pk = c4762pk;
    }

    public SPHINCSPlusPublicKeyParameters(SPHINCSPlusParameters sPHINCSPlusParameters, byte[] bArr) {
        super(false, sPHINCSPlusParameters);
        int i = sPHINCSPlusParameters.getEngine().f4706N;
        int i2 = i * 2;
        if (bArr.length != i2) {
            throw new IllegalArgumentException("public key encoding does not match parameters");
        }
        this.f4710pk = new C4762PK(Arrays.copyOfRange(bArr, 0, i), Arrays.copyOfRange(bArr, i, i2));
    }

    public byte[] getEncoded() {
        return Arrays.concatenate(this.f4710pk.seed, this.f4710pk.root);
    }

    public byte[] getRoot() {
        return Arrays.clone(this.f4710pk.root);
    }

    public byte[] getSeed() {
        return Arrays.clone(this.f4710pk.seed);
    }
}
