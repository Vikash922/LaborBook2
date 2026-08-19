package com.itextpdf.kernel.pdf.xobject;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObjectWrapper;
import com.itextpdf.kernel.pdf.PdfStream;
import com.itextpdf.kernel.pdf.filespec.PdfFileSpec;
import com.itextpdf.kernel.pdf.layer.IPdfOCG;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public abstract class PdfXObject extends PdfObjectWrapper<PdfStream> {
    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return true;
    }

    protected PdfXObject(PdfStream pdfStream) {
        super(pdfStream);
    }

    public static PdfXObject makeXObject(PdfStream pdfStream) {
        if (PdfName.Form.equals(pdfStream.getAsName(PdfName.Subtype))) {
            return new PdfFormXObject(pdfStream);
        }
        if (PdfName.Image.equals(pdfStream.getAsName(PdfName.Subtype))) {
            return new PdfImageXObject(pdfStream);
        }
        throw new UnsupportedOperationException(KernelExceptionMessageConstant.UNSUPPORTED_XOBJECT_TYPE);
    }

    public static Rectangle calculateProportionallyFitRectangleWithWidth(PdfXObject pdfXObject, float f, float f2, float f3) {
        if (pdfXObject instanceof PdfFormXObject) {
            Rectangle rectangleCalculateBBoxMultipliedByMatrix = PdfFormXObject.calculateBBoxMultipliedByMatrix((PdfFormXObject) pdfXObject);
            return new Rectangle(f, f2, f3, (f3 / rectangleCalculateBBoxMultipliedByMatrix.getWidth()) * rectangleCalculateBBoxMultipliedByMatrix.getHeight());
        }
        if (pdfXObject instanceof PdfImageXObject) {
            PdfImageXObject pdfImageXObject = (PdfImageXObject) pdfXObject;
            return new Rectangle(f, f2, f3, (f3 / pdfImageXObject.getWidth()) * pdfImageXObject.getHeight());
        }
        throw new IllegalArgumentException("PdfFormXObject or PdfImageXObject expected.");
    }

    public static Rectangle calculateProportionallyFitRectangleWithHeight(PdfXObject pdfXObject, float f, float f2, float f3) {
        if (pdfXObject instanceof PdfFormXObject) {
            Rectangle rectangleCalculateBBoxMultipliedByMatrix = PdfFormXObject.calculateBBoxMultipliedByMatrix((PdfFormXObject) pdfXObject);
            return new Rectangle(f, f2, (f3 / rectangleCalculateBBoxMultipliedByMatrix.getHeight()) * rectangleCalculateBBoxMultipliedByMatrix.getWidth(), f3);
        }
        if (pdfXObject instanceof PdfImageXObject) {
            PdfImageXObject pdfImageXObject = (PdfImageXObject) pdfXObject;
            return new Rectangle(f, f2, (f3 / pdfImageXObject.getHeight()) * pdfImageXObject.getWidth(), f3);
        }
        throw new IllegalArgumentException("PdfFormXObject or PdfImageXObject expected.");
    }

    public void setLayer(IPdfOCG iPdfOCG) {
        getPdfObject().put(PdfName.f3042OC, iPdfOCG.getIndirectReference());
    }

    public float getWidth() {
        throw new UnsupportedOperationException();
    }

    public float getHeight() {
        throw new UnsupportedOperationException();
    }

    public void addAssociatedFile(PdfFileSpec pdfFileSpec) {
        if (((PdfDictionary) pdfFileSpec.getPdfObject()).get(PdfName.AFRelationship) == null) {
            LoggerFactory.getLogger((Class<?>) PdfXObject.class).error(IoLogMessageConstant.ASSOCIATED_FILE_SPEC_SHALL_INCLUDE_AFRELATIONSHIP);
        }
        PdfArray asArray = getPdfObject().getAsArray(PdfName.f2969AF);
        if (asArray == null) {
            asArray = new PdfArray();
            getPdfObject().put(PdfName.f2969AF, asArray);
        }
        asArray.add(pdfFileSpec.getPdfObject());
    }

    public PdfArray getAssociatedFiles(boolean z) {
        PdfArray asArray = getPdfObject().getAsArray(PdfName.f2969AF);
        if (asArray != null || !z) {
            return asArray;
        }
        PdfArray pdfArray = new PdfArray();
        getPdfObject().put(PdfName.f2969AF, pdfArray);
        return pdfArray;
    }
}
