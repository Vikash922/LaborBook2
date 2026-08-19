package org.bouncycastle.crypto.params;

import java.math.BigInteger;
import org.bouncycastle.crypto.CipherParameters;

/* JADX INFO: loaded from: classes5.dex */
public class ElGamalParameters implements CipherParameters {

    /* JADX INFO: renamed from: g */
    private BigInteger f4318g;

    /* JADX INFO: renamed from: l */
    private int f4319l;

    /* JADX INFO: renamed from: p */
    private BigInteger f4320p;

    public ElGamalParameters(BigInteger bigInteger, BigInteger bigInteger2) {
        this(bigInteger, bigInteger2, 0);
    }

    public ElGamalParameters(BigInteger bigInteger, BigInteger bigInteger2, int i) {
        this.f4318g = bigInteger2;
        this.f4320p = bigInteger;
        this.f4319l = i;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ElGamalParameters)) {
            return false;
        }
        ElGamalParameters elGamalParameters = (ElGamalParameters) obj;
        return elGamalParameters.getP().equals(this.f4320p) && elGamalParameters.getG().equals(this.f4318g) && elGamalParameters.getL() == this.f4319l;
    }

    public BigInteger getG() {
        return this.f4318g;
    }

    public int getL() {
        return this.f4319l;
    }

    public BigInteger getP() {
        return this.f4320p;
    }

    public int hashCode() {
        return (getP().hashCode() ^ getG().hashCode()) + this.f4319l;
    }
}
