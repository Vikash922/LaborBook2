package com.itextpdf.io.source;

import java.io.IOException;
import java.io.RandomAccessFile;

/* JADX INFO: loaded from: classes6.dex */
class RAFRandomAccessSource implements IRandomAccessSource {
    private final long length;
    private final RandomAccessFile raf;

    public RAFRandomAccessSource(RandomAccessFile randomAccessFile) throws IOException {
        this.raf = randomAccessFile;
        this.length = randomAccessFile.length();
    }

    @Override // com.itextpdf.io.source.IRandomAccessSource
    public int get(long j) throws IOException {
        if (j > this.length) {
            return -1;
        }
        if (this.raf.getFilePointer() != j) {
            this.raf.seek(j);
        }
        return this.raf.read();
    }

    @Override // com.itextpdf.io.source.IRandomAccessSource
    public int get(long j, byte[] bArr, int i, int i2) throws IOException {
        if (j > this.length) {
            return -1;
        }
        if (this.raf.getFilePointer() != j) {
            this.raf.seek(j);
        }
        return this.raf.read(bArr, i, i2);
    }

    @Override // com.itextpdf.io.source.IRandomAccessSource
    public long length() {
        return this.length;
    }

    @Override // com.itextpdf.io.source.IRandomAccessSource
    public void close() throws IOException {
        this.raf.close();
    }
}
