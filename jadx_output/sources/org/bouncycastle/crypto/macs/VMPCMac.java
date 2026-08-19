package org.bouncycastle.crypto.macs;

import com.google.common.base.Ascii;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;

/* JADX INFO: loaded from: classes5.dex */
public class VMPCMac implements Mac {

    /* JADX INFO: renamed from: T */
    private byte[] f4229T;

    /* JADX INFO: renamed from: g */
    private byte f4230g;
    private byte[] workingIV;
    private byte[] workingKey;

    /* JADX INFO: renamed from: x1 */
    private byte f4233x1;

    /* JADX INFO: renamed from: x2 */
    private byte f4234x2;

    /* JADX INFO: renamed from: x3 */
    private byte f4235x3;

    /* JADX INFO: renamed from: x4 */
    private byte f4236x4;

    /* JADX INFO: renamed from: n */
    private byte f4231n = 0;

    /* JADX INFO: renamed from: P */
    private byte[] f4228P = null;

    /* JADX INFO: renamed from: s */
    private byte f4232s = 0;

    private void initKey(byte[] bArr, byte[] bArr2) {
        this.f4232s = (byte) 0;
        this.f4228P = new byte[256];
        for (int i = 0; i < 256; i++) {
            this.f4228P[i] = (byte) i;
        }
        for (int i2 = 0; i2 < 768; i2++) {
            byte[] bArr3 = this.f4228P;
            byte b = this.f4232s;
            int i3 = i2 & 255;
            byte b2 = bArr3[i3];
            byte b3 = bArr3[(b + b2 + bArr[i2 % bArr.length]) & 255];
            this.f4232s = b3;
            bArr3[i3] = bArr3[b3 & 255];
            bArr3[b3 & 255] = b2;
        }
        for (int i4 = 0; i4 < 768; i4++) {
            byte[] bArr4 = this.f4228P;
            byte b4 = this.f4232s;
            int i5 = i4 & 255;
            byte b5 = bArr4[i5];
            byte b6 = bArr4[(b4 + b5 + bArr2[i4 % bArr2.length]) & 255];
            this.f4232s = b6;
            bArr4[i5] = bArr4[b6 & 255];
            bArr4[b6 & 255] = b5;
        }
        this.f4231n = (byte) 0;
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i) throws IllegalStateException, DataLengthException {
        for (int i2 = 1; i2 < 25; i2++) {
            byte[] bArr2 = this.f4228P;
            byte b = this.f4232s;
            byte b2 = this.f4231n;
            byte b3 = bArr2[(b + bArr2[b2 & 255]) & 255];
            this.f4232s = b3;
            byte b4 = this.f4236x4;
            byte b5 = this.f4235x3;
            byte b6 = bArr2[(b4 + b5 + i2) & 255];
            this.f4236x4 = b6;
            byte b7 = this.f4234x2;
            byte b8 = bArr2[(b5 + b7 + i2) & 255];
            this.f4235x3 = b8;
            byte b9 = this.f4233x1;
            byte b10 = bArr2[(b7 + b9 + i2) & 255];
            this.f4234x2 = b10;
            byte b11 = bArr2[(b9 + b3 + i2) & 255];
            this.f4233x1 = b11;
            byte[] bArr3 = this.f4229T;
            byte b12 = this.f4230g;
            bArr3[b12 & Ascii.f396US] = (byte) (b11 ^ bArr3[b12 & Ascii.f396US]);
            bArr3[(b12 + 1) & 31] = (byte) (b10 ^ bArr3[(b12 + 1) & 31]);
            bArr3[(b12 + 2) & 31] = (byte) (b8 ^ bArr3[(b12 + 2) & 31]);
            bArr3[(b12 + 3) & 31] = (byte) (b6 ^ bArr3[(b12 + 3) & 31]);
            this.f4230g = (byte) ((b12 + 4) & 31);
            byte b13 = bArr2[b2 & 255];
            bArr2[b2 & 255] = bArr2[b3 & 255];
            bArr2[b3 & 255] = b13;
            this.f4231n = (byte) ((b2 + 1) & 255);
        }
        for (int i3 = 0; i3 < 768; i3++) {
            byte[] bArr4 = this.f4228P;
            byte b14 = this.f4232s;
            int i4 = i3 & 255;
            byte b15 = bArr4[i4];
            byte b16 = bArr4[(b14 + b15 + this.f4229T[i3 & 31]) & 255];
            this.f4232s = b16;
            bArr4[i4] = bArr4[b16 & 255];
            bArr4[b16 & 255] = b15;
        }
        byte[] bArr5 = new byte[20];
        for (int i5 = 0; i5 < 20; i5++) {
            byte[] bArr6 = this.f4228P;
            int i6 = i5 & 255;
            byte b17 = bArr6[(this.f4232s + bArr6[i6]) & 255];
            this.f4232s = b17;
            bArr5[i5] = bArr6[(bArr6[bArr6[b17 & 255] & 255] + 1) & 255];
            byte b18 = bArr6[i6];
            bArr6[i6] = bArr6[b17 & 255];
            bArr6[b17 & 255] = b18;
        }
        System.arraycopy(bArr5, 0, bArr, i, 20);
        reset();
        return 20;
    }

