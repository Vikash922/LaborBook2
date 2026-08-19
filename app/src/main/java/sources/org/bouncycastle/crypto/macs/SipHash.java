package org.bouncycastle.crypto.macs;

import com.amplitude.core.events.Identify;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class SipHash implements Mac {

    /* JADX INFO: renamed from: c */
    protected final int f4219c;

    /* JADX INFO: renamed from: d */
    protected final int f4220d;

    /* JADX INFO: renamed from: k0 */
    protected long f4221k0;

    /* JADX INFO: renamed from: k1 */
    protected long f4222k1;

    /* JADX INFO: renamed from: m */
    protected long f4223m;

    /* JADX INFO: renamed from: v0 */
    protected long f4224v0;

    /* JADX INFO: renamed from: v1 */
    protected long f4225v1;

    /* JADX INFO: renamed from: v2 */
    protected long f4226v2;

    /* JADX INFO: renamed from: v3 */
    protected long f4227v3;
    protected int wordCount;
    protected int wordPos;

    public SipHash() {
        this.f4223m = 0L;
        this.wordPos = 0;
        this.wordCount = 0;
        this.f4219c = 2;
        this.f4220d = 4;
    }

    public SipHash(int i, int i2) {
        this.f4223m = 0L;
        this.wordPos = 0;
        this.wordCount = 0;
        this.f4219c = i;
        this.f4220d = i2;
    }

    protected static long rotateLeft(long j, int i) {
        return (j >>> (-i)) | (j << i);
    }

    protected void applySipRounds(int i) {
        long jRotateLeft = this.f4224v0;
        long jRotateLeft2 = this.f4225v1;
        long jRotateLeft3 = this.f4226v2;
        long jRotateLeft4 = this.f4227v3;
        for (int i2 = 0; i2 < i; i2++) {
            long j = jRotateLeft + jRotateLeft2;
            long j2 = jRotateLeft3 + jRotateLeft4;
            long jRotateLeft5 = rotateLeft(jRotateLeft2, 13) ^ j;
            long jRotateLeft6 = rotateLeft(jRotateLeft4, 16) ^ j2;
            long j3 = j2 + jRotateLeft5;
            jRotateLeft = rotateLeft(j, 32) + jRotateLeft6;
            jRotateLeft2 = rotateLeft(jRotateLeft5, 17) ^ j3;
            jRotateLeft4 = rotateLeft(jRotateLeft6, 21) ^ jRotateLeft;
            jRotateLeft3 = rotateLeft(j3, 32);
        }
        this.f4224v0 = jRotateLeft;
        this.f4225v1 = jRotateLeft2;
        this.f4226v2 = jRotateLeft3;
        this.f4227v3 = jRotateLeft4;
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i) throws IllegalStateException, DataLengthException {
        Pack.longToLittleEndian(doFinal(), bArr, i);
        return 8;
    }

    public long doFinal() throws IllegalStateException, DataLengthException {
        long j = this.f4223m;
        int i = this.wordPos;
        this.f4223m = ((j >>> ((7 - i) << 3)) >>> 8) | ((((long) ((this.wordCount << 3) + i)) & 255) << 56);
        processMessageWord();
        this.f4226v2 ^= 255;
        applySipRounds(this.f4220d);
        long j2 = ((this.f4224v0 ^ this.f4225v1) ^ this.f4226v2) ^ this.f4227v3;
        reset();
        return j2;
    }

    @Override // org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return "SipHash-" + this.f4219c + Identify.UNSET_VALUE + this.f4220d;
    }

    @Override // org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return 8;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) throws IllegalArgumentException {
        if (!(cipherParameters instanceof KeyParameter)) {
            throw new IllegalArgumentException("'params' must be an instance of KeyParameter");
        }
        byte[] key = ((KeyParameter) cipherParameters).getKey();
        if (key.length != 16) {
            throw new IllegalArgumentException("'params' must be a 128-bit key");
        }
        this.f4221k0 = Pack.littleEndianToLong(key, 0);
        this.f4222k1 = Pack.littleEndianToLong(key, 8);
        reset();
    }

    protected void processMessageWord() {
        this.wordCount++;
        this.f4227v3 ^= this.f4223m;
        applySipRounds(this.f4219c);
        this.f4224v0 ^= this.f4223m;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void reset() {
        long j = this.f4221k0;
        this.f4224v0 = 8317987319222330741L ^ j;
        long j2 = this.f4222k1;
        this.f4225v1 = 7237128888997146477L ^ j2;
        this.f4226v2 = j ^ 7816392313619706465L;
        this.f4227v3 = 8387220255154660723L ^ j2;
        this.f4223m = 0L;
        this.wordPos = 0;
        this.wordCount = 0;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte b) throws IllegalStateException {
        this.f4223m = (this.f4223m >>> 8) | ((((long) b) & 255) << 56);
        int i = this.wordPos + 1;
        this.wordPos = i;
        if (i == 8) {
            processMessageWord();
            this.wordPos = 0;
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte[] bArr, int i, int i2) throws IllegalStateException, DataLengthException {
        int i3 = i2 & (-8);
        int i4 = this.wordPos;
        int i5 = 0;
        if (i4 == 0) {
            while (i5 < i3) {
                this.f4223m = Pack.littleEndianToLong(bArr, i + i5);
                processMessageWord();
                i5 += 8;
            }
            while (i5 < i2) {
                long j = this.f4223m >>> 8;
                this.f4223m = j;
                this.f4223m = j | ((((long) bArr[i + i5]) & 255) << 56);
                i5++;
            }
            this.wordPos = i2 - i3;
            return;
        }
        int i6 = i4 << 3;
        int i7 = 0;
        while (i7 < i3) {
            long jLittleEndianToLong = Pack.littleEndianToLong(bArr, i + i7);
            this.f4223m = (this.f4223m >>> (-i6)) | (jLittleEndianToLong << i6);
            processMessageWord();
            this.f4223m = jLittleEndianToLong;
            i7 += 8;
        }
        while (i7 < i2) {
            long j2 = this.f4223m >>> 8;
            this.f4223m = j2;
            this.f4223m = j2 | ((((long) bArr[i + i7]) & 255) << 56);
            int i8 = this.wordPos + 1;
            this.wordPos = i8;
            if (i8 == 8) {
                processMessageWord();
                this.wordPos = 0;
            }
            i7++;
        }
    }
}
