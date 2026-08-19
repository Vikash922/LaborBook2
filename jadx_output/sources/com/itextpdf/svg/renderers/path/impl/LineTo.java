package com.itextpdf.svg.renderers.path.impl;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.geom.Point;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.styledxmlparser.css.util.CssDimensionParsingUtils;
import com.itextpdf.svg.exceptions.SvgExceptionMessageConstant;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public class LineTo extends AbstractPathShape {
    static final int ARGUMENT_SIZE = 2;

    public LineTo() {
        this(false);
    }

    public LineTo(boolean z) {
        super(z);
    }

    @Override // com.itextpdf.svg.renderers.path.IPathShape
    public void draw(PdfCanvas pdfCanvas) {
        pdfCanvas.lineTo(CssDimensionParsingUtils.parseAbsoluteLength(this.coordinates[0]), CssDimensionParsingUtils.parseAbsoluteLength(this.coordinates[1]));
    }

    @Override // com.itextpdf.svg.renderers.path.IPathShape
    public void setCoordinates(String[] strArr, Point point) {
        if (strArr.length != 2) {
            throw new IllegalArgumentException(MessageFormatUtil.format(SvgExceptionMessageConstant.LINE_TO_EXPECTS_FOLLOWING_PARAMETERS_GOT_0, Arrays.toString(strArr)));
        }
        this.coordinates = new String[]{strArr[0], strArr[1]};
        if (isRelative()) {
            this.coordinates = this.copier.makeCoordinatesAbsolute(this.coordinates, new double[]{point.f2960x, point.f2961y});
        }
    }
}
