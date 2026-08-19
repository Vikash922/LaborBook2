package org.bouncycastle.pqc.crypto.sphincsplus;

/* JADX INFO: loaded from: classes6.dex */
class SIG_FORS {
    final byte[][] authPath;

    /* JADX INFO: renamed from: sk */
    final byte[] f4701sk;

    SIG_FORS(byte[] bArr, byte[][] bArr2) {
        this.authPath = bArr2;
        this.f4701sk = bArr;
    }

    public byte[][] getAuthPath() {
        return this.authPath;
    }

    byte[] getSK() {
        return this.f4701sk;
    }
}
