package com.itextpdf.commons.utils;

import com.google.common.base.Ascii;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.util.zip.GZIPOutputStream;
import okio.Utf8;
import org.shadow.apache.commons.lang3.CharEncoding;

/* JADX INFO: loaded from: classes6.dex */
public class Base64 {
    public static final int DECODE = 0;
    public static final int DONT_BREAK_LINES = 8;
    public static final int ENCODE = 1;
    private static final byte EQUALS_SIGN = 61;
    private static final byte EQUALS_SIGN_ENC = -1;
    public static final int GZIP = 2;
    private static final int MAX_LINE_LENGTH = 76;
    private static final byte NEW_LINE = 10;
    public static final int NO_OPTIONS = 0;
    public static final int ORDERED = 32;
    private static final String PREFERRED_ENCODING = "UTF-8";
    public static final int URL_SAFE = 16;
    private static final byte[] _STANDARD_ALPHABET = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};
    private static final byte WHITE_SPACE_ENC = -5;
    private static final byte[] _STANDARD_DECODABET = {-9, -9, -9, -9, -9, -9, -9, -9, -9, WHITE_SPACE_ENC, WHITE_SPACE_ENC, -9, -9, WHITE_SPACE_ENC, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, WHITE_SPACE_ENC, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, -9, Utf8.REPLACEMENT_BYTE, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, Ascii.f397VT, Ascii.f386FF, Ascii.f384CR, Ascii.f394SO, Ascii.f393SI, 16, 17, Ascii.DC2, 19, Ascii.DC4, Ascii.NAK, Ascii.SYN, Ascii.ETB, Ascii.CAN, Ascii.f385EM, -9, -9, -9, -9, -9, -9, Ascii.SUB, Ascii.ESC, Ascii.f387FS, Ascii.f388GS, Ascii.f392RS, Ascii.f396US, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9};
    private static final byte[] _URL_SAFE_ALPHABET = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};
    private static final byte[] _URL_SAFE_DECODABET = {-9, -9, -9, -9, -9, -9, -9, -9, -9, WHITE_SPACE_ENC, WHITE_SPACE_ENC, -9, -9, WHITE_SPACE_ENC, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, WHITE_SPACE_ENC, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, Ascii.f397VT, Ascii.f386FF, Ascii.f384CR, Ascii.f394SO, Ascii.f393SI, 16, 17, Ascii.DC2, 19, Ascii.DC4, Ascii.NAK, Ascii.SYN, Ascii.ETB, Ascii.CAN, Ascii.f385EM, -9, -9, -9, -9, Utf8.REPLACEMENT_BYTE, -9, Ascii.SUB, Ascii.ESC, Ascii.f387FS, Ascii.f388GS, Ascii.f392RS, Ascii.f396US, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9};
    private static final byte[] _ORDERED_ALPHABET = {45, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 95, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122};
    private static final byte[] _ORDERED_DECODABET = {-9, -9, -9, -9, -9, -9, -9, -9, -9, WHITE_SPACE_ENC, WHITE_SPACE_ENC, -9, -9, WHITE_SPACE_ENC, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, WHITE_SPACE_ENC, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 0, -9, -9, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -9, -9, -9, -1, -9, -9, -9, Ascii.f397VT, Ascii.f386FF, Ascii.f384CR, Ascii.f394SO, Ascii.f393SI, 16, 17, Ascii.DC2, 19, Ascii.DC4, Ascii.NAK, Ascii.SYN, Ascii.ETB, Ascii.CAN, Ascii.f385EM, Ascii.SUB, Ascii.ESC, Ascii.f387FS, Ascii.f388GS, Ascii.f392RS, Ascii.f396US, 32, 33, 34, 35, 36, -9, -9, -9, -9, 37, -9, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, Utf8.REPLACEMENT_BYTE, -9, -9, -9, -9};

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] getAlphabet(int i) {
        if ((i & 16) == 16) {
            return _URL_SAFE_ALPHABET;
        }
        if ((i & 32) == 32) {
            return _ORDERED_ALPHABET;
        }
        return _STANDARD_ALPHABET;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] getDecodabet(int i) {
        if ((i & 16) == 16) {
            return _URL_SAFE_DECODABET;
        }
        if ((i & 32) == 32) {
            return _ORDERED_DECODABET;
        }
        return _STANDARD_DECODABET;
    }

    private Base64() {
    }

    private static void usage(String str) {
        System.err.println(str);
        System.err.println("Usage: java Base64 -e|-d inputfile outputfile");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] encode3to4(byte[] bArr, byte[] bArr2, int i, int i2) {
        encode3to4(bArr2, 0, i, bArr, 0, i2);
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] encode3to4(byte[] bArr, int i, int i2, byte[] bArr2, int i3, int i4) {
        byte[] alphabet = getAlphabet(i4);
        int i5 = (i2 > 0 ? (bArr[i] << Ascii.CAN) >>> 8 : 0) | (i2 > 1 ? (bArr[i + 1] << Ascii.CAN) >>> 16 : 0) | (i2 > 2 ? (bArr[i + 2] << Ascii.CAN) >>> 24 : 0);
        if (i2 == 1) {
            bArr2[i3] = alphabet[i5 >>> 18];
            bArr2[i3 + 1] = alphabet[(i5 >>> 12) & 63];
            bArr2[i3 + 2] = 61;
            bArr2[i3 + 3] = 61;
            return bArr2;
        }
        if (i2 == 2) {
            bArr2[i3] = alphabet[i5 >>> 18];
            bArr2[i3 + 1] = alphabet[(i5 >>> 12) & 63];
            bArr2[i3 + 2] = alphabet[(i5 >>> 6) & 63];
            bArr2[i3 + 3] = 61;
            return bArr2;
        }
        if (i2 != 3) {
            return bArr2;
        }
        bArr2[i3] = alphabet[i5 >>> 18];
        bArr2[i3 + 1] = alphabet[(i5 >>> 12) & 63];
        bArr2[i3 + 2] = alphabet[(i5 >>> 6) & 63];
        bArr2[i3 + 3] = alphabet[i5 & 63];
        return bArr2;
    }

    public static String encodeObject(Serializable serializable) {
        return encodeObject(serializable, 0);
    }

    public static String encodeObject(Serializable serializable, int i) throws Throwable {
        GZIPOutputStream gZIPOutputStream;
        ByteArrayOutputStream byteArrayOutputStream;
        OutputStream outputStream;
        ObjectOutputStream objectOutputStream;
        int i2 = i & 2;
        ObjectOutputStream objectOutputStream2 = null;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                outputStream = new OutputStream(byteArrayOutputStream, i | 1);
                try {
                    if (i2 == 2) {
                        gZIPOutputStream = new GZIPOutputStream(outputStream);
                        try {
                            objectOutputStream = new ObjectOutputStream(gZIPOutputStream);
                        } catch (IOException e) {
                            e = e;
                            objectOutputStream = null;
                            e.printStackTrace();
                            try {
                                objectOutputStream.close();
                            } catch (Exception unused) {
                            }
                            try {
                                gZIPOutputStream.close();
                            } catch (Exception unused2) {
                            }
                            try {
                                outputStream.close();
                            } catch (Exception unused3) {
                            }
                            try {
                                byteArrayOutputStream.close();
                            } catch (Exception unused4) {
                            }
                            return null;
                        } catch (Throwable th) {
                            th = th;
                            try {
                                objectOutputStream2.close();
                            } catch (Exception unused5) {
                            }
                            try {
                                gZIPOutputStream.close();
                            } catch (Exception unused6) {
                            }
                            try {
                                outputStream.close();
                            } catch (Exception unused7) {
                            }
                            try {
                                byteArrayOutputStream.close();
                                throw th;
                            } catch (Exception unused8) {
                                throw th;
                            }
                        }
                    } else {
                        objectOutputStream = new ObjectOutputStream(outputStream);
                        gZIPOutputStream = null;
                    }
                    try {
                        try {
                            objectOutputStream.writeObject(serializable);
                            try {
                                objectOutputStream.close();
                            } catch (Exception unused9) {
                            }
                            try {
                                gZIPOutputStream.close();
                            } catch (Exception unused10) {
                            }
                            try {
                                outputStream.close();
                            } catch (Exception unused11) {
                            }
                            try {
                                byteArrayOutputStream.close();
                            } catch (Exception unused12) {
                            }
                            try {
                                return new String(byteArrayOutputStream.toByteArray(), "UTF-8");
                            } catch (UnsupportedEncodingException unused13) {
                                return new String(byteArrayOutputStream.toByteArray());
                            }
                        } catch (IOException e2) {
                            e = e2;
                            e.printStackTrace();
                            objectOutputStream.close();
                            gZIPOutputStream.close();
                            outputStream.close();
                            byteArrayOutputStream.close();
                            return null;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        objectOutputStream2 = objectOutputStream;
                        objectOutputStream2.close();
                        gZIPOutputStream.close();
                        outputStream.close();
                        byteArrayOutputStream.close();
                        throw th;
                    }
                } catch (IOException e3) {
                    e = e3;
                    gZIPOutputStream = null;
                    objectOutputStream = null;
                } catch (Throwable th3) {
                    th = th3;
                    gZIPOutputStream = null;
                }
            } catch (IOException e4) {
                e = e4;
                gZIPOutputStream = null;
                objectOutputStream = null;
                outputStream = null;
            } catch (Throwable th4) {
                th = th4;
                gZIPOutputStream = null;
                outputStream = null;
            }
        } catch (IOException e5) {
            e = e5;
            gZIPOutputStream = null;
            objectOutputStream = null;
            byteArrayOutputStream = null;
            outputStream = null;
        } catch (Throwable th5) {
            th = th5;
            gZIPOutputStream = null;
            byteArrayOutputStream = null;
            outputStream = null;
        }
    }

    public static String encodeBytes(byte[] bArr) {
        return encodeBytes(bArr, 0, bArr.length, 0);
    }

    public static String encodeBytes(byte[] bArr, int i) {
        return encodeBytes(bArr, 0, bArr.length, i);
    }

    public static String encodeBytes(byte[] bArr, int i, int i2) {
        return encodeBytes(bArr, i, i2, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16, types: [java.util.zip.GZIPOutputStream] */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14, types: [java.io.ByteArrayOutputStream] */
    /* JADX WARN: Type inference failed for: r3v15, types: [java.io.ByteArrayOutputStream] */
    /* JADX WARN: Type inference failed for: r3v16, types: [java.io.ByteArrayOutputStream, java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5, types: [com.itextpdf.commons.utils.Base64$OutputStream] */
    /* JADX WARN: Type inference failed for: r5v6, types: [com.itextpdf.commons.utils.Base64$OutputStream] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8, types: [com.itextpdf.commons.utils.Base64$OutputStream, java.io.OutputStream] */
    public static String encodeBytes(byte[] bArr, int i, int i2, int i3) throws Throwable {
        int i4;
        GZIPOutputStream gZIPOutputStream;
        int i5 = i3 & 8;
        ?? byteArrayOutputStream = i3 & 2;
        ?? outputStream = 2;
        if (byteArrayOutputStream == 2) {
            ?? r2 = 0;
            r2 = 0;
            r2 = 0;
            try {
                try {
                    byteArrayOutputStream = new ByteArrayOutputStream();
                } catch (Throwable th) {
                    th = th;
                    r2 = 1;
                }
            } catch (IOException e) {
                e = e;
                byteArrayOutputStream = 0;
                gZIPOutputStream = null;
            } catch (Throwable th2) {
                th = th2;
                byteArrayOutputStream = 0;
                outputStream = 0;
            }
            try {
                outputStream = new OutputStream(byteArrayOutputStream, i3 | 1);
                try {
                    gZIPOutputStream = new GZIPOutputStream(outputStream);
                    try {
                        gZIPOutputStream.write(bArr, i, i2);
                        gZIPOutputStream.close();
                        try {
                            gZIPOutputStream.close();
                        } catch (Exception unused) {
                        }
                        try {
                            outputStream.close();
                        } catch (Exception unused2) {
                        }
                        try {
                            byteArrayOutputStream.close();
                        } catch (Exception unused3) {
                        }
                        try {
                            return new String(byteArrayOutputStream.toByteArray(), "UTF-8");
                        } catch (UnsupportedEncodingException unused4) {
                            return new String(byteArrayOutputStream.toByteArray());
                        }
                    } catch (IOException e2) {
                        e = e2;
                        e.printStackTrace();
                        try {
                            gZIPOutputStream.close();
                        } catch (Exception unused5) {
                        }
                        try {
                            outputStream.close();
                        } catch (Exception unused6) {
                        }
                        try {
                            byteArrayOutputStream.close();
                        } catch (Exception unused7) {
                        }
                        return null;
                    }
                } catch (IOException e3) {
                    e = e3;
                    gZIPOutputStream = null;
                } catch (Throwable th3) {
                    th = th3;
                    try {
                        r2.close();
                    } catch (Exception unused8) {
                    }
                    try {
                        outputStream.close();
                    } catch (Exception unused9) {
                    }
                    try {
                        byteArrayOutputStream.close();
                        throw th;
                    } catch (Exception unused10) {
                        throw th;
                    }
                }
            } catch (IOException e4) {
                e = e4;
                gZIPOutputStream = null;
                byteArrayOutputStream = byteArrayOutputStream;
                outputStream = gZIPOutputStream;
                e.printStackTrace();
                gZIPOutputStream.close();
                outputStream.close();
                byteArrayOutputStream.close();
                return null;
            } catch (Throwable th4) {
                th = th4;
                outputStream = 0;
            }
        } else {
            boolean z = i5 == 0;
            int i6 = (i2 * 4) / 3;
            byte[] bArr2 = new byte[(i2 % 3 > 0 ? 4 : 0) + i6 + (z ? i6 / 76 : 0)];
            int i7 = i2 - 2;
            int i8 = 0;
            int i9 = 0;
            int i10 = 0;
            while (i8 < i7) {
                int i11 = i8;
                encode3to4(bArr, i8 + i, 3, bArr2, i9, i3);
                int i12 = i10 + 4;
                if (z && i12 == 76) {
                    bArr2[i9 + 4] = 10;
                    i9++;
                    i10 = 0;
                } else {
                    i10 = i12;
                }
                i8 = i11 + 3;
                i9 += 4;
            }
            int i13 = i8;
            if (i13 < i2) {
                encode3to4(bArr, i13 + i, i2 - i13, bArr2, i9, i3);
                i9 += 4;
            }
            int i14 = i9;
            try {
                i4 = 0;
                try {
                    return new String(bArr2, 0, i14, "UTF-8");
                } catch (UnsupportedEncodingException unused11) {
                    return new String(bArr2, i4, i14);
                }
            } catch (UnsupportedEncodingException unused12) {
                i4 = 0;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int decode4to3(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        byte[] decodabet = getDecodabet(i3);
        int i4 = i + 2;
        byte b = bArr[i4];
        if (b == 61) {
            bArr2[i2] = (byte) ((((decodabet[bArr[i + 1]] & 255) << 12) | ((decodabet[bArr[i]] & 255) << 18)) >>> 16);
            return 1;
        }
        int i5 = i + 3;
        byte b2 = bArr[i5];
        if (b2 == 61) {
            int i6 = ((decodabet[bArr[i + 1]] & 255) << 12) | ((decodabet[bArr[i]] & 255) << 18) | ((decodabet[b] & 255) << 6);
            bArr2[i2] = (byte) (i6 >>> 16);
            bArr2[i2 + 1] = (byte) (i6 >>> 8);
            return 2;
        }
        try {
            int i7 = ((decodabet[b] & 255) << 6) | ((decodabet[bArr[i]] & 255) << 18) | ((decodabet[bArr[i + 1]] & 255) << 12) | (decodabet[b2] & 255);
            bArr2[i2] = (byte) (i7 >> 16);
            bArr2[i2 + 1] = (byte) (i7 >> 8);
            bArr2[i2 + 2] = (byte) i7;
            return 3;
        } catch (Exception unused) {
            System.out.println("" + ((int) bArr[i]) + ": " + ((int) decodabet[bArr[i]]));
            int i8 = i + 1;
            System.out.println("" + ((int) bArr[i8]) + ": " + ((int) decodabet[bArr[i8]]));
            System.out.println("" + ((int) bArr[i4]) + ": " + ((int) decodabet[bArr[i4]]));
            System.out.println("" + ((int) bArr[i5]) + ": " + ((int) decodabet[bArr[i5]]));
            return -1;
        }
    }

    public static byte[] decode(byte[] bArr, int i, int i2, int i3) {
        byte[] decodabet = getDecodabet(i3);
        byte[] bArr2 = new byte[(i2 * 3) / 4];
        byte[] bArr3 = new byte[4];
        int i4 = 0;
        int iDecode4to3 = 0;
        for (int i5 = i; i5 < i + i2; i5++) {
            byte b = (byte) (bArr[i5] & 127);
            byte b2 = decodabet[b];
            if (b2 < -5) {
                System.err.println("Bad Base64 input character at " + i5 + ": " + ((int) bArr[i5]) + "(decimal)");
                return null;
            }
            if (b2 >= -1) {
                int i6 = i4 + 1;
                bArr3[i4] = b;
                if (i6 > 3) {
                    iDecode4to3 += decode4to3(bArr3, 0, bArr2, iDecode4to3, i3);
                    if (b == 61) {
                        break;
                    }
                    i4 = 0;
                } else {
                    i4 = i6;
                }
            }
        }
        byte[] bArr4 = new byte[iDecode4to3];
        System.arraycopy(bArr2, 0, bArr4, 0, iDecode4to3);
        return bArr4;
    }

    public static byte[] decode(String str) {
        return decode(str, 0);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:11|(3:53|12|(4:70|13|68|14))|(3:(8:66|15|(1:17)(1:72)|52|61|20|63|21)|63|21)|18|19|52|61|20) */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] decode(java.lang.String r5, int r6) throws java.lang.Throwable {
        /*
            java.lang.String r0 = "UTF-8"
            byte[] r5 = r5.getBytes(r0)     // Catch: java.io.UnsupportedEncodingException -> L7
            goto Lb
        L7:
            byte[] r5 = r5.getBytes()
        Lb:
            int r0 = r5.length
            r1 = 0
            byte[] r5 = decode(r5, r1, r0, r6)
            if (r5 == 0) goto L79
            int r6 = r5.length
            r0 = 4
            if (r6 < r0) goto L79
            r6 = r5[r1]
            r6 = r6 & 255(0xff, float:3.57E-43)
            r0 = 1
            r0 = r5[r0]
            int r0 = r0 << 8
            r2 = 65280(0xff00, float:9.1477E-41)
            r0 = r0 & r2
            r6 = r6 | r0
            r0 = 35615(0x8b1f, float:4.9907E-41)
            if (r0 != r6) goto L79
            r6 = 2048(0x800, float:2.87E-42)
            byte[] r6 = new byte[r6]
            r0 = 0
            java.io.ByteArrayOutputStream r2 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L66 java.io.IOException -> L73
            r2.<init>()     // Catch: java.lang.Throwable -> L66 java.io.IOException -> L73
            java.io.ByteArrayInputStream r3 = new java.io.ByteArrayInputStream     // Catch: java.lang.Throwable -> L5d java.io.IOException -> L62
            r3.<init>(r5)     // Catch: java.lang.Throwable -> L5d java.io.IOException -> L62
            java.util.zip.GZIPInputStream r4 = new java.util.zip.GZIPInputStream     // Catch: java.lang.Throwable -> L58 java.io.IOException -> L5b
            r4.<init>(r3)     // Catch: java.lang.Throwable -> L58 java.io.IOException -> L5b
        L3e:
            int r0 = r4.read(r6)     // Catch: java.lang.Throwable -> L56 java.io.IOException -> L64
            if (r0 < 0) goto L48
            r2.write(r6, r1, r0)     // Catch: java.lang.Throwable -> L56 java.io.IOException -> L64
            goto L3e
        L48:
            byte[] r5 = r2.toByteArray()     // Catch: java.lang.Throwable -> L56 java.io.IOException -> L64
            r2.close()     // Catch: java.lang.Exception -> L4f
        L4f:
            r4.close()     // Catch: java.lang.Exception -> L52
        L52:
            r3.close()     // Catch: java.lang.Exception -> L79
            goto L79
        L56:
            r5 = move-exception
            goto L60
        L58:
            r5 = move-exception
            r4 = r0
            goto L60
        L5b:
            r4 = r0
            goto L64
        L5d:
            r5 = move-exception
            r3 = r0
            r4 = r3
        L60:
            r0 = r2
            goto L69
        L62:
            r3 = r0
            r4 = r3
        L64:
            r0 = r2
            goto L75
        L66:
            r5 = move-exception
            r3 = r0
            r4 = r3
        L69:
            r0.close()     // Catch: java.lang.Exception -> L6c
        L6c:
            r4.close()     // Catch: java.lang.Exception -> L6f
        L6f:
            r3.close()     // Catch: java.lang.Exception -> L72
        L72:
            throw r5
        L73:
            r3 = r0
            r4 = r3
        L75:
            r0.close()     // Catch: java.lang.Exception -> L4f
            goto L4f
        L79:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.commons.utils.Base64.decode(java.lang.String, int):byte[]");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r4v10, types: [java.io.ObjectInputStream] */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7, types: [java.io.ObjectInputStream] */
    public static Object decodeToObject(String str) throws Throwable {
        ByteArrayInputStream byteArrayInputStream;
        Throwable th;
        ObjectInputStream objectInputStream;
        ?? Decode = decode(str);
        Object object = null;
        try {
            try {
                byteArrayInputStream = new ByteArrayInputStream(Decode);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e) {
            e = e;
            objectInputStream = null;
            byteArrayInputStream = null;
        } catch (ClassNotFoundException e2) {
            e = e2;
            objectInputStream = null;
            byteArrayInputStream = null;
        } catch (Throwable th3) {
            byteArrayInputStream = null;
            th = th3;
            Decode = 0;
        }
        try {
            objectInputStream = new ObjectInputStream(byteArrayInputStream);
            try {
                object = objectInputStream.readObject();
                Decode = objectInputStream;
            } catch (IOException e3) {
                e = e3;
                e.printStackTrace();
                Decode = objectInputStream;
            } catch (ClassNotFoundException e4) {
                e = e4;
                e.printStackTrace();
                Decode = objectInputStream;
            }
        } catch (IOException e5) {
            e = e5;
            objectInputStream = null;
        } catch (ClassNotFoundException e6) {
            e = e6;
            objectInputStream = null;
        } catch (Throwable th4) {
            th = th4;
            Decode = 0;
            try {
                byteArrayInputStream.close();
            } catch (Exception unused) {
            }
            try {
                Decode.close();
                throw th;
            } catch (Exception unused2) {
                throw th;
            }
        }
        try {
            byteArrayInputStream.close();
        } catch (Exception unused3) {
        }
        try {
            Decode.close();
        } catch (Exception unused4) {
        }
        return object;
    }

    public static boolean encodeToFile(byte[] bArr, String str) throws Throwable {
        OutputStream outputStream = null;
        try {
            OutputStream outputStream2 = new OutputStream(new FileOutputStream(str), 1);
            try {
                outputStream2.write(bArr);
                try {
                    outputStream2.close();
                    return true;
                } catch (Exception unused) {
                    return true;
                }
            } catch (IOException unused2) {
                outputStream = outputStream2;
                try {
                    outputStream.close();
                } catch (Exception unused3) {
                }
                return false;
            } catch (Throwable th) {
                th = th;
                outputStream = outputStream2;
                try {
                    outputStream.close();
                } catch (Exception unused4) {
                }
                throw th;
            }
        } catch (IOException unused5) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static boolean decodeToFile(String str, String str2) throws Throwable {
        OutputStream outputStream;
        OutputStream outputStream2 = null;
        try {
            outputStream = new OutputStream(new FileOutputStream(str2), 0);
        } catch (IOException unused) {
        } catch (Throwable th) {
            th = th;
        }
        try {
            outputStream.write(str.getBytes("UTF-8"));
            try {
                outputStream.close();
            } catch (Exception unused2) {
            }
            return true;
        } catch (IOException unused3) {
            outputStream2 = outputStream;
            try {
                outputStream2.close();
                return false;
            } catch (Exception unused4) {
                return false;
            }
        } catch (Throwable th2) {
            th = th2;
            outputStream2 = outputStream;
            try {
                outputStream2.close();
            } catch (Exception unused5) {
            }
            throw th;
        }
    }

    public static byte[] decodeFromFile(String str) throws Throwable {
        byte[] bArr;
        InputStream inputStream = null;
        byte[] bArr2 = null;
        InputStream inputStream2 = null;
        try {
            try {
                File file = new File(str);
                if (file.length() > 2147483647L) {
                    System.err.println("File is too big for this convenience method (" + file.length() + " bytes).");
                    return null;
                }
                byte[] bArr3 = new byte[(int) file.length()];
                InputStream inputStream3 = new InputStream(new BufferedInputStream(new FileInputStream(file)), 0);
                int i = 0;
                while (true) {
                    try {
                        int i2 = inputStream3.read(bArr3, i, 4096);
                        if (i2 < 0) {
                            bArr2 = new byte[i];
                            System.arraycopy(bArr3, 0, bArr2, 0, i);
                            try {
                                inputStream3.close();
                                return bArr2;
                            } catch (Exception unused) {
                                return bArr2;
                            }
                        }
                        i += i2;
                    } catch (IOException unused2) {
                        bArr = bArr2;
                        inputStream = inputStream3;
                        System.err.println("Error decoding from file " + str);
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Exception unused3) {
                            }
                        }
                        return bArr;
                    } catch (Throwable th) {
                        th = th;
                        inputStream2 = inputStream3;
                        if (inputStream2 != null) {
                            try {
                                inputStream2.close();
                            } catch (Exception unused4) {
                            }
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException unused5) {
            bArr = null;
        }
    }

    /* JADX WARN: Not initialized variable reg: 3, insn: 0x0062: MOVE (r0 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY]), block:B:19:0x0062 */
    public static String encodeFromFile(String str) throws Throwable {
        InputStream inputStream;
        InputStream inputStream2;
        InputStream inputStream3 = null;
        try {
            try {
                File file = new File(str);
                byte[] bArr = new byte[Math.max((int) (file.length() * 1.4d), 40)];
                inputStream = new InputStream(new BufferedInputStream(new FileInputStream(file)), 1);
                int i = 0;
                while (true) {
                    try {
                        int i2 = inputStream.read(bArr, i, 4096);
                        if (i2 < 0) {
                            break;
                        }
                        i += i2;
                    } catch (IOException unused) {
                        System.err.println("Error encoding from file " + str);
                        try {
                            inputStream.close();
                            return null;
                        } catch (Exception unused2) {
                            return null;
                        }
                    }
                }
                String str2 = new String(bArr, 0, i, "UTF-8");
                try {
                    inputStream.close();
                } catch (Exception unused3) {
                }
                return str2;
            } catch (Throwable th) {
                th = th;
                inputStream3 = inputStream2;
                try {
                    inputStream3.close();
                } catch (Exception unused4) {
                }
                throw th;
            }
        } catch (IOException unused5) {
            inputStream = null;
        } catch (Throwable th2) {
            th = th2;
            inputStream3.close();
            throw th;
        }
    }

    public static void encodeFileToFile(String str, String str2) throws Throwable {
        BufferedOutputStream bufferedOutputStream;
        String strEncodeFromFile = encodeFromFile(str);
        BufferedOutputStream bufferedOutputStream2 = null;
        try {
            try {
                try {
                    bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(str2));
                } catch (Throwable th) {
                    th = th;
                }
            } catch (IOException e) {
                e = e;
            }
            try {
                bufferedOutputStream.write(strEncodeFromFile.getBytes(CharEncoding.US_ASCII));
                bufferedOutputStream.close();
            } catch (IOException e2) {
                e = e2;
                bufferedOutputStream2 = bufferedOutputStream;
                e.printStackTrace();
                bufferedOutputStream2.close();
            } catch (Throwable th2) {
                th = th2;
                bufferedOutputStream2 = bufferedOutputStream;
                try {
                    bufferedOutputStream2.close();
                } catch (Exception unused) {
                }
                throw th;
            }
        } catch (Exception unused2) {
        }
    }

    public static void decodeFileToFile(String str, String str2) throws Throwable {
        BufferedOutputStream bufferedOutputStream;
        byte[] bArrDecodeFromFile = decodeFromFile(str);
        BufferedOutputStream bufferedOutputStream2 = null;
        try {
            try {
                try {
                    bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(str2));
                } catch (Exception unused) {
                    return;
                }
            } catch (IOException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            bufferedOutputStream.write(bArrDecodeFromFile);
            bufferedOutputStream.close();
        } catch (IOException e2) {
            e = e2;
            bufferedOutputStream2 = bufferedOutputStream;
            e.printStackTrace();
            bufferedOutputStream2.close();
        } catch (Throwable th2) {
            th = th2;
            bufferedOutputStream2 = bufferedOutputStream;
            try {
                bufferedOutputStream2.close();
            } catch (Exception unused2) {
            }
            throw th;
        }
    }

    public static class InputStream extends FilterInputStream {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private byte[] alphabet;
        private boolean breakLines;
        private byte[] buffer;
        private int bufferLength;
        private byte[] decodabet;
        private boolean encode;
        private int lineLength;
        private int numSigBytes;
        private int options;
        private int position;

        public InputStream(java.io.InputStream inputStream) {
            this(inputStream, 0);
        }

        public InputStream(java.io.InputStream inputStream, int i) {
            super(inputStream);
            this.breakLines = (i & 8) != 8;
            boolean z = (i & 1) == 1;
            this.encode = z;
            int i2 = z ? 4 : 3;
            this.bufferLength = i2;
            this.buffer = new byte[i2];
            this.position = -1;
            this.lineLength = 0;
            this.options = i;
            this.alphabet = Base64.getAlphabet(i);
            this.decodabet = Base64.getDecodabet(i);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() throws IOException {
            int i;
            if (this.position < 0) {
                if (this.encode) {
                    byte[] bArr = new byte[3];
                    int i2 = 0;
                    for (int i3 = 0; i3 < 3; i3++) {
                        try {
                            int i4 = this.in.read();
                            if (i4 >= 0) {
                                bArr[i3] = (byte) i4;
                                i2++;
                            }
                        } catch (IOException e) {
                            if (i3 == 0) {
                                throw e;
                            }
                        }
                    }
                    if (i2 <= 0) {
                        return -1;
                    }
                    Base64.encode3to4(bArr, 0, i2, this.buffer, 0, this.options);
                    this.position = 0;
                    this.numSigBytes = 4;
                } else {
                    byte[] bArr2 = new byte[4];
                    int i5 = 0;
                    while (i5 < 4) {
                        do {
                            i = this.in.read();
                            if (i < 0) {
                                break;
                            }
                        } while (this.decodabet[i & 127] <= -5);
                        if (i < 0) {
                            break;
                        }
                        bArr2[i5] = (byte) i;
                        i5++;
                    }
                    if (i5 != 4) {
                        if (i5 == 0) {
                            return -1;
                        }
                        throw new IOException("improperly.padded.base64.input");
                    }
                    this.numSigBytes = Base64.decode4to3(bArr2, 0, this.buffer, 0, this.options);
                    this.position = 0;
                }
            }
            int i6 = this.position;
            if (i6 >= this.numSigBytes) {
                return -1;
            }
            if (this.encode && this.breakLines && this.lineLength >= 76) {
                this.lineLength = 0;
                return 10;
            }
            this.lineLength++;
            byte[] bArr3 = this.buffer;
            int i7 = i6 + 1;
            this.position = i7;
            byte b = bArr3[i6];
            if (i7 >= this.bufferLength) {
                this.position = -1;
            }
            return b & 255;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            int i3 = 0;
            while (true) {
                if (i3 >= i2) {
                    break;
                }
                int i4 = read();
                if (i4 >= 0) {
                    bArr[i + i3] = (byte) i4;
                    i3++;
                } else if (i3 == 0) {
                    return -1;
                }
            }
            return i3;
        }
    }

    public static class OutputStream extends FilterOutputStream {
        private byte[] alphabet;

        /* JADX INFO: renamed from: b4 */
        private byte[] f2850b4;
        private boolean breakLines;
        private byte[] buffer;
        private int bufferLength;
        private byte[] decodabet;
        private boolean encode;
        private int lineLength;
        private int options;
        private int position;
        private boolean suspendEncoding;

        public OutputStream(java.io.OutputStream outputStream) {
            this(outputStream, 1);
        }

        public OutputStream(java.io.OutputStream outputStream, int i) {
            super(outputStream);
            this.breakLines = (i & 8) != 8;
            boolean z = (i & 1) == 1;
            this.encode = z;
            int i2 = z ? 3 : 4;
            this.bufferLength = i2;
            this.buffer = new byte[i2];
            this.position = 0;
            this.lineLength = 0;
            this.suspendEncoding = false;
            this.f2850b4 = new byte[4];
            this.options = i;
            this.alphabet = Base64.getAlphabet(i);
            this.decodabet = Base64.getDecodabet(i);
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public void write(int i) throws IOException {
            if (this.suspendEncoding) {
                ((FilterOutputStream) this).out.write(i);
                return;
            }
            if (this.encode) {
                byte[] bArr = this.buffer;
                int i2 = this.position;
                int i3 = i2 + 1;
                this.position = i3;
                bArr[i2] = (byte) i;
                if (i3 >= this.bufferLength) {
                    this.out.write(Base64.encode3to4(this.f2850b4, this.buffer, this.bufferLength, this.options));
                    int i4 = this.lineLength + 4;
                    this.lineLength = i4;
                    if (this.breakLines && i4 >= 76) {
                        this.out.write(10);
                        this.lineLength = 0;
                    }
                    this.position = 0;
                    return;
                }
                return;
            }
            byte b = this.decodabet[i & 127];
            if (b <= -5) {
                if (b != -5) {
                    throw new IOException("invalid.character.in.base64.data");
                }
                return;
            }
            byte[] bArr2 = this.buffer;
            int i5 = this.position;
            int i6 = i5 + 1;
            this.position = i6;
            bArr2[i5] = (byte) i;
            if (i6 >= this.bufferLength) {
                this.out.write(this.f2850b4, 0, Base64.decode4to3(bArr2, 0, this.f2850b4, 0, this.options));
                this.position = 0;
            }
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) throws IOException {
            if (this.suspendEncoding) {
                ((FilterOutputStream) this).out.write(bArr, i, i2);
                return;
            }
            for (int i3 = 0; i3 < i2; i3++) {
                write(bArr[i + i3]);
            }
        }

        public void flushBase64() throws IOException {
            if (this.position > 0) {
                if (this.encode) {
                    this.out.write(Base64.encode3to4(this.f2850b4, this.buffer, this.position, this.options));
                    this.position = 0;
                    return;
                }
                throw new IOException("base64.input.not.properly.padded");
            }
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            flushBase64();
            super.close();
            this.buffer = null;
            this.out = null;
        }

        public void suspendEncoding() throws IOException {
            flushBase64();
            this.suspendEncoding = true;
        }

        public void resumeEncoding() {
            this.suspendEncoding = false;
        }
    }
}
