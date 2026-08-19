package com.itextpdf.kernel.pdf.collection;

import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObjectWrapper;
import com.itextpdf.kernel.pdf.PdfString;

/* JADX INFO: loaded from: classes6.dex */
public class PdfCollection extends PdfObjectWrapper<PdfDictionary> {
    public static final int DETAILS = 0;
    public static final int HIDDEN = 2;
    public static final int TILE = 1;

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return false;
    }

    public PdfCollection(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    public PdfCollection() {
        this(new PdfDictionary());
    }

    public PdfCollection setSchema(PdfCollectionSchema pdfCollectionSchema) {
        getPdfObject().put(PdfName.Schema, pdfCollectionSchema.getPdfObject());
        return this;
    }

    public PdfCollectionSchema getSchema() {
        return new PdfCollectionSchema(getPdfObject().getAsDictionary(PdfName.Schema));
    }

    public PdfCollection setInitialDocument(String str) {
        getPdfObject().put(PdfName.f2992D, new PdfString(str));
        return this;
    }

    public PdfString getInitialDocument() {
        return getPdfObject().getAsString(PdfName.f2992D);
    }

    public PdfCollection setView(int i) {
        if (i == 1) {
            getPdfObject().put(PdfName.View, PdfName.f3071T);
        } else if (i != 2) {
            getPdfObject().put(PdfName.View, PdfName.f2992D);
        } else {
            getPdfObject().put(PdfName.View, PdfName.f3011H);
        }
        return this;
    }

    public boolean isViewDetails() {
        PdfName asName = getPdfObject().getAsName(PdfName.View);
        return asName == null || asName.equals(PdfName.f2992D);
    }

    public boolean isViewTile() {
        return PdfName.f3071T.equals(getPdfObject().getAsName(PdfName.View));
    }

    public boolean isViewHidden() {
        return PdfName.f3011H.equals(getPdfObject().getAsName(PdfName.View));
    }

    public PdfCollection setSort(PdfCollectionSort pdfCollectionSort) {
        getPdfObject().put(PdfName.Sort, pdfCollectionSort.getPdfObject());
        return this;
    }

    public PdfCollectionSort getSort() {
        return new PdfCollectionSort(getPdfObject().getAsDictionary(PdfName.Sort));
    }
}
