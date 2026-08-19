package com.itextpdf.p017io.source;

import com.facebook.internal.ServerProtocol;
import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.forms.xfdf.XfdfConstants;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import com.itextpdf.svg.SvgConstants;
import com.laborbook.keep.screen.calendar.utils.Constants;
import java.io.Closeable;
import java.io.IOException;
import java.util.Arrays;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class PdfTokenizer implements Closeable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final RandomAccessFileOrArray file;
    protected int generation;
    protected boolean hexString;
    protected int reference;
    protected TokenType type;
    public static final boolean[] delims = {true, true, false, false, false, false, false, false, false, false, true, true, false, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, true, false, false, true, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false};
    public static final byte[] Obj = ByteUtils.getIsoBytes("obj");

    /* JADX INFO: renamed from: R */
    public static final byte[] f2902R = ByteUtils.getIsoBytes(SvgConstants.Attributes.PATH_DATA_CATMULL_CURVE);
    public static final byte[] Xref = ByteUtils.getIsoBytes("xref");
    public static final byte[] Startxref = ByteUtils.getIsoBytes("startxref");
    public static final byte[] Stream = ByteUtils.getIsoBytes("stream");
    public static final byte[] Trailer = ByteUtils.getIsoBytes("trailer");

    /* JADX INFO: renamed from: N */
    public static final byte[] f2901N = ByteUtils.getIsoBytes("n");

    /* JADX INFO: renamed from: F */
    public static final byte[] f2900F = ByteUtils.getIsoBytes(XfdfConstants.f2852F);
    public static final byte[] Null = ByteUtils.getIsoBytes(Constants.ATTENDANCE_STATUS_NULL);
    public static final byte[] True = ByteUtils.getIsoBytes(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
    public static final byte[] False = ByteUtils.getIsoBytes("false");
    private boolean closeStream = true;
    protected ByteBuffer outBuf = new ByteBuffer();

    public enum TokenType {
        Number,
        String,
        Name,
        Comment,
        StartArray,
        EndArray,
        StartDic,
        EndDic,
        Ref,
        Obj,
        EndObj,
        Other,
        EndOfFile
    }

    protected static boolean isDelimiter(int i) {
        return i == 40 || i == 41 || i == 60 || i == 62 || i == 91 || i == 93 || i == 47 || i == 37;
    }

    protected static boolean isWhitespace(int i, boolean z) {
        return (z && i == 0) || i == 9 || i == 10 || i == 12 || i == 13 || i == 32;
    }

    public PdfTokenizer(RandomAccessFileOrArray randomAccessFileOrArray) {
        this.file = randomAccessFileOrArray;
    }

    public void seek(long j) {
        this.file.seek(j);
    }

    public void readFully(byte[] bArr) throws IOException {
        this.file.readFully(bArr);
    }

    public long getPosition() {
        return this.file.getPosition();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.closeStream) {
            this.file.close();
        }
    }

    public long length() {
        return this.file.length();
    }

    public int read() throws IOException {
        return this.file.read();
    }

    public String readString(int i) throws IOException {
        int i2;
        StringBuilder sb = new StringBuilder();
        while (true) {
            int i3 = i - 1;
            if (i <= 0 || (i2 = read()) == -1) {
                break;
            }
            sb.append((char) i2);
            i = i3;
        }
        return sb.toString();
    }

    public TokenType getTokenType() {
        return this.type;
    }

    public byte[] getByteContent() {
        return this.outBuf.toByteArray();
    }

    public String getStringValue() {
        return new String(this.outBuf.getInternalBuffer(), 0, this.outBuf.size());
    }

    public byte[] getDecodedStringContent() {
        return decodeStringContent(this.outBuf.getInternalBuffer(), 0, this.outBuf.size() - 1, isHexString());
    }

    public boolean tokenValueEqualsTo(byte[] bArr) {
        int length;
        if (bArr == null || this.outBuf.size() != (length = bArr.length)) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (bArr[i] != this.outBuf.getInternalBuffer()[i]) {
                return false;
            }
        }
        return true;
    }

    public int getObjNr() {
        return this.reference;
    }

    public int getGenNr() {
        return this.generation;
    }

    public void backOnePosition(int i) {
        if (i != -1) {
            this.file.pushBack((byte) i);
        }
    }

    public int getHeaderOffset() throws IOException {
        String string = readString(1024);
        int iIndexOf = string.indexOf("%PDF-");
        if (iIndexOf >= 0 || (iIndexOf = string.indexOf("%FDF-")) >= 0) {
            return iIndexOf;
        }
        throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.PdfHeaderNotFound, this);
    }

    public String checkPdfHeader() throws IOException {
        this.file.seek(0L);
        String string = readString(1024);
        int iIndexOf = string.indexOf("%PDF-");
        if (iIndexOf != 0) {
            throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.PdfHeaderNotFound, this);
        }
        return string.substring(iIndexOf + 1, iIndexOf + 8);
    }

    public void checkFdfHeader() throws IOException {
        this.file.seek(0L);
        if (readString(1024).indexOf("%FDF-") != 0) {
            throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.FdfStartxrefNotFound, this);
        }
    }

    public long getStartxref() throws IOException {
        long j = 1024;
        long length = this.file.length() - j;
        if (length < 1) {
            length = 1;
        }
        while (length > 0) {
            this.file.seek(length);
            int iLastIndexOf = readString(1024).lastIndexOf("startxref");
            if (iLastIndexOf >= 0) {
                return length + ((long) iLastIndexOf);
            }
            length = (length - j) + 9;
        }
        throw new com.itextpdf.p017io.exceptions.IOException("PDF startxref not found.", this);
    }

    public void nextValidToken() throws IOException {
        byte[] byteContent = null;
        int i = 0;
        long position = 0;
        byte[] byteContent2 = null;
        while (nextToken()) {
            if (this.type != TokenType.Comment) {
                if (i != 0) {
                    if (i != 1) {
                        if (i == 2) {
                            if (this.type == TokenType.Other) {
                                if (tokenValueEqualsTo(f2902R)) {
                                    this.type = TokenType.Ref;
                                    try {
                                        this.reference = Integer.parseInt(new String(byteContent));
                                        this.generation = Integer.parseInt(new String(byteContent2));
                                        return;
                                    } catch (Exception unused) {
                                        LoggerFactory.getLogger((Class<?>) PdfTokenizer.class).error(MessageFormatUtil.format(IoLogMessageConstant.INVALID_INDIRECT_REFERENCE, new String(byteContent), new String(byteContent2)));
                                        this.reference = -1;
                                        this.generation = 0;
                                        return;
                                    }
                                }
                                if (tokenValueEqualsTo(Obj)) {
                                    this.type = TokenType.Obj;
                                    this.reference = Integer.parseInt(new String(byteContent));
                                    this.generation = Integer.parseInt(new String(byteContent2));
                                    return;
                                }
                            }
                            this.file.seek(position);
                            this.type = TokenType.Number;
                            this.outBuf.reset().append(byteContent);
                            return;
                        }
                    } else {
                        if (this.type != TokenType.Number) {
                            this.file.seek(position);
                            this.type = TokenType.Number;
                            this.outBuf.reset().append(byteContent);
                            return;
                        }
                        byteContent2 = getByteContent();
                    }
                } else {
                    if (this.type != TokenType.Number) {
                        return;
                    }
                    position = this.file.getPosition();
                    byteContent = getByteContent();
                }
                i++;
            }
        }
        if (i == 1) {
            this.type = TokenType.Number;
            this.outBuf.reset().append(byteContent);
        }
    }

    public boolean nextToken() throws IOException {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        this.outBuf.reset();
        do {
            i = this.file.read();
            if (i == -1) {
                break;
            }
        } while (isWhitespace(i));
        boolean z = false;
        if (i == -1) {
            this.type = TokenType.EndOfFile;
            return false;
        }
        if (i == 37) {
            this.type = TokenType.Comment;
            do {
                i2 = this.file.read();
                if (i2 == -1 || i2 == 13) {
                    break;
                }
            } while (i2 != 10);
        } else if (i == 40) {
            this.type = TokenType.String;
            this.hexString = false;
            int i8 = 0;
            while (true) {
                i3 = this.file.read();
                if (i3 == -1) {
                    break;
                }
                if (i3 == 40) {
                    i8++;
                } else if (i3 == 41) {
                    i8--;
                    if (i8 == -1) {
                        break;
                    }
                } else if (i3 == 92) {
                    this.outBuf.append(92);
                    i3 = this.file.read();
                    if (i3 < 0) {
                        break;
                    }
                } else {
                    continue;
                }
                this.outBuf.append(i3);
            }
            if (i3 == -1) {
                throwError(com.itextpdf.p017io.exceptions.IOException.ErrorReadingString, new Object[0]);
            }
        } else if (i == 47) {
            this.type = TokenType.Name;
            while (true) {
                i4 = this.file.read();
                if (delims[i4 + 1]) {
                    break;
                }
                this.outBuf.append(i4);
            }
            backOnePosition(i4);
        } else if (i == 60) {
            int hex = this.file.read();
            if (hex == 60) {
                this.type = TokenType.StartDic;
            } else {
                this.type = TokenType.String;
                this.hexString = true;
                int hex2 = 0;
                while (true) {
                    if (isWhitespace(hex)) {
                        hex = this.file.read();
                    } else {
                        if (hex == 62) {
                            break;
                        }
                        this.outBuf.append(hex);
                        hex = ByteBuffer.getHex(hex);
                        if (hex < 0) {
                            break;
                        }
                        hex2 = this.file.read();
                        while (isWhitespace(hex2)) {
                            hex2 = this.file.read();
                        }
                        if (hex2 == 62) {
                            break;
                        }
                        this.outBuf.append(hex2);
                        hex2 = ByteBuffer.getHex(hex2);
                        if (hex2 < 0) {
                            break;
                        }
                        hex = this.file.read();
                    }
                }
                if (hex < 0 || hex2 < 0) {
                    throwError(com.itextpdf.p017io.exceptions.IOException.ErrorReadingString, new Object[0]);
                }
            }
        } else if (i == 62) {
            if (this.file.read() != 62) {
                throwError(com.itextpdf.p017io.exceptions.IOException.GtNotExpected, new Object[0]);
            }
            this.type = TokenType.EndDic;
        } else if (i == 91) {
            this.type = TokenType.StartArray;
        } else if (i != 93) {
            if (i == 45 || i == 43 || i == 46 || (i >= 48 && i <= 57)) {
                this.type = TokenType.Number;
                if (i == 45) {
                    i6 = 0;
                    do {
                        i6++;
                        i5 = this.file.read();
                    } while (i5 == 45);
                    this.outBuf.append(45);
                } else {
                    this.outBuf.append(i);
                    i5 = this.file.read();
                    i6 = 0;
                }
                while (i5 >= 48 && i5 <= 57) {
                    this.outBuf.append(i5);
                    i5 = this.file.read();
                }
                if (i5 == 46) {
                    this.outBuf.append(i5);
                    i7 = this.file.read();
                    if (i7 == 45) {
                        i7 = this.file.read();
                        z = true;
                    }
                    while (i7 >= 48 && i7 <= 57) {
                        if (!z) {
                            this.outBuf.append(i7);
                        }
                        i7 = this.file.read();
                    }
                    z = true;
                } else {
                    i7 = i5;
                }
                if (i6 > 1 && !z) {
                    this.outBuf.reset();
                    this.outBuf.append(48);
                }
                i = i7;
            } else {
                this.type = TokenType.Other;
                do {
                    this.outBuf.append(i);
                    i = this.file.read();
                } while (!delims[i + 1]);
            }
            if (i != -1) {
                backOnePosition(i);
            }
        } else {
            this.type = TokenType.EndArray;
        }
        return true;
    }

    public long getLongValue() {
        return Long.parseLong(getStringValue());
    }

    public int getIntValue() {
        return Integer.parseInt(getStringValue());
    }

    public boolean isHexString() {
        return this.hexString;
    }

    public boolean isCloseStream() {
        return this.closeStream;
    }

    public void setCloseStream(boolean z) {
        this.closeStream = z;
    }

    public RandomAccessFileOrArray getSafeFile() {
        return this.file.createView();
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00cf A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x002d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected static byte[] decodeStringContent(byte[] r8, int r9, int r10, boolean r11) {
        /*
            Method dump skipped, instruction units count: 217
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.p017io.source.PdfTokenizer.decodeStringContent(byte[], int, int, boolean):byte[]");
    }

    public static byte[] decodeStringContent(byte[] bArr, boolean z) {
        return decodeStringContent(bArr, 0, bArr.length - 1, z);
    }

    public static boolean isWhitespace(int i) {
        return isWhitespace(i, true);
    }

    protected static boolean isDelimiterWhitespace(int i) {
        return delims[i + 1];
    }

    public void throwError(String str, Object... objArr) {
        throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException.ErrorAtFilePointer1, (Throwable) new com.itextpdf.p017io.exceptions.IOException(str).setMessageParams(objArr)).setMessageParams(Long.valueOf(this.file.getPosition()));
    }

    public static boolean checkTrailer(ByteBuffer byteBuffer) {
        if (Trailer.length > byteBuffer.size()) {
            return false;
        }
        int i = 0;
        while (true) {
            byte[] bArr = Trailer;
            if (i >= bArr.length) {
                return true;
            }
            if (bArr[i] != byteBuffer.get(i)) {
                return false;
            }
            i++;
        }
    }

    public boolean readLineSegment(ByteBuffer byteBuffer) throws IOException {
        return readLineSegment(byteBuffer, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0045  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean readLineSegment(com.itextpdf.p017io.source.ByteBuffer r9, boolean r10) throws java.io.IOException {
        /*
            r8 = this;
        L0:
            int r0 = r8.read()
            boolean r1 = isWhitespace(r0, r10)
            if (r1 == 0) goto Lb
            goto L0
        Lb:
            r10 = 0
            r1 = r10
            r2 = r1
        Le:
            r3 = 13
            r4 = -1
            r5 = 10
            r6 = 1
            if (r1 != 0) goto L5a
            if (r0 == r4) goto L45
            r4 = 32
            if (r0 == r4) goto L3c
            r4 = 9
            if (r0 == r4) goto L3c
            if (r0 == r5) goto L45
            r4 = 12
            if (r0 == r4) goto L3c
            if (r0 == r3) goto L2e
            byte r2 = (byte) r0
            r9.append(r2)
            r2 = r10
            goto L46
        L2e:
            long r3 = r8.getPosition()
            int r1 = r8.read()
            if (r1 == r5) goto L45
            r8.seek(r3)
            goto L45
        L3c:
            if (r2 == 0) goto L3f
            goto L46
        L3f:
            byte r2 = (byte) r0
            r9.append(r2)
            r2 = r6
            goto L46
        L45:
            r1 = r6
        L46:
            if (r1 != 0) goto L58
            int r3 = r9.size()
            int r4 = r9.capacity()
            if (r3 != r4) goto L53
            goto L58
        L53:
            int r0 = r8.read()
            goto Le
        L58:
            r1 = r6
            goto Le
        L5a:
            int r1 = r9.size()
            int r2 = r9.capacity()
            if (r1 != r2) goto L81
            r1 = r10
        L65:
            if (r1 != 0) goto L81
            int r0 = r8.read()
            if (r0 == r4) goto L7f
            if (r0 == r5) goto L7f
            if (r0 == r3) goto L72
            goto L65
        L72:
            long r1 = r8.getPosition()
            int r7 = r8.read()
            if (r7 == r5) goto L7f
            r8.seek(r1)
        L7f:
            r1 = r6
            goto L65
        L81:
            if (r0 != r4) goto L89
            boolean r9 = r9.isEmpty()
            if (r9 != 0) goto L8a
        L89:
            r10 = r6
        L8a:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.p017io.source.PdfTokenizer.readLineSegment(com.itextpdf.io.source.ByteBuffer, boolean):boolean");
    }

    public static int[] checkObjectStart(PdfTokenizer pdfTokenizer) {
        try {
            pdfTokenizer.seek(0L);
            if (pdfTokenizer.nextToken() && pdfTokenizer.getTokenType() == TokenType.Number) {
                int intValue = pdfTokenizer.getIntValue();
                if (pdfTokenizer.nextToken() && pdfTokenizer.getTokenType() == TokenType.Number) {
                    int intValue2 = pdfTokenizer.getIntValue();
                    if (pdfTokenizer.nextToken() && Arrays.equals(Obj, pdfTokenizer.getByteContent())) {
                        return new int[]{intValue, intValue2};
                    }
                    return null;
                }
            }
        } catch (Exception unused) {
        }
        return null;
    }
}
