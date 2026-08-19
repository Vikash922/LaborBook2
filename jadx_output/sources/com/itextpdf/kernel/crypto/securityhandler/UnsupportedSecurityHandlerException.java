package com.itextpdf.kernel.crypto.securityhandler;

import com.itextpdf.kernel.exceptions.PdfException;

/* JADX INFO: loaded from: classes6.dex */
public class UnsupportedSecurityHandlerException extends PdfException {
    public static final String UnsupportedSecurityHandler = "Failed to open the document. Security handler {0} is not supported";

    public UnsupportedSecurityHandlerException(String str) {
        super(str);
    }
}
