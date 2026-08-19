package org.bouncycastle.crypto.modes.gcm;

/* JADX INFO: loaded from: classes5.dex */
public class BasicGCMExponentiator implements GCMExponentiator {

    /* JADX INFO: renamed from: x */
    private long[] f4270x;

    @Override // org.bouncycastle.crypto.modes.gcm.GCMExponentiator
    public void exponentiateX(long j, byte[] bArr) {
        long[] jArrOneAsLongs = GCMUtil.oneAsLongs();
        if (j > 0) {
            long[] jArr = new long[2];
            GCMUtil.copy(this.f4270x, jArr);
            do {
                if ((1 & j) != 0) {
                    GCMUtil.multiply(jArrOneAsLongs, jArr);
                }
                GCMUtil.square(jArr, jArr);
                j >>>= 1;
            } while (j > 0);
        }
        GCMUtil.asBytes(jArrOneAsLongs, bArr);
    }

    @Override // org.bouncycastle.crypto.modes.gcm.GCMExponentiator
    public void init(byte[] bArr) {
        this.f4270x = GCMUtil.asLongs(bArr);
    }
}
