package com.itextpdf.kernel.pdf.xobject;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.geom.Matrix;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.geom.Vector;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfPage;
import com.itextpdf.kernel.pdf.PdfResources;
import com.itextpdf.kernel.pdf.PdfStream;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.kernel.pdf.canvas.wmf.WmfImageData;
import com.itextpdf.kernel.pdf.canvas.wmf.WmfImageHelper;

/* JADX INFO: loaded from: classes6.dex */
public class PdfFormXObject extends PdfXObject {
    protected PdfResources resources;

    public PdfFormXObject(Rectangle rectangle) {
        super(new PdfStream());
        this.resources = null;
        getPdfObject().put(PdfName.Type, PdfName.XObject);
        getPdfObject().put(PdfName.Subtype, PdfName.Form);
        if (rectangle != null) {
            getPdfObject().put(PdfName.BBox, new PdfArray(rectangle));
        }
    }

    public PdfFormXObject(PdfStream pdfStream) {
        super(pdfStream);
        this.resources = null;
        if (getPdfObject().containsKey(PdfName.Subtype)) {
            return;
        }
        getPdfObject().put(PdfName.Subtype, PdfName.Form);
    }

    public PdfFormXObject(PdfPage pdfPage) {
        this(pdfPage.getCropBox());
        getPdfObject().getOutputStream().writeBytes(pdfPage.getContentBytes());
        this.resources = new PdfResources((PdfDictionary) pdfPage.getResources().getPdfObject().m3121clone());
        getPdfObject().put(PdfName.Resources, this.resources.getPdfObject());
    }

    public PdfFormXObject(WmfImageData wmfImageData, PdfDocument pdfDocument) {
        this(new WmfImageHelper(wmfImageData).createFormXObject(pdfDocument).getPdfObject());
    }

    public static Rectangle calculateBBoxMultipliedByMatrix(PdfFormXObject pdfFormXObject) {
        float[] floatArray;
        PdfArray asArray = pdfFormXObject.getPdfObject().getAsArray(PdfName.BBox);
        if (asArray == null) {
            throw new PdfException(KernelExceptionMessageConstant.PDF_FORM_XOBJECT_HAS_INVALID_BBOX);
        }
        float[] floatArray2 = asArray.toFloatArray();
        PdfArray asArray2 = pdfFormXObject.getPdfObject().getAsArray(PdfName.Matrix);
        if (asArray2 == null) {
            floatArray = new float[]{1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f};
        } else {
            floatArray = asArray2.toFloatArray();
        }
        Matrix matrix = new Matrix(floatArray[0], floatArray[1], floatArray[2], floatArray[3], floatArray[4], floatArray[5]);
        Vector vector = new Vector(floatArray2[0], floatArray2[1], 1.0f);
        Vector vector2 = new Vector(floatArray2[2], floatArray2[3], 1.0f);
        Vector vectorCross = vector.cross(matrix);
        Vector vectorCross2 = vector2.cross(matrix);
        return new Rectangle(vectorCross.get(0), vectorCross.get(1), vectorCross2.get(0) - vectorCross.get(0), vectorCross2.get(1) - vectorCross.get(1));
    }

    public PdfResources getResources() {
        if (this.resources == null) {
            PdfDictionary asDictionary = getPdfObject().getAsDictionary(PdfName.Resources);
            if (asDictionary == null) {
                asDictionary = new PdfDictionary();
                getPdfObject().put(PdfName.Resources, asDictionary);
            }
            this.resources = new PdfResources(asDictionary);
        }
        return this.resources;
    }

    public PdfArray getBBox() {
        return getPdfObject().getAsArray(PdfName.BBox);
    }

    public PdfFormXObject setBBox(PdfArray pdfArray) {
        return put(PdfName.BBox, pdfArray);
    }

    public PdfFormXObject setGroup(PdfTransparencyGroup pdfTransparencyGroup) {
        return put(PdfName.Group, pdfTransparencyGroup.getPdfObject());
    }

    @Override // com.itextpdf.kernel.pdf.xobject.PdfXObject
    public float getWidth() {
        if (getBBox() == null) {
            return 0.0f;
        }
        return getBBox().getAsNumber(2).floatValue() - getBBox().getAsNumber(0).floatValue();
    }

    @Override // com.itextpdf.kernel.pdf.xobject.PdfXObject
    public float getHeight() {
        if (getBBox() == null) {
            return 0.0f;
        }
        return getBBox().getAsNumber(3).floatValue() - getBBox().getAsNumber(1).floatValue();
    }

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    public void flush() {
        this.resources = null;
        if (getPdfObject().get(PdfName.BBox) == null) {
            throw new PdfException(KernelExceptionMessageConstant.FORM_XOBJECT_MUST_HAVE_BBOX);
        }
        super.flush();
    }

    public PdfFormXObject setProcessColorModel(PdfName pdfName) {
        return put(PdfName.PCM, pdfName);
    }

    public PdfName getProcessColorModel() {
        return getPdfObject().getAsName(PdfName.PCM);
    }

    public PdfFormXObject setSeparationColorNames(PdfArray pdfArray) {
        return put(PdfName.SeparationColorNames, pdfArray);
    }

    public PdfArray getSeparationColorNames() {
        return getPdfObject().getAsArray(PdfName.SeparationColorNames);
    }

    public PdfFormXObject setTrapRegions(PdfArray pdfArray) {
        return put(PdfName.TrapRegions, pdfArray);
    }

    public PdfArray getTrapRegions() {
        return getPdfObject().getAsArray(PdfName.TrapRegions);
    }

    public PdfFormXObject setTrapStyles(PdfString pdfString) {
        return put(PdfName.TrapStyles, pdfString);
    }

    public PdfString getTrapStyles() {
        return getPdfObject().getAsString(PdfName.TrapStyles);
    }

    public PdfFormXObject setMarkStyle(PdfString pdfString) {
        return put(PdfName.MarkStyle, pdfString);
    }

    public PdfString getMarkStyle() {
        return getPdfObject().getAsString(PdfName.MarkStyle);
    }

    public PdfFormXObject put(PdfName pdfName, PdfObject pdfObject) {
        getPdfObject().put(pdfName, pdfObject);
        setModified();
        return this;
    }
}
