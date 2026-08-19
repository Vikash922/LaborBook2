package com.itextpdf.layout.element;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.action.PdfAction;
import com.itextpdf.kernel.pdf.annot.PdfLinkAnnotation;
import com.itextpdf.kernel.pdf.navigation.PdfDestination;
import com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties;
import com.itextpdf.kernel.pdf.tagutils.DefaultAccessibilityProperties;
import com.itextpdf.layout.renderer.IRenderer;
import com.itextpdf.layout.renderer.LinkRenderer;

/* JADX INFO: loaded from: classes6.dex */
public class Link extends Text {
    public Link(String str, PdfLinkAnnotation pdfLinkAnnotation) {
        super(str);
        setProperty(88, pdfLinkAnnotation);
    }

    public Link(String str, PdfAction pdfAction) {
        this(str, (PdfLinkAnnotation) new PdfLinkAnnotation(new Rectangle(0.0f, 0.0f, 0.0f, 0.0f)).setAction(pdfAction).setFlags(4));
    }

    public Link(String str, PdfDestination pdfDestination) {
        this(str, (PdfLinkAnnotation) new PdfLinkAnnotation(new Rectangle(0.0f, 0.0f, 0.0f, 0.0f)).setDestination(pdfDestination).setFlags(4));
    }

    public PdfLinkAnnotation getLinkAnnotation() {
        return (PdfLinkAnnotation) getProperty(88);
    }

    @Override // com.itextpdf.layout.element.Text, com.itextpdf.layout.tagging.IAccessibleElement
    public AccessibilityProperties getAccessibilityProperties() {
        if (this.tagProperties == null) {
            this.tagProperties = new DefaultAccessibilityProperties("Link");
        }
        return this.tagProperties;
    }

    @Override // com.itextpdf.layout.element.Text, com.itextpdf.layout.element.AbstractElement
    protected IRenderer makeNewRenderer() {
        return new LinkRenderer(this, this.text);
    }
}
