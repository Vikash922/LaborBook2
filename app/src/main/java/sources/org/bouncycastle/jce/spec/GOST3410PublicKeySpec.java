package org.bouncycastle.jce.spec;

import java.math.BigInteger;
import java.security.spec.KeySpec;

/* JADX INFO: loaded from: classes5.dex */
public class GOST3410PublicKeySpec implements KeySpec {

    /* JADX INFO: renamed from: a */
    private BigInteger f4444a;

    /* JADX INFO: renamed from: p */
    private BigInteger f4445p;

    /* JADX INFO: renamed from: q */
    private BigInteger f4446q;

    /* JADX INFO: renamed from: y */
    private BigInteger f4447y;

    public GOST3410PublicKeySpec(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
        this.f4447y = bigInteger;
        this.f4445p = bigInteger2;
        this.f4446q = bigInteger3;
        this.f4444a = bigInteger4;
    }

    public BigInteger getA() {
        return this.f4444a;
    }

    public BigInteger getP() {
        return this.f4445p;
    }

    public BigInteger getQ() {
        return this.f4446q;
    }

    public BigInteger getY() {
        return this.f4447y;
    }
}
