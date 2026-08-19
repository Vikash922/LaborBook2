package com.itextpdf.kernel.pdf;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes6.dex */
public class CountOutputStream extends OutputStream {
    private long amountOfWrittenBytes = 0;
    private final OutputStream outputStream;

    public CountOutputStream(OutputStream outputStream) {
        this.outputStream = outputStream;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        this.outputStream.write(bArr);
        this.amountOfWrittenBytes += (long) bArr.length;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.outputStream.write(bArr, i, i2);
        this.amountOfWrittenBytes += (long) i2;
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        this.outputStream.write(i);
        this.amountOfWrittenBytes++;
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.outputStream.flush();
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.outputStream.close();
    }

    public long getAmountOfWrittenBytes() {
        return this.amountOfWrittenBytes;
    }
}
