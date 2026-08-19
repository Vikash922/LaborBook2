package org.bouncycastle.jce.spec;

import java.math.BigInteger;

/* JADX INFO: loaded from: classes5.dex */
public class ElGamalPrivateKeySpec extends ElGamalKeySpec {

    /* JADX INFO: renamed from: x */
    private BigInteger f4435x;

    public ElGamalPrivateKeySpec(BigInteger bigInteger, ElGamalParameterSpec elGamalParameterSpec) {
        super(elGamalParameterSpec);
        this.f4435x = bigInteger;
    }

    public BigInteger getX() {
        return this.f4435x;
    }
}
