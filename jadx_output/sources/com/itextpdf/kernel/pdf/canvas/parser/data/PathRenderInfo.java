package com.itextpdf.kernel.pdf.canvas.parser.data;

import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.geom.Matrix;
import com.itextpdf.kernel.geom.Path;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.canvas.CanvasGraphicsState;
import com.itextpdf.kernel.pdf.canvas.CanvasTag;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Stack;

/* JADX INFO: loaded from: classes6.dex */
public class PathRenderInfo extends AbstractRenderInfo {
    public static final int FILL = 2;
    public static final int NO_OP = 0;
    public static final int STROKE = 1;
    private List<CanvasTag> canvasTagHierarchy;
    private int clippingRule;
    private boolean isClip;
    private int operation;
    private Path path;
    private int rule;

    public PathRenderInfo(Stack<CanvasTag> stack, CanvasGraphicsState canvasGraphicsState, Path path, int i, int i2, boolean z, int i3) {
        super(canvasGraphicsState);
        this.canvasTagHierarchy = Collections.unmodifiableList(new ArrayList(stack));
        this.path = path;
        this.operation = i;
        this.rule = i2;
        this.isClip = z;
        this.clippingRule = i3;
    }

    public PathRenderInfo(Stack<CanvasTag> stack, CanvasGraphicsState canvasGraphicsState, Path path, int i) {
        this(stack, canvasGraphicsState, path, i, 1, false, 1);
    }

    public Path getPath() {
        return this.path;
    }

    public int getOperation() {
        return this.operation;
    }

    public int getRule() {
        return this.rule;
    }

    public boolean isPathModifiesClippingPath() {
        return this.isClip;
    }

    public int getClippingRule() {
        return this.clippingRule;
    }

    public Matrix getCtm() {
        checkGraphicsState();
        return this.f3175gs.getCtm();
    }

    public float getLineWidth() {
        checkGraphicsState();
        return this.f3175gs.getLineWidth();
    }

    public int getLineCapStyle() {
        checkGraphicsState();
        return this.f3175gs.getLineCapStyle();
    }

    public int getLineJoinStyle() {
        checkGraphicsState();
        return this.f3175gs.getLineJoinStyle();
    }

    public float getMiterLimit() {
        checkGraphicsState();
        return this.f3175gs.getMiterLimit();
    }

    public PdfArray getLineDashPattern() {
        checkGraphicsState();
        return this.f3175gs.getDashPattern();
    }

    public Color getStrokeColor() {
        checkGraphicsState();
        return this.f3175gs.getStrokeColor();
    }

    public Color getFillColor() {
        checkGraphicsState();
        return this.f3175gs.getFillColor();
    }

    public List<CanvasTag> getCanvasTagHierarchy() {
        return this.canvasTagHierarchy;
    }

    public int getMcid() {
        for (CanvasTag canvasTag : this.canvasTagHierarchy) {
            if (canvasTag.hasMcid()) {
                return canvasTag.getMcid();
            }
        }
        return -1;
    }

    public boolean hasMcid(int i) {
        return hasMcid(i, false);
    }

    public boolean hasMcid(int i, boolean z) {
        if (z) {
            if (this.canvasTagHierarchy != null) {
                int mcid = getMcid();
                return mcid != -1 && mcid == i;
            }
        } else {
            for (CanvasTag canvasTag : this.canvasTagHierarchy) {
                if (canvasTag.hasMcid() && canvasTag.getMcid() == i) {
                    return true;
                }
            }
        }
        return false;
    }
}
