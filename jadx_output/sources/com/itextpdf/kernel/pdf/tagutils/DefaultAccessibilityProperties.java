package com.itextpdf.kernel.pdf.tagutils;

import com.itextpdf.kernel.pdf.tagging.PdfNamespace;
import com.itextpdf.kernel.pdf.tagging.PdfStructureAttributes;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class DefaultAccessibilityProperties extends AccessibilityProperties {
    protected String actualText;
    protected String alternateDescription;
    protected String expansion;
    protected String language;
    protected PdfNamespace namespace;
    protected String phoneme;
    protected String phoneticAlphabet;
    protected String role;
    protected List<PdfStructureAttributes> attributesList = new ArrayList();
    protected List<TagTreePointer> refs = new ArrayList();

    public DefaultAccessibilityProperties(String str) {
        this.role = str;
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public String getRole() {
        return this.role;
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public AccessibilityProperties setRole(String str) {
        this.role = str;
        return this;
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public String getLanguage() {
        return this.language;
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public AccessibilityProperties setLanguage(String str) {
        this.language = str;
        return this;
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public String getActualText() {
        return this.actualText;
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public AccessibilityProperties setActualText(String str) {
        this.actualText = str;
        return this;
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public String getAlternateDescription() {
        return this.alternateDescription;
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public AccessibilityProperties setAlternateDescription(String str) {
        this.alternateDescription = str;
        return this;
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public String getExpansion() {
        return this.expansion;
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public AccessibilityProperties setExpansion(String str) {
        this.expansion = str;
        return this;
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public AccessibilityProperties addAttributes(PdfStructureAttributes pdfStructureAttributes) {
        return addAttributes(-1, pdfStructureAttributes);
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public AccessibilityProperties addAttributes(int i, PdfStructureAttributes pdfStructureAttributes) {
        if (pdfStructureAttributes != null) {
            if (i > 0) {
                this.attributesList.add(i, pdfStructureAttributes);
            } else {
                this.attributesList.add(pdfStructureAttributes);
            }
        }
        return this;
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public AccessibilityProperties clearAttributes() {
        this.attributesList.clear();
        return this;
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public List<PdfStructureAttributes> getAttributesList() {
        return this.attributesList;
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public String getPhoneme() {
        return this.phoneme;
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public AccessibilityProperties setPhoneme(String str) {
        this.phoneme = str;
        return this;
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public String getPhoneticAlphabet() {
        return this.phoneticAlphabet;
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public AccessibilityProperties setPhoneticAlphabet(String str) {
        this.phoneticAlphabet = str;
        return this;
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public PdfNamespace getNamespace() {
        return this.namespace;
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public AccessibilityProperties setNamespace(PdfNamespace pdfNamespace) {
        this.namespace = pdfNamespace;
        return this;
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public AccessibilityProperties addRef(TagTreePointer tagTreePointer) {
        this.refs.add(new TagTreePointer(tagTreePointer));
        return this;
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public List<TagTreePointer> getRefsList() {
        return Collections.unmodifiableList(this.refs);
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public AccessibilityProperties clearRefs() {
        this.refs.clear();
        return this;
    }
}
