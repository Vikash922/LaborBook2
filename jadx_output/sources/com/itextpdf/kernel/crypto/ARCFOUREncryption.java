package com.itextpdf.kernel.crypto;

/* JADX INFO: loaded from: classes6.dex */
public class ARCFOUREncryption {
    private byte[] state = new byte[256];

    /* JADX INFO: renamed from: x */
    private int f2905x;

    /* JADX INFO: renamed from: y */
    private int f2906y;

    public void prepareARCFOURKey(byte[] bArr) {
        prepareARCFOURKey(bArr, 0, bArr.length);
    }

    public void prepareARCFOURKey(byte[] bArr, int i, int i2) {
        for (int i3 = 0; i3 < 256; i3++) {
            this.state[i3] = (byte) i3;
        }
        this.f2905x = 0;
        this.f2906y = 0;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < 256; i6++) {
            byte b = bArr[i4 + i];
            byte[] bArr2 = this.state;
            byte b2 = bArr2[i6];
            i5 = (b + b2 + i5) & 255;
            bArr2[i6] = bArr2[i5];
            bArr2[i5] = b2;
            i4 = (i4 + 1) % i2;
        }
    }

    public void encryptARCFOUR(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        int i4 = i2 + i;
        for (int i5 = i; i5 < i4; i5++) {
            int i6 = (this.f2905x + 1) & 255;
            this.f2905x = i6;
            byte[] bArr3 = this.state;
            byte b = bArr3[i6];
            int i7 = (this.f2906y + b) & 255;
            this.f2906y = i7;
            bArr3[i6] = bArr3[i7];
            bArr3[i7] = b;
            bArr2[(i5 - i) + i3] = (byte) (bArr3[(bArr3[i6] + b) & 255] ^ bArr[i5]);
        }
    }

    public void encryptARCFOUR(byte[] bArr, int i, int i2) {
        encryptARCFOUR(bArr, i, i2, bArr, i);
    }

    public void encryptARCFOUR(byte[] bArr, byte[] bArr2) {
        encryptARCFOUR(bArr, 0, bArr.length, bArr2, 0);
    }

    public void encryptARCFOUR(byte[] bArr) {
        encryptARCFOUR(bArr, 0, bArr.length, bArr, 0);
    }
}
