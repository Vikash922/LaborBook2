package com.itextpdf.kernel.pdf.annot;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.filespec.PdfFileSpec;

/* JADX INFO: loaded from: classes6.dex */
public class PdfFileAttachmentAnnotation extends PdfMarkupAnnotation {
    public PdfFileAttachmentAnnotation(Rectangle rectangle) {
        super(rectangle);
    }

    public PdfFileAttachmentAnnotation(Rectangle rectangle, PdfFileSpec pdfFileSpec) {
        this(rectangle);
        put(PdfName.f3006FS, pdfFileSpec.getPdfObject());
    }

    protected PdfFileAttachmentAnnotation(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    @Override // com.itextpdf.kernel.pdf.annot.PdfAnnotation
    public PdfName getSubtype() {
        return PdfName.FileAttachment;
    }

    public PdfObject getFileSpecObject() {
        return getPdfObject().get(PdfName.f3006FS);
    }

    public PdfName getIconName() {
        return getPdfObject().getAsName(PdfName.Name);
    }

    public PdfFileAttachmentAnnotation setIconName(PdfName pdfName) {
        return (PdfFileAttachmentAnnotation) put(PdfName.Name, pdfName);
    }
}
