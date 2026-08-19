package com.itextpdf.styledxmlparser.css.font;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.styledxmlparser.css.CssDeclaration;
import com.itextpdf.styledxmlparser.css.util.CssUtils;
import com.itextpdf.styledxmlparser.util.FontFamilySplitterUtil;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.text.Typography;

/* JADX INFO: loaded from: classes6.dex */
public class CssFontFace {
    private final String alias;
    private final List<CssFontFaceSrc> sources;

    public enum FontFormat {
        None,
        TrueType,
        OpenType,
        WOFF,
        WOFF2,
        EOT,
        SVG
    }

    public static CssFontFace create(List<CssDeclaration> list) {
        String strRemoveQuotes = null;
        String expression = null;
        for (CssDeclaration cssDeclaration : list) {
            if ("font-family".equals(cssDeclaration.getProperty())) {
                strRemoveQuotes = FontFamilySplitterUtil.removeQuotes(cssDeclaration.getExpression());
            } else if ("src".equals(cssDeclaration.getProperty())) {
                expression = cssDeclaration.getExpression();
            }
        }
        if (strRemoveQuotes == null || expression == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : splitSourcesSequence(expression)) {
            CssFontFaceSrc cssFontFaceSrcCreate = CssFontFaceSrc.create(str.trim());
            if (cssFontFaceSrcCreate != null) {
                arrayList.add(cssFontFaceSrcCreate);
            }
        }
        if (arrayList.size() > 0) {
            return new CssFontFace(strRemoveQuotes, arrayList);
        }
        return null;
    }

    public static String[] splitSourcesSequence(String str) {
        int iFindNextUnescapedChar;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < str.length(); i = iFindNextUnescapedChar + 1) {
            int iMin = Math.min(CssUtils.findNextUnescapedChar(str, '\'', i) >= 0 ? CssUtils.findNextUnescapedChar(str, '\'', i) : Integer.MAX_VALUE, CssUtils.findNextUnescapedChar(str, Typography.quote, i) >= 0 ? CssUtils.findNextUnescapedChar(str, Typography.quote, i) : Integer.MAX_VALUE);
            iFindNextUnescapedChar = CssUtils.findNextUnescapedChar(str, ')', i);
            if (iMin < iFindNextUnescapedChar && (iFindNextUnescapedChar = CssUtils.findNextUnescapedChar(str, str.charAt(iMin), iMin + 1)) == -1) {
                iFindNextUnescapedChar = str.length();
            }
            while (iFindNextUnescapedChar < str.length() && str.charAt(iFindNextUnescapedChar) != ',') {
                iFindNextUnescapedChar++;
            }
            arrayList.add(str.substring(i, iFindNextUnescapedChar).trim());
        }
        String[] strArr = new String[arrayList.size()];
        arrayList.toArray(strArr);
        return strArr;
    }

    /* JADX INFO: renamed from: com.itextpdf.styledxmlparser.css.font.CssFontFace$1 */
    static /* synthetic */ class C35271 {

        /* JADX INFO: renamed from: $SwitchMap$com$itextpdf$styledxmlparser$css$font$CssFontFace$FontFormat */
        static final /* synthetic */ int[] f3306xd5684689;

        static {
            int[] iArr = new int[FontFormat.values().length];
            f3306xd5684689 = iArr;
            try {
                iArr[FontFormat.None.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3306xd5684689[FontFormat.TrueType.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3306xd5684689[FontFormat.OpenType.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3306xd5684689[FontFormat.WOFF.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f3306xd5684689[FontFormat.WOFF2.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static boolean isSupportedFontFormat(FontFormat fontFormat) {
        int i = C35271.f3306xd5684689[fontFormat.ordinal()];
        return i == 1 || i == 2 || i == 3 || i == 4 || i == 5;
    }

    public String getFontFamily() {
        return this.alias;
    }

    public List<CssFontFaceSrc> getSources() {
        return new ArrayList(this.sources);
    }

    private CssFontFace(String str, List<CssFontFaceSrc> list) {
        this.alias = str;
        this.sources = new ArrayList(list);
    }

    public static class CssFontFaceSrc {
        public static final int FormatGroup = 9;
        public static final int TypeGroup = 1;
        public static final int UrlGroup = 4;
        public static final Pattern UrlPattern = Pattern.compile("^((local)|(url))\\((('[^']*')|(\"[^\"]*\")|([^'\"\\)]*))\\)( format\\((('[^']*')|(\"[^\"]*\")|([^'\"\\)]*))\\))?$");
        final FontFormat format;
        final boolean isLocal;
        final String src;

        public FontFormat getFormat() {
            return this.format;
        }

        public String getSrc() {
            return this.src;
        }

        public boolean isLocal() {
            return this.isLocal;
        }

        public String toString() {
            return MessageFormatUtil.format("{0}({1}){2}", this.isLocal ? "local" : "url", this.src, this.format != FontFormat.None ? MessageFormatUtil.format(" format({0})", this.format) : "");
        }

        public static CssFontFaceSrc create(String str) {
            Matcher matcher = UrlPattern.matcher(str);
            if (matcher.matches()) {
                return new CssFontFaceSrc(unquote(matcher.group(4)), "local".equals(matcher.group(1)), parseFormat(matcher.group(9)));
            }
            return null;
        }

        public static FontFormat parseFormat(String str) {
            if (str != null && str.length() > 0) {
                String lowerCase = unquote(str).toLowerCase();
                lowerCase.hashCode();
                switch (lowerCase) {
                    case "embedded-opentype":
                        return FontFormat.EOT;
                    case "opentype":
                        return FontFormat.OpenType;
                    case "svg":
                        return FontFormat.SVG;
                    case "woff":
                        return FontFormat.WOFF;
                    case "woff2":
                        return FontFormat.WOFF2;
                    case "truetype":
                        return FontFormat.TrueType;
                }
            }
            return FontFormat.None;
        }

        public static String unquote(String str) {
            return (str.charAt(0) == '\'' || str.charAt(0) == '\"') ? str.substring(1, str.length() - 1) : str;
        }

        private CssFontFaceSrc(String str, boolean z, FontFormat fontFormat) {
            this.format = fontFormat;
            this.src = str;
            this.isLocal = z;
        }
    }
}
