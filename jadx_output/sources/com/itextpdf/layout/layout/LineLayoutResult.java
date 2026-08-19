package com.itextpdf.layout.layout;

import com.itextpdf.layout.renderer.IRenderer;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class LineLayoutResult extends MinMaxWidthLayoutResult {
    private List<IRenderer> floatsOverflowedToNextPage;
    protected boolean splitForcedByNewline;

    public LineLayoutResult(int i, LayoutArea layoutArea, IRenderer iRenderer, IRenderer iRenderer2) {
        super(i, layoutArea, iRenderer, iRenderer2);
    }

    public LineLayoutResult(int i, LayoutArea layoutArea, IRenderer iRenderer, IRenderer iRenderer2, IRenderer iRenderer3) {
        super(i, layoutArea, iRenderer, iRenderer2, iRenderer3);
    }

    public boolean isSplitForcedByNewline() {
        return this.splitForcedByNewline;
    }

    public LineLayoutResult setSplitForcedByNewline(boolean z) {
        this.splitForcedByNewline = z;
        return this;
    }

    public List<IRenderer> getFloatsOverflowedToNextPage() {
        return this.floatsOverflowedToNextPage;
    }

    public void setFloatsOverflowedToNextPage(List<IRenderer> list) {
        this.floatsOverflowedToNextPage = list;
    }
}
