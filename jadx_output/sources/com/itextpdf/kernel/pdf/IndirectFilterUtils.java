package com.itextpdf.kernel.pdf;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import org.slf4j.Logger;

/* JADX INFO: loaded from: classes6.dex */
final class IndirectFilterUtils {
    private IndirectFilterUtils() {
    }

    static void throwFlushedFilterException(PdfStream pdfStream) {
        throw new PdfException(MessageFormatUtil.format(KernelExceptionMessageConstant.FLUSHED_STREAM_FILTER_EXCEPTION, Integer.valueOf(pdfStream.getIndirectReference().getObjNumber()), Integer.valueOf(pdfStream.getIndirectReference().getGenNumber())));
    }

    static void logFilterWasAlreadyFlushed(Logger logger, PdfStream pdfStream) {
        logger.info(MessageFormatUtil.format(IoLogMessageConstant.FILTER_WAS_ALREADY_FLUSHED, Integer.valueOf(pdfStream.getIndirectReference().getObjNumber()), Integer.valueOf(pdfStream.getIndirectReference().getGenNumber())));
    }
}
