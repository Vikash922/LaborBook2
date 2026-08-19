package com.itextpdf.forms.xfdf;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class AnnotsObject {
    private List<AnnotObject> annotsList = new ArrayList();

    public List<AnnotObject> getAnnotsList() {
        return this.annotsList;
    }

    public AnnotsObject addAnnot(AnnotObject annotObject) {
        this.annotsList.add(annotObject);
        return this;
    }
}