    @Override // org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return "VMPC-MAC";
    }

    @Override // org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return 20;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) throws IllegalArgumentException {
        if (!(cipherParameters instanceof ParametersWithIV)) {
            throw new IllegalArgumentException("VMPC-MAC Init parameters must include an IV");
        }
        ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
        KeyParameter keyParameter = (KeyParameter) parametersWithIV.getParameters();
        if (!(parametersWithIV.getParameters() instanceof KeyParameter)) {
            throw new IllegalArgumentException("VMPC-MAC Init parameters must include a key");
        }
        byte[] iv = parametersWithIV.getIV();
        this.workingIV = iv;
        if (iv == null || iv.length < 1 || iv.length > 768) {
            throw new IllegalArgumentException("VMPC-MAC requires 1 to 768 bytes of IV");
        }
        this.workingKey = keyParameter.getKey();
        reset();
    }

    @Override // org.bouncycastle.crypto.Mac
    public void reset() {
        initKey(this.workingKey, this.workingIV);
        this.f4231n = (byte) 0;
        this.f4236x4 = (byte) 0;
        this.f4235x3 = (byte) 0;
        this.f4234x2 = (byte) 0;
        this.f4233x1 = (byte) 0;
        this.f4230g = (byte) 0;
        this.f4229T = new byte[32];
        for (int i = 0; i < 32; i++) {
            this.f4229T[i] = 0;
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte b) throws IllegalStateException {
        byte[] bArr = this.f4228P;
        byte b2 = this.f4232s;
        byte b3 = this.f4231n;
        byte b4 = bArr[(b2 + bArr[b3 & 255]) & 255];
        this.f4232s = b4;
        byte b5 = (byte) (b ^ bArr[(bArr[bArr[b4 & 255] & 255] + 1) & 255]);
        byte b6 = this.f4236x4;
        byte b7 = this.f4235x3;
        byte b8 = bArr[(b6 + b7) & 255];
        this.f4236x4 = b8;
        byte b9 = this.f4234x2;
        byte b10 = bArr[(b7 + b9) & 255];
        this.f4235x3 = b10;
        byte b11 = this.f4233x1;
        byte b12 = bArr[(b9 + b11) & 255];
        this.f4234x2 = b12;
        byte b13 = bArr[(b11 + b4 + b5) & 255];
        this.f4233x1 = b13;
        byte[] bArr2 = this.f4229T;
        byte b14 = this.f4230g;
        bArr2[b14 & Ascii.f396US] = (byte) (b13 ^ bArr2[b14 & Ascii.f396US]);
        bArr2[(b14 + 1) & 31] = (byte) (b12 ^ bArr2[(b14 + 1) & 31]);
        bArr2[(b14 + 2) & 31] = (byte) (b10 ^ bArr2[(b14 + 2) & 31]);
        bArr2[(b14 + 3) & 31] = (byte) (b8 ^ bArr2[(b14 + 3) & 31]);
        this.f4230g = (byte) ((b14 + 4) & 31);
        byte b15 = bArr[b3 & 255];
        bArr[b3 & 255] = bArr[b4 & 255];
        bArr[b4 & 255] = b15;
        this.f4231n = (byte) ((b3 + 1) & 255);
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte[] bArr, int i, int i2) throws IllegalStateException, DataLengthException {
        if (i + i2 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        for (int i3 = 0; i3 < i2; i3++) {
            update(bArr[i + i3]);
        }
    }
}
