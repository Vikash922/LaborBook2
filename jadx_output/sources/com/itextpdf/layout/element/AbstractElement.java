package com.itextpdf.layout.element;

import com.itextpdf.kernel.pdf.action.PdfAction;
import com.itextpdf.layout.ElementPropertyContainer;
import com.itextpdf.layout.Style;
import com.itextpdf.layout.element.IElement;
import com.itextpdf.layout.renderer.IRenderer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractElement<T extends IElement> extends ElementPropertyContainer<T> implements IAbstractElement {
    protected java.util.List<IElement> childElements = new ArrayList();
    protected IRenderer nextRenderer;
    protected Set<Style> styles;

    protected abstract IRenderer makeNewRenderer();

    @Override // com.itextpdf.layout.element.IElement
    public IRenderer getRenderer() {
        IRenderer iRenderer = this.nextRenderer;
        if (iRenderer != null) {
            this.nextRenderer = iRenderer.getNextRenderer();
            return iRenderer;
        }
        return makeNewRenderer();
    }

    @Override // com.itextpdf.layout.element.IElement
    public void setNextRenderer(IRenderer iRenderer) {
        this.nextRenderer = iRenderer;
    }

    @Override // com.itextpdf.layout.element.IElement
    public IRenderer createRendererSubTree() {
        IRenderer renderer = getRenderer();
        Iterator<IElement> it = this.childElements.iterator();
        while (it.hasNext()) {
            renderer.addChild(it.next().createRendererSubTree());
        }
        return renderer;
    }

    @Override // com.itextpdf.layout.ElementPropertyContainer, com.itextpdf.layout.IPropertyContainer
    public boolean hasProperty(int i) {
        boolean zHasProperty = super.hasProperty(i);
        Set<Style> set = this.styles;
        if (set == null || set.size() <= 0 || zHasProperty) {
            return zHasProperty;
        }
        Iterator<Style> it = this.styles.iterator();
        while (it.hasNext()) {
            if (it.next().hasProperty(i)) {
                return true;
            }
        }
        return zHasProperty;
    }

    @Override // com.itextpdf.layout.ElementPropertyContainer, com.itextpdf.layout.IPropertyContainer
    public <T1> T1 getProperty(int i) {
        T1 t1 = (T1) super.getProperty(i);
        Set<Style> set = this.styles;
        if (set != null && set.size() > 0 && t1 == null && !super.hasProperty(i)) {
            for (Style style : this.styles) {
                Object property = style.getProperty(i);
                if (property != null || style.hasProperty(i)) {
                    t1 = (T1) property;
                }
            }
        }
        return t1;
    }

    public T addStyle(Style style) {
        if (style == null) {
            throw new IllegalArgumentException("Style can not be null.");
        }
        if (this.styles == null) {
            this.styles = new LinkedHashSet();
        }
        this.styles.add(style);
        return this;
    }

    @Override // com.itextpdf.layout.element.IAbstractElement
    public java.util.List<IElement> getChildren() {
        return this.childElements;
    }

    public boolean isEmpty() {
        return this.childElements.size() == 0;
    }

    public T setAction(PdfAction pdfAction) {
        setProperty(1, pdfAction);
        return this;
    }

    public T setPageNumber(int i) {
        setProperty(51, Integer.valueOf(i));
        return this;
    }
}
