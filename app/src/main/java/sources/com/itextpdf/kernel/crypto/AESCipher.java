package com.itextpdf.kernel.crypto;

import org.bouncycastle.crypto.engines.AESFastEngine;
import org.bouncycastle.crypto.modes.CBCBlockCipher;
import org.bouncycastle.crypto.paddings.PaddedBufferedBlockCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;

/* JADX INFO: loaded from: classes6.dex */
public class AESCipher {

    /* JADX INFO: renamed from: bp */
    private PaddedBufferedBlockCipher f2904bp = new PaddedBufferedBlockCipher(new CBCBlockCipher(new AESFastEngine()));

    public AESCipher(boolean z, byte[] bArr, byte[] bArr2) {
        this.f2904bp.init(z, new ParametersWithIV(new KeyParameter(bArr), bArr2));
    }

    public byte[] update(byte[] bArr, int i, int i2) {
        byte[] bArr2;
        int updateOutputSize = this.f2904bp.getUpdateOutputSize(i2);
        if (updateOutputSize > 0) {
            bArr2 = new byte[updateOutputSize];
        } else {
            bArr2 = new byte[0];
        }
        this.f2904bp.processBytes(bArr, i, i2, bArr2, 0);
        return bArr2;
    }

    public byte[] doFinal() {
        int outputSize = this.f2904bp.getOutputSize(0);
        byte[] bArr = new byte[outputSize];
        try {
            int iDoFinal = this.f2904bp.doFinal(bArr, 0);
            if (iDoFinal != outputSize) {
                byte[] bArr2 = new byte[iDoFinal];
                System.arraycopy(bArr, 0, bArr2, 0, iDoFinal);
                return bArr2;
            }
        } catch (Exception unused) {
        }
        return bArr;
    }
}
