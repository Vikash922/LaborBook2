package org.bouncycastle.crypto.params;

import org.bouncycastle.crypto.DerivationParameters;

/* JADX INFO: loaded from: classes5.dex */
public class KDFParameters implements DerivationParameters {

    /* JADX INFO: renamed from: iv */
    byte[] f4338iv;
    byte[] shared;

    public KDFParameters(byte[] bArr, byte[] bArr2) {
        this.shared = bArr;
        this.f4338iv = bArr2;
    }

    public byte[] getIV() {
        return this.f4338iv;
    }

    public byte[] getSharedSecret() {
        return this.shared;
    }
}
