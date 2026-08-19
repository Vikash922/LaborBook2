package com.itextpdf.io.font.woff2;

import com.itextpdf.io.exceptions.FontCompressionException;

/* JADX INFO: loaded from: classes6.dex */
class Woff2MemoryOut implements Woff2Out {
    private byte[] buf_;
    private int buf_size_;
    private int offset_ = 0;

    public Woff2MemoryOut(byte[] bArr, int i) {
        this.buf_ = bArr;
        this.buf_size_ = i;
    }

    @Override // com.itextpdf.io.font.woff2.Woff2Out
    public void write(byte[] bArr, int i, int i2) {
        write(bArr, i, this.offset_, i2);
    }

    @Override // com.itextpdf.io.font.woff2.Woff2Out
    public void write(byte[] bArr, int i, int i2, int i3) {
        int i4 = this.buf_size_;
        if (i2 > i4 || i3 > i4 - i2) {
            throw new FontCompressionException(FontCompressionException.WRITE_FAILED);
        }
        System.arraycopy(bArr, i, this.buf_, i2, i3);
        this.offset_ = Math.max(this.offset_, i2 + i3);
    }

    @Override // com.itextpdf.io.font.woff2.Woff2Out
    public int size() {
        return this.offset_;
    }
}
