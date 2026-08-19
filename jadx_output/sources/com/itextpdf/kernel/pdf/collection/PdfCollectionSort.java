package com.itextpdf.kernel.pdf.collection;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfBoolean;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfObjectWrapper;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class PdfCollectionSort extends PdfObjectWrapper<PdfDictionary> {
    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return false;
    }

    public PdfCollectionSort(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    public PdfCollectionSort(String str) {
        this(new PdfDictionary());
        getPdfObject().put(PdfName.f3065S, new PdfName(str));
    }

    public PdfCollectionSort(String[] strArr) {
        this(new PdfDictionary());
        getPdfObject().put(PdfName.f3065S, new PdfArray((List<String>) Arrays.asList(strArr), true));
    }

    public PdfCollectionSort setSortOrder(boolean z) {
        if (getPdfObject().get(PdfName.f3065S).isName()) {
            getPdfObject().put(PdfName.f2967A, PdfBoolean.valueOf(z));
            return this;
        }
        throw new PdfException(KernelExceptionMessageConstant.f2933x35bf7d4f);
    }

    public PdfCollectionSort setSortOrder(boolean[] zArr) {
        PdfObject pdfObject = getPdfObject().get(PdfName.f3065S);
        if (pdfObject.isArray()) {
            if (((PdfArray) pdfObject).size() != zArr.length) {
                throw new PdfException(KernelExceptionMessageConstant.f2920x17a56308);
            }
            getPdfObject().put(PdfName.f2967A, new PdfArray(zArr));
            return this;
        }
        throw new PdfException(KernelExceptionMessageConstant.YOU_NEED_A_SINGLE_BOOLEAN_FOR_THIS_COLLECTION_SORT_DICTIONARY);
    }
}
