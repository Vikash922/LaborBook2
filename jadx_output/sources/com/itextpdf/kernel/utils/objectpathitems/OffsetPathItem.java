package com.itextpdf.kernel.utils.objectpathitems;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

/* JADX INFO: loaded from: classes6.dex */
public final class OffsetPathItem extends LocalPathItem {
    private final int offset;

    public OffsetPathItem(int i) {
        this.offset = i;
    }

    public int getOffset() {
        return this.offset;
    }

    public String toString() {
        return "Offset: " + this.offset;
    }

    public int hashCode() {
        return this.offset;
    }

    public boolean equals(Object obj) {
        return obj != null && obj.getClass() == getClass() && this.offset == ((OffsetPathItem) obj).offset;
    }

    @Override // com.itextpdf.kernel.utils.objectpathitems.LocalPathItem
    protected Node toXmlNode(Document document) {
        Element elementCreateElement = document.createElement("offset");
        elementCreateElement.appendChild(document.createTextNode(String.valueOf(this.offset)));
        return elementCreateElement;
    }
}
