package com.itextpdf.p017io.source;

import com.itextpdf.p017io.logs.IoLogMessageConstant;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.Iterator;
import java.util.LinkedList;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
class PagedChannelRandomAccessSource extends GroupedRandomAccessSource implements IRandomAccessSource {
    public static final int DEFAULT_MAX_OPEN_BUFFERS = 16;
    public static final int DEFAULT_TOTAL_BUFSIZE = 67108864;
    private final int bufferSize;
    private final FileChannel channel;
    private final MRU<IRandomAccessSource> mru;

    public PagedChannelRandomAccessSource(FileChannel fileChannel) throws IOException {
        this(fileChannel, 67108864, 16);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public PagedChannelRandomAccessSource(FileChannel fileChannel, int i, int i2) throws IOException {
        int i3 = i / i2;
        super(buildSources(fileChannel, i3));
        this.channel = fileChannel;
        this.bufferSize = i3;
        this.mru = new MRU<>(i2);
    }

    private static IRandomAccessSource[] buildSources(FileChannel fileChannel, int i) throws IOException {
        long size = fileChannel.size();
        if (size <= 0) {
            throw new IOException("File size must be greater than zero");
        }
        long j = i;
        int i2 = ((int) (size / j)) + (size % j == 0 ? 0 : 1);
        MappedChannelRandomAccessSource[] mappedChannelRandomAccessSourceArr = new MappedChannelRandomAccessSource[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            long j2 = ((long) i3) * j;
            mappedChannelRandomAccessSourceArr[i3] = new MappedChannelRandomAccessSource(fileChannel, j2, Math.min(size - j2, j));
        }
        return mappedChannelRandomAccessSourceArr;
    }

    @Override // com.itextpdf.p017io.source.GroupedRandomAccessSource
    protected int getStartingSourceIndex(long j) {
        return (int) (j / ((long) this.bufferSize));
    }

    @Override // com.itextpdf.p017io.source.GroupedRandomAccessSource
    protected void sourceReleased(IRandomAccessSource iRandomAccessSource) throws IOException {
        IRandomAccessSource iRandomAccessSourceEnqueue = this.mru.enqueue(iRandomAccessSource);
        if (iRandomAccessSourceEnqueue != null) {
            iRandomAccessSourceEnqueue.close();
        }
    }

    @Override // com.itextpdf.p017io.source.GroupedRandomAccessSource
    protected void sourceInUse(IRandomAccessSource iRandomAccessSource) throws IOException {
        ((MappedChannelRandomAccessSource) iRandomAccessSource).open();
    }

    @Override // com.itextpdf.p017io.source.GroupedRandomAccessSource, com.itextpdf.p017io.source.IRandomAccessSource
    public void close() throws IOException {
        try {
            super.close();
            try {
                this.channel.close();
            } catch (Exception e) {
                LoggerFactory.getLogger((Class<?>) PagedChannelRandomAccessSource.class).error(IoLogMessageConstant.FILE_CHANNEL_CLOSING_FAILED, (Throwable) e);
            }
        } catch (Throwable th) {
            try {
                this.channel.close();
            } catch (Exception e2) {
                LoggerFactory.getLogger((Class<?>) PagedChannelRandomAccessSource.class).error(IoLogMessageConstant.FILE_CHANNEL_CLOSING_FAILED, (Throwable) e2);
            }
            throw th;
        }
    }

    private static class MRU<E> {
        private final int limit;
        private LinkedList<E> queue = new LinkedList<>();

        public MRU(int i) {
            this.limit = i;
        }

        public E enqueue(E e) {
            if (this.queue.size() > 0 && this.queue.getFirst() == e) {
                return null;
            }
            Iterator<E> it = this.queue.iterator();
            while (it.hasNext()) {
                if (e == it.next()) {
                    it.remove();
                    this.queue.addFirst(e);
                    return null;
                }
            }
            this.queue.addFirst(e);
            if (this.queue.size() > this.limit) {
                return this.queue.removeLast();
            }
            return null;
        }
    }
}
