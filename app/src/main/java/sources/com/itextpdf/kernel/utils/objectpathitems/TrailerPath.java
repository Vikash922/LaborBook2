package com.itextpdf.kernel.utils.objectpathitems;

import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.svg.SvgConstants;
import java.util.Iterator;
import java.util.Stack;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

/* JADX INFO: loaded from: classes6.dex */
public final class TrailerPath extends ObjectPath {
    private static final String INITIAL_LINE = "Base cmp object: trailer. Base out object: trailer";
    private final PdfDocument cmpDocument;
    private final PdfDocument outDocument;

    public TrailerPath(PdfDocument pdfDocument, PdfDocument pdfDocument2) {
        this.outDocument = pdfDocument2;
        this.cmpDocument = pdfDocument;
    }

    public TrailerPath(TrailerPath trailerPath) {
        this.outDocument = trailerPath.getOutDocument();
        this.cmpDocument = trailerPath.getCmpDocument();
        this.path = trailerPath.getLocalPath();
    }

    public TrailerPath(PdfDocument pdfDocument, PdfDocument pdfDocument2, Stack<LocalPathItem> stack) {
        this.outDocument = pdfDocument2;
        this.cmpDocument = pdfDocument;
        this.path = stack;
    }

    public PdfDocument getOutDocument() {
        return this.outDocument;
    }

    public PdfDocument getCmpDocument() {
        return this.cmpDocument;
    }

    @Override // com.itextpdf.kernel.utils.objectpathitems.ObjectPath
    public Node toXmlNode(Document document) {
        Element elementCreateElement = document.createElement(SvgConstants.Tags.PATH);
        Element elementCreateElement2 = document.createElement("base");
        elementCreateElement2.setAttribute("cmp", "trailer");
        elementCreateElement2.setAttribute("out", "trailer");
        elementCreateElement.appendChild(elementCreateElement2);
        Iterator<LocalPathItem> it = this.path.iterator();
        while (it.hasNext()) {
            elementCreateElement.appendChild(it.next().toXmlNode(document));
        }
        return elementCreateElement;
    }

    @Override // com.itextpdf.kernel.utils.objectpathitems.ObjectPath
    public String toString() {
        StringBuilder sb = new StringBuilder(INITIAL_LINE.length());
        sb.append(INITIAL_LINE);
        for (LocalPathItem localPathItem : this.path) {
            sb.append('\n');
            sb.append(localPathItem.toString());
        }
        return sb.toString();
    }

    @Override // com.itextpdf.kernel.utils.objectpathitems.ObjectPath
    public int hashCode() {
        int iHashCode = (this.outDocument.hashCode() * 31) + this.cmpDocument.hashCode();
        Iterator<LocalPathItem> it = this.path.iterator();
        while (it.hasNext()) {
            iHashCode = (iHashCode * 31) + it.next().hashCode();
        }
        return iHashCode;
    }

    @Override // com.itextpdf.kernel.utils.objectpathitems.ObjectPath
    public boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        TrailerPath trailerPath = (TrailerPath) obj;
        return this.outDocument.equals(trailerPath.outDocument) && this.cmpDocument.equals(trailerPath.cmpDocument) && this.path.equals(((ObjectPath) obj).path);
    }
}
