package com.itextpdf.styledxmlparser.jsoup.nodes;

import com.itextpdf.p017io.util.ArrayUtil;
import com.itextpdf.styledxmlparser.jsoup.SerializationException;
import com.itextpdf.styledxmlparser.jsoup.helper.Validate;
import com.itextpdf.styledxmlparser.jsoup.internal.StringUtil;
import com.itextpdf.styledxmlparser.jsoup.nodes.Document;
import com.itextpdf.styledxmlparser.jsoup.parser.CharacterReader;
import com.itextpdf.styledxmlparser.jsoup.parser.Parser;
import java.io.IOException;
import java.nio.charset.CharsetEncoder;
import java.util.Arrays;
import java.util.HashMap;
import kotlin.text.Typography;
import org.objectweb.asm.signature.SignatureVisitor;
import org.shadow.apache.commons.lang3.CharEncoding;

/* JADX INFO: loaded from: classes6.dex */
public class Entities {
    static final int codepointRadix = 36;
    private static final int empty = -1;
    private static final String emptyName = "";
    private static final char[] codeDelims = {',', ';'};
    private static final HashMap<String, String> multipoints = new HashMap<>();
    private static final Document.OutputSettings DefaultOutput = new Document.OutputSettings();

    enum CoreCharset {
        ascii,
        utf,
        fallback
    }

    public static class EscapeMode {
        int[] codeKeys;
        int[] codeVals;
        String[] nameKeys;
        String[] nameVals;
        public static EscapeMode xhtml = new EscapeMode(EntitiesData.xmlPoints, 4);
        public static EscapeMode base = new EscapeMode(EntitiesData.basePoints, 106);
        public static EscapeMode extended = new EscapeMode(EntitiesData.fullPoints, 2125);

        EscapeMode(String str, int i) {
            Entities.load(this, str, i);
        }

        int codepointForName(String str) {
            int iIndexOf = ArrayUtil.indexOf(this.nameKeys, str);
            if (iIndexOf >= 0) {
                return this.codeVals[iIndexOf];
            }
            return -1;
        }

        String nameForCodepoint(int i) {
            int iBinarySearch = Arrays.binarySearch(this.codeKeys, i);
            if (iBinarySearch >= 0) {
                String[] strArr = this.nameVals;
                if (iBinarySearch < strArr.length - 1) {
                    int i2 = iBinarySearch + 1;
                    if (this.codeKeys[i2] == i) {
                        return strArr[i2];
                    }
                }
                return strArr[iBinarySearch];
            }
            return "";
        }

        private int size() {
            return this.nameKeys.length;
        }
    }

    private Entities() {
    }

    public static boolean isNamedEntity(String str) {
        return EscapeMode.extended.codepointForName(str) != -1;
    }

    public static boolean isBaseNamedEntity(String str) {
        return EscapeMode.base.codepointForName(str) != -1;
    }

    public static String getByName(String str) {
        String str2 = multipoints.get(str);
        if (str2 != null) {
            return str2;
        }
        int iCodepointForName = EscapeMode.extended.codepointForName(str);
        if (iCodepointForName != -1) {
            return new String(new char[]{(char) iCodepointForName}, 0, 1);
        }
        return "";
    }

    public static int codepointsForName(String str, int[] iArr) {
        String str2 = multipoints.get(str);
        if (str2 != null) {
            iArr[0] = str2.codePointAt(0);
            iArr[1] = str2.codePointAt(1);
            return 2;
        }
        int iCodepointForName = EscapeMode.extended.codepointForName(str);
        if (iCodepointForName == -1) {
            return 0;
        }
        iArr[0] = iCodepointForName;
        return 1;
    }

    public static String escape(String str, Document.OutputSettings outputSettings) {
        if (str == null) {
            return "";
        }
        StringBuilder sbBorrowBuilder = StringUtil.borrowBuilder();
        try {
            escape(sbBorrowBuilder, str, outputSettings, false, false, false);
            return StringUtil.releaseBuilder(sbBorrowBuilder);
        } catch (IOException e) {
            throw new SerializationException(e);
        }
    }

