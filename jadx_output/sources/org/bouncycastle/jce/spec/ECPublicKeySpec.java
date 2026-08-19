package org.bouncycastle.jce.spec;

import org.bouncycastle.math.p042ec.ECPoint;

/* JADX INFO: loaded from: classes5.dex */
public class ECPublicKeySpec extends ECKeySpec {

    /* JADX INFO: renamed from: q */
    private ECPoint f4432q;

    public ECPublicKeySpec(ECPoint eCPoint, ECParameterSpec eCParameterSpec) {
        super(eCParameterSpec);
        this.f4432q = eCPoint.getCurve() != null ? eCPoint.normalize() : eCPoint;
    }

    public ECPoint getQ() {
        return this.f4432q;
    }
}
