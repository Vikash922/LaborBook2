package com.itextpdf.layout.element;

import com.itextpdf.kernel.pdf.canvas.draw.ILineDrawer;
import com.itextpdf.kernel.pdf.tagging.StandardRoles;
import com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties;
import com.itextpdf.kernel.pdf.tagutils.DefaultAccessibilityProperties;
import com.itextpdf.layout.renderer.IRenderer;
import com.itextpdf.layout.renderer.LineSeparatorRenderer;

/* JADX INFO: loaded from: classes6.dex */
public class LineSeparator extends BlockElement<LineSeparator> {
    protected DefaultAccessibilityProperties tagProperties;

    public LineSeparator(ILineDrawer iLineDrawer) {
        setProperty(35, iLineDrawer);
    }

    @Override // com.itextpdf.layout.tagging.IAccessibleElement
    public AccessibilityProperties getAccessibilityProperties() {
        if (this.tagProperties == null) {
            this.tagProperties = new DefaultAccessibilityProperties(StandardRoles.ARTIFACT);
        }
        return this.tagProperties;
    }

    @Override // com.itextpdf.layout.element.AbstractElement
    protected IRenderer makeNewRenderer() {
        return new LineSeparatorRenderer(this);
    }
}
