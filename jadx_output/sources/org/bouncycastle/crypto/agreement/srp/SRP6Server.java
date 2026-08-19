package org.bouncycastle.crypto.agreement.srp;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.CryptoException;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.params.SRP6GroupParameters;

/* JADX INFO: loaded from: classes5.dex */
public class SRP6Server {

    /* JADX INFO: renamed from: A */
    protected BigInteger f3903A;

    /* JADX INFO: renamed from: B */
    protected BigInteger f3904B;
    protected BigInteger Key;

    /* JADX INFO: renamed from: M1 */
    protected BigInteger f3905M1;

    /* JADX INFO: renamed from: M2 */
    protected BigInteger f3906M2;

    /* JADX INFO: renamed from: N */
    protected BigInteger f3907N;

    /* JADX INFO: renamed from: S */
    protected BigInteger f3908S;

    /* JADX INFO: renamed from: b */
    protected BigInteger f3909b;
    protected Digest digest;

    /* JADX INFO: renamed from: g */
    protected BigInteger f3910g;
    protected SecureRandom random;

    /* JADX INFO: renamed from: u */
    protected BigInteger f3911u;

    /* JADX INFO: renamed from: v */
    protected BigInteger f3912v;

    private BigInteger calculateS() {
        return this.f3912v.modPow(this.f3911u, this.f3907N).multiply(this.f3903A).mod(this.f3907N).modPow(this.f3909b, this.f3907N);
    }

    public BigInteger calculateSecret(BigInteger bigInteger) throws CryptoException {
        BigInteger bigIntegerValidatePublicValue = SRP6Util.validatePublicValue(this.f3907N, bigInteger);
        this.f3903A = bigIntegerValidatePublicValue;
        this.f3911u = SRP6Util.calculateU(this.digest, this.f3907N, bigIntegerValidatePublicValue, this.f3904B);
        BigInteger bigIntegerCalculateS = calculateS();
        this.f3908S = bigIntegerCalculateS;
        return bigIntegerCalculateS;
    }

    public BigInteger calculateServerEvidenceMessage() throws CryptoException {
        BigInteger bigInteger;
        BigInteger bigInteger2;
        BigInteger bigInteger3 = this.f3903A;
        if (bigInteger3 == null || (bigInteger = this.f3905M1) == null || (bigInteger2 = this.f3908S) == null) {
            throw new CryptoException("Impossible to compute M2: some data are missing from the previous operations (A,M1,S)");
        }
        BigInteger bigIntegerCalculateM2 = SRP6Util.calculateM2(this.digest, this.f3907N, bigInteger3, bigInteger, bigInteger2);
        this.f3906M2 = bigIntegerCalculateM2;
        return bigIntegerCalculateM2;
    }

    public BigInteger calculateSessionKey() throws CryptoException {
        BigInteger bigInteger = this.f3908S;
        if (bigInteger == null || this.f3905M1 == null || this.f3906M2 == null) {
            throw new CryptoException("Impossible to compute Key: some data are missing from the previous operations (S,M1,M2)");
        }
        BigInteger bigIntegerCalculateKey = SRP6Util.calculateKey(this.digest, this.f3907N, bigInteger);
        this.Key = bigIntegerCalculateKey;
        return bigIntegerCalculateKey;
    }

    public BigInteger generateServerCredentials() {
        BigInteger bigIntegerCalculateK = SRP6Util.calculateK(this.digest, this.f3907N, this.f3910g);
        this.f3909b = selectPrivateValue();
        BigInteger bigIntegerMod = bigIntegerCalculateK.multiply(this.f3912v).mod(this.f3907N).add(this.f3910g.modPow(this.f3909b, this.f3907N)).mod(this.f3907N);
        this.f3904B = bigIntegerMod;
        return bigIntegerMod;
    }

    public void init(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, Digest digest, SecureRandom secureRandom) {
        this.f3907N = bigInteger;
        this.f3910g = bigInteger2;
        this.f3912v = bigInteger3;
        this.random = secureRandom;
        this.digest = digest;
    }

    public void init(SRP6GroupParameters sRP6GroupParameters, BigInteger bigInteger, Digest digest, SecureRandom secureRandom) {
        init(sRP6GroupParameters.getN(), sRP6GroupParameters.getG(), bigInteger, digest, secureRandom);
    }

    protected BigInteger selectPrivateValue() {
        return SRP6Util.generatePrivateValue(this.digest, this.f3907N, this.f3910g, this.random);
    }

    public boolean verifyClientEvidenceMessage(BigInteger bigInteger) throws CryptoException {
        BigInteger bigInteger2;
        BigInteger bigInteger3;
        BigInteger bigInteger4 = this.f3903A;
        if (bigInteger4 == null || (bigInteger2 = this.f3904B) == null || (bigInteger3 = this.f3908S) == null) {
            throw new CryptoException("Impossible to compute and verify M1: some data are missing from the previous operations (A,B,S)");
        }
        if (!SRP6Util.calculateM1(this.digest, this.f3907N, bigInteger4, bigInteger2, bigInteger3).equals(bigInteger)) {
            return false;
        }
        this.f3905M1 = bigInteger;
        return true;
    }
}
