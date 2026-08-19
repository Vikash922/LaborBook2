package org.bouncycastle.jce.spec;

import java.math.BigInteger;

/* JADX INFO: loaded from: classes5.dex */
public class ElGamalPublicKeySpec extends ElGamalKeySpec {

    /* JADX INFO: renamed from: y */
    private BigInteger f4436y;

    public ElGamalPublicKeySpec(BigInteger bigInteger, ElGamalParameterSpec elGamalParameterSpec) {
        super(elGamalParameterSpec);
        this.f4436y = bigInteger;
    }

    public BigInteger getY() {
        return this.f4436y;
    }
}
