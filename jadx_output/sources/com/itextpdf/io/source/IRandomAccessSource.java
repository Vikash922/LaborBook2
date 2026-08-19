package com.itextpdf.io.source;

import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public interface IRandomAccessSource {
    void close() throws IOException;

    int get(long j) throws IOException;

    int get(long j, byte[] bArr, int i, int i2) throws IOException;

    long length();
}
