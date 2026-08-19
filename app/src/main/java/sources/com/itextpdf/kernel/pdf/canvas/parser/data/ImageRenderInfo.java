package com.itextpdf.kernel.pdf.canvas.parser.data;

import com.itextpdf.kernel.geom.Matrix;
import com.itextpdf.kernel.geom.Vector;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfStream;
import com.itextpdf.kernel.pdf.canvas.CanvasGraphicsState;
import com.itextpdf.kernel.pdf.canvas.CanvasTag;
import com.itextpdf.kernel.pdf.xobject.PdfImageXObject;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Stack;

/* JADX INFO: loaded from: classes6.dex */
public class ImageRenderInfo extends AbstractRenderInfo {
    private final List<CanvasTag> canvasTagHierarchy;
    private final PdfDictionary colorSpaceDictionary;
    private final Matrix ctm;
    private final PdfImageXObject image;
    private final boolean isInline;
    private final PdfName resourceName;

    public ImageRenderInfo(Stack<CanvasTag> stack, CanvasGraphicsState canvasGraphicsState, Matrix matrix, PdfStream pdfStream, PdfName pdfName, PdfDictionary pdfDictionary, boolean z) {
        super(canvasGraphicsState);
        this.canvasTagHierarchy = Collections.unmodifiableList(new ArrayList(stack));
        this.resourceName = pdfName;
        this.ctm = matrix;
        this.image = new PdfImageXObject(pdfStream);
        this.colorSpaceDictionary = pdfDictionary;
        this.isInline = z;
    }

    public PdfImageXObject getImage() {
        return this.image;
    }

    public PdfName getImageResourceName() {
        return this.resourceName;
    }

    public Vector getStartPoint() {
        return new Vector(0.0f, 0.0f, 1.0f).cross(this.ctm);
    }

    public Matrix getImageCtm() {
        return this.ctm;
    }

    public float getArea() {
        return this.ctm.getDeterminant();
    }

    public boolean isInline() {
        return this.isInline;
    }

    public PdfDictionary getColorSpaceDictionary() {
        return this.colorSpaceDictionary;
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
