package com.itextpdf.kernel.pdf.tagutils;

import com.itextpdf.kernel.pdf.tagging.PdfNamespace;
import com.itextpdf.kernel.pdf.tagging.PdfStructureAttributes;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AccessibilityProperties {
    public AccessibilityProperties addAttributes(int i, PdfStructureAttributes pdfStructureAttributes) {
        return this;
    }

    public AccessibilityProperties addAttributes(PdfStructureAttributes pdfStructureAttributes) {
        return this;
    }

    public AccessibilityProperties addRef(TagTreePointer tagTreePointer) {
        return this;
    }

    public AccessibilityProperties clearAttributes() {
        return this;
    }

    public AccessibilityProperties clearRefs() {
        return this;
    }

    public String getActualText() {
        return null;
    }

    public String getAlternateDescription() {
        return null;
    }

    public String getExpansion() {
        return null;
    }

    public String getLanguage() {
        return null;
    }

    public PdfNamespace getNamespace() {
        return null;
    }

    public String getPhoneme() {
        return null;
    }

    public String getPhoneticAlphabet() {
        return null;
    }

    public String getRole() {
        return null;
    }

    public AccessibilityProperties setActualText(String str) {
        return this;
    }

    public AccessibilityProperties setAlternateDescription(String str) {
        return this;
    }

    public AccessibilityProperties setExpansion(String str) {
        return this;
    }

    public AccessibilityProperties setLanguage(String str) {
        return this;
    }

    public AccessibilityProperties setNamespace(PdfNamespace pdfNamespace) {
        return this;
    }

    public AccessibilityProperties setPhoneme(String str) {
        return this;
    }

    public AccessibilityProperties setPhoneticAlphabet(String str) {
        return this;
    }

    public AccessibilityProperties setRole(String str) {
        return this;
    }

    public List<TagTreePointer> getRefsList() {
        return Collections.emptyList();
    }

    public List<PdfStructureAttributes> getAttributesList() {
        return Collections.emptyList();
    }
}
