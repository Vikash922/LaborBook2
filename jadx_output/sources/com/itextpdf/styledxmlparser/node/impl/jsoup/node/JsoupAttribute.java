package com.itextpdf.styledxmlparser.node.impl.jsoup.node;

import com.itextpdf.styledxmlparser.jsoup.nodes.Attribute;
import com.itextpdf.styledxmlparser.node.IAttribute;

/* JADX INFO: loaded from: classes6.dex */
public class JsoupAttribute implements IAttribute {
    private Attribute attribute;

    public JsoupAttribute(Attribute attribute) {
        this.attribute = attribute;
    }

    @Override // com.itextpdf.styledxmlparser.node.IAttribute
    public String getKey() {
        return this.attribute.getKey();
    }

    @Override // com.itextpdf.styledxmlparser.node.IAttribute
    public String getValue() {
        return this.attribute.getValue();
    }
}
