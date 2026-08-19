package com.itextpdf.kernel.pdf.action;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfObjectWrapper;
import com.itextpdf.kernel.pdf.PdfPage;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.kernel.pdf.annot.PdfAnnotation;
import com.itextpdf.kernel.pdf.annot.PdfFileAttachmentAnnotation;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import java.util.Iterator;
import java.util.List;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class PdfTarget extends PdfObjectWrapper<PdfDictionary> {
    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return false;
    }

    private PdfTarget(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    public static PdfTarget create(PdfDictionary pdfDictionary) {
        return new PdfTarget(pdfDictionary);
    }

    private static PdfTarget create(PdfName pdfName) {
        PdfTarget pdfTarget = new PdfTarget(new PdfDictionary());
        pdfTarget.put(PdfName.f3056R, pdfName);
        return pdfTarget;
    }

    public static PdfTarget createParentTarget() {
        return create(PdfName.f3047P);
    }

    public static PdfTarget createChildTarget() {
        return create(PdfName.f2980C);
    }

    public static PdfTarget createChildTarget(String str) {
        return create(PdfName.f2980C).put(PdfName.f3037N, new PdfString(str));
    }

    public static PdfTarget createChildTarget(String str, String str2) {
        return create(PdfName.f2980C).put(PdfName.f3047P, new PdfString(str)).put(PdfName.f2967A, new PdfString(str2));
    }

    public static PdfTarget createChildTarget(int i, int i2) {
        return create(PdfName.f2980C).put(PdfName.f3047P, new PdfNumber(i - 1)).put(PdfName.f2967A, new PdfNumber(i2));
    }

    public PdfTarget setName(String str) {
        return put(PdfName.f3037N, new PdfString(str));
    }

    public String getName() {
        return getPdfObject().getAsString(PdfName.f3037N).toString();
    }

    public PdfTarget setAnnotation(PdfFileAttachmentAnnotation pdfFileAttachmentAnnotation, PdfDocument pdfDocument) {
        PdfPage page = pdfFileAttachmentAnnotation.getPage();
        if (page == null) {
            throw new PdfException(KernelExceptionMessageConstant.ANNOTATION_SHALL_HAVE_REFERENCE_TO_PAGE);
        }
        put(PdfName.f3047P, new PdfNumber(pdfDocument.getPageNumber(page) - 1));
        List<PdfAnnotation> annotations = page.getAnnotations();
        int i = 0;
        while (true) {
            if (i >= annotations.size()) {
                i = -1;
                break;
            }
            if (annotations.get(i) != null && pdfFileAttachmentAnnotation.getPdfObject().equals(annotations.get(i).getPdfObject())) {
                break;
            }
            i++;
        }
        put(PdfName.f2967A, new PdfNumber(i));
        return this;
    }

    public PdfFileAttachmentAnnotation getAnnotation(PdfDocument pdfDocument) {
        PdfPage page;
        PdfArray pdfArray;
        PdfObject pdfObject = getPdfObject().get(PdfName.f3047P);
        PdfFileAttachmentAnnotation pdfFileAttachmentAnnotation = null;
        if (pdfObject instanceof PdfNumber) {
            page = pdfDocument.getPage(((PdfNumber) pdfObject).intValue() + 1);
        } else if (!(pdfObject instanceof PdfString) || (pdfArray = (PdfArray) pdfDocument.getCatalog().getNameTree(PdfName.Dests).getNames().get(((PdfString) pdfObject).getValue())) == null) {
            page = null;
        } else if (pdfArray.get(0) instanceof PdfNumber) {
            page = pdfDocument.getPage(((PdfNumber) pdfArray.get(0)).intValue());
        } else {
            page = pdfDocument.getPage((PdfDictionary) pdfArray.get(0));
        }
        List<PdfAnnotation> annotations = page != null ? page.getAnnotations() : null;
        PdfObject pdfObject2 = getPdfObject().get(PdfName.f2967A);
        if (annotations != null) {
            if (pdfObject2 instanceof PdfNumber) {
                pdfFileAttachmentAnnotation = (PdfFileAttachmentAnnotation) annotations.get(((PdfNumber) pdfObject2).intValue());
            } else if (pdfObject2 instanceof PdfString) {
                Iterator<PdfAnnotation> it = annotations.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    PdfAnnotation next = it.next();
                    if (pdfObject2.equals(next.getName())) {
                        pdfFileAttachmentAnnotation = (PdfFileAttachmentAnnotation) next;
                        break;
                    }
                }
            }
        }
        if (pdfFileAttachmentAnnotation == null) {
            LoggerFactory.getLogger((Class<?>) PdfTarget.class).error(IoLogMessageConstant.SOME_TARGET_FIELDS_ARE_NOT_SET_OR_INCORRECT);
        }
        return pdfFileAttachmentAnnotation;
    }

    public PdfTarget setTarget(PdfTarget pdfTarget) {
        return put(PdfName.f3071T, pdfTarget.getPdfObject());
    }

    public PdfTarget getTarget() {
        PdfDictionary asDictionary = getPdfObject().getAsDictionary(PdfName.f3071T);
        if (asDictionary != null) {
            return new PdfTarget(asDictionary);
        }
        return null;
    }

    public PdfTarget put(PdfName pdfName, PdfObject pdfObject) {
        getPdfObject().put(pdfName, pdfObject);
        return this;
    }
}
