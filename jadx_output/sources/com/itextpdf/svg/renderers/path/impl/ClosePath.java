package com.itextpdf.svg.renderers.path.impl;

import com.itextpdf.kernel.pdf.canvas.PdfCanvas;

/* JADX INFO: loaded from: classes6.dex */
public class ClosePath extends LineTo {
    static final int ARGUMENT_SIZE = 0;

    public ClosePath() {
        this(false);
    }

    public ClosePath(boolean z) {
        super(z);
    }

    @Override // com.itextpdf.svg.renderers.path.impl.LineTo, com.itextpdf.svg.renderers.path.IPathShape
    public void draw(PdfCanvas pdfCanvas) {
        pdfCanvas.closePath();
    }
}
