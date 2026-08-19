package com.itextpdf.kernel.pdf.annot;

import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.font.PdfFont;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDate;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.kernel.pdf.xobject.PdfFormXObject;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class PdfTrapNetworkAnnotation extends PdfAnnotation {
    public PdfTrapNetworkAnnotation(Rectangle rectangle, PdfFormXObject pdfFormXObject) {
        super(rectangle);
        if (pdfFormXObject.getProcessColorModel() == null) {
            throw new PdfException("Process color model must be set in appearance stream for Trap Network annotation!");
        }
        setNormalAppearance(pdfFormXObject.getPdfObject());
        setFlags(68);
    }

    protected PdfTrapNetworkAnnotation(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    @Override // com.itextpdf.kernel.pdf.annot.PdfAnnotation
    public PdfName getSubtype() {
        return PdfName.TrapNet;
    }

    public PdfTrapNetworkAnnotation setLastModified(PdfDate pdfDate) {
        return (PdfTrapNetworkAnnotation) put(PdfName.LastModified, pdfDate.getPdfObject());
    }

    public PdfString getLastModified() {
        return getPdfObject().getAsString(PdfName.LastModified);
    }

    public PdfTrapNetworkAnnotation setVersion(PdfArray pdfArray) {
        return (PdfTrapNetworkAnnotation) put(PdfName.Version, pdfArray);
    }

    public PdfArray getVersion() {
        return getPdfObject().getAsArray(PdfName.Version);
    }

    public PdfTrapNetworkAnnotation setAnnotStates(PdfArray pdfArray) {
        return (PdfTrapNetworkAnnotation) put(PdfName.AnnotStates, pdfArray);
    }

    public PdfArray getAnnotStates() {
        return getPdfObject().getAsArray(PdfName.AnnotStates);
    }

    public PdfTrapNetworkAnnotation setFauxedFonts(PdfArray pdfArray) {
        return (PdfTrapNetworkAnnotation) put(PdfName.FontFauxing, pdfArray);
    }

    public PdfTrapNetworkAnnotation setFauxedFonts(List<PdfFont> list) {
        PdfArray pdfArray = new PdfArray();
        Iterator<PdfFont> it = list.iterator();
        while (it.hasNext()) {
            pdfArray.add(it.next().getPdfObject());
        }
        return setFauxedFonts(pdfArray);
    }

    public PdfArray getFauxedFonts() {
        return getPdfObject().getAsArray(PdfName.FontFauxing);
    }
}
