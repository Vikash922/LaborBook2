package com.itextpdf.layout.renderer;

import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.geom.PageSize;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfPage;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.layout.Document;
import com.itextpdf.layout.element.AreaBreak;
import com.itextpdf.layout.exceptions.LayoutExceptionMessageConstant;
import com.itextpdf.layout.layout.LayoutArea;
import com.itextpdf.layout.layout.LayoutResult;
import com.itextpdf.layout.layout.RootLayoutArea;
import com.itextpdf.layout.properties.AreaBreakType;
import com.itextpdf.layout.properties.Transform;
import com.itextpdf.layout.tagging.LayoutTaggingHelper;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class DocumentRenderer extends RootRenderer {
    protected Document document;
    protected TargetCounterHandler targetCounterHandler;
    protected List<Integer> wrappedContentPage;

    public DocumentRenderer(Document document) {
        this(document, true);
    }

    public DocumentRenderer(Document document, boolean z) {
        this.wrappedContentPage = new ArrayList();
        this.targetCounterHandler = new TargetCounterHandler();
        this.document = document;
        this.immediateFlush = z;
        this.modelElement = document;
    }

    public TargetCounterHandler getTargetCounterHandler() {
        return this.targetCounterHandler;
    }

    public boolean isRelayoutRequired() {
        return this.targetCounterHandler.isRelayoutRequired();
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer, com.itextpdf.layout.renderer.IRenderer
    public LayoutArea getOccupiedArea() {
        throw new IllegalStateException("Not applicable for DocumentRenderer");
    }

    @Override // com.itextpdf.layout.renderer.IRenderer
    public IRenderer getNextRenderer() {
        DocumentRenderer documentRenderer = new DocumentRenderer(this.document, this.immediateFlush);
        documentRenderer.targetCounterHandler = new TargetCounterHandler(this.targetCounterHandler);
        return documentRenderer;
    }

    @Override // com.itextpdf.layout.renderer.RootRenderer
    protected LayoutArea updateCurrentArea(LayoutResult layoutResult) {
        flushWaitingDrawingElements(false);
        LayoutTaggingHelper layoutTaggingHelper = (LayoutTaggingHelper) getProperty(108);
        if (layoutTaggingHelper != null) {
            layoutTaggingHelper.releaseFinishedHints();
        }
        AreaBreak areaBreak = (layoutResult == null || layoutResult.getAreaBreak() == null) ? null : layoutResult.getAreaBreak();
        int pageNumber = this.currentArea != null ? this.currentArea.getPageNumber() : 0;
        if (areaBreak != null && areaBreak.getType() == AreaBreakType.LAST_PAGE) {
            while (pageNumber < this.document.getPdfDocument().getNumberOfPages()) {
                possiblyFlushPreviousPage(pageNumber);
                pageNumber++;
            }
        } else {
            possiblyFlushPreviousPage(pageNumber);
            pageNumber++;
        }
        PageSize pageSize = areaBreak != null ? areaBreak.getPageSize() : null;
        while (this.document.getPdfDocument().getNumberOfPages() >= pageNumber && this.document.getPdfDocument().getPage(pageNumber).isFlushed()) {
            pageNumber++;
        }
        PageSize pageSizeEnsureDocumentHasNPages = ensureDocumentHasNPages(pageNumber, pageSize);
        if (pageSizeEnsureDocumentHasNPages == null) {
            pageSizeEnsureDocumentHasNPages = new PageSize(this.document.getPdfDocument().getPage(pageNumber).getTrimBox());
        }
        RootLayoutArea rootLayoutArea = new RootLayoutArea(pageNumber, getCurrentPageEffectiveArea(pageSizeEnsureDocumentHasNPages));
        this.currentArea = rootLayoutArea;
        return rootLayoutArea;
    }

    @Override // com.itextpdf.layout.renderer.RootRenderer
    protected void flushSingleRenderer(IRenderer iRenderer) {
        linkRenderToDocument(iRenderer, this.document.getPdfDocument());
        Transform transform = (Transform) iRenderer.getProperty(53);
        if (!this.waitingDrawingElements.contains(iRenderer)) {
            processWaitingDrawing(iRenderer, transform, this.waitingDrawingElements);
            if (FloatingHelper.isRendererFloating(iRenderer) || transform != null) {
                return;
            }
        }
        if (iRenderer.isFlushed() || iRenderer.getOccupiedArea() == null) {
            return;
        }
        int pageNumber = iRenderer.getOccupiedArea().getPageNumber();
        PdfDocument pdfDocument = this.document.getPdfDocument();
        ensureDocumentHasNPages(pageNumber, null);
        PdfPage page = pdfDocument.getPage(pageNumber);
        if (page.isFlushed()) {
            throw new PdfException(LayoutExceptionMessageConstant.CANNOT_DRAW_ELEMENTS_ON_ALREADY_FLUSHED_PAGES);
        }
        boolean z = pdfDocument.getReader() != null && pdfDocument.getWriter() != null && page.getContentStreamCount() > 0 && page.getLastContentStream().getLength() > 0 && !this.wrappedContentPage.contains(Integer.valueOf(pageNumber)) && pdfDocument.getNumberOfPages() >= pageNumber;
        this.wrappedContentPage.add(Integer.valueOf(pageNumber));
        if (pdfDocument.isTagged()) {
            pdfDocument.getTagStructureContext().getAutoTaggingPointer().setPageForTagging(page);
        }
        iRenderer.draw(new DrawContext(pdfDocument, new PdfCanvas(page, z), pdfDocument.isTagged()));
    }

    protected PageSize addNewPage(PageSize pageSize) {
        if (pageSize != null) {
            this.document.getPdfDocument().addNewPage(pageSize);
        } else {
            this.document.getPdfDocument().addNewPage();
        }
        return pageSize != null ? pageSize : this.document.getPdfDocument().getDefaultPageSize();
    }

    protected PageSize ensureDocumentHasNPages(int i, PageSize pageSize) {
        PageSize pageSizeAddNewPage = null;
        while (this.document.getPdfDocument().getNumberOfPages() < i) {
            pageSizeAddNewPage = addNewPage(pageSize);
        }
        return pageSizeAddNewPage;
    }

    private Rectangle getCurrentPageEffectiveArea(PageSize pageSize) {
        float fFloatValue = getPropertyAsFloat(44).floatValue();
        float fFloatValue2 = getPropertyAsFloat(43).floatValue();
        float fFloatValue3 = getPropertyAsFloat(46).floatValue();
        return new Rectangle(pageSize.getLeft() + fFloatValue, pageSize.getBottom() + fFloatValue2, (pageSize.getWidth() - fFloatValue) - getPropertyAsFloat(45).floatValue(), (pageSize.getHeight() - fFloatValue2) - fFloatValue3);
    }

    private void possiblyFlushPreviousPage(int i) {
        if (!this.immediateFlush || i <= 1) {
            return;
        }
        this.document.getPdfDocument().getPage(i - 1).flush();
    }
}
