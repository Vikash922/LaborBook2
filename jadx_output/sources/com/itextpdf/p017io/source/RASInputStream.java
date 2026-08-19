package com.itextpdf.p017io.source;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes6.dex */
public class RASInputStream extends InputStream {
    private long position = 0;
    private final IRandomAccessSource source;

    public RASInputStream(IRandomAccessSource iRandomAccessSource) {
        this.source = iRandomAccessSource;
    }

    public IRandomAccessSource getSource() {
        return this.source;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.source.get(this.position, bArr, i, i2);
        this.position += (long) i3;
        return i3;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        IRandomAccessSource iRandomAccessSource = this.source;
        long j = this.position;
        this.position = 1 + j;
        return iRandomAccessSource.get(j);
    }
}
