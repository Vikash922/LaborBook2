package com.itextpdf.kernel.pdf.tagutils;

import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.kernel.pdf.tagging.PdfStructElem;
import com.itextpdf.kernel.pdf.tagging.PdfStructureAttributes;
import com.itextpdf.p017io.font.PdfEncodings;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
final class AccessibilityPropertiesToStructElem {
    AccessibilityPropertiesToStructElem() {
    }

    static void apply(AccessibilityProperties accessibilityProperties, PdfStructElem pdfStructElem) {
        if (accessibilityProperties.getActualText() != null) {
            pdfStructElem.setActualText(new PdfString(accessibilityProperties.getActualText(), PdfEncodings.UNICODE_BIG));
        }
        if (accessibilityProperties.getAlternateDescription() != null) {
            pdfStructElem.setAlt(new PdfString(accessibilityProperties.getAlternateDescription(), PdfEncodings.UNICODE_BIG));
        }
        if (accessibilityProperties.getExpansion() != null) {
            pdfStructElem.setE(new PdfString(accessibilityProperties.getExpansion(), PdfEncodings.UNICODE_BIG));
        }
        if (accessibilityProperties.getLanguage() != null) {
            pdfStructElem.setLang(new PdfString(accessibilityProperties.getLanguage(), PdfEncodings.UNICODE_BIG));
        }
        List<PdfStructureAttributes> attributesList = accessibilityProperties.getAttributesList();
        if (attributesList.size() > 0) {
            pdfStructElem.setAttributes(combineAttributesList(pdfStructElem.getAttributes(false), -1, attributesList, pdfStructElem.getPdfObject().getAsNumber(PdfName.f3056R)));
        }
        if (accessibilityProperties.getPhoneme() != null) {
            pdfStructElem.setPhoneme(new PdfString(accessibilityProperties.getPhoneme(), PdfEncodings.UNICODE_BIG));
        }
        if (accessibilityProperties.getPhoneticAlphabet() != null) {
            pdfStructElem.setPhoneticAlphabet(new PdfName(accessibilityProperties.getPhoneticAlphabet()));
        }
        if (accessibilityProperties.getNamespace() != null) {
            pdfStructElem.setNamespace(accessibilityProperties.getNamespace());
        }
        Iterator<TagTreePointer> it = accessibilityProperties.getRefsList().iterator();
        while (it.hasNext()) {
            pdfStructElem.addRef(it.next().getCurrentStructElem());
        }
    }

    static PdfObject combineAttributesList(PdfObject pdfObject, int i, List<PdfStructureAttributes> list, PdfNumber pdfNumber) {
        if (pdfObject instanceof PdfDictionary) {
            PdfArray pdfArray = new PdfArray();
            pdfArray.add(pdfObject);
            addNewAttributesToAttributesArray(i, list, pdfNumber, pdfArray);
            return pdfArray;
        }
        if (pdfObject instanceof PdfArray) {
            PdfArray pdfArray2 = (PdfArray) pdfObject;
            addNewAttributesToAttributesArray(i, list, pdfNumber, pdfArray2);
            return pdfArray2;
        }
        if (list.size() == 1) {
            if (i > 0) {
                throw new IndexOutOfBoundsException();
            }
            return list.get(0).getPdfObject();
        }
        PdfArray pdfArray3 = new PdfArray();
        addNewAttributesToAttributesArray(i, list, pdfNumber, pdfArray3);
        return pdfArray3;
    }

    private static void addNewAttributesToAttributesArray(int i, List<PdfStructureAttributes> list, PdfNumber pdfNumber, PdfArray pdfArray) {
        if (i < 0) {
            i = pdfArray.size();
        }
        if (pdfNumber != null) {
            Iterator<PdfStructureAttributes> it = list.iterator();
            while (it.hasNext()) {
                int i2 = i + 1;
                pdfArray.add(i, it.next().getPdfObject());
                i += 2;
                pdfArray.add(i2, pdfNumber);
            }
            return;
        }
        Iterator<PdfStructureAttributes> it2 = list.iterator();
        while (it2.hasNext()) {
            pdfArray.add(i, it2.next().getPdfObject());
            i++;
        }
    }
}
