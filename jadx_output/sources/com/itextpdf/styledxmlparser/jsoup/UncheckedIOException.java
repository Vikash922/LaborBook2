package com.itextpdf.styledxmlparser.jsoup;

import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public class UncheckedIOException extends RuntimeException {
    public UncheckedIOException(IOException iOException) {
        super(iOException.getMessage(), iOException);
    }

    public UncheckedIOException(String str) {
        super(str, new IOException(str));
    }

    public IOException ioException() {
        return (IOException) getCause();
    }
}
