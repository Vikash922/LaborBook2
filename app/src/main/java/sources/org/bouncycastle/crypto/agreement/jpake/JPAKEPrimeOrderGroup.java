package org.bouncycastle.crypto.agreement.jpake;

import com.itextpdf.svg.SvgConstants;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes5.dex */
public class JPAKEPrimeOrderGroup {

    /* JADX INFO: renamed from: g */
    private final BigInteger f3883g;

    /* JADX INFO: renamed from: p */
    private final BigInteger f3884p;

    /* JADX INFO: renamed from: q */
    private final BigInteger f3885q;

    public JPAKEPrimeOrderGroup(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this(bigInteger, bigInteger2, bigInteger3, false);
    }

    JPAKEPrimeOrderGroup(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, boolean z) {
        JPAKEUtil.validateNotNull(bigInteger, "p");
        JPAKEUtil.validateNotNull(bigInteger2, "q");
        JPAKEUtil.validateNotNull(bigInteger3, SvgConstants.Tags.f3337G);
        if (!z) {
            if (!bigInteger.subtract(JPAKEUtil.ONE).mod(bigInteger2).equals(JPAKEUtil.ZERO)) {
                throw new IllegalArgumentException("p-1 must be evenly divisible by q");
            }
            if (bigInteger3.compareTo(BigInteger.valueOf(2L)) == -1 || bigInteger3.compareTo(bigInteger.subtract(JPAKEUtil.ONE)) == 1) {
                throw new IllegalArgumentException("g must be in [2, p-1]");
            }
            if (!bigInteger3.modPow(bigInteger2, bigInteger).equals(JPAKEUtil.ONE)) {
                throw new IllegalArgumentException("g^q mod p must equal 1");
            }
            if (!bigInteger.isProbablePrime(20)) {
                throw new IllegalArgumentException("p must be prime");
            }
            if (!bigInteger2.isProbablePrime(20)) {
                throw new IllegalArgumentException("q must be prime");
            }
        }
        this.f3884p = bigInteger;
        this.f3885q = bigInteger2;
        this.f3883g = bigInteger3;
    }

    public BigInteger getG() {
        return this.f3883g;
    }

    public BigInteger getP() {
        return this.f3884p;
    }

    public BigInteger getQ() {
        return this.f3885q;
    }
}
