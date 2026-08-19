package com.itextpdf.kernel.pdf.canvas.parser.data;

import com.itextpdf.kernel.geom.Matrix;
import com.itextpdf.kernel.geom.Path;
import com.itextpdf.kernel.pdf.canvas.CanvasGraphicsState;

/* JADX INFO: loaded from: classes6.dex */
public class ClippingPathInfo extends AbstractRenderInfo {
    private Matrix ctm;
    private Path path;

    public ClippingPathInfo(CanvasGraphicsState canvasGraphicsState, Path path, Matrix matrix) {
        super(canvasGraphicsState);
        this.path = path;
        this.ctm = matrix;
    }

    public Path getClippingPath() {
        return this.path;
    }

    public Matrix getCtm() {
        return this.ctm;
    }
}
