package org.bouncycastle.crypto.agreement.srp;

import java.math.BigInteger;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.params.SRP6GroupParameters;

/* JADX INFO: loaded from: classes5.dex */
public class SRP6VerifierGenerator {

    /* JADX INFO: renamed from: N */
    protected BigInteger f3913N;
    protected Digest digest;

    /* JADX INFO: renamed from: g */
    protected BigInteger f3914g;

    public BigInteger generateVerifier(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        return this.f3914g.modPow(SRP6Util.calculateX(this.digest, this.f3913N, bArr, bArr2, bArr3), this.f3913N);
    }

    public void init(BigInteger bigInteger, BigInteger bigInteger2, Digest digest) {
        this.f3913N = bigInteger;
        this.f3914g = bigInteger2;
        this.digest = digest;
    }

    public void init(SRP6GroupParameters sRP6GroupParameters, Digest digest) {
        this.f3913N = sRP6GroupParameters.getN();
        this.f3914g = sRP6GroupParameters.getG();
        this.digest = digest;
    }
}
