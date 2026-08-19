package org.bouncycastle.crypto.prng;

import org.bouncycastle.crypto.BlockCipher;

/* JADX INFO: loaded from: classes5.dex */
public class X931RNG {
    private static final int BLOCK128_MAX_BITS_REQUEST = 262144;
    private static final long BLOCK128_RESEED_MAX = 8388608;
    private static final int BLOCK64_MAX_BITS_REQUEST = 4096;
    private static final long BLOCK64_RESEED_MAX = 32768;

    /* JADX INFO: renamed from: DT */
    private final byte[] f4353DT;

    /* JADX INFO: renamed from: I */
    private final byte[] f4354I;

    /* JADX INFO: renamed from: R */
    private final byte[] f4355R;

    /* JADX INFO: renamed from: V */
    private byte[] f4356V;
    private final BlockCipher engine;
    private final EntropySource entropySource;
    private long reseedCounter = 1;

    public X931RNG(BlockCipher blockCipher, byte[] bArr, EntropySource entropySource) {
        this.engine = blockCipher;
        this.entropySource = entropySource;
        byte[] bArr2 = new byte[blockCipher.getBlockSize()];
        this.f4353DT = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
        this.f4354I = new byte[blockCipher.getBlockSize()];
        this.f4355R = new byte[blockCipher.getBlockSize()];
    }

    private void increment(byte[] bArr) {
        for (int length = bArr.length - 1; length >= 0; length--) {
            byte b = (byte) (bArr[length] + 1);
            bArr[length] = b;
            if (b != 0) {
                return;
            }
        }
    }

    private static boolean isTooLarge(byte[] bArr, int i) {
        return bArr != null && bArr.length > i;
    }

    private void process(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        for (int i = 0; i != bArr.length; i++) {
            bArr[i] = (byte) (bArr2[i] ^ bArr3[i]);
        }
        this.engine.processBlock(bArr, 0, bArr, 0);
    }

    int generate(byte[] bArr, boolean z) {
        if (this.f4355R.length == 8) {
            if (this.reseedCounter > 32768) {
                return -1;
            }
            if (isTooLarge(bArr, 512)) {
                throw new IllegalArgumentException("Number of bits per request limited to 4096");
            }
        } else {
            if (this.reseedCounter > BLOCK128_RESEED_MAX) {
                return -1;
            }
            if (isTooLarge(bArr, 32768)) {
                throw new IllegalArgumentException("Number of bits per request limited to 262144");
            }
        }
        if (z || this.f4356V == null) {
            byte[] entropy = this.entropySource.getEntropy();
            this.f4356V = entropy;
            if (entropy.length != this.engine.getBlockSize()) {
                throw new IllegalStateException("Insufficient entropy returned");
            }
        }
        int length = bArr.length / this.f4355R.length;
        for (int i = 0; i < length; i++) {
            this.engine.processBlock(this.f4353DT, 0, this.f4354I, 0);
            process(this.f4355R, this.f4354I, this.f4356V);
            process(this.f4356V, this.f4355R, this.f4354I);
            byte[] bArr2 = this.f4355R;
            System.arraycopy(bArr2, 0, bArr, bArr2.length * i, bArr2.length);
            increment(this.f4353DT);
        }
        int length2 = bArr.length - (this.f4355R.length * length);
        if (length2 > 0) {
            this.engine.processBlock(this.f4353DT, 0, this.f4354I, 0);
            process(this.f4355R, this.f4354I, this.f4356V);
            process(this.f4356V, this.f4355R, this.f4354I);
            byte[] bArr3 = this.f4355R;
            System.arraycopy(bArr3, 0, bArr, length * bArr3.length, length2);
            increment(this.f4353DT);
        }
        this.reseedCounter++;
        return bArr.length;
    }

    EntropySource getEntropySource() {
        return this.entropySource;
    }

    void reseed() {
        byte[] entropy = this.entropySource.getEntropy();
        this.f4356V = entropy;
        if (entropy.length != this.engine.getBlockSize()) {
            throw new IllegalStateException("Insufficient entropy returned");
        }
        this.reseedCounter = 1L;
    }
}
