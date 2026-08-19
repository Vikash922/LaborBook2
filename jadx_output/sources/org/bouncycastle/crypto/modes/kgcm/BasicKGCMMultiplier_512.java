package org.bouncycastle.crypto.modes.kgcm;

/* JADX INFO: loaded from: classes5.dex */
public class BasicKGCMMultiplier_512 implements KGCMMultiplier {

    /* JADX INFO: renamed from: H */
    private final long[] f4281H = new long[8];

    @Override // org.bouncycastle.crypto.modes.kgcm.KGCMMultiplier
    public void init(long[] jArr) {
        KGCMUtil_512.copy(jArr, this.f4281H);
    }

    @Override // org.bouncycastle.crypto.modes.kgcm.KGCMMultiplier
    public void multiplyH(long[] jArr) {
        KGCMUtil_512.multiply(jArr, this.f4281H, jArr);
    }
}
