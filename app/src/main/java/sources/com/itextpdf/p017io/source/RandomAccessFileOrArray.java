package com.itextpdf.p017io.source;

import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes6.dex */
public class RandomAccessFileOrArray implements DataInput {
    public static boolean plainRandomAccess = false;
    private byte back;
    private IRandomAccessSource byteSource;
    private long byteSourcePosition;
    private boolean isBack = false;

    public RandomAccessFileOrArray(IRandomAccessSource iRandomAccessSource) {
        this.byteSource = iRandomAccessSource;
    }

    public RandomAccessFileOrArray createView() {
        ensureByteSourceIsThreadSafe();
        return new RandomAccessFileOrArray(new IndependentRandomAccessSource(this.byteSource));
    }

    public IRandomAccessSource createSourceView() {
        ensureByteSourceIsThreadSafe();
        return new IndependentRandomAccessSource(this.byteSource);
    }

    public void pushBack(byte b) {
        this.back = b;
        this.isBack = true;
    }

    public int read() throws IOException {
        if (this.isBack) {
            this.isBack = false;
            return this.back & 255;
        }
        IRandomAccessSource iRandomAccessSource = this.byteSource;
        long j = this.byteSourcePosition;
        this.byteSourcePosition = 1 + j;
        return iRandomAccessSource.get(j);
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        int i4;
        int i5;
        int i6 = 0;
        if (i2 == 0) {
            return 0;
        }
        if (!this.isBack || i2 <= 0) {
            i3 = i;
            i4 = i2;
        } else {
            this.isBack = false;
            bArr[i] = this.back;
            i4 = i2 - 1;
            i3 = i + 1;
            i6 = 1;
        }
        if (i4 > 0 && (i5 = this.byteSource.get(this.byteSourcePosition, bArr, i3, i4)) > 0) {
            i6 += i5;
            this.byteSourcePosition += (long) i5;
        }
        if (i6 == 0) {
            return -1;
        }
        return i6;
    }

    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.DataInput
    public void readFully(byte[] bArr) throws IOException {
        readFully(bArr, 0, bArr.length);
    }

    @Override // java.io.DataInput
    public void readFully(byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        do {
            int i4 = read(bArr, i + i3, i2 - i3);
            if (i4 < 0) {
                throw new EOFException();
            }
            i3 += i4;
        } while (i3 < i2);
    }

    public long skip(long j) {
        if (j <= 0) {
            return 0L;
        }
        int i = 0;
        if (this.isBack) {
            this.isBack = false;
            if (j == 1) {
                return 1L;
            }
            j--;
            i = 1;
        }
        long position = getPosition();
        long length = length();
        long j2 = j + position;
        if (j2 <= length) {
            length = j2;
        }
        seek(length);
        return (length - position) + ((long) i);
    }

    @Override // java.io.DataInput
    public int skipBytes(int i) {
        return (int) skip(i);
    }

    public void close() throws IOException {
        this.isBack = false;
        this.byteSource.close();
    }

    public long length() {
        return this.byteSource.length();
    }

    public void seek(long j) {
        this.byteSourcePosition = j;
        this.isBack = false;
    }

    public long getPosition() {
        return this.byteSourcePosition - (this.isBack ? 1L : 0L);
    }

