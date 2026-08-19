package org.bouncycastle.jce.spec;

import java.math.BigInteger;

/* JADX INFO: loaded from: classes5.dex */
public class GOST3410PublicKeyParameterSetSpec {

    /* JADX INFO: renamed from: a */
    private BigInteger f4441a;

    /* JADX INFO: renamed from: p */
    private BigInteger f4442p;

    /* JADX INFO: renamed from: q */
    private BigInteger f4443q;

    public GOST3410PublicKeyParameterSetSpec(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.f4442p = bigInteger;
        this.f4443q = bigInteger2;
        this.f4441a = bigInteger3;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof GOST3410PublicKeyParameterSetSpec)) {
            return false;
        }
        GOST3410PublicKeyParameterSetSpec gOST3410PublicKeyParameterSetSpec = (GOST3410PublicKeyParameterSetSpec) obj;
        return this.f4441a.equals(gOST3410PublicKeyParameterSetSpec.f4441a) && this.f4442p.equals(gOST3410PublicKeyParameterSetSpec.f4442p) && this.f4443q.equals(gOST3410PublicKeyParameterSetSpec.f4443q);
    }

    public BigInteger getA() {
        return this.f4441a;
    }

    public BigInteger getP() {
        return this.f4442p;
    }

    public BigInteger getQ() {
        return this.f4443q;
    }

    public int hashCode() {
        return (this.f4441a.hashCode() ^ this.f4442p.hashCode()) ^ this.f4443q.hashCode();
    }
}
