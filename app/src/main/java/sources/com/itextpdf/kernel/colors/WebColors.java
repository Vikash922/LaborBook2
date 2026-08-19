package com.itextpdf.kernel.colors;

import androidx.recyclerview.widget.ItemTouchHelper;
import com.itextpdf.kernel.xmp.XMPError;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import java.util.HashMap;
import java.util.StringTokenizer;
import org.bouncycastle.asn1.BERTags;
import org.bouncycastle.math.Primes;
import org.objectweb.asm.Opcodes;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class WebColors extends HashMap<String, int[]> {
    public static final WebColors NAMES;
    private static final double RGB_MAX_VAL = 255.0d;
    private static final long serialVersionUID = 6350366251375926010L;

    static {
        WebColors webColors = new WebColors();
        NAMES = webColors;
        webColors.put("aliceblue", new int[]{240, 248, 255, 255});
        webColors.put("antiquewhite", new int[]{ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 235, 215, 255});
        webColors.put("aqua", new int[]{0, 255, 255, 255});
        webColors.put("aquamarine", new int[]{127, 255, 212, 255});
        webColors.put("azure", new int[]{240, 255, 255, 255});
        webColors.put("beige", new int[]{245, 245, 220, 255});
        webColors.put("bisque", new int[]{255, 228, 196, 255});
        webColors.put("black", new int[]{0, 0, 0, 255});
        webColors.put("blanchedalmond", new int[]{255, 235, 205, 255});
        webColors.put("blue", new int[]{0, 0, 255, 255});
        webColors.put("blueviolet", new int[]{Opcodes.L2D, 43, 226, 255});
        webColors.put("brown", new int[]{Opcodes.IF_ACMPEQ, 42, 42, 255});
        webColors.put("burlywood", new int[]{222, Opcodes.INVOKESTATIC, 135, 255});
        webColors.put("cadetblue", new int[]{95, 158, Opcodes.IF_ICMPNE, 255});
        webColors.put("chartreuse", new int[]{127, 255, 0, 255});
        webColors.put("chocolate", new int[]{210, 105, 30, 255});
        webColors.put("coral", new int[]{255, 127, 80, 255});
        webColors.put("cornflowerblue", new int[]{100, Opcodes.FCMPL, 237, 255});
        webColors.put("cornsilk", new int[]{255, 248, 220, 255});
        webColors.put("crimson", new int[]{220, 20, 60, 255});
        webColors.put("cyan", new int[]{0, 255, 255, 255});
        webColors.put("darkblue", new int[]{0, 0, Opcodes.F2I, 255});
        webColors.put("darkcyan", new int[]{0, Opcodes.F2I, Opcodes.F2I, 255});
        webColors.put("darkgoldenrod", new int[]{Opcodes.INVOKESTATIC, 134, 11, 255});
        webColors.put("darkgray", new int[]{Opcodes.RET, Opcodes.RET, Opcodes.RET, 255});
        webColors.put("darkgrey", new int[]{Opcodes.RET, Opcodes.RET, Opcodes.RET, 255});
        webColors.put("darkgreen", new int[]{0, 100, 0, 255});
        webColors.put("darkkhaki", new int[]{Opcodes.ANEWARRAY, Opcodes.INVOKESPECIAL, 107, 255});
        webColors.put("darkmagenta", new int[]{Opcodes.F2I, 0, Opcodes.F2I, 255});
        webColors.put("darkolivegreen", new int[]{85, 107, 47, 255});
        webColors.put("darkorange", new int[]{255, Opcodes.F2L, 0, 255});
        webColors.put("darkorchid", new int[]{153, 50, XMPError.BADSTREAM, 255});
        webColors.put("darkred", new int[]{Opcodes.F2I, 0, 0, 255});
        webColors.put("darksalmon", new int[]{233, Opcodes.FCMPG, 122, 255});
        webColors.put("darkseagreen", new int[]{Opcodes.D2L, 188, Opcodes.D2L, 255});
        webColors.put("darkslateblue", new int[]{72, 61, Opcodes.F2I, 255});
        webColors.put("darkslategray", new int[]{47, 79, 79, 255});
        webColors.put("darkslategrey", new int[]{47, 79, 79, 255});
        webColors.put("darkturquoise", new int[]{0, 206, 209, 255});
        webColors.put("darkviolet", new int[]{Opcodes.LCMP, 0, Primes.SMALL_FACTOR_LIMIT, 255});
        webColors.put("deeppink", new int[]{255, 20, Opcodes.I2S, 255});
        webColors.put("deepskyblue", new int[]{0, Opcodes.ATHROW, 255, 255});
        webColors.put("dimgray", new int[]{105, 105, 105, 255});
        webColors.put("dimgrey", new int[]{105, 105, 105, 255});
        webColors.put("dodgerblue", new int[]{30, Opcodes.D2F, 255, 255});
        webColors.put("firebrick", new int[]{Opcodes.GETSTATIC, 34, 34, 255});
        webColors.put("floralwhite", new int[]{255, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 240, 255});
        webColors.put("forestgreen", new int[]{34, Opcodes.F2I, 34, 255});
        webColors.put("fuchsia", new int[]{255, 0, 255, 255});
        webColors.put("gainsboro", new int[]{220, 220, 220, 255});
        webColors.put("ghostwhite", new int[]{248, 248, 255, 255});
        webColors.put("gold", new int[]{255, 215, 0, 255});
        webColors.put("goldenrod", new int[]{218, Opcodes.IF_ACMPEQ, 32, 255});
        webColors.put("gray", new int[]{128, 128, 128, 255});
        webColors.put("grey", new int[]{128, 128, 128, 255});
        webColors.put("green", new int[]{0, 128, 0, 255});
        webColors.put("greenyellow", new int[]{Opcodes.LRETURN, 255, 47, 255});
        webColors.put("honeydew", new int[]{240, 255, 240, 255});
        webColors.put("hotpink", new int[]{255, 105, Opcodes.GETFIELD, 255});
        webColors.put("indianred", new int[]{205, 92, 92, 255});
        webColors.put("indigo", new int[]{75, 0, 130, 255});
        webColors.put("ivory", new int[]{255, 255, 240, 255});
        webColors.put("khaki", new int[]{240, 230, Opcodes.F2L, 255});
        webColors.put("lavender", new int[]{230, 230, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 255});
        webColors.put("lavenderblush", new int[]{255, 240, 245, 255});
        webColors.put("lawngreen", new int[]{124, 252, 0, 255});
        webColors.put("lemonchiffon", new int[]{255, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 205, 255});
        webColors.put("lightblue", new int[]{Opcodes.LRETURN, 216, 230, 255});
        webColors.put("lightcoral", new int[]{240, 128, 128, 255});
        webColors.put("lightcyan", new int[]{BERTags.FLAGS, 255, 255, 255});
        webColors.put("lightgoldenrodyellow", new int[]{ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 210, 255});
        webColors.put("lightgreen", new int[]{Opcodes.D2F, 238, Opcodes.D2F, 255});
        webColors.put("lightgray", new int[]{Primes.SMALL_FACTOR_LIMIT, Primes.SMALL_FACTOR_LIMIT, Primes.SMALL_FACTOR_LIMIT, 255});
        webColors.put("lightgrey", new int[]{Primes.SMALL_FACTOR_LIMIT, Primes.SMALL_FACTOR_LIMIT, Primes.SMALL_FACTOR_LIMIT, 255});
        webColors.put("lightpink", new int[]{255, Opcodes.INVOKEVIRTUAL, Opcodes.INSTANCEOF, 255});
        webColors.put("lightsalmon", new int[]{255, Opcodes.IF_ICMPNE, 122, 255});
        webColors.put("lightseagreen", new int[]{32, Opcodes.GETSTATIC, Opcodes.TABLESWITCH, 255});
        webColors.put("lightskyblue", new int[]{135, 206, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 255});
        webColors.put("lightslategray", new int[]{119, 136, 153, 255});
        webColors.put("lightslategrey", new int[]{119, 136, 153, 255});
        webColors.put("lightsteelblue", new int[]{Opcodes.ARETURN, 196, 222, 255});
        webColors.put("lightyellow", new int[]{255, 255, BERTags.FLAGS, 255});
        webColors.put("lime", new int[]{0, 255, 0, 255});
        webColors.put("limegreen", new int[]{50, 205, 50, 255});
        webColors.put("linen", new int[]{ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 240, 230, 255});
        webColors.put("magenta", new int[]{255, 0, 255, 255});
        webColors.put("maroon", new int[]{128, 0, 0, 255});
        webColors.put("mediumaquamarine", new int[]{102, 205, Opcodes.TABLESWITCH, 255});
        webColors.put("mediumblue", new int[]{0, 0, 205, 255});
        webColors.put("mediumorchid", new int[]{Opcodes.INVOKEDYNAMIC, 85, Primes.SMALL_FACTOR_LIMIT, 255});
        webColors.put("mediumpurple", new int[]{Opcodes.I2S, 112, 219, 255});
        webColors.put("mediumseagreen", new int[]{60, Opcodes.PUTSTATIC, 113, 255});
        webColors.put("mediumslateblue", new int[]{123, 104, 238, 255});
        webColors.put("mediumspringgreen", new int[]{0, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 154, 255});
        webColors.put("mediumturquoise", new int[]{72, 209, XMPError.BADSTREAM, 255});
        webColors.put("mediumvioletred", new int[]{Opcodes.IFNONNULL, 21, 133, 255});
        webColors.put("midnightblue", new int[]{25, 25, 112, 255});
        webColors.put("mintcream", new int[]{245, 255, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 255});
        webColors.put("mistyrose", new int[]{255, 228, 225, 255});
        webColors.put("moccasin", new int[]{255, 228, Opcodes.PUTFIELD, 255});
        webColors.put("navajowhite", new int[]{255, 222, Opcodes.LRETURN, 255});
        webColors.put("navy", new int[]{0, 0, 128, 255});
        webColors.put("oldlace", new int[]{253, 245, 230, 255});
        webColors.put("olive", new int[]{128, 128, 0, 255});
        webColors.put("olivedrab", new int[]{107, Opcodes.D2I, 35, 255});
        webColors.put("orange", new int[]{255, Opcodes.IF_ACMPEQ, 0, 255});
        webColors.put("orangered", new int[]{255, 69, 0, 255});
        webColors.put("orchid", new int[]{218, 112, 214, 255});
        webColors.put("palegoldenrod", new int[]{238, 232, Opcodes.TABLESWITCH, 255});
        webColors.put("palegreen", new int[]{Opcodes.DCMPG, 251, Opcodes.DCMPG, 255});
        webColors.put("paleturquoise", new int[]{Opcodes.DRETURN, 238, 238, 255});
        webColors.put("palevioletred", new int[]{219, 112, Opcodes.I2S, 255});
        webColors.put("papayawhip", new int[]{255, 239, 213, 255});
        webColors.put("peachpuff", new int[]{255, 218, Opcodes.INVOKEINTERFACE, 255});
        webColors.put("peru", new int[]{205, 133, 63, 255});
        webColors.put("pink", new int[]{255, 192, XMPError.BADXMP, 255});
        webColors.put("plum", new int[]{221, Opcodes.IF_ICMPNE, 221, 255});
        webColors.put("powderblue", new int[]{Opcodes.ARETURN, BERTags.FLAGS, 230, 255});
        webColors.put("purple", new int[]{128, 0, 128, 255});
        webColors.put("red", new int[]{255, 0, 0, 255});
        webColors.put("rosybrown", new int[]{188, Opcodes.D2L, Opcodes.D2L, 255});
        webColors.put("royalblue", new int[]{65, 105, 225, 255});
        webColors.put("saddlebrown", new int[]{Opcodes.F2I, 69, 19, 255});
        webColors.put("salmon", new int[]{ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 128, 114, 255});
        webColors.put("sandybrown", new int[]{244, Opcodes.IF_ICMPLE, 96, 255});
        webColors.put("seagreen", new int[]{46, Opcodes.F2I, 87, 255});
        webColors.put("seashell", new int[]{255, 245, 238, 255});
        webColors.put("sienna", new int[]{Opcodes.IF_ICMPNE, 82, 45, 255});
        webColors.put("silver", new int[]{192, 192, 192, 255});
        webColors.put("skyblue", new int[]{135, 206, 235, 255});
        webColors.put("slateblue", new int[]{106, 90, 205, 255});
        webColors.put("slategray", new int[]{112, 128, Opcodes.D2F, 255});
        webColors.put("slategrey", new int[]{112, 128, Opcodes.D2F, 255});
        webColors.put("snow", new int[]{255, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 255});
        webColors.put("springgreen", new int[]{0, 255, 127, 255});
        webColors.put("steelblue", new int[]{70, 130, Opcodes.GETFIELD, 255});
        webColors.put("tan", new int[]{210, Opcodes.GETFIELD, Opcodes.F2L, 255});
        webColors.put("teal", new int[]{0, 128, 128, 255});
        webColors.put("thistle", new int[]{216, Opcodes.ATHROW, 216, 255});
        webColors.put("tomato", new int[]{255, 99, 71, 255});
        webColors.put(CommonCssConstants.TRANSPARENT, new int[]{255, 255, 255, 0});
        webColors.put("turquoise", new int[]{64, BERTags.FLAGS, 208, 255});
        webColors.put("violet", new int[]{238, 130, 238, 255});
        webColors.put("wheat", new int[]{245, 222, Opcodes.PUTSTATIC, 255});
        webColors.put("white", new int[]{255, 255, 255, 255});
        webColors.put("whitesmoke", new int[]{245, 245, 245, 255});
        webColors.put("yellow", new int[]{255, 255, 0, 255});
        webColors.put("yellowgreen", new int[]{154, 205, 50, 255});
    }

    public static DeviceRgb getRGBColor(String str) {
        float[] rGBAColor = getRGBAColor(str);
        if (rGBAColor == null) {
            return new DeviceRgb(0, 0, 0);
        }
        return new DeviceRgb(rGBAColor[0], rGBAColor[1], rGBAColor[2]);
    }

    public static DeviceCmyk getCMYKColor(String str) {
        float[] cMYKArray = getCMYKArray(str);
        if (cMYKArray == null) {
            return new DeviceCmyk(0, 0, 0, 100);
        }
        return new DeviceCmyk(cMYKArray[0], cMYKArray[1], cMYKArray[2], cMYKArray[3]);
    }

    public static float[] getCMYKArray(String str) {
        try {
            String lowerCase = str.toLowerCase();
            if (!lowerCase.startsWith("device-cmyk(")) {
                return null;
            }
            StringTokenizer stringTokenizer = new StringTokenizer(lowerCase, "device-cmyk()/, \t\r\n\f");
            float[] fArr = {0.0f, 0.0f, 0.0f, 1.0f, 1.0f};
            parseCMYKColors(fArr, stringTokenizer);
            if (stringTokenizer.hasMoreTokens()) {
                fArr[4] = getAlphaChannelValue(stringTokenizer.nextToken());
            }
            return fArr;
        } catch (Exception unused) {
            return null;
        }
    }

    public static float[] getRGBAColor(String str) {
        float[] fArr;
        float[] fArr2;
        try {
            String lowerCase = str.toLowerCase();
            boolean zMissingHashColorFormat = missingHashColorFormat(lowerCase);
            if (lowerCase.startsWith("#") || zMissingHashColorFormat) {
                if (!zMissingHashColorFormat) {
                    lowerCase = lowerCase.substring(1);
                }
                if (lowerCase.length() == 3) {
                    String strSubstring = lowerCase.substring(0, 1);
                    float[] fArr3 = {0.0f, 0.0f, 0.0f, 1.0f};
                    fArr3[0] = (float) (((double) Integer.parseInt(strSubstring + strSubstring, 16)) / RGB_MAX_VAL);
                    String strSubstring2 = lowerCase.substring(1, 2);
                    fArr3[1] = (float) (((double) Integer.parseInt(strSubstring2 + strSubstring2, 16)) / RGB_MAX_VAL);
                    String strSubstring3 = lowerCase.substring(2);
                    fArr3[2] = (float) (((double) Integer.parseInt(strSubstring3 + strSubstring3, 16)) / RGB_MAX_VAL);
                    return fArr3;
                }
                if (lowerCase.length() == 6) {
                    fArr = new float[]{0.0f, 0.0f, 0.0f, 1.0f};
                    fArr[0] = (float) (((double) Integer.parseInt(lowerCase.substring(0, 2), 16)) / RGB_MAX_VAL);
                    fArr[1] = (float) (((double) Integer.parseInt(lowerCase.substring(2, 4), 16)) / RGB_MAX_VAL);
                    fArr[2] = (float) (((double) Integer.parseInt(lowerCase.substring(4), 16)) / RGB_MAX_VAL);
                } else {
                    LoggerFactory.getLogger((Class<?>) WebColors.class).error(IoLogMessageConstant.UNKNOWN_COLOR_FORMAT_MUST_BE_RGB_OR_RRGGBB);
                    return null;
                }
            } else {
                if (lowerCase.startsWith("rgb(")) {
                    StringTokenizer stringTokenizer = new StringTokenizer(lowerCase, "rgb(), \t\r\n\f");
                    fArr2 = new float[]{0.0f, 0.0f, 0.0f, 1.0f};
                    parseRGBColors(fArr2, stringTokenizer);
                } else if (lowerCase.startsWith("rgba(")) {
                    StringTokenizer stringTokenizer2 = new StringTokenizer(lowerCase, "rgba(), \t\r\n\f");
                    fArr2 = new float[]{0.0f, 0.0f, 0.0f, 1.0f};
                    parseRGBColors(fArr2, stringTokenizer2);
                    if (stringTokenizer2.hasMoreTokens()) {
                        fArr2[3] = getAlphaChannelValue(stringTokenizer2.nextToken());
                    }
                } else {
                    WebColors webColors = NAMES;
                    if (!webColors.containsKey(lowerCase)) {
                        return null;
                    }
                    int[] iArr = webColors.get(lowerCase);
                    fArr = new float[]{0.0f, 0.0f, 0.0f, 1.0f};
                    fArr[0] = (float) (((double) iArr[0]) / RGB_MAX_VAL);
                    fArr[1] = (float) (((double) iArr[1]) / RGB_MAX_VAL);
                    fArr[2] = (float) (((double) iArr[2]) / RGB_MAX_VAL);
                }
                return fArr2;
            }
            return fArr;
        } catch (Exception unused) {
            return null;
        }
    }

    private static void parseRGBColors(float[] fArr, StringTokenizer stringTokenizer) {
        for (int i = 0; i < 3; i++) {
            if (stringTokenizer.hasMoreTokens()) {
                float rGBChannelValue = getRGBChannelValue(stringTokenizer.nextToken());
                fArr[i] = rGBChannelValue;
                float fMax = Math.max(0.0f, rGBChannelValue);
                fArr[i] = fMax;
                fArr[i] = Math.min(1.0f, fMax);
            }
        }
    }

    private static void parseCMYKColors(float[] fArr, StringTokenizer stringTokenizer) {
        for (int i = 0; i < 4; i++) {
            if (stringTokenizer.hasMoreTokens()) {
                float cMYKChannelValue = getCMYKChannelValue(stringTokenizer.nextToken());
                fArr[i] = cMYKChannelValue;
                float fMax = Math.max(0.0f, cMYKChannelValue);
                fArr[i] = fMax;
                fArr[i] = Math.min(1.0f, fMax);
            }
        }
    }

    private static boolean missingHashColorFormat(String str) {
        int length = str.length();
        if (length == 3 || length == 6) {
            return str.matches("[0-9a-f]{" + length + "}");
        }
        return false;
    }

    private static float getRGBChannelValue(String str) {
        if (str.endsWith(CommonCssConstants.PERCENTAGE)) {
            return parsePercentValue(str);
        }
        return (float) (((double) Integer.parseInt(str)) / RGB_MAX_VAL);
    }

    private static float getCMYKChannelValue(String str) {
        if (str.endsWith(CommonCssConstants.PERCENTAGE)) {
            return parsePercentValue(str);
        }
        return Float.parseFloat(str);
    }

    private static float getAlphaChannelValue(String str) {
        float percentValue;
        if (str.endsWith(CommonCssConstants.PERCENTAGE)) {
            percentValue = parsePercentValue(str);
        } else {
            percentValue = Float.parseFloat(str);
        }
        return Math.min(1.0f, Math.max(0.0f, percentValue));
    }

    private static float parsePercentValue(String str) {
        return (float) (((double) Float.parseFloat(str.substring(0, str.length() - 1))) / 100.0d);
    }
}
