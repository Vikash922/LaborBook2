package com.itextpdf.svg.utils;

import com.itextpdf.kernel.geom.Point;
import com.itextpdf.kernel.geom.Rectangle;

/* JADX INFO: loaded from: classes6.dex */
public class TextRectangle extends Rectangle {
    private float textBaseLineYCoordinate;

    public TextRectangle(float f, float f2, float f3, float f4, float f5) {
        super(f, f2, f3, f4);
        this.textBaseLineYCoordinate = f5;
    }

    public Point getTextBaseLineRightPoint() {
        return new Point(getRight(), this.textBaseLineYCoordinate);
    }
}
