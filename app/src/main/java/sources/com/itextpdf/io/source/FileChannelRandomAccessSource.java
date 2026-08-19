package com.itextpdf.io.source;

import com.itextpdf.io.logs.IoLogMessageConstant;
import java.io.IOException;
import java.nio.channels.FileChannel;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class FileChannelRandomAccessSource implements IRandomAccessSource {
    private final FileChannel channel;
    private final MappedChannelRandomAccessSource source;

    public FileChannelRandomAccessSource(FileChannel fileChannel) throws IOException {
        this.channel = fileChannel;
        if (fileChannel.size() == 0) {
            throw new IOException("File size is 0 bytes");
        }
        MappedChannelRandomAccessSource mappedChannelRandomAccessSource = new MappedChannelRandomAccessSource(fileChannel, 0L, fileChannel.size());
        this.source = mappedChannelRandomAccessSource;
        mappedChannelRandomAccessSource.open();
    }

    @Override // com.itextpdf.io.source.IRandomAccessSource
    public void close() throws IOException {
        try {
            this.source.close();
            try {
                this.channel.close();
            } catch (Exception e) {
                LoggerFactory.getLogger((Class<?>) FileChannelRandomAccessSource.class).error(IoLogMessageConstant.FILE_CHANNEL_CLOSING_FAILED, (Throwable) e);
            }
        } catch (Throwable th) {
            try {
                this.channel.close();
            } catch (Exception e2) {
                LoggerFactory.getLogger((Class<?>) FileChannelRandomAccessSource.class).error(IoLogMessageConstant.FILE_CHANNEL_CLOSING_FAILED, (Throwable) e2);
            }
            throw th;
        }
    }

    @Override // com.itextpdf.io.source.IRandomAccessSource
    public int get(long j) throws IOException {
        return this.source.get(j);
    }

    @Override // com.itextpdf.io.source.IRandomAccessSource
    public int get(long j, byte[] bArr, int i, int i2) throws IOException {
        return this.source.get(j, bArr, i, i2);
    }

    @Override // com.itextpdf.io.source.IRandomAccessSource
    public long length() {
        return this.source.length();
    }
}
