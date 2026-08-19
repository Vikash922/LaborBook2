package com.itextpdf.kernel.colors;

import com.itextpdf.kernel.pdf.colorspace.PdfColorSpace;
import com.itextpdf.kernel.pdf.colorspace.PdfSpecialCs;
import com.itextpdf.kernel.pdf.function.IPdfFunction;
import com.itextpdf.kernel.pdf.function.PdfFunction;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class DeviceN extends Color {
    public DeviceN(PdfSpecialCs.DeviceN deviceN) {
        this(deviceN, getDefaultColorants(deviceN.getNumberOfComponents()));
    }

    public DeviceN(PdfSpecialCs.DeviceN deviceN, float[] fArr) {
        super(deviceN, fArr);
    }

    @Deprecated
    public DeviceN(List<String> list, PdfColorSpace pdfColorSpace, PdfFunction pdfFunction, float[] fArr) {
        this(new PdfSpecialCs.DeviceN(list, pdfColorSpace, pdfFunction), fArr);
    }

    public DeviceN(List<String> list, PdfColorSpace pdfColorSpace, IPdfFunction iPdfFunction, float[] fArr) {
        this(new PdfSpecialCs.DeviceN(list, pdfColorSpace, iPdfFunction), fArr);
    }

    private static float[] getDefaultColorants(int i) {
        float[] fArr = new float[i];
        Arrays.fill(fArr, 1.0f);
        return fArr;
    }
}
