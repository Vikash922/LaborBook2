package com.itextpdf.forms.xfdf;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class FieldsObject {
    private List<FieldObject> fieldList = new ArrayList();

    public List<FieldObject> getFieldList() {
        return this.fieldList;
    }

    public FieldsObject addField(FieldObject fieldObject) {
        this.fieldList.add(fieldObject);
        return this;
    }
}
