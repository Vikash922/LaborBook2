package com.itextpdf.layout.renderer;

import com.itextpdf.kernel.font.PdfFont;
import com.itextpdf.layout.properties.LineHeight;
import com.itextpdf.layout.properties.RenderingMode;

/* JADX INFO: loaded from: classes6.dex */
class LineHeightHelper {
    public static final int ASCENDER_INDEX = 0;
    private static final float DEFAULT_LINE_HEIGHT_COEFF = 1.15f;
    public static final int DESCENDER_INDEX = 1;
    public static final int LEADING_INDEX = 3;
    public static final int XHEIGHT_INDEX = 2;

    private LineHeightHelper() {
    }

    static float[] getActualAscenderDescender(AbstractRenderer abstractRenderer) {
        float[] actualFontInfo = getActualFontInfo(abstractRenderer);
        return new float[]{actualFontInfo[0], actualFontInfo[1]};
    }

    static float[] getActualFontInfo(AbstractRenderer abstractRenderer) {
        float fCalculateLineHeight = calculateLineHeight(abstractRenderer);
        float[] fontAscenderDescenderNormalized = getFontAscenderDescenderNormalized(abstractRenderer);
        float f = fontAscenderDescenderNormalized[0];
        float f2 = fontAscenderDescenderNormalized[1];
        float f3 = fCalculateLineHeight - (f - f2);
        float f4 = f3 / 2.0f;
        return new float[]{f + f4, f2 - f4, fontAscenderDescenderNormalized[2], f3};
    }

    static float[] getFontAscenderDescenderNormalized(AbstractRenderer abstractRenderer) {
        PdfFont pdfFontResolveFirstPdfFont = abstractRenderer.resolveFirstPdfFont();
        float value = abstractRenderer.getPropertyAsUnitValue(24).getValue();
        float[] fArrCalculateAscenderDescender = TextRenderer.calculateAscenderDescender(pdfFontResolveFirstPdfFont, RenderingMode.HTML_MODE);
        return new float[]{(fArrCalculateAscenderDescender[0] / 1000.0f) * value, (fArrCalculateAscenderDescender[1] / 1000.0f) * value, (pdfFontResolveFirstPdfFont.getFontProgram().getFontMetrics().getXHeight() / 1000.0f) * value};
    }

    static float calculateLineHeight(AbstractRenderer abstractRenderer) {
        LineHeight lineHeight = (LineHeight) abstractRenderer.getProperty(124);
        float value = abstractRenderer.getPropertyAsUnitValue(24).getValue();
        if (lineHeight == null || lineHeight.isNormalValue() || lineHeight.getValue() < 0.0f) {
            float f = value * DEFAULT_LINE_HEIGHT_COEFF;
            float[] fontAscenderDescenderNormalized = getFontAscenderDescenderNormalized(abstractRenderer);
            float f2 = fontAscenderDescenderNormalized[0] - fontAscenderDescenderNormalized[1];
            return f2 > f ? f2 : f;
        }
        if (lineHeight.isFixedValue()) {
            return lineHeight.getValue();
        }
        return lineHeight.getValue() * value;
    }
}
