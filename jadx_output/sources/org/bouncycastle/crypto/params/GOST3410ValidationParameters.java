package org.bouncycastle.crypto.params;

/* JADX INFO: loaded from: classes5.dex */
public class GOST3410ValidationParameters {

    /* JADX INFO: renamed from: c */
    private int f4328c;

    /* JADX INFO: renamed from: cL */
    private long f4329cL;

    /* JADX INFO: renamed from: x0 */
    private int f4330x0;
    private long x0L;

    public GOST3410ValidationParameters(int i, int i2) {
        this.f4330x0 = i;
        this.f4328c = i2;
    }

    public GOST3410ValidationParameters(long j, long j2) {
        this.x0L = j;
        this.f4329cL = j2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof GOST3410ValidationParameters)) {
            return false;
        }
        GOST3410ValidationParameters gOST3410ValidationParameters = (GOST3410ValidationParameters) obj;
        return gOST3410ValidationParameters.f4328c == this.f4328c && gOST3410ValidationParameters.f4330x0 == this.f4330x0 && gOST3410ValidationParameters.f4329cL == this.f4329cL && gOST3410ValidationParameters.x0L == this.x0L;
    }

    public int getC() {
        return this.f4328c;
    }

    public long getCL() {
        return this.f4329cL;
    }

    public int getX0() {
        return this.f4330x0;
    }

    public long getX0L() {
        return this.x0L;
    }

    public int hashCode() {
        int i = this.f4330x0 ^ this.f4328c;
        long j = this.x0L;
        int i2 = (i ^ ((int) j)) ^ ((int) (j >> 32));
        long j2 = this.f4329cL;
        return (i2 ^ ((int) j2)) ^ ((int) (j2 >> 32));
    }
}
