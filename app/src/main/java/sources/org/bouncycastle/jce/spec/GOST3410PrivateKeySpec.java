package org.bouncycastle.jce.spec;

import java.math.BigInteger;
import java.security.spec.KeySpec;

/* JADX INFO: loaded from: classes5.dex */
public class GOST3410PrivateKeySpec implements KeySpec {

    /* JADX INFO: renamed from: a */
    private BigInteger f4437a;

    /* JADX INFO: renamed from: p */
    private BigInteger f4438p;

    /* JADX INFO: renamed from: q */
    private BigInteger f4439q;

    /* JADX INFO: renamed from: x */
    private BigInteger f4440x;

    public GOST3410PrivateKeySpec(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
        this.f4440x = bigInteger;
        this.f4438p = bigInteger2;
        this.f4439q = bigInteger3;
        this.f4437a = bigInteger4;
    }

    public BigInteger getA() {
        return this.f4437a;
    }

    public BigInteger getP() {
        return this.f4438p;
    }

    public BigInteger getQ() {
        return this.f4439q;
    }

    public BigInteger getX() {
        return this.f4440x;
    }
}
