package com.itextpdf.p017io.util;

import com.itextpdf.p017io.source.ByteBuffer;
import com.itextpdf.p017io.source.ByteUtils;
import com.itextpdf.p017io.source.IRandomAccessSource;
import com.itextpdf.p017io.source.RandomAccessFileOrArray;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes6.dex */
public final class StreamUtil {
    private static final int TRANSFER_SIZE = 65536;
    private static final byte[] escR = ByteUtils.getIsoBytes("\\r");
    private static final byte[] escN = ByteUtils.getIsoBytes("\\n");
    private static final byte[] escT = ByteUtils.getIsoBytes("\\t");
    private static final byte[] escB = ByteUtils.getIsoBytes("\\b");
    private static final byte[] escF = ByteUtils.getIsoBytes("\\f");

    private StreamUtil() {
    }

    public static void skip(InputStream inputStream, long j) throws IOException {
        while (j > 0) {
            long jSkip = inputStream.skip(j);
            if (jSkip <= 0) {
                return;
            } else {
                j -= jSkip;
            }
        }
    }

    public static byte[] createEscapedString(byte[] bArr) {
        return createBufferedEscapedString(bArr).toByteArray();
    }

    public static void writeEscapedString(OutputStream outputStream, byte[] bArr) {
        ByteBuffer byteBufferCreateBufferedEscapedString = createBufferedEscapedString(bArr);
        try {
            outputStream.write(byteBufferCreateBufferedEscapedString.getInternalBuffer(), 0, byteBufferCreateBufferedEscapedString.size());
        } catch (IOException e) {
            throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.CannotWriteBytes, (Throwable) e);
        }
    }

    public static void writeHexedString(OutputStream outputStream, byte[] bArr) {
        ByteBuffer byteBufferCreateBufferedHexedString = createBufferedHexedString(bArr);
        try {
            outputStream.write(byteBufferCreateBufferedHexedString.getInternalBuffer(), 0, byteBufferCreateBufferedHexedString.size());
        } catch (IOException e) {
            throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.CannotWriteBytes, (Throwable) e);
        }
    }

    public static ByteBuffer createBufferedEscapedString(byte[] bArr) {
        ByteBuffer byteBuffer = new ByteBuffer((bArr.length * 2) + 2);
        byteBuffer.append(40);
        for (byte b : bArr) {
            if (b == 12) {
                byteBuffer.append(escF);
            } else if (b == 13) {
                byteBuffer.append(escR);
            } else if (b != 40 && b != 41 && b != 92) {
                switch (b) {
                    case 8:
                        byteBuffer.append(escB);
                        break;
                    case 9:
                        byteBuffer.append(escT);
                        break;
                    case 10:
                        byteBuffer.append(escN);
                        break;
                    default:
                        if (b < 8 && b >= 0) {
                            byteBuffer.append("\\00").append(Integer.toOctalString(b));
                        } else if (b >= 8 && b < 32) {
                            byteBuffer.append("\\0").append(Integer.toOctalString(b));
                        } else {
                            byteBuffer.append(b);
                        }
                        break;
                }
            } else {
                byteBuffer.append(92).append(b);
            }
        }
        byteBuffer.append(41);
        return byteBuffer;
    }

    public static ByteBuffer createBufferedHexedString(byte[] bArr) {
        ByteBuffer byteBuffer = new ByteBuffer((bArr.length * 2) + 2);
        byteBuffer.append(60);
        for (byte b : bArr) {
            byteBuffer.appendHex(b);
        }
        byteBuffer.append(62);
        return byteBuffer;
    }

    public static void transferBytes(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[65536];
        while (true) {
            int i = inputStream.read(bArr, 0, 65536);
            if (i <= 0) {
                return;
            } else {
                outputStream.write(bArr, 0, i);
            }
        }
    }

    public static void transferBytes(RandomAccessFileOrArray randomAccessFileOrArray, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[65536];
        while (true) {
            int i = randomAccessFileOrArray.read(bArr, 0, 65536);
            if (i <= 0) {
                return;
            } else {
                outputStream.write(bArr, 0, i);
            }
        }
    }

    public static byte[] inputStreamToArray(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[8192];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int i = inputStream.read(bArr);
            if (i >= 1) {
                byteArrayOutputStream.write(bArr, 0, i);
            } else {
                byteArrayOutputStream.close();
                return byteArrayOutputStream.toByteArray();
            }
        }
    }

    public static void copyBytes(IRandomAccessSource iRandomAccessSource, long j, long j2, OutputStream outputStream) throws IOException {
        if (j2 <= 0) {
            return;
        }
        byte[] bArr = new byte[8192];
        while (j2 > 0) {
            long j3 = iRandomAccessSource.get(j, bArr, 0, (int) Math.min(8192, j2));
            if (j3 <= 0) {
                throw new EOFException();
            }
            outputStream.write(bArr, 0, (int) j3);
            j += j3;
            j2 -= j3;
        }
    }

    public static void readFully(InputStream inputStream, byte[] bArr, int i, int i2) throws IOException {
        if (i2 < 0) {
            throw new IndexOutOfBoundsException();
        }
        int i3 = 0;
        while (i3 < i2) {
            int i4 = inputStream.read(bArr, i + i3, i2 - i3);
            if (i4 < 0) {
                throw new EOFException();
            }
            i3 += i4;
        }
    }
}
