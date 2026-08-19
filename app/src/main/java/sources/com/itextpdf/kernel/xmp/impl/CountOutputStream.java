package com.itextpdf.kernel.xmp.impl;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes6.dex */
public final class CountOutputStream extends OutputStream {
    private int bytesWritten = 0;
    private final OutputStream output;

    CountOutputStream(OutputStream outputStream) {
        this.output = outputStream;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.output.write(bArr, i, i2);
        this.bytesWritten += i2;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        this.output.write(bArr);
        this.bytesWritten += bArr.length;
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        this.output.write(i);
        this.bytesWritten++;
    }

    public int getBytesWritten() {
        return this.bytesWritten;
    }
}
