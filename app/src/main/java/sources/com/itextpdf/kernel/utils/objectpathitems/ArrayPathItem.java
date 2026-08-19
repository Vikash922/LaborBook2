package com.itextpdf.kernel.utils.objectpathitems;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

/* JADX INFO: loaded from: classes6.dex */
public final class ArrayPathItem extends LocalPathItem {
    private final int index;

    public ArrayPathItem(int i) {
        this.index = i;
    }

    public String toString() {
        return "Array index: " + this.index;
    }

    public int hashCode() {
        return this.index;
    }

    public boolean equals(Object obj) {
        return obj != null && obj.getClass() == getClass() && this.index == ((ArrayPathItem) obj).index;
    }

    public int getIndex() {
        return this.index;
    }

    @Override // com.itextpdf.kernel.utils.objectpathitems.LocalPathItem
    protected Node toXmlNode(Document document) {
        Element elementCreateElement = document.createElement("arrayIndex");
        elementCreateElement.appendChild(document.createTextNode(String.valueOf(this.index)));
        return elementCreateElement;
    }
}
