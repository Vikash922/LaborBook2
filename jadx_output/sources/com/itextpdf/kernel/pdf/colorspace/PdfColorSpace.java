package com.itextpdf.kernel.pdf.colorspace;

import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfIndirectReference;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfObjectWrapper;
import com.itextpdf.kernel.pdf.colorspace.PdfCieBasedCs;
import com.itextpdf.kernel.pdf.colorspace.PdfDeviceCs;
import com.itextpdf.kernel.pdf.colorspace.PdfSpecialCs;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public abstract class PdfColorSpace extends PdfObjectWrapper<PdfObject> {
    public static final Set<PdfName> DIRECT_COLOR_SPACES = Collections.unmodifiableSet(new HashSet(Arrays.asList(PdfName.DeviceGray, PdfName.DeviceRGB, PdfName.DeviceCMYK, PdfName.Pattern)));

    public abstract int getNumberOfComponents();

    protected PdfColorSpace(PdfObject pdfObject) {
        super(pdfObject);
    }

    public static PdfColorSpace makeColorSpace(PdfObject pdfObject) {
        if (pdfObject.isIndirectReference()) {
            pdfObject = ((PdfIndirectReference) pdfObject).getRefersTo();
        }
        if (pdfObject.isArray()) {
            PdfArray pdfArray = (PdfArray) pdfObject;
            if (pdfArray.size() == 1) {
                pdfObject = pdfArray.get(0);
            }
        }
        if (PdfName.DeviceGray.equals(pdfObject)) {
            return new PdfDeviceCs.Gray();
        }
        if (PdfName.DeviceRGB.equals(pdfObject)) {
            return new PdfDeviceCs.Rgb();
        }
        if (PdfName.DeviceCMYK.equals(pdfObject)) {
            return new PdfDeviceCs.Cmyk();
        }
        if (PdfName.Pattern.equals(pdfObject)) {
            return new PdfSpecialCs.Pattern();
        }
        if (!pdfObject.isArray()) {
            return null;
        }
        PdfArray pdfArray2 = (PdfArray) pdfObject;
        PdfName asName = pdfArray2.getAsName(0);
        if (PdfName.CalGray.equals(asName)) {
            return new PdfCieBasedCs.CalGray(pdfArray2);
        }
        if (PdfName.CalRGB.equals(asName)) {
            return new PdfCieBasedCs.CalRgb(pdfArray2);
        }
        if (PdfName.Lab.equals(asName)) {
            return new PdfCieBasedCs.Lab(pdfArray2);
        }
        if (PdfName.ICCBased.equals(asName)) {
            return new PdfCieBasedCs.IccBased(pdfArray2);
        }
        if (PdfName.Indexed.equals(asName)) {
            return new PdfSpecialCs.Indexed(pdfArray2);
        }
        if (PdfName.Separation.equals(asName)) {
            return new PdfSpecialCs.Separation(pdfArray2);
        }
        if (PdfName.DeviceN.equals(asName)) {
            return pdfArray2.size() == 4 ? new PdfSpecialCs.DeviceN(pdfArray2) : new PdfSpecialCs.NChannel(pdfArray2);
        }
        if (PdfName.Pattern.equals(asName)) {
            return new PdfSpecialCs.UncoloredTilingPattern(pdfArray2);
        }
        return null;
    }
}
