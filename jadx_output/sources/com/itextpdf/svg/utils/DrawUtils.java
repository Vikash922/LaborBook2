package com.itextpdf.svg.utils;

import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class DrawUtils {
    private DrawUtils() {
    }

    public static void arc(double d, double d2, double d3, double d4, double d5, double d6, PdfCanvas pdfCanvas) {
        List<double[]> listBezierArc = PdfCanvas.bezierArc(d, d2, d3, d4, d5, d6);
        if (listBezierArc.isEmpty()) {
            return;
        }
        for (double[] dArr : listBezierArc) {
            pdfCanvas.curveTo(dArr[2], dArr[3], dArr[4], dArr[5], dArr[6], dArr[7]);
        }
    }
}
