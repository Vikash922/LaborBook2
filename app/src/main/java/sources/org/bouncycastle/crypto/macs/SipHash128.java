package org.bouncycastle.crypto.macs;

import com.amplitude.core.events.Identify;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class SipHash128 extends SipHash {
    public SipHash128() {
    }

    public SipHash128(int i, int i2) {
        super(i, i2);
    }

    @Override // org.bouncycastle.crypto.macs.SipHash, org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i) throws IllegalStateException, DataLengthException {
        this.f4223m >>>= (7 - this.wordPos) << 3;
        this.f4223m >>>= 8;
        this.f4223m |= (((long) ((this.wordCount << 3) + this.wordPos)) & 255) << 56;
        processMessageWord();
        this.f4226v2 ^= 238;
        applySipRounds(this.f4220d);
        long j = ((this.f4224v0 ^ this.f4225v1) ^ this.f4226v2) ^ this.f4227v3;
        this.f4225v1 ^= 221;
        applySipRounds(this.f4220d);
        long j2 = ((this.f4224v0 ^ this.f4225v1) ^ this.f4226v2) ^ this.f4227v3;
        reset();
        Pack.longToLittleEndian(j, bArr, i);
        Pack.longToLittleEndian(j2, bArr, i + 8);
        return 16;
    }

    @Override // org.bouncycastle.crypto.macs.SipHash
    public long doFinal() throws IllegalStateException, DataLengthException {
        throw new UnsupportedOperationException("doFinal() is not supported");
    }

    @Override // org.bouncycastle.crypto.macs.SipHash, org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return "SipHash128-" + this.f4219c + Identify.UNSET_VALUE + this.f4220d;
    }

    @Override // org.bouncycastle.crypto.macs.SipHash, org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.macs.SipHash, org.bouncycastle.crypto.Mac
    public void reset() {
        super.reset();
        this.f4225v1 ^= 238;
    }
}
