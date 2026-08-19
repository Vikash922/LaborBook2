package com.itextpdf.forms.exceptions;

import com.itextpdf.commons.exceptions.ITextException;

/* JADX INFO: loaded from: classes6.dex */
public class XfdfException extends ITextException {
    public static final String ATTRIBUTE_NAME_OR_VALUE_MISSING = "Attribute name or value are missing";
    public static final String PAGE_IS_MISSING = "Required Page attribute is missing.";

    public XfdfException(String str) {
        super(str);
    }
}
