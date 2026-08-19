package com.itextpdf.kernel.exceptions;

/* JADX INFO: loaded from: classes6.dex */
public class BadPasswordException extends PdfException {
    public static final String PdfReaderNotOpenedWithOwnerPassword = "PdfReader is not opened with owner password";

    public BadPasswordException(String str, Throwable th) {
        super(str, th);
    }

    public BadPasswordException(String str) {
        super(str);
    }
}
