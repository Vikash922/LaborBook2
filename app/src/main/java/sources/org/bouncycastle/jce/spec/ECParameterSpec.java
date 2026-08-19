package org.bouncycastle.jce.spec;

import java.math.BigInteger;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.math.p042ec.ECCurve;
import org.bouncycastle.math.p042ec.ECPoint;

/* JADX INFO: loaded from: classes5.dex */
public class ECParameterSpec implements AlgorithmParameterSpec {

    /* JADX INFO: renamed from: G */
    private ECPoint f4428G;
    private ECCurve curve;

    /* JADX INFO: renamed from: h */
    private BigInteger f4429h;

    /* JADX INFO: renamed from: n */
    private BigInteger f4430n;
    private byte[] seed;

    public ECParameterSpec(ECCurve eCCurve, ECPoint eCPoint, BigInteger bigInteger) {
        this.curve = eCCurve;
        this.f4428G = eCPoint.normalize();
        this.f4430n = bigInteger;
        this.f4429h = BigInteger.valueOf(1L);
        this.seed = null;
    }

    public ECParameterSpec(ECCurve eCCurve, ECPoint eCPoint, BigInteger bigInteger, BigInteger bigInteger2) {
        this.curve = eCCurve;
        this.f4428G = eCPoint.normalize();
        this.f4430n = bigInteger;
        this.f4429h = bigInteger2;
        this.seed = null;
    }

    public ECParameterSpec(ECCurve eCCurve, ECPoint eCPoint, BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        this.curve = eCCurve;
        this.f4428G = eCPoint.normalize();
        this.f4430n = bigInteger;
        this.f4429h = bigInteger2;
        this.seed = bArr;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ECParameterSpec)) {
            return false;
        }
        ECParameterSpec eCParameterSpec = (ECParameterSpec) obj;
        return getCurve().equals(eCParameterSpec.getCurve()) && getG().equals(eCParameterSpec.getG());
    }

    public ECCurve getCurve() {
        return this.curve;
    }

    public ECPoint getG() {
        return this.f4428G;
    }

    public BigInteger getH() {
        return this.f4429h;
    }

    public BigInteger getN() {
        return this.f4430n;
    }

    public byte[] getSeed() {
        return this.seed;
    }

    public int hashCode() {
        return getCurve().hashCode() ^ getG().hashCode();
    }
}
