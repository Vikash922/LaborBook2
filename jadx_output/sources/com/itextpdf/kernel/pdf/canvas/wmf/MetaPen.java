package com.itextpdf.kernel.pdf.canvas.wmf;

import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.colors.ColorConstants;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public class MetaPen extends MetaObject {
    public static final int PS_DASH = 1;
    public static final int PS_DASHDOT = 3;
    public static final int PS_DASHDOTDOT = 4;
    public static final int PS_DOT = 2;
    public static final int PS_INSIDEFRAME = 6;
    public static final int PS_NULL = 5;
    public static final int PS_SOLID = 0;
    Color color;
    int penWidth;
    int style;

    public MetaPen() {
        super(1);
        this.style = 0;
        this.penWidth = 1;
        this.color = ColorConstants.BLACK;
    }

    public void init(InputMeta inputMeta) throws IOException {
        this.style = inputMeta.readWord();
        this.penWidth = inputMeta.readShort();
        inputMeta.readWord();
        this.color = inputMeta.readColor();
    }

    public int getStyle() {
        return this.style;
    }

    public int getPenWidth() {
        return this.penWidth;
    }

    public Color getColor() {
        return this.color;
    }
}
