package com.itextpdf.layout;

import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfPage;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.kernel.pdf.xobject.PdfFormXObject;
import com.itextpdf.layout.element.IElement;
import com.itextpdf.layout.exceptions.LayoutExceptionMessageConstant;
import com.itextpdf.layout.renderer.CanvasRenderer;
import com.itextpdf.layout.renderer.IRenderer;
import com.itextpdf.layout.renderer.RootRenderer;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import java.util.Iterator;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class Canvas extends RootElement<Canvas> {
    private boolean isCanvasOfPage;
    protected PdfPage page;
    protected PdfCanvas pdfCanvas;
    protected Rectangle rootArea;

    public Canvas(PdfPage pdfPage, Rectangle rectangle) {
        this(initPdfCanvasOrThrowIfPageIsFlushed(pdfPage), rectangle);
        enableAutoTagging(pdfPage);
        this.isCanvasOfPage = true;
    }

    public Canvas(PdfCanvas pdfCanvas, Rectangle rectangle) {
        this.pdfDocument = pdfCanvas.getDocument();
        this.pdfCanvas = pdfCanvas;
        this.rootArea = rectangle;
    }

    public Canvas(PdfCanvas pdfCanvas, Rectangle rectangle, boolean z) {
        this(pdfCanvas, rectangle);
        this.immediateFlush = z;
    }

    public Canvas(PdfFormXObject pdfFormXObject, PdfDocument pdfDocument) {
        this(new PdfCanvas(pdfFormXObject, pdfDocument), pdfFormXObject.getBBox().toRectangle());
    }

    public PdfDocument getPdfDocument() {
        return this.pdfDocument;
    }

    public Rectangle getRootArea() {
        return this.rootArea;
    }

    public PdfCanvas getPdfCanvas() {
        return this.pdfCanvas;
    }

    public void setRenderer(CanvasRenderer canvasRenderer) {
        this.rootRenderer = canvasRenderer;
    }

    public PdfPage getPage() {
        return this.page;
    }

    public void enableAutoTagging(PdfPage pdfPage) {
        if (isCanvasOfPage() && this.page != pdfPage) {
            LoggerFactory.getLogger((Class<?>) Canvas.class).error(IoLogMessageConstant.PASSED_PAGE_SHALL_BE_ON_WHICH_CANVAS_WILL_BE_RENDERED);
        }
        this.page = pdfPage;
    }

    public boolean isAutoTaggingEnabled() {
        return this.page != null;
    }

    public boolean isCanvasOfPage() {
        return this.isCanvasOfPage;
    }

    public void relayout() {
        if (this.immediateFlush) {
            throw new IllegalStateException("Operation not supported with immediate flush");
        }
        IRenderer nextRenderer = this.rootRenderer != null ? this.rootRenderer.getNextRenderer() : null;
        if (nextRenderer == null || !(nextRenderer instanceof RootRenderer)) {
            nextRenderer = new CanvasRenderer(this, this.immediateFlush);
        }
        this.rootRenderer = (RootRenderer) nextRenderer;
        Iterator<IElement> it = this.childElements.iterator();
        while (it.hasNext()) {
            createAndAddRendererSubTree(it.next());
        }
    }

    public void flush() {
        this.rootRenderer.flush();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.rootRenderer != null) {
            this.rootRenderer.close();
        }
    }

    @Override // com.itextpdf.layout.RootElement
    protected RootRenderer ensureRootRendererNotNull() {
        if (this.rootRenderer == null) {
            this.rootRenderer = new CanvasRenderer(this, this.immediateFlush);
        }
        return this.rootRenderer;
    }

    private static PdfCanvas initPdfCanvasOrThrowIfPageIsFlushed(PdfPage pdfPage) {
        if (pdfPage.isFlushed()) {
            throw new PdfException(LayoutExceptionMessageConstant.CANNOT_DRAW_ELEMENTS_ON_ALREADY_FLUSHED_PAGES);
        }
        return new PdfCanvas(pdfPage);
    }
}
