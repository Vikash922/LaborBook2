package com.itextpdf.kernel.pdf;

import com.itextpdf.kernel.pdf.filters.IFilterHandler;
import java.io.ByteArrayOutputStream;

/* JADX INFO: loaded from: classes6.dex */
public abstract class MemoryLimitsAwareFilter implements IFilterHandler {
    public ByteArrayOutputStream enableMemoryLimitsAwareHandler(PdfDictionary pdfDictionary) {
        MemoryLimitsAwareHandler memoryLimitsAwareHandler;
        MemoryLimitsAwareOutputStream memoryLimitsAwareOutputStream = new MemoryLimitsAwareOutputStream();
        if (pdfDictionary.getIndirectReference() != null) {
            memoryLimitsAwareHandler = pdfDictionary.getIndirectReference().getDocument().memoryLimitsAwareHandler;
        } else {
            memoryLimitsAwareHandler = new MemoryLimitsAwareHandler();
        }
        if (memoryLimitsAwareHandler != null && memoryLimitsAwareHandler.considerCurrentPdfStream) {
            memoryLimitsAwareOutputStream.setMaxStreamSize(memoryLimitsAwareHandler.getMaxSizeOfSingleDecompressedPdfStream());
        }
        return memoryLimitsAwareOutputStream;
    }
}
