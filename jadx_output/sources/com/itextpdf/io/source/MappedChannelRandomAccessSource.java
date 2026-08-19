package com.itextpdf.io.source;

import java.io.IOException;
import java.nio.channels.FileChannel;

/* JADX INFO: loaded from: classes6.dex */
class MappedChannelRandomAccessSource implements IRandomAccessSource {
    private final FileChannel channel;
    private final long length;
    private final long offset;
    private ByteBufferRandomAccessSource source;

    public MappedChannelRandomAccessSource(FileChannel fileChannel, long j, long j2) {
        if (j < 0) {
            throw new IllegalArgumentException(j + " is negative");
        }
        if (j2 <= 0) {
            throw new IllegalArgumentException(j2 + " is zero or negative");
        }
        this.channel = fileChannel;
        this.offset = j;
        this.length = j2;
        this.source = null;
    }

    void open() throws IOException {
        if (this.source != null) {
            return;
        }
        if (!this.channel.isOpen()) {
            throw new IllegalStateException("Channel is closed");
        }
        this.source = new ByteBufferRandomAccessSource(this.channel.map(FileChannel.MapMode.READ_ONLY, this.offset, this.length));
    }

    @Override // com.itextpdf.io.source.IRandomAccessSource
    public int get(long j) throws IOException {
        ByteBufferRandomAccessSource byteBufferRandomAccessSource = this.source;
        if (byteBufferRandomAccessSource == null) {
            throw new IOException("RandomAccessSource not opened");
        }
        return byteBufferRandomAccessSource.get(j);
    }

    @Override // com.itextpdf.io.source.IRandomAccessSource
    public int get(long j, byte[] bArr, int i, int i2) throws IOException {
        ByteBufferRandomAccessSource byteBufferRandomAccessSource = this.source;
        if (byteBufferRandomAccessSource == null) {
            throw new IOException("RandomAccessSource not opened");
        }
        return byteBufferRandomAccessSource.get(j, bArr, i, i2);
    }

    @Override // com.itextpdf.io.source.IRandomAccessSource
    public long length() {
        return this.length;
    }

    @Override // com.itextpdf.io.source.IRandomAccessSource
    public void close() throws IOException {
        ByteBufferRandomAccessSource byteBufferRandomAccessSource = this.source;
        if (byteBufferRandomAccessSource == null) {
            return;
        }
        byteBufferRandomAccessSource.close();
        this.source = null;
    }

    public String toString() {
        return getClass().getName() + " (" + this.offset + ", " + this.length + ")";
    }
}
