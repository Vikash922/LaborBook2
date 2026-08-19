package com.itextpdf.commons.exceptions;

/* JADX INFO: loaded from: classes6.dex */
public class ITextException extends RuntimeException {
    public ITextException() {
        super(CommonsExceptionMessageConstant.UNKNOWN_ITEXT_EXCEPTION);
    }

    public ITextException(String str) {
        super(str);
    }

    public ITextException(Throwable th) {
        super(CommonsExceptionMessageConstant.UNKNOWN_ITEXT_EXCEPTION, th);
    }

    public ITextException(String str, Throwable th) {
        super(str, th);
    }
}
