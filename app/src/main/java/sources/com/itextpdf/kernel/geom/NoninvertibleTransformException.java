package com.itextpdf.kernel.geom;

/* JADX INFO: loaded from: classes6.dex */
public class NoninvertibleTransformException extends Exception {
    public static final String DETERMINANT_IS_ZERO_CANNOT_INVERT_TRANSFORMATION = "Determinant is zero. Cannot invert transformation.";

    public NoninvertibleTransformException(String str) {
        super(str);
    }
}
