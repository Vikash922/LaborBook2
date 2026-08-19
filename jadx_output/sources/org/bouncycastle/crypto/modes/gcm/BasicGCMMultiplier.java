package org.bouncycastle.crypto.modes.gcm;

/* JADX INFO: loaded from: classes5.dex */
public class BasicGCMMultiplier implements GCMMultiplier {

    /* JADX INFO: renamed from: H */
    private long[] f4271H;

    @Override // org.bouncycastle.crypto.modes.gcm.GCMMultiplier
    public void init(byte[] bArr) {
        this.f4271H = GCMUtil.asLongs(bArr);
    }

    @Override // org.bouncycastle.crypto.modes.gcm.GCMMultiplier
    public void multiplyH(byte[] bArr) {
        long[] jArrAsLongs = GCMUtil.asLongs(bArr);
        GCMUtil.multiply(jArrAsLongs, this.f4271H);
        GCMUtil.asBytes(jArrAsLongs, bArr);
    }
}
