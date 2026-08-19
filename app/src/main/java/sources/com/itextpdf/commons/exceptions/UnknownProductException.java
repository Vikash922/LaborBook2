package com.itextpdf.commons.exceptions;

/* JADX INFO: loaded from: classes6.dex */
public class UnknownProductException extends ITextException {
    public static final String UNKNOWN_PRODUCT = "Product {0} is unknown. Probably you have to register it.";

    public UnknownProductException(String str) {
        super(str);
    }
}
