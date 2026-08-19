package com.itextpdf.p017io.source;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes6.dex */
public class OutputStream<T extends java.io.OutputStream> extends java.io.OutputStream {
    protected boolean closeStream;
    protected long currentPos;
    private Boolean localHighPrecision;
    private final ByteBuffer numBuffer;
    protected java.io.OutputStream outputStream;

    public static boolean getHighPrecision() {
        return ByteUtils.HighPrecision;
    }

    public static void setHighPrecision(boolean z) {
        ByteUtils.HighPrecision = z;
    }

    public boolean getLocalHighPrecision() {
        return this.localHighPrecision.booleanValue();
    }

    public void setLocalHighPrecision(boolean z) {
        this.localHighPrecision = Boolean.valueOf(z);
    }

    public OutputStream(java.io.OutputStream outputStream) {
        this.numBuffer = new ByteBuffer(32);
        this.currentPos = 0L;
        this.closeStream = true;
        this.outputStream = outputStream;
    }

    protected OutputStream() {
        this.numBuffer = new ByteBuffer(32);
        this.outputStream = null;
        this.currentPos = 0L;
        this.closeStream = true;
    }

    public OutputStream(java.io.OutputStream outputStream, boolean z) {
        this.numBuffer = new ByteBuffer(32);
        this.currentPos = 0L;
        this.closeStream = true;
        this.outputStream = outputStream;
        this.localHighPrecision = Boolean.valueOf(z);
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        this.outputStream.write(i);
        this.currentPos++;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        this.outputStream.write(bArr);
        this.currentPos += (long) bArr.length;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.outputStream.write(bArr, i, i2);
        this.currentPos += (long) i2;
    }

    public void writeByte(byte b) {
        try {
            write(b);
        } catch (IOException e) {
            throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.CannotWriteByte, (Throwable) e);
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.outputStream.flush();
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.closeStream) {
            this.outputStream.close();
        }
    }

    public T writeLong(long j) {
        try {
            ByteUtils.getIsoBytes(j, this.numBuffer.reset());
            write(this.numBuffer.getInternalBuffer(), this.numBuffer.capacity() - this.numBuffer.size(), this.numBuffer.size());
            return this;
        } catch (IOException e) {
            throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.CannotWriteIntNumber, (Throwable) e);
        }
    }

    public T writeInteger(int i) {
        try {
            ByteUtils.getIsoBytes(i, this.numBuffer.reset());
            write(this.numBuffer.getInternalBuffer(), this.numBuffer.capacity() - this.numBuffer.size(), this.numBuffer.size());
            return this;
        } catch (IOException e) {
            throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.CannotWriteIntNumber, (Throwable) e);
        }
    }

    public T writeFloat(float f) {
        Boolean bool = this.localHighPrecision;
        return (T) writeFloat(f, bool == null ? ByteUtils.HighPrecision : bool.booleanValue());
    }

    public T writeFloat(float f, boolean z) {
        return (T) writeDouble(f, z);
    }

    public T writeFloats(float[] fArr) {
        for (int i = 0; i < fArr.length; i++) {
            writeFloat(fArr[i]);
            if (i < fArr.length - 1) {
                writeSpace();
            }
        }
        return this;
    }

    public T writeDouble(double d) {
        Boolean bool = this.localHighPrecision;
        return (T) writeDouble(d, bool == null ? ByteUtils.HighPrecision : bool.booleanValue());
    }

    public T writeDouble(double d, boolean z) {
        try {
            ByteUtils.getIsoBytes(d, this.numBuffer.reset(), z);
            write(this.numBuffer.getInternalBuffer(), this.numBuffer.capacity() - this.numBuffer.size(), this.numBuffer.size());
            return this;
        } catch (IOException e) {
            throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.CannotWriteFloatNumber, (Throwable) e);
        }
    }

    public T writeByte(int i) {
        try {
            write(i);
            return this;
        } catch (IOException e) {
            throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.CannotWriteByte, (Throwable) e);
        }
    }

    public T writeSpace() {
        return (T) writeByte(32);
    }

    public T writeNewLine() {
        return (T) writeByte(10);
    }

    public T writeString(String str) {
        return (T) writeBytes(ByteUtils.getIsoBytes(str));
    }

    public T writeBytes(byte[] bArr) {
        try {
            write(bArr);
            return this;
        } catch (IOException e) {
            throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.CannotWriteBytes, (Throwable) e);
        }
    }

    public T writeBytes(byte[] bArr, int i, int i2) {
        try {
            write(bArr, i, i2);
            return this;
        } catch (IOException e) {
            throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.CannotWriteBytes, (Throwable) e);
        }
    }

    public long getCurrentPos() {
        return this.currentPos;
    }

    public java.io.OutputStream getOutputStream() {
        return this.outputStream;
    }

    public boolean isCloseStream() {
        return this.closeStream;
    }

    public void setCloseStream(boolean z) {
        this.closeStream = z;
    }

    public void assignBytes(byte[] bArr, int i) {
        java.io.OutputStream outputStream = this.outputStream;
        if (outputStream instanceof ByteArrayOutputStream) {
            ((ByteArrayOutputStream) outputStream).assignBytes(bArr, i);
            this.currentPos = i;
            return;
        }
        throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.BytesCanBeAssignedToByteArrayOutputStreamOnly);
    }

    public void reset() {
        java.io.OutputStream outputStream = this.outputStream;
        if (outputStream instanceof ByteArrayOutputStream) {
            ((ByteArrayOutputStream) outputStream).reset();
            this.currentPos = 0L;
            return;
        }
        throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.BytesCanBeResetInByteArrayOutputStreamOnly);
    }
}
