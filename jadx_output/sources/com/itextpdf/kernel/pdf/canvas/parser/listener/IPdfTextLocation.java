package com.itextpdf.kernel.pdf.canvas.parser.listener;

import com.itextpdf.kernel.geom.Rectangle;

/* JADX INFO: loaded from: classes6.dex */
public interface IPdfTextLocation {
    int getPageNumber();

    Rectangle getRectangle();

    String getText();
}
