package org.bouncycastle.crypto.params;

import java.math.BigInteger;
import org.bouncycastle.crypto.CipherParameters;

/* JADX INFO: loaded from: classes5.dex */
public class DSAParameters implements CipherParameters {

    /* JADX INFO: renamed from: g */
    private BigInteger f4308g;

    /* JADX INFO: renamed from: p */
    private BigInteger f4309p;

    /* JADX INFO: renamed from: q */
    private BigInteger f4310q;
    private DSAValidationParameters validation;

    public DSAParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.f4308g = bigInteger3;
        this.f4309p = bigInteger;
        this.f4310q = bigInteger2;
    }

    public DSAParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, DSAValidationParameters dSAValidationParameters) {
        this.f4308g = bigInteger3;
        this.f4309p = bigInteger;
        this.f4310q = bigInteger2;
        this.validation = dSAValidationParameters;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DSAParameters)) {
            return false;
        }
        DSAParameters dSAParameters = (DSAParameters) obj;
        return dSAParameters.getP().equals(this.f4309p) && dSAParameters.getQ().equals(this.f4310q) && dSAParameters.getG().equals(this.f4308g);
    }

    public BigInteger getG() {
        return this.f4308g;
    }

    public BigInteger getP() {
        return this.f4309p;
    }

    public BigInteger getQ() {
        return this.f4310q;
    }

    public DSAValidationParameters getValidationParameters() {
        return this.validation;
    }

    public int hashCode() {
        return (getP().hashCode() ^ getQ().hashCode()) ^ getG().hashCode();
    }
}
