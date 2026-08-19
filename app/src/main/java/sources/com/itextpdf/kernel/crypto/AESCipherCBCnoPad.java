package com.itextpdf.kernel.crypto;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.engines.AESFastEngine;
import org.bouncycastle.crypto.modes.CBCBlockCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;

/* JADX INFO: loaded from: classes6.dex */
public class AESCipherCBCnoPad {
    private BlockCipher cbc = new CBCBlockCipher(new AESFastEngine());

    public AESCipherCBCnoPad(boolean z, byte[] bArr) {
        this.cbc.init(z, new KeyParameter(bArr));
    }

    public AESCipherCBCnoPad(boolean z, byte[] bArr, byte[] bArr2) {
        this.cbc.init(z, new ParametersWithIV(new KeyParameter(bArr), bArr2));
    }

    public byte[] processBlock(byte[] bArr, int i, int i2) {
        if (i2 % this.cbc.getBlockSize() != 0) {
            throw new IllegalArgumentException("Not multiple of block: " + i2);
        }
        byte[] bArr2 = new byte[i2];
        int blockSize = 0;
        while (i2 > 0) {
            this.cbc.processBlock(bArr, i, bArr2, blockSize);
            i2 -= this.cbc.getBlockSize();
            blockSize += this.cbc.getBlockSize();
            i += this.cbc.getBlockSize();
        }
        return bArr2;
    }
}