    @Override // java.io.DataInput
    public boolean readBoolean() throws IOException {
        int i = read();
        if (i >= 0) {
            return i != 0;
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public byte readByte() throws IOException {
        int i = read();
        if (i >= 0) {
            return (byte) i;
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public int readUnsignedByte() throws IOException {
        int i = read();
        if (i >= 0) {
            return i;
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public short readShort() throws IOException {
        int i = read();
        int i2 = read();
        if ((i | i2) >= 0) {
            return (short) ((i << 8) + i2);
        }
        throw new EOFException();
    }

    public final short readShortLE() throws IOException {
        int i = read();
        int i2 = read();
        if ((i | i2) >= 0) {
            return (short) ((i2 << 8) + i);
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public int readUnsignedShort() throws IOException {
        int i = read();
        int i2 = read();
        if ((i | i2) >= 0) {
            return (i << 8) + i2;
        }
        throw new EOFException();
    }

    public final int readUnsignedShortLE() throws IOException {
        int i = read();
        int i2 = read();
        if ((i | i2) >= 0) {
            return (i2 << 8) + i;
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public char readChar() throws IOException {
        int i = read();
        int i2 = read();
        if ((i | i2) >= 0) {
            return (char) ((i << 8) + i2);
        }
        throw new EOFException();
    }

    public final char readCharLE() throws IOException {
        int i = read();
        int i2 = read();
        if ((i | i2) >= 0) {
            return (char) ((i2 << 8) + i2);
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public int readInt() throws IOException {
        int i = read();
        int i2 = read();
        int i3 = read();
        int i4 = read();
        if ((i | i2 | i3 | i4) >= 0) {
            return (i << 24) + (i2 << 16) + (i3 << 8) + i4;
        }
        throw new EOFException();
    }

    public final int readIntLE() throws IOException {
        int i = read();
        int i2 = read();
        int i3 = read();
        int i4 = read();
        if ((i | i2 | i3 | i4) >= 0) {
            return (i4 << 24) + (i3 << 16) + (i2 << 8) + i;
        }
        throw new EOFException();
    }

    public final long readUnsignedInt() throws IOException {
        long j = read();
        long j2 = read();
        long j3 = read();
        long j4 = read();
        if ((j | j2 | j3 | j4) >= 0) {
            return (j << 24) + (j2 << 16) + (j3 << 8) + j4;
        }
        throw new EOFException();
    }

    public final long readUnsignedIntLE() throws IOException {
        long j = read();
        long j2 = read();
        long j3 = read();
        long j4 = read();
        if ((j | j2 | j3 | j4) >= 0) {
            return (j4 << 24) + (j3 << 16) + (j2 << 8) + j;
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public long readLong() throws IOException {
        return (((long) readInt()) << 32) + (((long) readInt()) & BodyPartID.bodyIdMax);
    }

    public final long readLongLE() throws IOException {
        return (((long) readIntLE()) << 32) + (((long) readIntLE()) & BodyPartID.bodyIdMax);
    }

    @Override // java.io.DataInput
    public float readFloat() throws IOException {
        return Float.intBitsToFloat(readInt());
    }

    public final float readFloatLE() throws IOException {
        return Float.intBitsToFloat(readIntLE());
    }

    @Override // java.io.DataInput
    public double readDouble() throws IOException {
        return Double.longBitsToDouble(readLong());
    }

    public final double readDoubleLE() throws IOException {
        return Double.longBitsToDouble(readLongLE());
    }

    @Override // java.io.DataInput
    public String readLine() throws IOException {
        StringBuilder sb = new StringBuilder();
        boolean z = false;
        int i = -1;
        while (!z) {
            i = read();
            if (i != -1 && i != 10) {
                if (i == 13) {
                    long position = getPosition();
                    if (read() != 10) {
                        seek(position);
                    }
                } else {
                    sb.append((char) i);
                }
            }
            z = true;
        }
        if (i == -1 && sb.length() == 0) {
            return null;
        }
        return sb.toString();
    }

    @Override // java.io.DataInput
    public String readUTF() throws IOException {
        return DataInputStream.readUTF(this);
    }

    public String readString(int i, String str) throws IOException {
        byte[] bArr = new byte[i];
        readFully(bArr);
        return new String(bArr, str);
    }

    private void ensureByteSourceIsThreadSafe() {
        if (this.byteSource instanceof ThreadSafeRandomAccessSource) {
            return;
        }
        this.byteSource = new ThreadSafeRandomAccessSource(this.byteSource);
    }
}
