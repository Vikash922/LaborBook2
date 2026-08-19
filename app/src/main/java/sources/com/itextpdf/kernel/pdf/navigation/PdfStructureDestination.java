package com.itextpdf.kernel.pdf.navigation;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.tagging.IStructureNode;
import com.itextpdf.kernel.pdf.tagging.PdfMcr;
import com.itextpdf.kernel.pdf.tagging.PdfStructElem;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class PdfStructureDestination extends PdfDestination {
    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return false;
    }

    public PdfStructureDestination(PdfArray pdfArray) {
        super(pdfArray);
    }

    private PdfStructureDestination() {
        super(new PdfArray());
    }

    public static PdfStructureDestination createXYZ(PdfStructElem pdfStructElem, float f, float f2, float f3) {
        return create(pdfStructElem, PdfName.XYZ, f, Float.NaN, Float.NaN, f2, f3);
    }

    public static PdfStructureDestination createFit(PdfStructElem pdfStructElem) {
        return create(pdfStructElem, PdfName.Fit, Float.NaN, Float.NaN, Float.NaN, Float.NaN, Float.NaN);
    }

    public static PdfStructureDestination createFitH(PdfStructElem pdfStructElem, float f) {
        return create(pdfStructElem, PdfName.FitH, Float.NaN, Float.NaN, Float.NaN, f, Float.NaN);
    }

    public static PdfStructureDestination createFitV(PdfStructElem pdfStructElem, float f) {
        return create(pdfStructElem, PdfName.FitV, f, Float.NaN, Float.NaN, Float.NaN, Float.NaN);
    }

    public static PdfStructureDestination createFitR(PdfStructElem pdfStructElem, float f, float f2, float f3, float f4) {
        return create(pdfStructElem, PdfName.FitR, f, f2, f3, f4, Float.NaN);
    }

    public static PdfStructureDestination createFitB(PdfStructElem pdfStructElem) {
        return create(pdfStructElem, PdfName.FitB, Float.NaN, Float.NaN, Float.NaN, Float.NaN, Float.NaN);
    }

    public static PdfStructureDestination createFitBH(PdfStructElem pdfStructElem, float f) {
        return create(pdfStructElem, PdfName.FitBH, Float.NaN, Float.NaN, Float.NaN, f, Float.NaN);
    }

    public static PdfStructureDestination createFitBV(PdfStructElem pdfStructElem, float f) {
        return create(pdfStructElem, PdfName.FitBH, f, Float.NaN, Float.NaN, Float.NaN, Float.NaN);
    }

    private static PdfStructureDestination create(PdfStructElem pdfStructElem, PdfName pdfName, float f, float f2, float f3, float f4, float f5) {
        return new PdfStructureDestination().add(pdfStructElem).add(pdfName).add(f).add(f2).add(f3).add(f4).add(f5);
    }

    @Override // com.itextpdf.kernel.pdf.navigation.PdfDestination
    public PdfObject getDestinationPage(Map<String, PdfObject> map) {
        PdfObject pdfObject = ((PdfArray) getPdfObject()).get(0);
        if (pdfObject.isDictionary()) {
            PdfStructElem pdfStructElem = new PdfStructElem((PdfDictionary) pdfObject);
            while (true) {
                List<IStructureNode> kids = pdfStructElem.getKids();
                IStructureNode iStructureNode = kids.size() > 0 ? kids.get(0) : null;
                if (iStructureNode instanceof PdfMcr) {
                    return ((PdfMcr) iStructureNode).getPageObject();
                }
                if (!(iStructureNode instanceof PdfStructElem)) {
                    break;
                }
                pdfStructElem = (PdfStructElem) iStructureNode;
            }
        }
        return null;
    }

    private PdfStructureDestination add(float f) {
        if (!Float.isNaN(f)) {
            ((PdfArray) getPdfObject()).add(new PdfNumber(f));
        }
        return this;
    }

    private PdfStructureDestination add(PdfStructElem pdfStructElem) {
        if (pdfStructElem.getPdfObject().getIndirectReference() == null) {
            throw new PdfException(KernelExceptionMessageConstant.f2926x7514b45f);
        }
        ((PdfArray) getPdfObject()).add(pdfStructElem.getPdfObject());
        return this;
    }

    private PdfStructureDestination add(PdfName pdfName) {
        ((PdfArray) getPdfObject()).add(pdfName);
        return this;
    }
}
