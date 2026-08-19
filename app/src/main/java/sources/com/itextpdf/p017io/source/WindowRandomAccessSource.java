package com.itextpdf.p017io.source;

import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public class WindowRandomAccessSource implements IRandomAccessSource {
    private final long length;
    private final long offset;
    private final IRandomAccessSource source;

    public WindowRandomAccessSource(IRandomAccessSource iRandomAccessSource, long j) {
        this(iRandomAccessSource, j, iRandomAccessSource.length() - j);
    }

    public WindowRandomAccessSource(IRandomAccessSource iRandomAccessSource, long j, long j2) {
        this.source = iRandomAccessSource;
        this.offset = j;
        this.length = j2;
    }

    @Override // com.itextpdf.p017io.source.IRandomAccessSource
    public int get(long j) throws IOException {
        if (j >= this.length) {
            return -1;
        }
        return this.source.get(this.offset + j);
    }

    @Override // com.itextpdf.p017io.source.IRandomAccessSource
    public int get(long j, byte[] bArr, int i, int i2) throws IOException {
        long j2 = this.length;
        if (j >= j2) {
            return -1;
        }
        return this.source.get(this.offset + j, bArr, i, (int) Math.min(i2, j2 - j));
    }

    @Override // com.itextpdf.p017io.source.IRandomAccessSource
    public long length() {
        return this.length;
    }

    @Override // com.itextpdf.p017io.source.IRandomAccessSource
    public void close() throws IOException {
        this.source.close();
    }
}
