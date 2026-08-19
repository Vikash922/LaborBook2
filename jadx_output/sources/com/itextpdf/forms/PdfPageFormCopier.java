package com.itextpdf.forms;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.forms.fields.PdfFormField;
import com.itextpdf.kernel.pdf.IPdfPageExtraCopier;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfPage;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.kernel.pdf.annot.PdfAnnotation;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class PdfPageFormCopier implements IPdfPageExtraCopier {
    private static Logger logger = LoggerFactory.getLogger((Class<?>) PdfPageFormCopier.class);
    private PdfDocument documentFrom;
    private PdfDocument documentTo;
    private PdfAcroForm formFrom;
    private PdfAcroForm formTo;

    @Override // com.itextpdf.kernel.pdf.IPdfPageExtraCopier
    public void copy(PdfPage pdfPage, PdfPage pdfPage2) {
        if (this.documentFrom != pdfPage.getDocument()) {
            PdfDocument document = pdfPage.getDocument();
            this.documentFrom = document;
            this.formFrom = PdfAcroForm.getAcroForm(document, false);
        }
        if (this.documentTo != pdfPage2.getDocument()) {
            PdfDocument document2 = pdfPage2.getDocument();
            this.documentTo = document2;
            this.formTo = PdfAcroForm.getAcroForm(document2, true);
        }
        if (this.formFrom == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(PdfName.Fields);
        arrayList.add(PdfName.f2995DR);
        this.formTo.getPdfObject().mergeDifferent(this.formFrom.getPdfObject().copyTo(this.documentTo, (List<PdfName>) arrayList, false));
        Map<String, PdfFormField> formFields = this.formFrom.getFormFields();
        if (formFields.size() <= 0) {
            return;
        }
        Map<String, PdfFormField> formFields2 = this.formTo.getFormFields();
        for (PdfAnnotation pdfAnnotation : pdfPage2.getAnnotations()) {
            if (pdfAnnotation.getSubtype().equals(PdfName.Widget)) {
                copyField(pdfPage2, formFields, formFields2, pdfAnnotation);
            }
        }
    }

    private PdfFormField makeFormField(PdfObject pdfObject) {
        PdfFormField pdfFormFieldMakeFormField = PdfFormField.makeFormField(pdfObject, this.documentTo);
        if (pdfFormFieldMakeFormField == null) {
            logger.warn(MessageFormatUtil.format(IoLogMessageConstant.CANNOT_CREATE_FORMFIELD, pdfObject.getIndirectReference()));
        }
        return pdfFormFieldMakeFormField;
    }

    private void copyField(PdfPage pdfPage, Map<String, PdfFormField> map, Map<String, PdfFormField> map2, PdfAnnotation pdfAnnotation) {
        PdfFormField pdfFormFieldMakeFormField;
        PdfDictionary asDictionary = pdfAnnotation.getPdfObject().getAsDictionary(PdfName.Parent);
        if (asDictionary != null) {
            PdfFormField parentField = getParentField(asDictionary, this.documentTo);
            if (parentField == null || parentField.getFieldName() == null) {
                return;
            }
            copyParentFormField(pdfPage, map2, pdfAnnotation, parentField);
            return;
        }
        PdfString asString = pdfAnnotation.getPdfObject().getAsString(PdfName.f3071T);
        String unicodeString = asString != null ? asString.toUnicodeString() : null;
        if (unicodeString == null || !map.containsKey(unicodeString) || (pdfFormFieldMakeFormField = makeFormField(pdfAnnotation.getPdfObject())) == null) {
            return;
        }
        if (map2.get(unicodeString) != null) {
            pdfFormFieldMakeFormField = mergeFieldsWithTheSameName(pdfFormFieldMakeFormField);
        }
        this.formTo.addField(pdfFormFieldMakeFormField, pdfPage);
        pdfFormFieldMakeFormField.updateDefaultAppearance();
    }

    private void copyParentFormField(PdfPage pdfPage, Map<String, PdfFormField> map, PdfAnnotation pdfAnnotation, PdfFormField pdfFormField) {
        if (!map.containsKey(pdfFormField.getFieldName().toUnicodeString())) {
            PdfFormField pdfFormFieldCreateParentFieldCopy = createParentFieldCopy(pdfAnnotation.getPdfObject(), this.documentTo);
            PdfArray kids = pdfFormFieldCreateParentFieldCopy.getKids();
            pdfFormFieldCreateParentFieldCopy.getPdfObject().remove(PdfName.Kids);
            this.formTo.addField(pdfFormFieldCreateParentFieldCopy, pdfPage);
            pdfFormFieldCreateParentFieldCopy.getPdfObject().put(PdfName.Kids, kids);
            return;
        }
        PdfFormField pdfFormFieldMakeFormField = makeFormField(pdfAnnotation.getPdfObject());
        if (pdfFormFieldMakeFormField == null) {
            return;
        }
        PdfString fieldName = pdfFormFieldMakeFormField.getFieldName();
        if (fieldName != null) {
            if (map.get(fieldName.toUnicodeString()) != null) {
                PdfFormField pdfFormFieldMergeFieldsWithTheSameName = mergeFieldsWithTheSameName(pdfFormFieldMakeFormField);
                this.formTo.getFormFields().put(pdfFormFieldMergeFieldsWithTheSameName.getFieldName().toUnicodeString(), pdfFormFieldMergeFieldsWithTheSameName);
                return;
            } else {
                HashSet hashSet = new HashSet();
                getAllFieldNames(this.formTo.getFields(), hashSet);
                addChildToExistingParent(pdfAnnotation.getPdfObject(), hashSet, map);
                return;
            }
        }
        if (!pdfFormField.getKids().contains(pdfFormFieldMakeFormField.getPdfObject()) && this.formTo.getFields().contains(pdfFormField.getPdfObject())) {
            HashSet hashSet2 = new HashSet();
            getAllFieldNames(this.formTo.getFields(), hashSet2);
            addChildToExistingParent(pdfAnnotation.getPdfObject(), hashSet2);
        } else {
            this.formTo.addField(mergeFieldsWithTheSameName(pdfFormFieldMakeFormField), pdfPage);
        }
    }

    private PdfFormField mergeFieldsWithTheSameName(PdfFormField pdfFormField) {
        PdfString asString = pdfFormField.getPdfObject().getAsString(PdfName.f3071T);
        if (asString == null) {
            asString = pdfFormField.getParent().getAsString(PdfName.f3071T);
        }
        String unicodeString = asString.toUnicodeString();
        if (pdfFormField.getFieldName() != null) {
            unicodeString = pdfFormField.getFieldName().toUnicodeString();
        }
        logger.warn(MessageFormatUtil.format(IoLogMessageConstant.DOCUMENT_ALREADY_HAS_FIELD, unicodeString));
        PdfFormField field = this.formTo.getField(unicodeString);
        int i = 0;
        if (field.isFlushed()) {
            do {
                i++;
                pdfFormField.setFieldName(asString.toUnicodeString() + "_#" + i);
            } while (this.formTo.getField(pdfFormField.getFieldName().toUnicodeString()) != null);
            return pdfFormField;
        }
        pdfFormField.getPdfObject().remove(PdfName.f3071T);
        pdfFormField.getPdfObject().remove(PdfName.f3047P);
        this.formTo.getFields().remove(field.getPdfObject());
        PdfArray kids = field.getKids();
        if (kids != null && !kids.isEmpty()) {
            field.addKid(pdfFormField);
            return field;
        }
        field.getPdfObject().remove(PdfName.f3071T);
        field.getPdfObject().remove(PdfName.f3047P);
        PdfFormField pdfFormFieldCreateEmptyField = PdfFormField.createEmptyField(this.documentTo);
        pdfFormFieldCreateEmptyField.put(PdfName.f3007FT, field.getFormType()).put(PdfName.f3071T, asString);
        PdfDictionary parent = field.getParent();
        if (parent != null) {
            pdfFormFieldCreateEmptyField.put(PdfName.Parent, parent);
            PdfArray asArray = parent.getAsArray(PdfName.Kids);
            while (true) {
                if (i >= asArray.size()) {
                    break;
                }
                if (asArray.get(i) == field.getPdfObject()) {
                    asArray.set(i, pdfFormFieldCreateEmptyField.getPdfObject());
                    break;
                }
                i++;
            }
        }
        PdfArray kids2 = field.getKids();
        if (kids2 != null) {
            pdfFormFieldCreateEmptyField.put(PdfName.Kids, kids2);
        }
        pdfFormFieldCreateEmptyField.addKid(field).addKid(pdfFormField);
        if (field.getPdfObject().get(PdfName.f3086V) != null) {
            pdfFormFieldCreateEmptyField.put(PdfName.f3086V, field.getPdfObject().get(PdfName.f3086V));
        }
        return pdfFormFieldCreateEmptyField;
    }

    private static PdfFormField getParentField(PdfDictionary pdfDictionary, PdfDocument pdfDocument) {
        PdfDictionary asDictionary = pdfDictionary.getAsDictionary(PdfName.Parent);
        if (asDictionary != null) {
            return getParentField(asDictionary, pdfDocument);
        }
        return PdfFormField.makeFormField(pdfDictionary, pdfDocument);
    }

    private PdfFormField createParentFieldCopy(PdfDictionary pdfDictionary, PdfDocument pdfDocument) {
        PdfDictionary asDictionary = pdfDictionary.getAsDictionary(PdfName.Parent);
        PdfFormField pdfFormFieldMakeFormField = PdfFormField.makeFormField(pdfDictionary, pdfDocument);
        if (asDictionary != null) {
            pdfFormFieldMakeFormField = createParentFieldCopy(asDictionary, pdfDocument);
            PdfArray pdfArray = (PdfArray) asDictionary.get(PdfName.Kids);
            if (pdfArray == null) {
                asDictionary.put(PdfName.Kids, new PdfArray(pdfDictionary));
            } else {
                pdfArray.add(pdfDictionary);
            }
        }
        return pdfFormFieldMakeFormField;
    }

    private void addChildToExistingParent(PdfDictionary pdfDictionary, Set<String> set) {
        PdfString asString;
        PdfDictionary asDictionary = pdfDictionary.getAsDictionary(PdfName.Parent);
        if (asDictionary == null || (asString = asDictionary.getAsString(PdfName.f3071T)) == null) {
            return;
        }
        if (set.contains(asString.toUnicodeString())) {
            asDictionary.getAsArray(PdfName.Kids).add(pdfDictionary);
        } else {
            asDictionary.put(PdfName.Kids, new PdfArray(pdfDictionary));
            addChildToExistingParent(asDictionary, set);
        }
    }

    private void addChildToExistingParent(PdfDictionary pdfDictionary, Set<String> set, Map<String, PdfFormField> map) {
        PdfString asString;
        PdfDictionary asDictionary = pdfDictionary.getAsDictionary(PdfName.Parent);
        if (asDictionary == null || (asString = asDictionary.getAsString(PdfName.f3071T)) == null) {
            return;
        }
        if (set.contains(asString.toUnicodeString())) {
            PdfArray asArray = asDictionary.getAsArray(PdfName.Kids);
            for (PdfObject pdfObject : asArray) {
                PdfDictionary pdfDictionary2 = (PdfDictionary) pdfObject;
                if (pdfDictionary2.get(PdfName.f3071T) != null && pdfDictionary2.get(PdfName.f3071T).equals(pdfDictionary.get(PdfName.f3071T))) {
                    PdfFormField pdfFormFieldMakeFormField = makeFormField(pdfObject);
                    PdfFormField pdfFormFieldMakeFormField2 = makeFormField(pdfDictionary);
                    if (pdfFormFieldMakeFormField != null && pdfFormFieldMakeFormField2 != null) {
                        map.put(pdfFormFieldMakeFormField.getFieldName().toUnicodeString(), pdfFormFieldMakeFormField);
                        PdfFormField pdfFormFieldMergeFieldsWithTheSameName = mergeFieldsWithTheSameName(pdfFormFieldMakeFormField2);
                        this.formTo.getFormFields().put(pdfFormFieldMergeFieldsWithTheSameName.getFieldName().toUnicodeString(), pdfFormFieldMergeFieldsWithTheSameName);
                        return;
                    }
                }
            }
            asArray.add(pdfDictionary);
            return;
        }
        asDictionary.put(PdfName.Kids, new PdfArray(pdfDictionary));
        addChildToExistingParent(asDictionary, set);
    }

    private void getAllFieldNames(PdfArray pdfArray, Set<String> set) {
        for (PdfObject pdfObject : pdfArray) {
            if (!pdfObject.isFlushed()) {
                PdfDictionary pdfDictionary = (PdfDictionary) pdfObject;
                PdfString asString = pdfDictionary.getAsString(PdfName.f3071T);
                if (asString != null) {
                    set.add(asString.toUnicodeString());
                }
                PdfArray asArray = pdfDictionary.getAsArray(PdfName.Kids);
                if (asArray != null) {
                    getAllFieldNames(asArray, set);
                }
            }
        }
    }
}
