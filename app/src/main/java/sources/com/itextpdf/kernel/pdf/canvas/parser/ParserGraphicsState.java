package com.itextpdf.kernel.pdf.canvas.parser;

import com.itextpdf.kernel.geom.Matrix;
import com.itextpdf.kernel.geom.Path;
import com.itextpdf.kernel.geom.ShapeTransformUtil;
import com.itextpdf.kernel.pdf.canvas.CanvasGraphicsState;
import com.itextpdf.kernel.pdf.canvas.parser.clipper.ClipperBridge;
import com.itextpdf.kernel.pdf.canvas.parser.clipper.DefaultClipper;
import com.itextpdf.kernel.pdf.canvas.parser.clipper.IClipper;
import com.itextpdf.kernel.pdf.canvas.parser.clipper.PolyTree;

/* JADX INFO: loaded from: classes6.dex */
public class ParserGraphicsState extends CanvasGraphicsState {
    private Path clippingPath;

    ParserGraphicsState() {
    }

    ParserGraphicsState(ParserGraphicsState parserGraphicsState) {
        super(parserGraphicsState);
        if (parserGraphicsState.clippingPath != null) {
            this.clippingPath = new Path(parserGraphicsState.clippingPath);
        }
    }

    @Override // com.itextpdf.kernel.pdf.canvas.CanvasGraphicsState
    public void updateCtm(Matrix matrix) {
        super.updateCtm(matrix);
        if (this.clippingPath != null) {
            transformClippingPath(matrix);
        }
    }

    public void clip(Path path, int i) {
        Path path2 = this.clippingPath;
        if (path2 == null || path2.isEmpty()) {
            return;
        }
        Path path3 = new Path(path);
        path3.closeAllSubpaths();
        DefaultClipper defaultClipper = new DefaultClipper();
        ClipperBridge.addPath(defaultClipper, this.clippingPath, IClipper.PolyType.SUBJECT);
        ClipperBridge.addPath(defaultClipper, path3, IClipper.PolyType.CLIP);
        PolyTree polyTree = new PolyTree();
        defaultClipper.execute(IClipper.ClipType.INTERSECTION, polyTree, IClipper.PolyFillType.NON_ZERO, ClipperBridge.getFillType(i));
        this.clippingPath = ClipperBridge.convertToPath(polyTree);
    }

    public Path getClippingPath() {
        return this.clippingPath;
    }

    public void setClippingPath(Path path) {
        Path path2 = new Path(path);
        path2.closeAllSubpaths();
        this.clippingPath = path2;
    }

    private void transformClippingPath(Matrix matrix) {
        this.clippingPath = ShapeTransformUtil.transformPath(this.clippingPath, matrix);
    }
}
