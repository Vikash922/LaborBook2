package org.bouncycastle.crypto.params;

import org.bouncycastle.crypto.CipherParameters;

/* JADX INFO: loaded from: classes5.dex */
public class ParametersWithID implements CipherParameters {

    /* JADX INFO: renamed from: id */
    private byte[] f4341id;
    private CipherParameters parameters;

    public ParametersWithID(CipherParameters cipherParameters, byte[] bArr) {
        this.parameters = cipherParameters;
        this.f4341id = bArr;
    }

    public byte[] getID() {
        return this.f4341id;
    }

    public CipherParameters getParameters() {
        return this.parameters;
    }
}
