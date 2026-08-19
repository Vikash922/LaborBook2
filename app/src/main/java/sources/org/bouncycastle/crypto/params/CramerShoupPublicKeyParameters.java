package org.bouncycastle.crypto.params;

import java.math.BigInteger;

/* JADX INFO: loaded from: classes5.dex */
public class CramerShoupPublicKeyParameters extends CramerShoupKeyParameters {

    /* JADX INFO: renamed from: c */
    private BigInteger f4295c;

    /* JADX INFO: renamed from: d */
    private BigInteger f4296d;

    /* JADX INFO: renamed from: h */
    private BigInteger f4297h;

    public CramerShoupPublicKeyParameters(CramerShoupParameters cramerShoupParameters, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        super(false, cramerShoupParameters);
        this.f4295c = bigInteger;
        this.f4296d = bigInteger2;
        this.f4297h = bigInteger3;
    }

    @Override // org.bouncycastle.crypto.params.CramerShoupKeyParameters
    public boolean equals(Object obj) {
        if (!(obj instanceof CramerShoupPublicKeyParameters)) {
            return false;
        }
        CramerShoupPublicKeyParameters cramerShoupPublicKeyParameters = (CramerShoupPublicKeyParameters) obj;
        return cramerShoupPublicKeyParameters.getC().equals(this.f4295c) && cramerShoupPublicKeyParameters.getD().equals(this.f4296d) && cramerShoupPublicKeyParameters.getH().equals(this.f4297h) && super.equals(obj);
    }

    public BigInteger getC() {
        return this.f4295c;
    }

    public BigInteger getD() {
        return this.f4296d;
    }

    public BigInteger getH() {
        return this.f4297h;
    }

    @Override // org.bouncycastle.crypto.params.CramerShoupKeyParameters
    public int hashCode() {
        return ((this.f4295c.hashCode() ^ this.f4296d.hashCode()) ^ this.f4297h.hashCode()) ^ super.hashCode();
    }
}
