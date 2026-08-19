package org.bouncycastle.jcajce.spec;

import java.math.BigInteger;
import javax.crypto.spec.DHParameterSpec;
import org.bouncycastle.crypto.params.DHParameters;
import org.bouncycastle.crypto.params.DHValidationParameters;

/* JADX INFO: loaded from: classes5.dex */
public class DHDomainParameterSpec extends DHParameterSpec {

    /* JADX INFO: renamed from: j */
    private final BigInteger f4409j;

    /* JADX INFO: renamed from: m */
    private final int f4410m;

    /* JADX INFO: renamed from: q */
    private final BigInteger f4411q;
    private DHValidationParameters validationParameters;

    public DHDomainParameterSpec(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this(bigInteger, bigInteger2, bigInteger3, null, 0);
    }

    public DHDomainParameterSpec(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, int i) {
        this(bigInteger, bigInteger2, bigInteger3, null, i);
    }

    public DHDomainParameterSpec(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, int i) {
        this(bigInteger, bigInteger2, bigInteger3, bigInteger4, 0, i);
    }

    public DHDomainParameterSpec(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, int i, int i2) {
        super(bigInteger, bigInteger3, i2);
        this.f4411q = bigInteger2;
        this.f4409j = bigInteger4;
        this.f4410m = i;
    }

    public DHDomainParameterSpec(DHParameters dHParameters) {
        this(dHParameters.getP(), dHParameters.getQ(), dHParameters.getG(), dHParameters.getJ(), dHParameters.getM(), dHParameters.getL());
        this.validationParameters = dHParameters.getValidationParameters();
    }

    public DHParameters getDomainParameters() {
        return new DHParameters(getP(), getG(), this.f4411q, this.f4410m, getL(), this.f4409j, this.validationParameters);
    }

    public BigInteger getJ() {
        return this.f4409j;
    }

    public int getM() {
        return this.f4410m;
    }

    public BigInteger getQ() {
        return this.f4411q;
    }
}
