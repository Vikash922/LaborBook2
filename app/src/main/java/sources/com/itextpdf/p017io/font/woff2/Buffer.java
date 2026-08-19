package com.itextpdf.p017io.font.woff2;

import com.itextpdf.p017io.exceptions.FontCompressionException;

/* JADX INFO: loaded from: classes6.dex */
class Buffer {
    private byte[] data;
    private int initial_offset;
    private int length;
    private int offset;

    public Buffer(byte[] bArr, int i, int i2) {
        this.offset = 0;
        this.initial_offset = i;
        this.length = i2;
        this.data = bArr;
    }

    public Buffer(Buffer buffer) {
        this.offset = buffer.offset;
        this.initial_offset = buffer.initial_offset;
        this.length = buffer.length;
        this.data = buffer.data;
    }

    public int readInt() {
        return readAsNumber(4);
    }

    public short readShort() {
        return JavaUnsignedUtil.toU16(readAsNumber(2));
    }

    public byte readByte() {
        return JavaUnsignedUtil.toU8(readAsNumber(1));
    }

    public void skip(int i) {
        read(null, 0, i);
    }

    public void read(byte[] bArr, int i, int i2) {
        int i3 = this.offset;
        int i4 = i3 + i2;
        int i5 = this.length;
        if (i4 > i5 || i3 > i5 - i2) {
            throw new FontCompressionException(FontCompressionException.BUFFER_READ_FAILED);
        }
        if (bArr != null) {
            if (i + i2 > bArr.length || i > bArr.length - i2) {
                throw new FontCompressionException(FontCompressionException.BUFFER_READ_FAILED);
            }
            System.arraycopy(this.data, this.initial_offset + i3, bArr, i, i2);
        }
        this.offset += i2;
    }

    public int getOffset() {
        return this.offset;
    }

    public int getInitialOffset() {
        return this.initial_offset;
    }

    public int getLength() {
        return this.length;
    }

    private int readAsNumber(int i) {
        byte[] bArr = new byte[i];
        read(bArr, 0, i);
        int iAsU8 = 0;
        for (int i2 = 0; i2 < i; i2++) {
            iAsU8 = (iAsU8 << 8) | JavaUnsignedUtil.asU8(bArr[i2]);
        }
        return iAsU8;
    }
}
