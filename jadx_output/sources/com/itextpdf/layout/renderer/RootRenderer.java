package com.itextpdf.layout.renderer;

import com.itextpdf.commons.actions.EventManager;
import com.itextpdf.commons.actions.sequence.AbstractIdentifiableElement;
import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.actions.events.LinkDocumentIdEvent;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.layout.layout.LayoutArea;
import com.itextpdf.layout.layout.LayoutContext;
import com.itextpdf.layout.layout.LayoutResult;
import com.itextpdf.layout.layout.RootLayoutArea;
import com.itextpdf.layout.margincollapse.MarginsCollapseHandler;
import com.itextpdf.layout.tagging.LayoutTaggingHelper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public abstract class RootRenderer extends AbstractRenderer {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    protected RootLayoutArea currentArea;
    List<Rectangle> floatRendererAreas;
    private LayoutArea initialCurrentArea;
    private IRenderer keepWithNextHangingRenderer;
    private LayoutResult keepWithNextHangingRendererLayoutResult;
    private MarginsCollapseHandler marginsCollapseHandler;
    protected boolean immediateFlush = true;
    protected List<IRenderer> waitingDrawingElements = new ArrayList();
    private List<IRenderer> waitingNextPageRenderers = new ArrayList();
    private boolean floatOverflowedCompletely = false;

    protected abstract void flushSingleRenderer(IRenderer iRenderer);

    protected abstract LayoutArea updateCurrentArea(LayoutResult layoutResult);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0246  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x024b  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x025e  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0273  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00f2 A[PHI: r15
      0x00f2: PHI (r15v3 ??) = (r15v12 ??), (r15v13 ??) binds: [B:36:0x00cf, B:41:0x00f0] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v11 */
    /* JADX WARN: Type inference failed for: r15v12 */
    /* JADX WARN: Type inference failed for: r15v13 */
    /* JADX WARN: Type inference failed for: r15v14 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v4, types: [com.itextpdf.layout.layout.LayoutResult] */
    /* JADX WARN: Type inference failed for: r15v5 */
    /* JADX WARN: Type inference failed for: r15v6, types: [com.itextpdf.layout.layout.LayoutResult] */
    /* JADX WARN: Type inference failed for: r15v8, types: [com.itextpdf.layout.layout.LayoutResult] */
    /* JADX WARN: Type inference failed for: r17v0, types: [com.itextpdf.layout.renderer.AbstractRenderer, com.itextpdf.layout.renderer.IRenderer, com.itextpdf.layout.renderer.RootRenderer] */
    @Override // com.itextpdf.layout.renderer.AbstractRenderer, com.itextpdf.layout.renderer.IRenderer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addChild(com.itextpdf.layout.renderer.IRenderer r18) {
        /*
            Method dump skipped, instruction units count: 803
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.layout.renderer.RootRenderer.addChild(com.itextpdf.layout.renderer.IRenderer):void");
    }

    public void flush() {
        Iterator<IRenderer> it = this.childRenderers.iterator();
        while (it.hasNext()) {
            flushSingleRenderer(it.next());
        }
        Iterator<IRenderer> it2 = this.positionedRenderers.iterator();
        while (it2.hasNext()) {
            flushSingleRenderer(it2.next());
        }
        this.childRenderers.clear();
        this.positionedRenderers.clear();
    }

    public void close() {
        addAllWaitingNextPageRenderers();
        IRenderer iRenderer = this.keepWithNextHangingRenderer;
        if (iRenderer != null) {
            iRenderer.setProperty(81, false);
            IRenderer iRenderer2 = this.keepWithNextHangingRenderer;
            this.keepWithNextHangingRenderer = null;
            addChild(iRenderer2);
        }
        if (!this.immediateFlush) {
            flush();
        }
        flushWaitingDrawingElements(true);
        LayoutTaggingHelper layoutTaggingHelper = (LayoutTaggingHelper) getProperty(108);
        if (layoutTaggingHelper != null) {
            layoutTaggingHelper.releaseAllHints();
        }
    }

    @Override // com.itextpdf.layout.renderer.IRenderer
    public LayoutResult layout(LayoutContext layoutContext) {
        throw new IllegalStateException("Layout is not supported for root renderers.");
    }

    public LayoutArea getCurrentArea() {
        if (this.currentArea == null) {
            updateCurrentAndInitialArea(null);
        }
        return this.currentArea;
    }

    protected void shrinkCurrentAreaAndProcessRenderer(IRenderer iRenderer, List<IRenderer> list, LayoutResult layoutResult) {
        if (this.currentArea != null) {
            float height = layoutResult.getOccupiedArea().getBBox().getHeight();
            this.currentArea.getBBox().setHeight(this.currentArea.getBBox().getHeight() - height);
            if (this.currentArea.isEmptyArea() && (height > 0.0f || FloatingHelper.isRendererFloating(iRenderer))) {
                this.currentArea.setEmptyArea(false);
            }
            processRenderer(iRenderer, list);
        }
        if (this.immediateFlush) {
            return;
        }
        this.childRenderers.addAll(list);
    }

    protected void flushWaitingDrawingElements() {
        flushWaitingDrawingElements(true);
    }

    void flushWaitingDrawingElements(boolean z) {
        HashSet hashSet = new HashSet();
        for (int i = 0; i < this.waitingDrawingElements.size(); i++) {
            IRenderer iRenderer = this.waitingDrawingElements.get(i);
            if (z || (iRenderer.getOccupiedArea() != null && iRenderer.getOccupiedArea().getPageNumber() < this.currentArea.getPageNumber())) {
                flushSingleRenderer(iRenderer);
                hashSet.add(iRenderer);
            } else if (iRenderer.getOccupiedArea() == null) {
                hashSet.add(iRenderer);
            }
        }
        this.waitingDrawingElements.removeAll(hashSet);
    }

    final void linkRenderToDocument(IRenderer iRenderer, PdfDocument pdfDocument) {
        if (iRenderer == null) {
            return;
        }
        Object modelElement = iRenderer.getModelElement();
        if (modelElement instanceof AbstractIdentifiableElement) {
            EventManager.getInstance().onEvent(new LinkDocumentIdEvent(pdfDocument, (AbstractIdentifiableElement) modelElement));
        }
        List<IRenderer> childRenderers = iRenderer.getChildRenderers();
        if (childRenderers != null) {
            Iterator<IRenderer> it = childRenderers.iterator();
            while (it.hasNext()) {
                linkRenderToDocument(it.next(), pdfDocument);
            }
        }
    }

    private void processRenderer(IRenderer iRenderer, List<IRenderer> list) {
        alignChildHorizontally(iRenderer, this.currentArea.getBBox());
        if (this.immediateFlush) {
            flushSingleRenderer(iRenderer);
        } else {
            list.add(iRenderer);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x01ad  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void processWaitingKeepWithNextElement(com.itextpdf.layout.renderer.IRenderer r14) {
        /*
            Method dump skipped, instruction units count: 465
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.layout.renderer.RootRenderer.processWaitingKeepWithNextElement(com.itextpdf.layout.renderer.IRenderer):void");
    }

    private void updateCurrentAndInitialArea(LayoutResult layoutResult) {
        this.floatRendererAreas = new ArrayList();
        updateCurrentArea(layoutResult);
        RootLayoutArea rootLayoutArea = this.currentArea;
        this.initialCurrentArea = rootLayoutArea == null ? null : rootLayoutArea.mo3122clone();
        addWaitingNextPageRenderers();
    }

    private void addAllWaitingNextPageRenderers() {
        boolean zEquals = Boolean.TRUE.equals(getPropertyAsBoolean(89));
        while (!this.waitingNextPageRenderers.isEmpty()) {
            if (zEquals) {
                this.marginsCollapseHandler = new MarginsCollapseHandler(this, null);
            }
            updateCurrentAndInitialArea(null);
        }
    }

    private void addWaitingNextPageRenderers() {
        this.floatOverflowedCompletely = false;
        ArrayList arrayList = new ArrayList(this.waitingNextPageRenderers);
        this.waitingNextPageRenderers.clear();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            addChild((IRenderer) it.next());
        }
    }

    private boolean updateForcedPlacement(IRenderer iRenderer, IRenderer iRenderer2) {
        if (Boolean.TRUE.equals(iRenderer.getProperty(26))) {
            return false;
        }
        iRenderer2.setProperty(26, true);
        Logger logger = LoggerFactory.getLogger((Class<?>) RootRenderer.class);
        if (logger.isWarnEnabled()) {
            logger.warn(MessageFormatUtil.format("Element does not fit current area. {0}", ""));
        }
        return true;
    }

    private boolean tryDisableKeepTogether(LayoutResult layoutResult, boolean z, RootRendererAreaStateHandler rootRendererAreaStateHandler) {
        IRenderer iRenderer = null;
        for (IRenderer causeOfNothing = layoutResult.getCauseOfNothing(); causeOfNothing != null; causeOfNothing = causeOfNothing.getParent()) {
            if (Boolean.TRUE.equals(causeOfNothing.getProperty(32))) {
                iRenderer = causeOfNothing;
            }
        }
        if (iRenderer == null) {
            return false;
        }
        iRenderer.getModelElement().setProperty(32, false);
        Logger logger = LoggerFactory.getLogger((Class<?>) RootRenderer.class);
        if (logger.isWarnEnabled()) {
            logger.warn(MessageFormatUtil.format("Element does not fit current area. {0}", "KeepTogether property will be ignored."));
        }
        if (z) {
            return true;
        }
        rootRendererAreaStateHandler.attemptGoBackToStoredPreviousStateAndStoreNextState(this);
        return true;
    }
}
