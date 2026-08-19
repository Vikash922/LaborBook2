package com.itextpdf.p017io.source;

import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public class IndependentRandomAccessSource implements IRandomAccessSource {
    private final IRandomAccessSource source;

    @Override // com.itextpdf.p017io.source.IRandomAccessSource
    public void close() throws IOException {
    }

    public IndependentRandomAccessSource(IRandomAccessSource iRandomAccessSource) {
        this.source = iRandomAccessSource;
    }

    @Override // com.itextpdf.p017io.source.IRandomAccessSource
    public int get(long j) throws IOException {
        return this.source.get(j);
    }

    @Override // com.itextpdf.p017io.source.IRandomAccessSource
    public int get(long j, byte[] bArr, int i, int i2) throws IOException {
        return this.source.get(j, bArr, i, i2);
    }

    @Override // com.itextpdf.p017io.source.IRandomAccessSource
    public long length() {
        return this.source.length();
    }
}
