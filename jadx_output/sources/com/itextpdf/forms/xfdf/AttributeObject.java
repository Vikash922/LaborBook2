package com.itextpdf.forms.xfdf;

import com.itextpdf.forms.exceptions.XfdfException;

/* JADX INFO: loaded from: classes6.dex */
public class AttributeObject {
    private String name;
    private String value;

    public AttributeObject(String str, String str2) {
        if (str == null || str2 == null) {
            throw new XfdfException(XfdfException.ATTRIBUTE_NAME_OR_VALUE_MISSING);
        }
        this.name = str;
        this.value = str2;
    }

    public String getName() {
        return this.name;
    }

    public String getValue() {
        return this.value;
    }
}
