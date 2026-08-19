package org.bouncycastle.crypto.agreement.srp;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.CryptoException;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.params.SRP6GroupParameters;

/* JADX INFO: loaded from: classes5.dex */
public class SRP6Client {

    /* JADX INFO: renamed from: A */
    protected BigInteger f3893A;

    /* JADX INFO: renamed from: B */
    protected BigInteger f3894B;
    protected BigInteger Key;

    /* JADX INFO: renamed from: M1 */
    protected BigInteger f3895M1;

    /* JADX INFO: renamed from: M2 */
    protected BigInteger f3896M2;

    /* JADX INFO: renamed from: N */
    protected BigInteger f3897N;

    /* JADX INFO: renamed from: S */
    protected BigInteger f3898S;

    /* JADX INFO: renamed from: a */
    protected BigInteger f3899a;
    protected Digest digest;

    /* JADX INFO: renamed from: g */
    protected BigInteger f3900g;
    protected SecureRandom random;

    /* JADX INFO: renamed from: u */
    protected BigInteger f3901u;

    /* JADX INFO: renamed from: x */
    protected BigInteger f3902x;

    private BigInteger calculateS() {
        BigInteger bigIntegerCalculateK = SRP6Util.calculateK(this.digest, this.f3897N, this.f3900g);
        return this.f3894B.subtract(this.f3900g.modPow(this.f3902x, this.f3897N).multiply(bigIntegerCalculateK).mod(this.f3897N)).mod(this.f3897N).modPow(this.f3901u.multiply(this.f3902x).add(this.f3899a), this.f3897N);
    }

    public BigInteger calculateClientEvidenceMessage() throws CryptoException {
        BigInteger bigInteger;
        BigInteger bigInteger2;
        BigInteger bigInteger3 = this.f3893A;
        if (bigInteger3 == null || (bigInteger = this.f3894B) == null || (bigInteger2 = this.f3898S) == null) {
            throw new CryptoException("Impossible to compute M1: some data are missing from the previous operations (A,B,S)");
        }
        BigInteger bigIntegerCalculateM1 = SRP6Util.calculateM1(this.digest, this.f3897N, bigInteger3, bigInteger, bigInteger2);
        this.f3895M1 = bigIntegerCalculateM1;
        return bigIntegerCalculateM1;
    }

    public BigInteger calculateSecret(BigInteger bigInteger) throws CryptoException {
        BigInteger bigIntegerValidatePublicValue = SRP6Util.validatePublicValue(this.f3897N, bigInteger);
        this.f3894B = bigIntegerValidatePublicValue;
        this.f3901u = SRP6Util.calculateU(this.digest, this.f3897N, this.f3893A, bigIntegerValidatePublicValue);
        BigInteger bigIntegerCalculateS = calculateS();
        this.f3898S = bigIntegerCalculateS;
        return bigIntegerCalculateS;
    }

    public BigInteger calculateSessionKey() throws CryptoException {
        BigInteger bigInteger = this.f3898S;
        if (bigInteger == null || this.f3895M1 == null || this.f3896M2 == null) {
            throw new CryptoException("Impossible to compute Key: some data are missing from the previous operations (S,M1,M2)");
        }
        BigInteger bigIntegerCalculateKey = SRP6Util.calculateKey(this.digest, this.f3897N, bigInteger);
        this.Key = bigIntegerCalculateKey;
        return bigIntegerCalculateKey;
    }

    public BigInteger generateClientCredentials(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        this.f3902x = SRP6Util.calculateX(this.digest, this.f3897N, bArr, bArr2, bArr3);
        BigInteger bigIntegerSelectPrivateValue = selectPrivateValue();
        this.f3899a = bigIntegerSelectPrivateValue;
        BigInteger bigIntegerModPow = this.f3900g.modPow(bigIntegerSelectPrivateValue, this.f3897N);
        this.f3893A = bigIntegerModPow;
        return bigIntegerModPow;
    }

    public void init(BigInteger bigInteger, BigInteger bigInteger2, Digest digest, SecureRandom secureRandom) {
        this.f3897N = bigInteger;
        this.f3900g = bigInteger2;
        this.digest = digest;
        this.random = secureRandom;
    }

    public void init(SRP6GroupParameters sRP6GroupParameters, Digest digest, SecureRandom secureRandom) {
        init(sRP6GroupParameters.getN(), sRP6GroupParameters.getG(), digest, secureRandom);
    }

    protected BigInteger selectPrivateValue() {
        return SRP6Util.generatePrivateValue(this.digest, this.f3897N, this.f3900g, this.random);
    }

    public boolean verifyServerEvidenceMessage(BigInteger bigInteger) throws CryptoException {
        BigInteger bigInteger2;
        BigInteger bigInteger3;
        BigInteger bigInteger4 = this.f3893A;
        if (bigInteger4 == null || (bigInteger2 = this.f3895M1) == null || (bigInteger3 = this.f3898S) == null) {
            throw new CryptoException("Impossible to compute and verify M2: some data are missing from the previous operations (A,M1,S)");
        }
        if (!SRP6Util.calculateM2(this.digest, this.f3897N, bigInteger4, bigInteger2, bigInteger3).equals(bigInteger)) {
            return false;
        }
        this.f3896M2 = bigInteger;
        return true;
    }
}
