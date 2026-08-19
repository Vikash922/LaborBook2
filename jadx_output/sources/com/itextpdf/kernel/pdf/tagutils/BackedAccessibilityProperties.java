package com.itextpdf.kernel.pdf.tagutils;

import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.kernel.pdf.tagging.PdfNamespace;
import com.itextpdf.kernel.pdf.tagging.PdfStructElem;
import com.itextpdf.kernel.pdf.tagging.PdfStructTreeRoot;
import com.itextpdf.kernel.pdf.tagging.PdfStructureAttributes;
import com.itextpdf.p017io.font.PdfEncodings;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
class BackedAccessibilityProperties extends AccessibilityProperties {
    private TagTreePointer pointerToBackingElem;

    BackedAccessibilityProperties(TagTreePointer tagTreePointer) {
        this.pointerToBackingElem = new TagTreePointer(tagTreePointer);
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public String getRole() {
        return getBackingElem().getRole().getValue();
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public AccessibilityProperties setRole(String str) {
        getBackingElem().setRole(PdfStructTreeRoot.convertRoleToPdfName(str));
        return this;
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public String getLanguage() {
        return toUnicodeString(getBackingElem().getLang());
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public AccessibilityProperties setLanguage(String str) {
        getBackingElem().setLang(new PdfString(str, PdfEncodings.UNICODE_BIG));
        return this;
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public String getActualText() {
        return toUnicodeString(getBackingElem().getActualText());
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public AccessibilityProperties setActualText(String str) {
        getBackingElem().setActualText(new PdfString(str, PdfEncodings.UNICODE_BIG));
        return this;
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public String getAlternateDescription() {
        return toUnicodeString(getBackingElem().getAlt());
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public AccessibilityProperties setAlternateDescription(String str) {
        getBackingElem().setAlt(new PdfString(str, PdfEncodings.UNICODE_BIG));
        return this;
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public String getExpansion() {
        return toUnicodeString(getBackingElem().getE());
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public AccessibilityProperties setExpansion(String str) {
        getBackingElem().setE(new PdfString(str, PdfEncodings.UNICODE_BIG));
        return this;
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public AccessibilityProperties addAttributes(PdfStructureAttributes pdfStructureAttributes) {
        return addAttributes(-1, pdfStructureAttributes);
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public AccessibilityProperties addAttributes(int i, PdfStructureAttributes pdfStructureAttributes) {
        if (pdfStructureAttributes == null) {
            return this;
        }
        getBackingElem().setAttributes(AccessibilityPropertiesToStructElem.combineAttributesList(getBackingElem().getAttributes(false), i, Collections.singletonList(pdfStructureAttributes), getBackingElem().getPdfObject().getAsNumber(PdfName.f3056R)));
        return this;
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public AccessibilityProperties clearAttributes() {
        getBackingElem().getPdfObject().remove(PdfName.f2967A);
        return this;
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public List<PdfStructureAttributes> getAttributesList() {
        ArrayList arrayList = new ArrayList();
        PdfObject attributes = getBackingElem().getAttributes(false);
        if (attributes != null) {
            if (attributes.isDictionary()) {
                arrayList.add(new PdfStructureAttributes((PdfDictionary) attributes));
            } else if (attributes.isArray()) {
                for (PdfObject pdfObject : (PdfArray) attributes) {
                    if (pdfObject.isDictionary()) {
                        arrayList.add(new PdfStructureAttributes((PdfDictionary) pdfObject));
                    }
                }
            }
        }
        return arrayList;
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public AccessibilityProperties setPhoneme(String str) {
        getBackingElem().setPhoneme(new PdfString(str));
        return this;
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public String getPhoneme() {
        return toUnicodeString(getBackingElem().getPhoneme());
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public AccessibilityProperties setPhoneticAlphabet(String str) {
        getBackingElem().setPhoneticAlphabet(PdfStructTreeRoot.convertRoleToPdfName(str));
        return this;
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public String getPhoneticAlphabet() {
        return getBackingElem().getPhoneticAlphabet().getValue();
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public AccessibilityProperties setNamespace(PdfNamespace pdfNamespace) {
        getBackingElem().setNamespace(pdfNamespace);
        this.pointerToBackingElem.getContext().ensureNamespaceRegistered(pdfNamespace);
        return this;
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public PdfNamespace getNamespace() {
        return getBackingElem().getNamespace();
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public AccessibilityProperties addRef(TagTreePointer tagTreePointer) {
        getBackingElem().addRef(tagTreePointer.getCurrentStructElem());
        return this;
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public List<TagTreePointer> getRefsList() {
        ArrayList arrayList = new ArrayList();
        Iterator<PdfStructElem> it = getBackingElem().getRefsList().iterator();
        while (it.hasNext()) {
            arrayList.add(new TagTreePointer(it.next(), this.pointerToBackingElem.getDocument()));
        }
        return Collections.unmodifiableList(arrayList);
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties
    public AccessibilityProperties clearRefs() {
        getBackingElem().getPdfObject().remove(PdfName.Ref);
        return this;
    }

    private PdfStructElem getBackingElem() {
        return this.pointerToBackingElem.getCurrentStructElem();
    }

    private String toUnicodeString(PdfString pdfString) {
        if (pdfString != null) {
            return pdfString.toUnicodeString();
        }
        return null;
    }
}
