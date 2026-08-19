package com.itextpdf.io.source;

import java.io.IOException;
import java.util.zip.Deflater;

/* JADX INFO: loaded from: classes6.dex */
public class DeflaterOutputStream extends java.util.zip.DeflaterOutputStream {
    public DeflaterOutputStream(java.io.OutputStream outputStream, int i, int i2) {
        super(outputStream, new Deflater(i), i2);
    }

    public DeflaterOutputStream(java.io.OutputStream outputStream, int i) {
        this(outputStream, i, 512);
    }

    public DeflaterOutputStream(java.io.OutputStream outputStream) {
        this(outputStream, -1);
    }

    @Override // java.util.zip.DeflaterOutputStream, java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        finish();
        super.close();
    }

    @Override // java.util.zip.DeflaterOutputStream
    public void finish() throws IOException {
        super.finish();
        this.def.end();
    }
}
