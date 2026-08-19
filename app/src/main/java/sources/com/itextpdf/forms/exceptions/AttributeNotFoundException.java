package com.itextpdf.forms.exceptions;

import com.itextpdf.commons.exceptions.ITextException;

/* JADX INFO: loaded from: classes6.dex */
public class AttributeNotFoundException extends ITextException {
    public AttributeNotFoundException(String str) {
        super("Required attribute " + str + " is not found");
    }
}
