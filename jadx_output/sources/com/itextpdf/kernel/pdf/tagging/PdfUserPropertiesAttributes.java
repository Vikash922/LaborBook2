package com.itextpdf.kernel.pdf.tagging;

import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class PdfUserPropertiesAttributes extends PdfStructureAttributes {
    public PdfUserPropertiesAttributes(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    public PdfUserPropertiesAttributes() {
        super(new PdfDictionary());
        getPdfObject().put(PdfName.f3041O, PdfName.UserProperties);
        getPdfObject().put(PdfName.f3047P, new PdfArray());
    }

    public PdfUserPropertiesAttributes(List<PdfUserProperty> list) {
        this();
        PdfArray asArray = getPdfObject().getAsArray(PdfName.f3047P);
        Iterator<PdfUserProperty> it = list.iterator();
        while (it.hasNext()) {
            asArray.add(it.next().getPdfObject());
        }
    }

    public PdfUserPropertiesAttributes addUserProperty(PdfUserProperty pdfUserProperty) {
        getPdfObject().getAsArray(PdfName.f3047P).add(pdfUserProperty.getPdfObject());
        setModified();
        return this;
    }

    public PdfUserProperty getUserProperty(int i) {
        PdfDictionary asDictionary = getPdfObject().getAsArray(PdfName.f3047P).getAsDictionary(i);
        if (asDictionary == null) {
            return null;
        }
        return new PdfUserProperty(asDictionary);
    }

    public PdfUserPropertiesAttributes removeUserProperty(int i) {
        getPdfObject().getAsArray(PdfName.f3047P).remove(i);
        return this;
    }

    public int getNumberOfUserProperties() {
        return getPdfObject().getAsArray(PdfName.f3047P).size();
    }
}
