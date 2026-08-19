package com.itextpdf.kernel.pdf;

import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
final class PdfNameLoader {
    PdfNameLoader() {
    }

    static Map<String, PdfName> loadNames() {
        Field[] declaredFields = PdfName.class.getDeclaredFields();
        HashMap map = new HashMap(declaredFields.length);
        try {
            for (Field field : declaredFields) {
                if ((field.getModifiers() & 25) == 25 && field.getType().equals(PdfName.class)) {
                    PdfName pdfName = (PdfName) field.get(null);
                    map.put(pdfName.getValue(), pdfName);
                }
            }
            return map;
        } catch (Exception unused) {
            return null;
        }
    }
}
