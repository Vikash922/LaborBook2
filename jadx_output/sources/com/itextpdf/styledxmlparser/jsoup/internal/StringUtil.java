package com.itextpdf.styledxmlparser.jsoup.internal;

import com.google.firebase.sessions.settings.RemoteSettings;
import com.itextpdf.styledxmlparser.jsoup.helper.Validate;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Stack;
import java.util.regex.Pattern;
import org.shadow.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes6.dex */
public final class StringUtil {
    private static final int MaxCachedBuilderSize = 8192;
    private static final int MaxIdleBuilders = 8;
    private static final int maxPaddingWidth = 30;
    static final String[] padding = {"", StringUtils.SPACE, "  ", "   ", "    ", "     ", "      ", "       ", "        ", "         ", "          ", "           ", "            ", "             ", "              ", "               ", "                ", "                 ", "                  ", "                   ", "                    "};
    private static Pattern extraDotSegmentsPattern = Pattern.compile("^/((\\.{1,2}/)+)");
    private static final ThreadLocal<Stack<StringBuilder>> threadLocalBuilders = new ThreadLocal<Stack<StringBuilder>>() { // from class: com.itextpdf.styledxmlparser.jsoup.internal.StringUtil.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public Stack<StringBuilder> initialValue() {
            return new Stack<>();
        }
    };

    public static boolean isActuallyWhitespace(int i) {
        return i == 32 || i == 9 || i == 10 || i == 12 || i == 13 || i == 160;
    }

    public static boolean isInvisibleChar(int i) {
        return i == 8203 || i == 173;
    }

    public static boolean isWhitespace(int i) {
        return i == 32 || i == 9 || i == 10 || i == 12 || i == 13;
    }

    public static String join(Collection<?> collection, String str) {
        return join(collection.iterator(), str);
    }

    public static String join(Iterator<?> it, String str) {
        if (!it.hasNext()) {
            return "";
        }
        String string = it.next().toString();
        if (!it.hasNext()) {
            return string;
        }
        StringJoiner stringJoiner = new StringJoiner(str);
        stringJoiner.add(string);
        while (it.hasNext()) {
            stringJoiner.add(it.next());
        }
        return stringJoiner.complete();
    }

    public static String join(String[] strArr, String str) {
        return join(Arrays.asList(strArr), str);
    }

    public static class StringJoiner {
        final String separator;

        /* JADX INFO: renamed from: sb */
        StringBuilder f3311sb = StringUtil.borrowBuilder();
        boolean first = true;

        public StringJoiner(String str) {
            this.separator = str;
        }

        public StringJoiner add(Object obj) {
            Validate.notNull(this.f3311sb);
            if (!this.first) {
                this.f3311sb.append(this.separator);
            }
            this.f3311sb.append(obj);
            this.first = false;
            return this;
        }

        public StringJoiner append(Object obj) {
            Validate.notNull(this.f3311sb);
            this.f3311sb.append(obj);
            return this;
        }

        public String complete() {
            String strReleaseBuilder = StringUtil.releaseBuilder(this.f3311sb);
            this.f3311sb = null;
            return strReleaseBuilder;
        }
    }

    public static String padding(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("width must be > 0");
        }
        String[] strArr = padding;
        if (i < strArr.length) {
            return strArr[i];
        }
        int iMin = Math.min(i, 30);
        char[] cArr = new char[iMin];
        for (int i2 = 0; i2 < iMin; i2++) {
            cArr[i2] = ' ';
        }
        return String.valueOf(cArr);
    }

    public static boolean isBlank(String str) {
        if (str != null && str.length() != 0) {
            int length = str.length();
            for (int i = 0; i < length; i++) {
                if (!isWhitespace(str.codePointAt(i))) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean isNumeric(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isDigit(str.codePointAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static String normaliseWhitespace(String str) {
        StringBuilder sbBorrowBuilder = borrowBuilder();
        appendNormalisedWhitespace(sbBorrowBuilder, str, false);
        return releaseBuilder(sbBorrowBuilder);
    }

    public static void appendNormalisedWhitespace(StringBuilder sb, String str, boolean z) {
        int length = str.length();
        int iCharCount = 0;
        boolean z2 = false;
        boolean z3 = false;
        while (iCharCount < length) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (isActuallyWhitespace(iCodePointAt)) {
                if ((!z || z2) && !z3) {
                    sb.append(' ');
                    z3 = true;
                }
            } else if (!isInvisibleChar(iCodePointAt)) {
                sb.appendCodePoint(iCodePointAt);
                z3 = false;
                z2 = true;
            }
            iCharCount += Character.charCount(iCodePointAt);
        }
    }

    /* JADX INFO: renamed from: in */
    public static boolean m2669in(String str, String... strArr) {
        for (String str2 : strArr) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean inSorted(String str, String[] strArr) {
        return Arrays.binarySearch(strArr, str) >= 0;
    }

    public static boolean isAscii(String str) {
        Validate.notNull(str);
        for (int i = 0; i < str.length(); i++) {
            if (str.charAt(i) > 127) {
                return false;
            }
        }
        return true;
    }

    public static URL resolve(URL url, String str) throws MalformedURLException {
        if (str.startsWith("?")) {
            str = url.getPath() + str;
        }
        URL url2 = new URL(url, str);
        String strReplaceFirst = extraDotSegmentsPattern.matcher(url2.getFile()).replaceFirst(RemoteSettings.FORWARD_SLASH_STRING);
        if (url2.getRef() != null) {
            strReplaceFirst = strReplaceFirst + "#" + url2.getRef();
        }
        return new URL(url2.getProtocol(), url2.getHost(), url2.getPort(), strReplaceFirst);
    }

    public static String resolve(String str, String str2) {
        try {
            try {
                return resolve(new URL(str), str2).toExternalForm();
            } catch (MalformedURLException unused) {
                return new URL(str2).toExternalForm();
            }
        } catch (MalformedURLException unused2) {
            return "";
        }
    }

    public static StringBuilder borrowBuilder() {
        Stack<StringBuilder> stack = threadLocalBuilders.get();
        return stack.empty() ? new StringBuilder(8192) : stack.pop();
    }

    public static String releaseBuilder(StringBuilder sb) {
        Validate.notNull(sb);
        String string = sb.toString();
        if (sb.length() > 8192) {
            sb = new StringBuilder(8192);
        } else {
            sb.delete(0, sb.length());
        }
        Stack<StringBuilder> stack = threadLocalBuilders.get();
        stack.push(sb);
        while (stack.size() > 8) {
            stack.pop();
        }
        return string;
    }
}
