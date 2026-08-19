package com.itextpdf.kernel.utils.objectpathitems;

import com.itextpdf.kernel.pdf.PdfName;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

/* JADX INFO: loaded from: classes6.dex */
public final class DictPathItem extends LocalPathItem {
    private final PdfName key;

    public DictPathItem(PdfName pdfName) {
        this.key = pdfName;
    }

    public String toString() {
        return "Dict key: " + this.key;
    }

    public int hashCode() {
        return this.key.hashCode();
    }

    public boolean equals(Object obj) {
        return obj != null && obj.getClass() == getClass() && this.key.equals(((DictPathItem) obj).key);
    }

    public PdfName getKey() {
        return this.key;
    }

    @Override // com.itextpdf.kernel.utils.objectpathitems.LocalPathItem
    protected Node toXmlNode(Document document) {
        Element elementCreateElement = document.createElement("dictKey");
        elementCreateElement.appendChild(document.createTextNode(this.key.toString()));
        return elementCreateElement;
    }
}
