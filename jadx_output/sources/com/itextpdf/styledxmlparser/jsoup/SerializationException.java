package com.itextpdf.styledxmlparser.jsoup;

/* JADX INFO: loaded from: classes6.dex */
public final class SerializationException extends RuntimeException {
    public SerializationException() {
    }

    public SerializationException(String str) {
        super(str);
    }

    public SerializationException(Throwable th) {
        super(th == null ? "Exception with null cause" : th.getMessage(), th);
    }

    public SerializationException(String str, Throwable th) {
        super(str, th);
    }
}
