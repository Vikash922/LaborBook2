package com.itextpdf.p017io.source;

import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public class ThreadSafeRandomAccessSource implements IRandomAccessSource {
    private final Object lockObj = new Object();
    private final IRandomAccessSource source;

    public ThreadSafeRandomAccessSource(IRandomAccessSource iRandomAccessSource) {
        this.source = iRandomAccessSource;
    }

    @Override // com.itextpdf.p017io.source.IRandomAccessSource
    public int get(long j) throws IOException {
        int i;
        synchronized (this.lockObj) {
            i = this.source.get(j);
        }
        return i;
    }

    @Override // com.itextpdf.p017io.source.IRandomAccessSource
    public int get(long j, byte[] bArr, int i, int i2) throws IOException {
        int i3;
        synchronized (this.lockObj) {
            i3 = this.source.get(j, bArr, i, i2);
        }
        return i3;
    }

    @Override // com.itextpdf.p017io.source.IRandomAccessSource
    public long length() {
        long length;
        synchronized (this.lockObj) {
            length = this.source.length();
        }
        return length;
    }

    @Override // com.itextpdf.p017io.source.IRandomAccessSource
    public void close() throws IOException {
        synchronized (this.lockObj) {
            this.source.close();
        }
    }
}
