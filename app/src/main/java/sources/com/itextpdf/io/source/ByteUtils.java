package com.itextpdf.io.source;

import com.itextpdf.io.logs.IoLogMessageConstant;
import com.itextpdf.io.util.DecimalFormatUtil;
import java.nio.charset.StandardCharsets;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public final class ByteUtils {
    static boolean HighPrecision = false;
    private static final byte[] bytes = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};
    private static final byte[] zero = {48};
    private static final byte[] one = {49};
    private static final byte[] negOne = {45, 49};

    private static int intSize(int i) {
        long j = 10;
        for (int i2 = 1; i2 < 10; i2++) {
            if (i < j) {
                return i2;
            }
            j *= 10;
        }
        return 10;
    }

    private static int longSize(long j) {
        long j2 = 10;
        for (int i = 1; i < 19; i++) {
            if (j < j2) {
                return i;
            }
            j2 *= 10;
        }
        return 19;
    }

    public static byte[] getIsoBytes(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr[i] = (byte) str.charAt(i);
        }
        return bArr;
    }

    public static byte[] getIsoBytes(byte b, String str) {
        return getIsoBytes(b, str, (byte) 0);
    }

    public static byte[] getIsoBytes(byte b, String str, byte b2) {
        int i;
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (b != 0) {
            length++;
            i = 1;
        } else {
            i = 0;
        }
        if (b2 != 0) {
            length++;
        }
        byte[] bArr = new byte[length];
        if (b != 0) {
            bArr[0] = b;
        }
        if (b2 != 0) {
            bArr[length - 1] = b2;
        }
        for (int i2 = 0; i2 < str.length(); i2++) {
            bArr[i2 + i] = (byte) str.charAt(i2);
        }
        return bArr;
    }

    public static byte[] getIsoBytes(int i) {
        return getIsoBytes(i, (ByteBuffer) null);
    }

    public static byte[] getIsoBytes(double d) {
        return getIsoBytes(d, (ByteBuffer) null);
    }

    static byte[] getIsoBytes(int i, ByteBuffer byteBuffer) {
        int i2;
        if (i < 0) {
            i = -i;
            i2 = 1;
        } else {
            i2 = 0;
        }
        int iIntSize = intSize(i);
        ByteBuffer byteBuffer2 = byteBuffer == null ? new ByteBuffer(iIntSize + i2) : byteBuffer;
        for (int i3 = 0; i3 < iIntSize; i3++) {
            byteBuffer2.prepend(bytes[i % 10]);
            i /= 10;
        }
        if (i2 != 0) {
            byteBuffer2.prepend((byte) 45);
        }
        if (byteBuffer == null) {
            return byteBuffer2.getInternalBuffer();
        }
        return null;
    }

    static byte[] getIsoBytes(double d, ByteBuffer byteBuffer) {
        return getIsoBytes(d, byteBuffer, HighPrecision);
    }

    static byte[] getIsoBytes(double d, ByteBuffer byteBuffer, boolean z) {
        int i;
        long j;
        ByteBuffer byteBuffer2;
        byte[] bArr;
        double d2 = d;
        if (z) {
            if (Math.abs(d) < 1.0E-6d) {
                if (byteBuffer != null) {
                    byteBuffer.prepend(zero);
                    return null;
                }
                return zero;
            }
            if (Double.isNaN(d)) {
                LoggerFactory.getLogger((Class<?>) ByteUtils.class).error(IoLogMessageConstant.ATTEMPT_PROCESS_NAN);
                d2 = 0.0d;
            }
            byte[] bytes2 = DecimalFormatUtil.formatNumber(d2, "0.######").getBytes(StandardCharsets.ISO_8859_1);
            if (byteBuffer == null) {
                return bytes2;
            }
            byteBuffer.prepend(bytes2);
            return null;
        }
        if (Math.abs(d) < 1.5E-5d) {
            if (byteBuffer != null) {
                byteBuffer.prepend(zero);
                return null;
            }
            return zero;
        }
        int i2 = 0;
        int i3 = 1;
        if (d2 < 0.0d) {
            d2 = -d2;
            i = 1;
        } else {
            i = 0;
        }
        int i4 = 5;
        if (d2 < 1.0d) {
            double d3 = d2 + 5.0E-6d;
            if (d3 >= 1.0d) {
                if (i != 0) {
                    bArr = negOne;
                } else {
                    bArr = one;
                }
                if (byteBuffer == null) {
                    return bArr;
                }
                byteBuffer.prepend(bArr);
                return null;
            }
            int i5 = (int) (d3 * 100000.0d);
            while (i4 > 0 && i5 % 10 == 0) {
                i5 /= 10;
                i4--;
            }
            if (byteBuffer != null) {
                byteBuffer2 = byteBuffer;
            } else {
                byteBuffer2 = new ByteBuffer(i != 0 ? i4 + 3 : i4 + 2);
            }
            while (i2 < i4) {
                byteBuffer2.prepend(bytes[i5 % 10]);
                i5 /= 10;
                i2++;
            }
            byteBuffer2.prepend((byte) 46).prepend((byte) 48);
            if (i != 0) {
                byteBuffer2.prepend((byte) 45);
            }
        } else if (d2 <= 32767.0d) {
            int i6 = (int) ((d2 + 0.005d) * 100.0d);
            int i7 = 2;
            if (i6 >= 1000000) {
                i3 = 5;
            } else if (i6 >= 100000) {
                i3 = 4;
            } else if (i6 >= 10000) {
                i3 = 3;
            } else if (i6 >= 1000) {
                i3 = 2;
            }
            if (i6 % 100 != 0) {
                if (i6 % 10 != 0) {
                    i7 = 3;
                } else {
                    i6 /= 10;
                }
            } else {
                i6 /= 100;
                i7 = 0;
            }
            byteBuffer2 = byteBuffer != null ? byteBuffer : new ByteBuffer(i3 + i7 + i);
            for (int i8 = 0; i8 < i7 - 1; i8++) {
                byteBuffer2.prepend(bytes[i6 % 10]);
                i6 /= 10;
            }
            if (i7 > 0) {
                byteBuffer2.prepend((byte) 46);
            }
            while (i2 < i3) {
                byteBuffer2.prepend(bytes[i6 % 10]);
                i6 /= 10;
                i2++;
            }
            if (i != 0) {
                byteBuffer2.prepend((byte) 45);
            }
        } else {
            double d4 = d2 + 0.5d;
            if (d4 > 9.223372036854776E18d) {
                j = Long.MAX_VALUE;
            } else {
                if (Double.isNaN(d4)) {
                    LoggerFactory.getLogger((Class<?>) ByteUtils.class).error(IoLogMessageConstant.ATTEMPT_PROCESS_NAN);
                    d4 = 0.0d;
                }
                j = (long) d4;
            }
            int iLongSize = longSize(j);
            ByteBuffer byteBuffer3 = byteBuffer == null ? new ByteBuffer(iLongSize + i) : byteBuffer;
            while (i2 < iLongSize) {
                byteBuffer3.prepend(bytes[(int) (j % 10)]);
                j /= 10;
                i2++;
            }
            if (i != 0) {
                byteBuffer3.prepend((byte) 45);
            }
            byteBuffer2 = byteBuffer3;
        }
        if (byteBuffer == null) {
            return byteBuffer2.getInternalBuffer();
        }
        return null;
    }
}
