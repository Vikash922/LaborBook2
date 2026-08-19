package com.itextpdf.forms.xfdf;

/* JADX INFO: loaded from: classes6.dex */
public class FieldObject {
    private boolean containsRichText;
    private String name;
    private FieldObject parent;
    private String richTextValue;
    private String value;

    public FieldObject() {
    }

    public FieldObject(String str, String str2, boolean z) {
        this.name = str;
        this.containsRichText = z;
        if (z) {
            this.richTextValue = str2;
        } else {
            this.value = str2;
        }
    }

    public String getName() {
        return this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getValue() {
        return this.value;
    }

    public void setValue(String str) {
        this.value = str;
    }

    public String getRichTextValue() {
        return this.richTextValue;
    }

    public void setRichTextValue(String str) {
        this.richTextValue = str;
    }

    public boolean isContainsRichText() {
        return this.containsRichText;
    }

    public void setContainsRichText(boolean z) {
        this.containsRichText = z;
    }

    public FieldObject getParent() {
        return this.parent;
    }

    public void setParent(FieldObject fieldObject) {
        this.parent = fieldObject;
    }
}
