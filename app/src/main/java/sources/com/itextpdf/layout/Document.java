package com.itextpdf.layout;

import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.geom.PageSize;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.layout.element.AreaBreak;
import com.itextpdf.layout.element.IBlockElement;
import com.itextpdf.layout.element.IElement;
import com.itextpdf.layout.element.ILargeElement;
import com.itextpdf.layout.renderer.DocumentRenderer;
import com.itextpdf.layout.renderer.IRenderer;
import com.itextpdf.layout.renderer.RootRenderer;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public class Document extends RootElement<Document> {
    public Document(PdfDocument pdfDocument) {
        this(pdfDocument, pdfDocument.getDefaultPageSize());
    }

    public Document(PdfDocument pdfDocument, PageSize pageSize) {
        this(pdfDocument, pageSize, true);
    }

    public Document(PdfDocument pdfDocument, PageSize pageSize, boolean z) {
        this.pdfDocument = pdfDocument;
        this.pdfDocument.setDefaultPageSize(pageSize);
        this.immediateFlush = z;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.rootRenderer != null) {
            this.rootRenderer.close();
        }
        this.pdfDocument.close();
    }

    public Document add(AreaBreak areaBreak) {
        checkClosingStatus();
        this.childElements.add(areaBreak);
        ensureRootRendererNotNull().addChild(areaBreak.createRendererSubTree());
        if (this.immediateFlush) {
            this.childElements.remove(this.childElements.size() - 1);
        }
        return this;
    }

    @Override // com.itextpdf.layout.RootElement
    public Document add(IBlockElement iBlockElement) {
        checkClosingStatus();
        super.add(iBlockElement);
        if (iBlockElement instanceof ILargeElement) {
            ILargeElement iLargeElement = (ILargeElement) iBlockElement;
            iLargeElement.setDocument(this);
            iLargeElement.flushContent();
        }
        return this;
    }

    public PdfDocument getPdfDocument() {
        return this.pdfDocument;
    }

    public void setRenderer(DocumentRenderer documentRenderer) {
        this.rootRenderer = documentRenderer;
    }

    public void flush() {
        this.rootRenderer.flush();
    }

    public void relayout() {
        if (this.immediateFlush) {
            throw new IllegalStateException("Operation not supported with immediate flush");
        }
        if (this.rootRenderer instanceof DocumentRenderer) {
            ((DocumentRenderer) this.rootRenderer).getTargetCounterHandler().prepareHandlerToRelayout();
        }
        IRenderer nextRenderer = this.rootRenderer != null ? this.rootRenderer.getNextRenderer() : null;
        if (nextRenderer == null || !(nextRenderer instanceof RootRenderer)) {
            nextRenderer = new DocumentRenderer(this, this.immediateFlush);
        }
        while (this.pdfDocument.getNumberOfPages() > 0) {
            this.pdfDocument.removePage(this.pdfDocument.getNumberOfPages());
        }
        this.rootRenderer = (RootRenderer) nextRenderer;
        Iterator<IElement> it = this.childElements.iterator();
        while (it.hasNext()) {
            createAndAddRendererSubTree(it.next());
        }
    }

    public float getLeftMargin() {
        Float f = (Float) getProperty(44);
        if (f == null) {
            f = (Float) getDefaultProperty(44);
        }
        return f.floatValue();
    }

    public void setLeftMargin(float f) {
        setProperty(44, Float.valueOf(f));
    }

    public float getRightMargin() {
        Float f = (Float) getProperty(45);
        if (f == null) {
            f = (Float) getDefaultProperty(45);
        }
        return f.floatValue();
    }

    public void setRightMargin(float f) {
        setProperty(45, Float.valueOf(f));
    }

    public float getTopMargin() {
        Float f = (Float) getProperty(46);
        if (f == null) {
            f = (Float) getDefaultProperty(46);
        }
        return f.floatValue();
    }

    public void setTopMargin(float f) {
        setProperty(46, Float.valueOf(f));
    }

    public float getBottomMargin() {
        Float f = (Float) getProperty(43);
        if (f == null) {
            f = (Float) getDefaultProperty(43);
        }
        return f.floatValue();
    }

    public void setBottomMargin(float f) {
        setProperty(43, Float.valueOf(f));
    }

    public void setMargins(float f, float f2, float f3, float f4) {
        setTopMargin(f);
        setRightMargin(f2);
        setBottomMargin(f3);
        setLeftMargin(f4);
    }

    public Rectangle getPageEffectiveArea(PageSize pageSize) {
        return new Rectangle(pageSize.getLeft() + getLeftMargin(), pageSize.getBottom() + getBottomMargin(), (pageSize.getWidth() - getLeftMargin()) - getRightMargin(), (pageSize.getHeight() - getBottomMargin()) - getTopMargin());
    }

    @Override // com.itextpdf.layout.RootElement, com.itextpdf.layout.ElementPropertyContainer, com.itextpdf.layout.IPropertyContainer
    public <T1> T1 getDefaultProperty(int i) {
        switch (i) {
            case 43:
            case 44:
            case 45:
            case 46:
                return (T1) Float.valueOf(36.0f);
            default:
                return (T1) super.getDefaultProperty(i);
        }
    }

    @Override // com.itextpdf.layout.RootElement
    protected RootRenderer ensureRootRendererNotNull() {
        if (this.rootRenderer == null) {
            this.rootRenderer = new DocumentRenderer(this, this.immediateFlush);
        }
        return this.rootRenderer;
    }

    protected void checkClosingStatus() {
        if (getPdfDocument().isClosed()) {
            throw new PdfException("Document was closed. It is impossible to execute action.");
        }
    }
}
