package com.itextpdf.layout.tagging;

import com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties;
import com.itextpdf.kernel.pdf.tagutils.DefaultAccessibilityProperties;
import com.itextpdf.layout.IPropertyContainer;

/* JADX INFO: loaded from: classes6.dex */
public class TaggingDummyElement implements IAccessibleElement, IPropertyContainer {

    /* JADX INFO: renamed from: id */
    private Object f3230id;
    private DefaultAccessibilityProperties properties;

    public TaggingDummyElement(String str) {
        this.properties = new DefaultAccessibilityProperties(str);
    }

    @Override // com.itextpdf.layout.tagging.IAccessibleElement
    public AccessibilityProperties getAccessibilityProperties() {
        return this.properties;
    }

    @Override // com.itextpdf.layout.IPropertyContainer
    public <T1> T1 getProperty(int i) {
        if (i == 109) {
            return (T1) this.f3230id;
        }
        return null;
    }

    @Override // com.itextpdf.layout.IPropertyContainer
    public void setProperty(int i, Object obj) {
        if (i == 109) {
            this.f3230id = obj;
        }
    }

    @Override // com.itextpdf.layout.IPropertyContainer
    public boolean hasProperty(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // com.itextpdf.layout.IPropertyContainer
    public boolean hasOwnProperty(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // com.itextpdf.layout.IPropertyContainer
    public <T1> T1 getOwnProperty(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // com.itextpdf.layout.IPropertyContainer
    public <T1> T1 getDefaultProperty(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // com.itextpdf.layout.IPropertyContainer
    public void deleteOwnProperty(int i) {
        throw new UnsupportedOperationException();
    }
}
