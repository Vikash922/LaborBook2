package org.bouncycastle.crypto.params;

import java.math.BigInteger;

/* JADX INFO: loaded from: classes5.dex */
public class SRP6GroupParameters {

    /* JADX INFO: renamed from: N */
    private BigInteger f4348N;

    /* JADX INFO: renamed from: g */
    private BigInteger f4349g;

    public SRP6GroupParameters(BigInteger bigInteger, BigInteger bigInteger2) {
        this.f4348N = bigInteger;
        this.f4349g = bigInteger2;
    }

    public BigInteger getG() {
        return this.f4349g;
    }

    public BigInteger getN() {
        return this.f4348N;
    }
}