    public static String escape(String str) {
        return escape(str, DefaultOutput);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00a7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static void escape(java.lang.Appendable r15, java.lang.String r16, com.itextpdf.styledxmlparser.jsoup.nodes.Document.OutputSettings r17, boolean r18, boolean r19, boolean r20) throws java.io.IOException {
        /*
            r0 = r15
            com.itextpdf.styledxmlparser.jsoup.nodes.Entities$EscapeMode r1 = r17.escapeMode()
            java.nio.charset.CharsetEncoder r2 = r17.encoder()
            r3 = r17
            com.itextpdf.styledxmlparser.jsoup.nodes.Entities$CoreCharset r4 = r3.coreCharset
            int r5 = r16.length()
            r6 = 0
            r7 = r6
            r8 = r7
            r9 = r8
        L15:
            if (r7 >= r5) goto Lc4
            r10 = r16
            int r11 = r10.codePointAt(r7)
            if (r19 == 0) goto L38
            boolean r12 = com.itextpdf.styledxmlparser.jsoup.internal.StringUtil.isWhitespace(r11)
            r13 = 1
            if (r12 == 0) goto L36
            if (r20 == 0) goto L2a
            if (r8 == 0) goto Lbd
        L2a:
            if (r9 == 0) goto L2e
            goto Lbd
        L2e:
            r9 = 32
            r15.append(r9)
            r9 = r13
            goto Lbd
        L36:
            r9 = r6
            r8 = r13
        L38:
            r12 = 65536(0x10000, float:9.1835E-41)
            if (r11 >= r12) goto La7
            char r12 = (char) r11
            r13 = 34
            if (r12 == r13) goto L9b
            r13 = 38
            if (r12 == r13) goto L95
            r13 = 60
            if (r12 == r13) goto L7c
            r13 = 62
            if (r12 == r13) goto L70
            r13 = 160(0xa0, float:2.24E-43)
            if (r12 == r13) goto L60
            boolean r13 = canEncode(r4, r12, r2)
            if (r13 == 0) goto L5c
            r15.append(r12)
            goto Lbd
        L5c:
            appendEncoded(r15, r1, r11)
            goto Lbd
        L60:
            com.itextpdf.styledxmlparser.jsoup.nodes.Entities$EscapeMode r12 = com.itextpdf.styledxmlparser.jsoup.nodes.Entities.EscapeMode.xhtml
            if (r1 == r12) goto L6a
            java.lang.String r12 = "&nbsp;"
            r15.append(r12)
            goto Lbd
        L6a:
            java.lang.String r12 = "&#xa0;"
            r15.append(r12)
            goto Lbd
        L70:
            if (r18 != 0) goto L78
            java.lang.String r12 = "&gt;"
            r15.append(r12)
            goto Lbd
        L78:
            r15.append(r12)
            goto Lbd
        L7c:
            if (r18 == 0) goto L8f
            com.itextpdf.styledxmlparser.jsoup.nodes.Entities$EscapeMode r13 = com.itextpdf.styledxmlparser.jsoup.nodes.Entities.EscapeMode.xhtml
            if (r1 == r13) goto L8f
            com.itextpdf.styledxmlparser.jsoup.nodes.Document$OutputSettings$Syntax r13 = r17.syntax()
            com.itextpdf.styledxmlparser.jsoup.nodes.Document$OutputSettings$Syntax r14 = com.itextpdf.styledxmlparser.jsoup.nodes.Document.OutputSettings.Syntax.xml
            if (r13 != r14) goto L8b
            goto L8f
        L8b:
            r15.append(r12)
            goto Lbd
        L8f:
            java.lang.String r12 = "&lt;"
            r15.append(r12)
            goto Lbd
        L95:
            java.lang.String r12 = "&amp;"
            r15.append(r12)
            goto Lbd
        L9b:
            if (r18 == 0) goto La3
            java.lang.String r12 = "&quot;"
            r15.append(r12)
            goto Lbd
        La3:
            r15.append(r12)
            goto Lbd
        La7:
            java.lang.String r12 = new java.lang.String
            char[] r13 = java.lang.Character.toChars(r11)
            r12.<init>(r13)
            boolean r13 = r2.canEncode(r12)
            if (r13 == 0) goto Lba
            r15.append(r12)
            goto Lbd
        Lba:
            appendEncoded(r15, r1, r11)
        Lbd:
            int r11 = java.lang.Character.charCount(r11)
            int r7 = r7 + r11
            goto L15
        Lc4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.styledxmlparser.jsoup.nodes.Entities.escape(java.lang.Appendable, java.lang.String, com.itextpdf.styledxmlparser.jsoup.nodes.Document$OutputSettings, boolean, boolean, boolean):void");
    }

    private static void appendEncoded(Appendable appendable, EscapeMode escapeMode, int i) throws IOException {
        String strNameForCodepoint = escapeMode.nameForCodepoint(i);
        if (!"".equals(strNameForCodepoint)) {
            appendable.append(Typography.amp).append(strNameForCodepoint).append(';');
        } else {
            appendable.append("&#x").append(Integer.toHexString(i)).append(';');
        }
    }

    public static String unescape(String str) {
        return unescape(str, false);
    }

    static String unescape(String str, boolean z) {
        return Parser.unescapeEntities(str, z);
    }

    /* JADX INFO: renamed from: com.itextpdf.styledxmlparser.jsoup.nodes.Entities$1 */
    static /* synthetic */ class C35341 {

        /* JADX INFO: renamed from: $SwitchMap$com$itextpdf$styledxmlparser$jsoup$nodes$Entities$CoreCharset */
        static final /* synthetic */ int[] f3313x6301dc6;

        static {
            int[] iArr = new int[CoreCharset.values().length];
            f3313x6301dc6 = iArr;
            try {
                iArr[CoreCharset.ascii.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3313x6301dc6[CoreCharset.utf.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private static boolean canEncode(CoreCharset coreCharset, char c, CharsetEncoder charsetEncoder) {
        int i = C35341.f3313x6301dc6[coreCharset.ordinal()];
        if (i == 1) {
            return c < 128;
        }
        if (i != 2) {
            return charsetEncoder.canEncode(c);
        }
        return true;
    }

    static CoreCharset getCoreCharsetByName(String str) {
        if (str.equals(CharEncoding.US_ASCII)) {
            return CoreCharset.ascii;
        }
        if (str.startsWith("UTF-")) {
            return CoreCharset.utf;
        }
        return CoreCharset.fallback;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void load(EscapeMode escapeMode, String str, int i) {
        int i2;
        escapeMode.nameKeys = new String[i];
        escapeMode.codeVals = new int[i];
        escapeMode.codeKeys = new int[i];
        escapeMode.nameVals = new String[i];
        CharacterReader characterReader = new CharacterReader(str);
        int i3 = 0;
        while (!characterReader.isEmpty()) {
            String strConsumeTo = characterReader.consumeTo(SignatureVisitor.INSTANCEOF);
            characterReader.advance();
            int i4 = Integer.parseInt(characterReader.consumeToAny(codeDelims), 36);
            char cCurrent = characterReader.current();
            characterReader.advance();
            if (cCurrent == ',') {
                i2 = Integer.parseInt(characterReader.consumeTo(';'), 36);
                characterReader.advance();
            } else {
                i2 = -1;
            }
            int i5 = Integer.parseInt(characterReader.consumeTo(Typography.amp), 36);
            characterReader.advance();
            escapeMode.nameKeys[i3] = strConsumeTo;
            escapeMode.codeVals[i3] = i4;
            escapeMode.codeKeys[i5] = i4;
            escapeMode.nameVals[i5] = strConsumeTo;
            if (i2 != -1) {
                multipoints.put(strConsumeTo, new String(new char[]{(char) i4, (char) i2}, 0, 2));
            }
            i3++;
        }
        Validate.isTrue(i3 == i, "Unexpected count of entities loaded");
    }
}
