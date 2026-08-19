package com.itextpdf.kernel.crypto;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes6.dex */
public abstract class OutputStreamEncryption extends OutputStream {
    protected OutputStream out;

    /* JADX INFO: renamed from: sb */
    private byte[] f2908sb = new byte[1];

    public abstract void finish();

    @Override // java.io.OutputStream
    public abstract void write(byte[] bArr, int i, int i2) throws IOException;

    protected OutputStreamEncryption(OutputStream outputStream) {
        this.out = outputStream;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        finish();
        this.out.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.out.flush();
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        byte[] bArr = this.f2908sb;
        bArr[0] = (byte) i;
        write(bArr, 0, 1);
    }
}
