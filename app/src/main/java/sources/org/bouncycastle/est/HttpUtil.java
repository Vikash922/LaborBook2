package org.bouncycastle.est;

import java.io.StringWriter;
import java.util.HashMap;
import java.util.Map;
import kotlin.text.Typography;
import org.objectweb.asm.signature.SignatureVisitor;

/* JADX INFO: loaded from: classes5.dex */
class HttpUtil {

    static class Headers extends HashMap<String, String[]> {
        private String actualKey(String str) {
            if (containsKey(str)) {
                return str;
            }
            for (String str2 : keySet()) {
                if (str.equalsIgnoreCase(str2)) {
                    return str2;
                }
            }
            return null;
        }

        private String[] copy(String[] strArr) {
            int length = strArr.length;
            String[] strArr2 = new String[length];
            System.arraycopy(strArr, 0, strArr2, 0, length);
            return strArr2;
        }

        private boolean hasHeader(String str) {
            return actualKey(str) != null;
        }

        public void add(String str, String str2) {
            put(str, HttpUtil.append(get(str), str2));
        }

        @Override // java.util.HashMap, java.util.AbstractMap
        public Object clone() {
            Headers headers = new Headers();
            for (Map.Entry<String, String[]> entry : entrySet()) {
                headers.put(entry.getKey(), copy(entry.getValue()));
            }
            return headers;
        }

        public void ensureHeader(String str, String str2) {
            if (containsKey(str)) {
                return;
            }
            set(str, str2);
        }

        public String getFirstValue(String str) {
            String[] values = getValues(str);
            if (values == null || values.length <= 0) {
                return null;
            }
            return values[0];
        }

        public String[] getValues(String str) {
            String strActualKey = actualKey(str);
            if (strActualKey == null) {
                return null;
            }
            return get(strActualKey);
        }

        public void set(String str, String str2) {
            put(str, new String[]{str2});
        }
    }

    static class PartLexer {
        int last = 0;

        /* JADX INFO: renamed from: p */
        int f4374p = 0;
        private final String src;

        PartLexer(String str) {
            this.src = str;
        }

        private String consumeAlpha() {
            char cCharAt = this.src.charAt(this.f4374p);
            while (this.f4374p < this.src.length() && ((cCharAt >= 'a' && cCharAt <= 'z') || (cCharAt >= 'A' && cCharAt <= 'Z'))) {
                int i = this.f4374p + 1;
                this.f4374p = i;
                cCharAt = this.src.charAt(i);
            }
            String strSubstring = this.src.substring(this.last, this.f4374p);
            this.last = this.f4374p;
            return strSubstring;
        }

        private boolean consumeIf(char c) {
            if (this.f4374p >= this.src.length() || this.src.charAt(this.f4374p) != c) {
                return false;
            }
            this.f4374p++;
            return true;
        }

        private String consumeUntil(char c) {
            while (this.f4374p < this.src.length() && this.src.charAt(this.f4374p) != c) {
                this.f4374p++;
            }
            String strSubstring = this.src.substring(this.last, this.f4374p);
            this.last = this.f4374p;
            return strSubstring;
        }

        private void discard() {
            this.last = this.f4374p;
        }

        private void discard(int i) {
            int i2 = this.f4374p + i;
            this.f4374p = i2;
            this.last = i2;
        }

        private void skipWhiteSpace() {
            while (this.f4374p < this.src.length() && this.src.charAt(this.f4374p) < '!') {
                this.f4374p++;
            }
            this.last = this.f4374p;
        }

        Map<String, String> Parse() {
            HashMap map = new HashMap();
            while (this.f4374p < this.src.length()) {
                skipWhiteSpace();
                String strConsumeAlpha = consumeAlpha();
                if (strConsumeAlpha.length() == 0) {
                    throw new IllegalArgumentException("Expecting alpha label.");
                }
                skipWhiteSpace();
                if (!consumeIf(SignatureVisitor.INSTANCEOF)) {
                    throw new IllegalArgumentException("Expecting assign: '='");
                }
                skipWhiteSpace();
                if (!consumeIf(Typography.quote)) {
                    throw new IllegalArgumentException("Expecting start quote: '\"'");
                }
                discard();
                String strConsumeUntil = consumeUntil(Typography.quote);
                discard(1);
                map.put(strConsumeAlpha, strConsumeUntil);
                skipWhiteSpace();
                if (!consumeIf(',')) {
                    break;
                }
                discard();
            }
            return map;
        }
    }

    HttpUtil() {
    }

    public static String[] append(String[] strArr, String str) {
        if (strArr == null) {
            return new String[]{str};
        }
        int length = strArr.length;
        String[] strArr2 = new String[length + 1];
        System.arraycopy(strArr, 0, strArr2, 0, length);
        strArr2[length] = str;
        return strArr2;
    }

    static String mergeCSL(String str, Map<String, String> map) {
        StringWriter stringWriter = new StringWriter();
        stringWriter.write(str);
        stringWriter.write(32);
        boolean z = false;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (z) {
                stringWriter.write(44);
            } else {
                z = true;
            }
            stringWriter.write(entry.getKey());
            stringWriter.write("=\"");
            stringWriter.write(entry.getValue());
            stringWriter.write(34);
        }
        return stringWriter.toString();
    }

    static Map<String, String> splitCSL(String str, String str2) {
        String strTrim = str2.trim();
        if (strTrim.startsWith(str)) {
            strTrim = strTrim.substring(str.length());
        }
        return new PartLexer(strTrim).Parse();
    }
}
