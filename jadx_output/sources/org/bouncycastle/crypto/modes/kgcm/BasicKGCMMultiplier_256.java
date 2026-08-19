package org.bouncycastle.crypto.modes.kgcm;

/* JADX INFO: loaded from: classes5.dex */
public class BasicKGCMMultiplier_256 implements KGCMMultiplier {

    /* JADX INFO: renamed from: H */
    private final long[] f4280H = new long[4];

    @Override // org.bouncycastle.crypto.modes.kgcm.KGCMMultiplier
    public void init(long[] jArr) {
        KGCMUtil_256.copy(jArr, this.f4280H);
    }

    @Override // org.bouncycastle.crypto.modes.kgcm.KGCMMultiplier
    public void multiplyH(long[] jArr) {
        KGCMUtil_256.multiply(jArr, this.f4280H, jArr);
    }
}
