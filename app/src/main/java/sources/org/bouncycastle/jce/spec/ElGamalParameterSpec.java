package org.bouncycastle.jce.spec;

import java.math.BigInteger;
import java.security.spec.AlgorithmParameterSpec;

/* JADX INFO: loaded from: classes5.dex */
public class ElGamalParameterSpec implements AlgorithmParameterSpec {

    /* JADX INFO: renamed from: g */
    private BigInteger f4433g;

    /* JADX INFO: renamed from: p */
    private BigInteger f4434p;

    public ElGamalParameterSpec(BigInteger bigInteger, BigInteger bigInteger2) {
        this.f4434p = bigInteger;
        this.f4433g = bigInteger2;
    }

    public BigInteger getG() {
        return this.f4433g;
    }

    public BigInteger getP() {
        return this.f4434p;
    }
}
