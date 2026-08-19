package com.itextpdf.styledxmlparser.resolver.resource;

import com.itextpdf.styledxmlparser.exceptions.ReadingByteLimitException;
import com.itextpdf.styledxmlparser.exceptions.StyledXmlParserExceptionMessage;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes6.dex */
class LimitedInputStream extends InputStream {
    private InputStream inputStream;
    private boolean isLimitViolated;
    private boolean isStreamRead;
    private long readingByteLimit;

    @Override // java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    public LimitedInputStream(InputStream inputStream, long j) {
        if (j < 0) {
            throw new IllegalArgumentException(StyledXmlParserExceptionMessage.READING_BYTE_LIMIT_MUST_NOT_BE_LESS_ZERO);
        }
        this.isStreamRead = false;
        this.isLimitViolated = false;
        this.inputStream = inputStream;
        this.readingByteLimit = j;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.isStreamRead) {
            return -1;
        }
        if (this.isLimitViolated) {
            throw new ReadingByteLimitException();
        }
        int i = this.inputStream.read();
        this.readingByteLimit--;
        checkReadingByteLimit(i);
        return i;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        int i;
        byte[] bArr2;
        if (this.isStreamRead) {
            return -1;
        }
        if (this.isLimitViolated) {
            throw new ReadingByteLimitException();
        }
        long length = bArr.length;
        long j = this.readingByteLimit;
        if (length > j) {
            if (j == 0) {
                bArr2 = new byte[1];
            } else {
                bArr2 = new byte[(int) j];
            }
            i = this.inputStream.read(bArr2);
            if (i != -1) {
                System.arraycopy(bArr2, 0, bArr, 0, i);
            }
        } else {
            i = this.inputStream.read(bArr);
        }
        this.readingByteLimit -= (long) i;
        checkReadingByteLimit(i);
        return i;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.isStreamRead) {
            return -1;
        }
        if (this.isLimitViolated) {
            throw new ReadingByteLimitException();
        }
        long j = i2;
        long j2 = this.readingByteLimit;
        if (j > j2) {
            i2 = j2 == 0 ? 1 : (int) j2;
        }
        int i3 = this.inputStream.read(bArr, i, i2);
        this.readingByteLimit -= (long) i3;
        checkReadingByteLimit(i3);
        return i3;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.inputStream.close();
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        return this.inputStream.skip(j);
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.inputStream.available();
    }

    @Override // java.io.InputStream
    public synchronized void mark(int i) {
    }

    @Override // java.io.InputStream
    public synchronized void reset() {
    }

    private void checkReadingByteLimit(int i) throws ReadingByteLimitException {
        if (i == -1) {
            this.isStreamRead = true;
        } else {
            if (this.readingByteLimit >= 0) {
                return;
            }
            this.isLimitViolated = true;
            throw new ReadingByteLimitException();
        }
    }
}
