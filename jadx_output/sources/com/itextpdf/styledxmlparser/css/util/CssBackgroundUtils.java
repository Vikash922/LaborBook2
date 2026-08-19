package com.itextpdf.styledxmlparser.css.util;

import com.itextpdf.styledxmlparser.css.CommonCssConstants;

/* JADX INFO: loaded from: classes6.dex */
public final class CssBackgroundUtils {

    public enum BackgroundPropertyType {
        BACKGROUND_COLOR,
        BACKGROUND_IMAGE,
        BACKGROUND_POSITION,
        BACKGROUND_POSITION_X,
        BACKGROUND_POSITION_Y,
        BACKGROUND_SIZE,
        BACKGROUND_REPEAT,
        BACKGROUND_ORIGIN,
        BACKGROUND_CLIP,
        BACKGROUND_ATTACHMENT,
        BACKGROUND_POSITION_OR_SIZE,
        BACKGROUND_ORIGIN_OR_CLIP,
        UNDEFINED
    }

    private CssBackgroundUtils() {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.itextpdf.layout.properties.BackgroundRepeat.BackgroundRepeatValue parseBackgroundRepeat(java.lang.String r3) {
        /*
            int r0 = r3.hashCode()
            r1 = 2
            r2 = 1
            switch(r0) {
                case -934531685: goto L28;
                case -724648153: goto L1e;
                case 108704142: goto L14;
                case 109637894: goto La;
                default: goto L9;
            }
        L9:
            goto L32
        La:
            java.lang.String r0 = "space"
            boolean r3 = r3.equals(r0)
            if (r3 == 0) goto L32
            r3 = r1
            goto L33
        L14:
            java.lang.String r0 = "round"
            boolean r3 = r3.equals(r0)
            if (r3 == 0) goto L32
            r3 = r2
            goto L33
        L1e:
            java.lang.String r0 = "no-repeat"
            boolean r3 = r3.equals(r0)
            if (r3 == 0) goto L32
            r3 = 0
            goto L33
        L28:
            java.lang.String r0 = "repeat"
            boolean r3 = r3.equals(r0)
            if (r3 == 0) goto L32
            r3 = 3
            goto L33
        L32:
            r3 = -1
        L33:
            if (r3 == 0) goto L42
            if (r3 == r2) goto L3f
            if (r3 == r1) goto L3c
            com.itextpdf.layout.properties.BackgroundRepeat$BackgroundRepeatValue r3 = com.itextpdf.layout.properties.BackgroundRepeat.BackgroundRepeatValue.REPEAT
            return r3
        L3c:
            com.itextpdf.layout.properties.BackgroundRepeat$BackgroundRepeatValue r3 = com.itextpdf.layout.properties.BackgroundRepeat.BackgroundRepeatValue.SPACE
            return r3
        L3f:
            com.itextpdf.layout.properties.BackgroundRepeat$BackgroundRepeatValue r3 = com.itextpdf.layout.properties.BackgroundRepeat.BackgroundRepeatValue.ROUND
            return r3
        L42:
            com.itextpdf.layout.properties.BackgroundRepeat$BackgroundRepeatValue r3 = com.itextpdf.layout.properties.BackgroundRepeat.BackgroundRepeatValue.NO_REPEAT
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.styledxmlparser.css.util.CssBackgroundUtils.parseBackgroundRepeat(java.lang.String):com.itextpdf.layout.properties.BackgroundRepeat$BackgroundRepeatValue");
    }

    /* JADX INFO: renamed from: com.itextpdf.styledxmlparser.css.util.CssBackgroundUtils$1 */
    static /* synthetic */ class C35311 {

        /* JADX INFO: renamed from: $SwitchMap$com$itextpdf$styledxmlparser$css$util$CssBackgroundUtils$BackgroundPropertyType */
        static final /* synthetic */ int[] f3310xb3091de6;

        static {
            int[] iArr = new int[BackgroundPropertyType.values().length];
            f3310xb3091de6 = iArr;
            try {
                iArr[BackgroundPropertyType.BACKGROUND_COLOR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3310xb3091de6[BackgroundPropertyType.BACKGROUND_IMAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3310xb3091de6[BackgroundPropertyType.BACKGROUND_POSITION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3310xb3091de6[BackgroundPropertyType.BACKGROUND_POSITION_X.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f3310xb3091de6[BackgroundPropertyType.BACKGROUND_POSITION_Y.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f3310xb3091de6[BackgroundPropertyType.BACKGROUND_SIZE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f3310xb3091de6[BackgroundPropertyType.BACKGROUND_REPEAT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f3310xb3091de6[BackgroundPropertyType.BACKGROUND_ORIGIN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f3310xb3091de6[BackgroundPropertyType.BACKGROUND_CLIP.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f3310xb3091de6[BackgroundPropertyType.BACKGROUND_ATTACHMENT.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    public static String getBackgroundPropertyNameFromType(BackgroundPropertyType backgroundPropertyType) {
        switch (C35311.f3310xb3091de6[backgroundPropertyType.ordinal()]) {
            case 1:
                return CommonCssConstants.BACKGROUND_COLOR;
            case 2:
                return CommonCssConstants.BACKGROUND_IMAGE;
            case 3:
                return CommonCssConstants.BACKGROUND_POSITION;
            case 4:
                return CommonCssConstants.BACKGROUND_POSITION_X;
            case 5:
                return CommonCssConstants.BACKGROUND_POSITION_Y;
            case 6:
                return CommonCssConstants.BACKGROUND_SIZE;
            case 7:
                return CommonCssConstants.BACKGROUND_REPEAT;
            case 8:
                return CommonCssConstants.BACKGROUND_ORIGIN;
            case 9:
                return CommonCssConstants.BACKGROUND_CLIP;
            case 10:
                return CommonCssConstants.BACKGROUND_ATTACHMENT;
            default:
                return "undefined";
        }
    }

    public static BackgroundPropertyType resolveBackgroundPropertyType(String str) {
        if (str.startsWith("url(") && str.indexOf(40, "url(".length()) == -1 && str.indexOf(41) == str.length() - 1) {
            return BackgroundPropertyType.BACKGROUND_IMAGE;
        }
        if (CssGradientUtil.isCssLinearGradientValue(str) || "none".equals(str)) {
            return BackgroundPropertyType.BACKGROUND_IMAGE;
        }
        if (CommonCssConstants.BACKGROUND_REPEAT_VALUES.contains(str)) {
            return BackgroundPropertyType.BACKGROUND_REPEAT;
        }
        if (CommonCssConstants.BACKGROUND_ATTACHMENT_VALUES.contains(str)) {
            return BackgroundPropertyType.BACKGROUND_ATTACHMENT;
        }
        if (CommonCssConstants.BACKGROUND_POSITION_X_VALUES.contains(str) && !CommonCssConstants.CENTER.equals(str)) {
            return BackgroundPropertyType.BACKGROUND_POSITION_X;
        }
        if (CommonCssConstants.BACKGROUND_POSITION_Y_VALUES.contains(str) && !CommonCssConstants.CENTER.equals(str)) {
            return BackgroundPropertyType.BACKGROUND_POSITION_Y;
        }
        if (CommonCssConstants.CENTER.equals(str)) {
            return BackgroundPropertyType.BACKGROUND_POSITION;
        }
        Integer num = 0;
        if (num.equals(CssDimensionParsingUtils.parseInteger(str)) || CssTypesValidationUtils.isMetricValue(str) || CssTypesValidationUtils.isRelativeValue(str)) {
            return BackgroundPropertyType.BACKGROUND_POSITION_OR_SIZE;
        }
        if (CommonCssConstants.BACKGROUND_SIZE_VALUES.contains(str)) {
            return BackgroundPropertyType.BACKGROUND_SIZE;
        }
        if (CssTypesValidationUtils.isColorProperty(str)) {
            return BackgroundPropertyType.BACKGROUND_COLOR;
        }
        if (CommonCssConstants.BACKGROUND_ORIGIN_OR_CLIP_VALUES.contains(str)) {
            return BackgroundPropertyType.BACKGROUND_ORIGIN_OR_CLIP;
        }
        return BackgroundPropertyType.UNDEFINED;
    }
}
