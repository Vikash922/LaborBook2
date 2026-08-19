package org.bouncycastle.crypto.params;

import java.math.BigInteger;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.util.Memoable;

/* JADX INFO: loaded from: classes5.dex */
public class CramerShoupParameters implements CipherParameters {

    /* JADX INFO: renamed from: H */
    private Digest f4285H;

    /* JADX INFO: renamed from: g1 */
    private BigInteger f4286g1;

    /* JADX INFO: renamed from: g2 */
    private BigInteger f4287g2;

    /* JADX INFO: renamed from: p */
    private BigInteger f4288p;

    public CramerShoupParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, Digest digest) {
        this.f4288p = bigInteger;
        this.f4286g1 = bigInteger2;
        this.f4287g2 = bigInteger3;
        Digest digest2 = (Digest) ((Memoable) digest).copy();
        this.f4285H = digest2;
        digest2.reset();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof CramerShoupParameters)) {
            return false;
        }
        CramerShoupParameters cramerShoupParameters = (CramerShoupParameters) obj;
        return cramerShoupParameters.getP().equals(this.f4288p) && cramerShoupParameters.getG1().equals(this.f4286g1) && cramerShoupParameters.getG2().equals(this.f4287g2);
    }

    public BigInteger getG1() {
        return this.f4286g1;
    }

    public BigInteger getG2() {
        return this.f4287g2;
    }

    public Digest getH() {
        return (Digest) ((Memoable) this.f4285H).copy();
    }

    public BigInteger getP() {
        return this.f4288p;
    }

    public int hashCode() {
        return (getP().hashCode() ^ getG1().hashCode()) ^ getG2().hashCode();
    }
}
