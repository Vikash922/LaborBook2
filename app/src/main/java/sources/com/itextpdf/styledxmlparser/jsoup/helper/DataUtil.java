package com.itextpdf.styledxmlparser.jsoup.helper;

import com.itextpdf.styledxmlparser.jsoup.PortUtil;
import com.itextpdf.styledxmlparser.jsoup.internal.ConstrainableInputStream;
import com.itextpdf.styledxmlparser.jsoup.internal.Normalizer;
import com.itextpdf.styledxmlparser.jsoup.internal.StringUtil;
import com.itextpdf.styledxmlparser.jsoup.nodes.Document;
import com.itextpdf.styledxmlparser.jsoup.parser.Parser;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Locale;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPInputStream;
import org.shadow.apache.commons.lang3.CharEncoding;

/* JADX INFO: loaded from: classes6.dex */
public final class DataUtil {
    public static final Charset UTF_8;
    static final int boundaryLength = 32;
    static final int bufferSize = 32768;
    private static final Pattern charsetPattern = Pattern.compile("(?i)\\bcharset=\\s*(?:[\"'])?([^\\s,;\"']*)");
    static final String defaultCharsetName;
    private static final int firstReadBufferSize = 5120;
    private static final char[] mimeBoundaryChars;

    static {
        Charset charsetForName = Charset.forName("UTF-8");
        UTF_8 = charsetForName;
        defaultCharsetName = charsetForName.name();
        mimeBoundaryChars = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
    }

    private DataUtil() {
    }

    public static Document load(File file, String str, String str2) throws IOException {
        InputStream fileInputStream = new FileInputStream(file);
        String strLowerCase = Normalizer.lowerCase(file.getName());
        if (strLowerCase.endsWith(".gz") || strLowerCase.endsWith(".z")) {
            boolean z = fileInputStream.read() == 31 && fileInputStream.read() == 139;
            fileInputStream.close();
            fileInputStream = z ? new GZIPInputStream(new FileInputStream(file)) : new FileInputStream(file);
        }
        return parseInputStream(fileInputStream, str, str2, Parser.htmlParser());
    }

    public static Document load(InputStream inputStream, String str, String str2) throws IOException {
        return parseInputStream(inputStream, str, str2, Parser.htmlParser());
    }

    public static Document load(InputStream inputStream, String str, String str2, Parser parser) throws IOException {
        return parseInputStream(inputStream, str, str2, parser);
    }

    static void crossStreams(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[32768];
        while (true) {
            int i = inputStream.read(bArr);
            if (i == -1) {
                return;
            } else {
                outputStream.write(bArr, 0, i);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00ac  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static com.itextpdf.styledxmlparser.jsoup.nodes.Document parseInputStream(java.io.InputStream r12, java.lang.String r13, java.lang.String r14, com.itextpdf.styledxmlparser.jsoup.parser.Parser r15) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.styledxmlparser.jsoup.helper.DataUtil.parseInputStream(java.io.InputStream, java.lang.String, java.lang.String, com.itextpdf.styledxmlparser.jsoup.parser.Parser):com.itextpdf.styledxmlparser.jsoup.nodes.Document");
    }

    public static ByteBuffer readToByteBuffer(InputStream inputStream, int i) throws IOException {
        Validate.isTrue(i >= 0, "maxSize must be 0 (unlimited) or larger");
        return ConstrainableInputStream.wrap(inputStream, 32768, i).readToByteBuffer(i);
    }

    static ByteBuffer emptyByteBuffer() {
        return ByteBuffer.allocate(0);
    }

    static String getCharsetFromContentType(String str) {
        if (str == null) {
            return null;
        }
        Matcher matcher = charsetPattern.matcher(str);
        if (matcher.find()) {
            return validateCharset(matcher.group(1).trim().replace("charset=", ""));
        }
        return null;
    }

    private static String validateCharset(String str) {
        if (str != null && str.length() != 0) {
            String strReplaceAll = str.trim().replaceAll("[\"']", "");
            if (PortUtil.charsetIsSupported(strReplaceAll)) {
                return strReplaceAll;
            }
            String upperCase = strReplaceAll.toUpperCase(Locale.ENGLISH);
            if (PortUtil.charsetIsSupported(upperCase)) {
                return upperCase;
            }
        }
        return null;
    }

    static String mimeBoundary() {
        StringBuilder sbBorrowBuilder = StringUtil.borrowBuilder();
        Random random = new Random();
        for (int i = 0; i < 32; i++) {
            char[] cArr = mimeBoundaryChars;
            sbBorrowBuilder.append(cArr[random.nextInt(cArr.length)]);
        }
        return StringUtil.releaseBuilder(sbBorrowBuilder);
    }

    private static BomCharset detectCharsetFromBom(ByteBuffer byteBuffer) {
        byteBuffer.mark();
        byte[] bArr = new byte[4];
        if (byteBuffer.remaining() >= 4) {
            byteBuffer.get(bArr);
            byteBuffer.rewind();
        }
        byte b = bArr[0];
        if ((b == 0 && bArr[1] == 0 && bArr[2] == -2 && bArr[3] == -1) || (b == -1 && bArr[1] == -2 && bArr[2] == 0 && bArr[3] == 0)) {
            return new BomCharset("UTF-32", false);
        }
        if ((b == -2 && bArr[1] == -1) || (b == -1 && bArr[1] == -2)) {
            return new BomCharset(CharEncoding.UTF_16, false);
        }
        if (b == -17 && bArr[1] == -69 && bArr[2] == -65) {
            return new BomCharset("UTF-8", true);
        }
        return null;
    }

    private static class BomCharset {
        private final String charset;
        private final boolean offset;

        public BomCharset(String str, boolean z) {
            this.charset = str;
            this.offset = z;
        }
    }
}
