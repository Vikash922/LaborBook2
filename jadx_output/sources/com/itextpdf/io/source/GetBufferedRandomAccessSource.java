package com.itextpdf.io.source;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public class GetBufferedRandomAccessSource implements IRandomAccessSource {
    private final byte[] getBuffer;
    private long getBufferEnd;
    private long getBufferStart;
    private final IRandomAccessSource source;

    public GetBufferedRandomAccessSource(IRandomAccessSource iRandomAccessSource) {
        this.getBufferStart = -1L;
        this.getBufferEnd = -1L;
        this.source = iRandomAccessSource;
        this.getBuffer = new byte[(int) Math.min(Math.max(iRandomAccessSource.length() / 4, 1L), PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM)];
        this.getBufferStart = -1L;
        this.getBufferEnd = -1L;
    }

    @Override // com.itextpdf.io.source.IRandomAccessSource
    public int get(long j) throws IOException {
        if (j < this.getBufferStart || j > this.getBufferEnd) {
            IRandomAccessSource iRandomAccessSource = this.source;
            byte[] bArr = this.getBuffer;
            int i = iRandomAccessSource.get(j, bArr, 0, bArr.length);
            if (i == -1) {
                return -1;
            }
            this.getBufferStart = j;
            this.getBufferEnd = (((long) i) + j) - 1;
        }
        return this.getBuffer[(int) (j - this.getBufferStart)] & 255;
    }

    @Override // com.itextpdf.io.source.IRandomAccessSource
    public int get(long j, byte[] bArr, int i, int i2) throws IOException {
        return this.source.get(j, bArr, i, i2);
    }

    @Override // com.itextpdf.io.source.IRandomAccessSource
    public long length() {
        return this.source.length();
    }

    @Override // com.itextpdf.io.source.IRandomAccessSource
    public void close() throws IOException {
        this.source.close();
        this.getBufferStart = -1L;
        this.getBufferEnd = -1L;
    }
}
