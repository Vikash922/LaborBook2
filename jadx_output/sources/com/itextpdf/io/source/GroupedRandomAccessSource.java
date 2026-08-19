package com.itextpdf.io.source;

import com.itextpdf.io.logs.IoLogMessageConstant;
import java.io.IOException;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
class GroupedRandomAccessSource implements IRandomAccessSource {
    private SourceEntry currentSourceEntry;
    private final long size;
    private final SourceEntry[] sources;

    protected void sourceInUse(IRandomAccessSource iRandomAccessSource) throws IOException {
    }

    protected void sourceReleased(IRandomAccessSource iRandomAccessSource) throws IOException {
    }

    public GroupedRandomAccessSource(IRandomAccessSource[] iRandomAccessSourceArr) throws IOException {
        this.sources = new SourceEntry[iRandomAccessSourceArr.length];
        long length = 0;
        for (int i = 0; i < iRandomAccessSourceArr.length; i++) {
            this.sources[i] = new SourceEntry(i, iRandomAccessSourceArr[i], length);
            length += iRandomAccessSourceArr[i].length();
        }
        this.size = length;
        SourceEntry sourceEntry = this.sources[iRandomAccessSourceArr.length - 1];
        this.currentSourceEntry = sourceEntry;
        sourceInUse(sourceEntry.source);
    }

    protected int getStartingSourceIndex(long j) {
        if (j >= this.currentSourceEntry.firstByte) {
            return this.currentSourceEntry.index;
        }
        return 0;
    }

    private SourceEntry getSourceEntryForOffset(long j) throws IOException {
        if (j >= this.size) {
            return null;
        }
        if (j >= this.currentSourceEntry.firstByte && j <= this.currentSourceEntry.lastByte) {
            return this.currentSourceEntry;
        }
        sourceReleased(this.currentSourceEntry.source);
        int startingSourceIndex = getStartingSourceIndex(j);
        while (true) {
            SourceEntry[] sourceEntryArr = this.sources;
            if (startingSourceIndex >= sourceEntryArr.length) {
                return null;
            }
            if (j >= sourceEntryArr[startingSourceIndex].firstByte && j <= this.sources[startingSourceIndex].lastByte) {
                SourceEntry sourceEntry = this.sources[startingSourceIndex];
                this.currentSourceEntry = sourceEntry;
                sourceInUse(sourceEntry.source);
                return this.currentSourceEntry;
            }
            startingSourceIndex++;
        }
    }

    @Override // com.itextpdf.io.source.IRandomAccessSource
    public int get(long j) throws IOException {
        SourceEntry sourceEntryForOffset = getSourceEntryForOffset(j);
        if (sourceEntryForOffset == null) {
            return -1;
        }
        return sourceEntryForOffset.source.get(sourceEntryForOffset.offsetN(j));
    }

    @Override // com.itextpdf.io.source.IRandomAccessSource
    public int get(long j, byte[] bArr, int i, int i2) throws IOException {
        SourceEntry sourceEntryForOffset = getSourceEntryForOffset(j);
        if (sourceEntryForOffset == null) {
            return -1;
        }
        int i3 = i2;
        for (long jOffsetN = sourceEntryForOffset.offsetN(j); i3 > 0 && sourceEntryForOffset != null && jOffsetN <= sourceEntryForOffset.source.length(); jOffsetN = 0) {
            int i4 = sourceEntryForOffset.source.get(jOffsetN, bArr, i, i3);
            if (i4 == -1) {
                break;
            }
            i += i4;
            j += (long) i4;
            i3 -= i4;
            sourceEntryForOffset = getSourceEntryForOffset(j);
        }
        if (i3 == i2) {
            return -1;
        }
        return i2 - i3;
    }

    @Override // com.itextpdf.io.source.IRandomAccessSource
    public long length() {
        return this.size;
    }

    @Override // com.itextpdf.io.source.IRandomAccessSource
    public void close() throws IOException {
        IOException iOException = null;
        for (SourceEntry sourceEntry : this.sources) {
            try {
                sourceEntry.source.close();
            } catch (IOException e) {
                if (iOException == null) {
                    iOException = e;
                } else {
                    LoggerFactory.getLogger((Class<?>) GroupedRandomAccessSource.class).error(IoLogMessageConstant.ONE_OF_GROUPED_SOURCES_CLOSING_FAILED, (Throwable) e);
                }
            } catch (Exception e2) {
                LoggerFactory.getLogger((Class<?>) GroupedRandomAccessSource.class).error(IoLogMessageConstant.ONE_OF_GROUPED_SOURCES_CLOSING_FAILED, (Throwable) e2);
            }
        }
        if (iOException != null) {
            throw iOException;
        }
    }

    private static class SourceEntry {
        final long firstByte;
        final int index;
        final long lastByte;
        final IRandomAccessSource source;

        public SourceEntry(int i, IRandomAccessSource iRandomAccessSource, long j) {
            this.index = i;
            this.source = iRandomAccessSource;
            this.firstByte = j;
            this.lastByte = (j + iRandomAccessSource.length()) - 1;
        }

        public long offsetN(long j) {
            return j - this.firstByte;
        }
    }
}
