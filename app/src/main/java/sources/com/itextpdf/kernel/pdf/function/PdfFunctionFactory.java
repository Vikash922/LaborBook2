package com.itextpdf.kernel.pdf.function;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfStream;

/* JADX INFO: loaded from: classes6.dex */
public final class PdfFunctionFactory {
    public static final int FUNCTION_TYPE_0 = 0;
    public static final int FUNCTION_TYPE_2 = 2;
    public static final int FUNCTION_TYPE_3 = 3;
    public static final int FUNCTION_TYPE_4 = 4;

    private PdfFunctionFactory() {
    }

    public static IPdfFunction create(PdfObject pdfObject) {
        if (pdfObject.isDictionary() || pdfObject.isStream()) {
            PdfDictionary pdfDictionary = (PdfDictionary) pdfObject;
            int iIntValue = pdfDictionary.getAsNumber(PdfName.FunctionType).intValue();
            if (iIntValue == 0) {
                if (pdfObject.getType() != 9) {
                    throw new PdfException(KernelExceptionMessageConstant.FUCTIONFACTORY_INVALID_OBJECT_TYPE_TYPE0);
                }
                return new PdfType0Function((PdfStream) pdfObject);
            }
            if (iIntValue == 2) {
                return new PdfType2Function(pdfDictionary);
            }
            if (iIntValue == 3) {
                return new PdfType3Function(pdfDictionary);
            }
            if (iIntValue == 4) {
                if (pdfObject.getType() != 9) {
                    throw new PdfException(KernelExceptionMessageConstant.FUCTIONFACTORY_INVALID_OBJECT_TYPE_TYPE4);
                }
                return new PdfType4Function((PdfStream) pdfObject);
            }
            throw new PdfException(MessageFormatUtil.format(KernelExceptionMessageConstant.FUCTIONFACTORY_INVALID_FUNCTION_TYPE, Integer.valueOf(pdfDictionary.getAsNumber(PdfName.FunctionType).intValue())));
        }
        throw new PdfException(KernelExceptionMessageConstant.FUCTIONFACTORY_INVALID_OBJECT_TYPE);
    }
}
