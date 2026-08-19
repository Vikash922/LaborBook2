package com.itextpdf.kernel.pdf.filters;

import com.itextpdf.kernel.logs.KernelLogMessageConstant;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class DctDecodeFilter implements IFilterHandler {
    private static final Logger LOGGER = LoggerFactory.getLogger((Class<?>) DctDecodeFilter.class);

    @Override // com.itextpdf.kernel.pdf.filters.IFilterHandler
    public byte[] decode(byte[] bArr, PdfName pdfName, PdfObject pdfObject, PdfDictionary pdfDictionary) {
        LOGGER.info(KernelLogMessageConstant.DCTDECODE_FILTER_DECODING);
        return bArr;
    }
}
