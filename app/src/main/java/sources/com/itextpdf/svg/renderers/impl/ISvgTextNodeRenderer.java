package com.itextpdf.svg.renderers.impl;

import com.itextpdf.kernel.font.PdfFont;
import com.itextpdf.kernel.geom.Point;
import com.itextpdf.svg.renderers.ISvgNodeRenderer;
import com.itextpdf.svg.renderers.SvgDrawContext;
import com.itextpdf.svg.utils.TextRectangle;

/* JADX INFO: loaded from: classes6.dex */
public interface ISvgTextNodeRenderer extends ISvgNodeRenderer {
    boolean containsAbsolutePositionChange();

    boolean containsRelativeMove();

    float[][] getAbsolutePositionChanges();

    float[] getRelativeTranslation();

    float getTextContentLength(float f, PdfFont pdfFont);

    TextRectangle getTextRectangle(SvgDrawContext svgDrawContext, Point point);
}
