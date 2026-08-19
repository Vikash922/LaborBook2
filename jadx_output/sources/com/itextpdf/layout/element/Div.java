package com.itextpdf.layout.element;

import com.itextpdf.kernel.pdf.tagging.StandardRoles;
import com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties;
import com.itextpdf.kernel.pdf.tagutils.DefaultAccessibilityProperties;
import com.itextpdf.layout.renderer.DivRenderer;
import com.itextpdf.layout.renderer.IRenderer;

/* JADX INFO: loaded from: classes6.dex */
public class Div extends BlockElement<Div> {
    protected DefaultAccessibilityProperties tagProperties;

    public Div add(IBlockElement iBlockElement) {
        this.childElements.add(iBlockElement);
        return this;
    }

    public Div add(Image image) {
        this.childElements.add(image);
        return this;
    }

    public Div add(AreaBreak areaBreak) {
        this.childElements.add(areaBreak);
        return this;
    }

    @Override // com.itextpdf.layout.tagging.IAccessibleElement
    public AccessibilityProperties getAccessibilityProperties() {
        if (this.tagProperties == null) {
            this.tagProperties = new DefaultAccessibilityProperties(StandardRoles.DIV);
        }
        return this.tagProperties;
    }

    public Div setFillAvailableArea(boolean z) {
        setProperty(86, Boolean.valueOf(z));
        return this;
    }

    public Div setFillAvailableAreaOnSplit(boolean z) {
        setProperty(87, Boolean.valueOf(z));
        return this;
    }

    @Override // com.itextpdf.layout.element.AbstractElement
    protected IRenderer makeNewRenderer() {
        return new DivRenderer(this);
    }
}
