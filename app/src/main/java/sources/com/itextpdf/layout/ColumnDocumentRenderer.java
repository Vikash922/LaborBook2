package com.itextpdf.layout;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.layout.layout.LayoutArea;
import com.itextpdf.layout.layout.LayoutResult;
import com.itextpdf.layout.layout.RootLayoutArea;
import com.itextpdf.layout.properties.AreaBreakType;
import com.itextpdf.layout.renderer.DocumentRenderer;
import com.itextpdf.layout.renderer.IRenderer;

/* JADX INFO: loaded from: classes6.dex */
public class ColumnDocumentRenderer extends DocumentRenderer {
    protected Rectangle[] columns;
    protected int nextAreaNumber;

    public ColumnDocumentRenderer(Document document, Rectangle[] rectangleArr) {
        super(document);
        this.columns = rectangleArr;
    }

    public ColumnDocumentRenderer(Document document, boolean z, Rectangle[] rectangleArr) {
        super(document, z);
        this.columns = rectangleArr;
    }

    public int getNextAreaNumber() {
        return this.nextAreaNumber;
    }

    @Override // com.itextpdf.layout.renderer.DocumentRenderer, com.itextpdf.layout.renderer.IRenderer
    public IRenderer getNextRenderer() {
        return new ColumnDocumentRenderer(this.document, this.immediateFlush, this.columns);
    }

    @Override // com.itextpdf.layout.renderer.DocumentRenderer, com.itextpdf.layout.renderer.RootRenderer
    protected LayoutArea updateCurrentArea(LayoutResult layoutResult) {
        if (layoutResult != null && layoutResult.getAreaBreak() != null && layoutResult.getAreaBreak().getType() != AreaBreakType.NEXT_AREA) {
            this.nextAreaNumber = 0;
        }
        if (this.nextAreaNumber % this.columns.length == 0) {
            super.updateCurrentArea(layoutResult);
        }
        int pageNumber = this.currentArea.getPageNumber();
        Rectangle[] rectangleArr = this.columns;
        int i = this.nextAreaNumber;
        this.nextAreaNumber = i + 1;
        RootLayoutArea rootLayoutArea = new RootLayoutArea(pageNumber, rectangleArr[i % rectangleArr.length].mo3120clone());
        this.currentArea = rootLayoutArea;
        return rootLayoutArea;
    }
}
