package org.bouncycastle.crypto.params;

import java.math.BigInteger;

/* JADX INFO: loaded from: classes5.dex */
public class RSAPrivateCrtKeyParameters extends RSAKeyParameters {

    /* JADX INFO: renamed from: dP */
    private BigInteger f4343dP;

    /* JADX INFO: renamed from: dQ */
    private BigInteger f4344dQ;

    /* JADX INFO: renamed from: e */
    private BigInteger f4345e;

    /* JADX INFO: renamed from: p */
    private BigInteger f4346p;

    /* JADX INFO: renamed from: q */
    private BigInteger f4347q;
    private BigInteger qInv;

    public RSAPrivateCrtKeyParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5, BigInteger bigInteger6, BigInteger bigInteger7, BigInteger bigInteger8) {
        super(true, bigInteger, bigInteger3);
        this.f4345e = bigInteger2;
        this.f4346p = bigInteger4;
        this.f4347q = bigInteger5;
        this.f4343dP = bigInteger6;
        this.f4344dQ = bigInteger7;
        this.qInv = bigInteger8;
    }

    public BigInteger getDP() {
        return this.f4343dP;
    }

    public BigInteger getDQ() {
        return this.f4344dQ;
    }

    public BigInteger getP() {
        return this.f4346p;
    }

    public BigInteger getPublicExponent() {
        return this.f4345e;
    }

    public BigInteger getQ() {
        return this.f4347q;
    }

    public BigInteger getQInv() {
        return this.qInv;
    }
}
