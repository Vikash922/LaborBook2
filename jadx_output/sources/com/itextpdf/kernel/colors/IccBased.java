package com.itextpdf.kernel.colors;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.colorspace.PdfCieBasedCs;
import java.io.InputStream;

/* JADX INFO: loaded from: classes6.dex */
public class IccBased extends Color {
    public IccBased(PdfCieBasedCs.IccBased iccBased) {
        this(iccBased, new float[iccBased.getNumberOfComponents()]);
    }

    public IccBased(PdfCieBasedCs.IccBased iccBased, float[] fArr) {
        super(iccBased, fArr);
    }

    public IccBased(InputStream inputStream) {
        this(new PdfCieBasedCs.IccBased(inputStream), (float[]) null);
        this.colorValue = new float[getNumberOfComponents()];
        for (int i = 0; i < getNumberOfComponents(); i++) {
            this.colorValue[i] = 0.0f;
        }
    }

    public IccBased(InputStream inputStream, float[] fArr) {
        this(new PdfCieBasedCs.IccBased(inputStream), fArr);
    }

    public IccBased(InputStream inputStream, float[] fArr, float[] fArr2) {
        this(new PdfCieBasedCs.IccBased(inputStream, fArr), fArr2);
        if (getNumberOfComponents() * 2 != fArr.length) {
            throw new PdfException(KernelExceptionMessageConstant.INVALID_RANGE_ARRAY, this);
        }
    }
}
