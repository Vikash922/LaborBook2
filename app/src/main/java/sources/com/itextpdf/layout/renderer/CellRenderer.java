package com.itextpdf.layout.renderer;

import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.geom.AffineTransform;
import com.itextpdf.kernel.geom.Matrix;
import com.itextpdf.kernel.geom.NoninvertibleTransformException;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.layout.IPropertyContainer;
import com.itextpdf.layout.borders.Border;
import com.itextpdf.layout.element.Cell;
import com.itextpdf.layout.properties.BorderCollapsePropertyValue;
import com.itextpdf.layout.properties.UnitValue;

/* JADX INFO: loaded from: classes6.dex */
public class CellRenderer extends BlockRenderer {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    @Override // com.itextpdf.layout.renderer.AbstractRenderer
    protected Float retrieveWidth(float f) {
        return null;
    }

    public CellRenderer(Cell cell) {
        super(cell);
        setProperty(60, Integer.valueOf(cell.getRowspan()));
        setProperty(16, Integer.valueOf(cell.getColspan()));
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer, com.itextpdf.layout.renderer.IRenderer
    public IPropertyContainer getModelElement() {
        return super.getModelElement();
    }

    @Override // com.itextpdf.layout.renderer.BlockRenderer
    protected AbstractRenderer createSplitRenderer(int i) {
        CellRenderer cellRenderer = (CellRenderer) getNextRenderer();
        cellRenderer.parent = this.parent;
        cellRenderer.modelElement = this.modelElement;
        cellRenderer.occupiedArea = this.occupiedArea;
        cellRenderer.isLastRendererForModelElement = false;
        cellRenderer.addAllProperties(getOwnProperties());
        return cellRenderer;
    }

    @Override // com.itextpdf.layout.renderer.BlockRenderer
    protected AbstractRenderer createOverflowRenderer(int i) {
        CellRenderer cellRenderer = (CellRenderer) getNextRenderer();
        cellRenderer.parent = this.parent;
        cellRenderer.modelElement = this.modelElement;
        cellRenderer.addAllProperties(getOwnProperties());
        return cellRenderer;
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer
    public void drawBackground(DrawContext drawContext) {
        Float f;
        boolean z;
        PdfCanvas canvas = drawContext.getCanvas();
        Matrix ctm = canvas.getGraphicsState().getCtm();
        Float propertyAsFloat = getPropertyAsFloat(55);
        boolean z2 = propertyAsFloat != null && hasProperty(6);
        boolean zHasOwnProperty = hasOwnProperty(55);
        if (z2) {
            z = z2;
            f = propertyAsFloat;
            try {
                AffineTransform affineTransformCreateInverse = new AffineTransform(ctm.get(0), ctm.get(1), ctm.get(3), ctm.get(4), ctm.get(6), ctm.get(7)).createInverse();
                affineTransformCreateInverse.concatenate(new AffineTransform());
                canvas.concatMatrix(affineTransformCreateInverse);
                setProperty(55, null);
            } catch (NoninvertibleTransformException e) {
                throw new PdfException("A noninvertible matrix has been parsed. The behaviour is unpredictable.", (Throwable) e);
            }
        } else {
            f = propertyAsFloat;
            z = z2;
        }
        super.drawBackground(drawContext);
        if (z) {
            if (zHasOwnProperty) {
                setProperty(55, f);
            } else {
                deleteOwnProperty(55);
            }
            canvas.concatMatrix(new AffineTransform(ctm.get(0), ctm.get(1), ctm.get(3), ctm.get(4), ctm.get(6), ctm.get(7)));
        }
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer
    public void drawBorder(DrawContext drawContext) {
        if (BorderCollapsePropertyValue.SEPARATE.equals(this.parent.getProperty(114))) {
            super.drawBorder(drawContext);
        }
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer
    protected Rectangle applyBorderBox(Rectangle rectangle, Border[] borderArr, boolean z) {
        if (BorderCollapsePropertyValue.SEPARATE.equals(this.parent.getProperty(114))) {
            super.applyBorderBox(rectangle, borderArr, z);
        }
        return rectangle;
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer
    protected Rectangle applyMargins(Rectangle rectangle, UnitValue[] unitValueArr, boolean z) {
        if (BorderCollapsePropertyValue.SEPARATE.equals(this.parent.getProperty(114))) {
            applySpacings(rectangle, z);
        }
        return rectangle;
    }

    protected Rectangle applySpacings(Rectangle rectangle, boolean z) {
        if (BorderCollapsePropertyValue.SEPARATE.equals(this.parent.getProperty(114))) {
            Float f = (Float) this.parent.getProperty(116);
            Float f2 = (Float) this.parent.getProperty(115);
            float[] fArr = new float[4];
            for (int i = 0; i < 4; i++) {
                float fFloatValue = 0.0f;
                if (i % 2 == 0) {
                    if (f != null) {
                        fFloatValue = f.floatValue();
                    }
                } else if (f2 != null) {
                    fFloatValue = f2.floatValue();
                }
                fArr[i] = fFloatValue;
            }
            applySpacings(rectangle, fArr, z);
        }
        return rectangle;
    }

    protected Rectangle applySpacings(Rectangle rectangle, float[] fArr, boolean z) {
        if (BorderCollapsePropertyValue.SEPARATE.equals(this.parent.getProperty(114))) {
            rectangle.applyMargins(fArr[0] / 2.0f, fArr[1] / 2.0f, fArr[2] / 2.0f, fArr[3] / 2.0f, z);
        }
        return rectangle;
    }

    @Override // com.itextpdf.layout.renderer.IRenderer
    public IRenderer getNextRenderer() {
        logWarningIfGetNextRendererNotOverridden(CellRenderer.class, getClass());
        return new CellRenderer((Cell) getModelElement());
    }
}
