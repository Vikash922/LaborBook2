package org.bouncycastle.jce.spec;

import java.math.BigInteger;

/* JADX INFO: loaded from: classes5.dex */
public class ECPrivateKeySpec extends ECKeySpec {

    /* JADX INFO: renamed from: d */
    private BigInteger f4431d;

    public ECPrivateKeySpec(BigInteger bigInteger, ECParameterSpec eCParameterSpec) {
        super(eCParameterSpec);
        this.f4431d = bigInteger;
    }

    public BigInteger getD() {
        return this.f4431d;
    }
}
