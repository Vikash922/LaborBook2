package com.itextpdf.kernel.exceptions;

/* JADX INFO: loaded from: classes6.dex */
public class MemoryLimitsAwareException extends PdfException {
    public MemoryLimitsAwareException(String str) {
        super(str);
    }

    public MemoryLimitsAwareException(Throwable th) {
        this(KernelExceptionMessageConstant.UNKNOWN_PDF_EXCEPTION, th);
    }

    public MemoryLimitsAwareException(String str, Throwable th) {
        super(str, th);
    }
}
