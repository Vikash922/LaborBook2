package com.itextpdf.kernel.utils.objectpathitems;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.pdf.PdfIndirectReference;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.svg.SvgConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Stack;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

/* JADX INFO: loaded from: classes6.dex */
public class ObjectPath {
    private PdfIndirectReference baseCmpObject;
    private PdfIndirectReference baseOutObject;
    private Stack<IndirectPathItem> indirects;
    protected Stack<LocalPathItem> path;

    public ObjectPath() {
        this.path = new Stack<>();
        this.indirects = new Stack<>();
    }

    public ObjectPath(ObjectPath objectPath) {
        this.path = new Stack<>();
        this.indirects = new Stack<>();
        this.baseCmpObject = objectPath.getBaseCmpObject();
        this.baseOutObject = objectPath.getBaseOutObject();
        this.path = objectPath.getLocalPath();
        this.indirects = objectPath.getIndirectPath();
    }

    public ObjectPath(PdfIndirectReference pdfIndirectReference, PdfIndirectReference pdfIndirectReference2) {
        this.path = new Stack<>();
        Stack<IndirectPathItem> stack = new Stack<>();
        this.indirects = stack;
        this.baseCmpObject = pdfIndirectReference;
        this.baseOutObject = pdfIndirectReference2;
        stack.push(new IndirectPathItem(pdfIndirectReference, pdfIndirectReference2));
    }

    public ObjectPath(PdfIndirectReference pdfIndirectReference, PdfIndirectReference pdfIndirectReference2, Stack<LocalPathItem> stack, Stack<IndirectPathItem> stack2) {
        this.path = new Stack<>();
        this.indirects = new Stack<>();
        this.baseCmpObject = pdfIndirectReference;
        this.baseOutObject = pdfIndirectReference2;
        this.path = (Stack) stack.clone();
        this.indirects = (Stack) stack2.clone();
    }

    public ObjectPath resetDirectPath(PdfIndirectReference pdfIndirectReference, PdfIndirectReference pdfIndirectReference2) {
        ObjectPath objectPath = new ObjectPath(pdfIndirectReference, pdfIndirectReference2, new Stack(), (Stack) this.indirects.clone());
        objectPath.indirects.push(new IndirectPathItem(pdfIndirectReference, pdfIndirectReference2));
        return objectPath;
    }

    public boolean isComparing(PdfIndirectReference pdfIndirectReference, PdfIndirectReference pdfIndirectReference2) {
        return this.indirects.contains(new IndirectPathItem(pdfIndirectReference, pdfIndirectReference2));
    }

    public void pushArrayItemToPath(int i) {
        this.path.push(new ArrayPathItem(i));
    }

    public void pushDictItemToPath(PdfName pdfName) {
        this.path.push(new DictPathItem(pdfName));
    }

    public void pushOffsetToPath(int i) {
        this.path.push(new OffsetPathItem(i));
    }

    public void pop() {
        this.path.pop();
    }

    public Stack<LocalPathItem> getLocalPath() {
        return (Stack) this.path.clone();
    }

    public Stack<IndirectPathItem> getIndirectPath() {
        return (Stack) this.indirects.clone();
    }

    public PdfIndirectReference getBaseCmpObject() {
        return this.baseCmpObject;
    }

    public PdfIndirectReference getBaseOutObject() {
        return this.baseOutObject;
    }

    public Node toXmlNode(Document document) {
        Element elementCreateElement = document.createElement(SvgConstants.Tags.PATH);
        Element elementCreateElement2 = document.createElement("base");
        elementCreateElement2.setAttribute("cmp", MessageFormatUtil.format("{0} {1} obj", Integer.valueOf(this.baseCmpObject.getObjNumber()), Integer.valueOf(this.baseCmpObject.getGenNumber())));
        elementCreateElement2.setAttribute("out", MessageFormatUtil.format("{0} {1} obj", Integer.valueOf(this.baseOutObject.getObjNumber()), Integer.valueOf(this.baseOutObject.getGenNumber())));
        elementCreateElement.appendChild(elementCreateElement2);
        Stack stack = (Stack) this.path.clone();
        ArrayList arrayList = new ArrayList(this.path.size());
        for (int i = 0; i < this.path.size(); i++) {
            arrayList.add(stack.pop());
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            elementCreateElement.appendChild(((LocalPathItem) arrayList.get(size)).toXmlNode(document));
        }
        return elementCreateElement;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(MessageFormatUtil.format("Base cmp object: {0} obj. Base out object: {1} obj", this.baseCmpObject, this.baseOutObject));
        Stack stack = (Stack) this.path.clone();
        ArrayList arrayList = new ArrayList(this.path.size());
        for (int i = 0; i < this.path.size(); i++) {
            arrayList.add(stack.pop());
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            sb.append('\n');
            sb.append(((LocalPathItem) arrayList.get(size)).toString());
        }
        return sb.toString();
    }

    public int hashCode() {
        PdfIndirectReference pdfIndirectReference = this.baseCmpObject;
        int objNumber = pdfIndirectReference != null ? (pdfIndirectReference.getObjNumber() * 31) + this.baseCmpObject.getGenNumber() : 0;
        PdfIndirectReference pdfIndirectReference2 = this.baseOutObject;
        int objNumber2 = (objNumber * 31) + (pdfIndirectReference2 != null ? (pdfIndirectReference2.getObjNumber() * 31) + this.baseOutObject.getGenNumber() : 0);
        Iterator<LocalPathItem> it = this.path.iterator();
        while (it.hasNext()) {
            objNumber2 = (objNumber2 * 31) + it.next().hashCode();
        }
        return objNumber2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ObjectPath objectPath = (ObjectPath) obj;
        PdfIndirectReference pdfIndirectReference = this.baseCmpObject;
        PdfIndirectReference pdfIndirectReference2 = objectPath.baseCmpObject;
        boolean z = pdfIndirectReference == pdfIndirectReference2 || (pdfIndirectReference != null && pdfIndirectReference2 != null && pdfIndirectReference.getClass() == objectPath.baseCmpObject.getClass() && this.baseCmpObject.getObjNumber() == objectPath.baseCmpObject.getObjNumber() && this.baseCmpObject.getGenNumber() == objectPath.baseCmpObject.getGenNumber());
        PdfIndirectReference pdfIndirectReference3 = this.baseOutObject;
        PdfIndirectReference pdfIndirectReference4 = objectPath.baseOutObject;
        return z && (pdfIndirectReference3 == pdfIndirectReference4 || (pdfIndirectReference3 != null && pdfIndirectReference4 != null && pdfIndirectReference3.getClass() == objectPath.baseOutObject.getClass() && this.baseOutObject.getObjNumber() == objectPath.baseOutObject.getObjNumber() && this.baseOutObject.getGenNumber() == objectPath.baseOutObject.getGenNumber())) && this.path.equals(objectPath.path);
    }
}
