package com.itextpdf.forms;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.forms.exceptions.FormsExceptionMessageConstant;
import com.itextpdf.forms.fields.PdfFormField;
import com.itextpdf.forms.xfa.XfaForm;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.geom.AffineTransform;
import com.itextpdf.kernel.geom.Point;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfBoolean;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfObjectWrapper;
import com.itextpdf.kernel.pdf.PdfPage;
import com.itextpdf.kernel.pdf.PdfStream;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.kernel.pdf.PdfVersion;
import com.itextpdf.kernel.pdf.VersionConforming;
import com.itextpdf.kernel.pdf.annot.PdfAnnotation;
import com.itextpdf.kernel.pdf.tagging.StandardRoles;
import com.itextpdf.kernel.pdf.tagutils.TagTreePointer;
import com.itextpdf.kernel.pdf.xobject.PdfFormXObject;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class PdfAcroForm extends PdfObjectWrapper<PdfDictionary> {
    public static final int APPEND_ONLY = 2;
    private static final Logger LOGGER = LoggerFactory.getLogger((Class<?>) PdfAcroForm.class);
    public static final int SIGNATURE_EXIST = 1;
    private PdfDictionary defaultResources;
    protected PdfDocument document;
    protected Map<String, PdfFormField> fields;
    private Set<PdfFormField> fieldsForFlattening;
    protected boolean generateAppearance;
    private XfaForm xfaForm;

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return false;
    }

    private PdfAcroForm(PdfDictionary pdfDictionary, PdfDocument pdfDocument) {
        super(pdfDictionary);
        this.generateAppearance = true;
        this.fields = new LinkedHashMap();
        this.fieldsForFlattening = new LinkedHashSet();
        this.document = pdfDocument;
        getFormFields();
        this.xfaForm = new XfaForm(pdfDictionary);
    }

    private PdfAcroForm(PdfArray pdfArray) {
        this(createAcroFormDictionaryByFields(pdfArray), null);
        setForbidRelease();
    }

    public static PdfAcroForm getAcroForm(PdfDocument pdfDocument, boolean z) {
        PdfAcroForm pdfAcroForm;
        PdfDictionary asDictionary = pdfDocument.getCatalog().getPdfObject().getAsDictionary(PdfName.AcroForm);
        if (asDictionary != null) {
            pdfAcroForm = new PdfAcroForm(asDictionary, pdfDocument);
        } else if (z) {
            pdfAcroForm = new PdfAcroForm(new PdfArray());
            pdfAcroForm.makeIndirect(pdfDocument);
            pdfDocument.getCatalog().put(PdfName.AcroForm, pdfAcroForm.getPdfObject());
            pdfDocument.getCatalog().setModified();
        } else {
            pdfAcroForm = null;
        }
        if (pdfAcroForm != null) {
            PdfDictionary defaultResources = pdfAcroForm.getDefaultResources();
            pdfAcroForm.defaultResources = defaultResources;
            if (defaultResources == null) {
                pdfAcroForm.defaultResources = new PdfDictionary();
            }
            pdfAcroForm.document = pdfDocument;
            pdfAcroForm.xfaForm = new XfaForm(pdfDocument);
        }
        return pdfAcroForm;
    }

    public void addField(PdfFormField pdfFormField) {
        if (this.document.getNumberOfPages() == 0) {
            this.document.addNewPage();
        }
        addField(pdfFormField, this.document.getLastPage());
    }

    public void addField(PdfFormField pdfFormField, PdfPage pdfPage) {
        PdfArray kids = pdfFormField.getKids();
        PdfDictionary pdfObject = pdfFormField.getPdfObject();
        if (kids != null) {
            processKids(kids, pdfObject, pdfPage);
        }
        PdfArray fields = getFields();
        fields.add(pdfObject);
        fields.setModified();
        this.fields.put(pdfFormField.getFieldName().toUnicodeString(), pdfFormField);
        if (pdfFormField.getKids() != null) {
            iterateFields(pdfFormField.getKids(), this.fields);
        }
        if (pdfObject.containsKey(PdfName.Subtype) && pdfPage != null) {
            addWidgetAnnotationToPage(pdfPage, PdfAnnotation.makeAnnotation(pdfObject));
        }
        setModified();
    }

    public void addFieldAppearanceToPage(PdfFormField pdfFormField, PdfPage pdfPage) {
        PdfDictionary pdfDictionary;
        PdfName asName;
        PdfDictionary pdfObject = pdfFormField.getPdfObject();
        PdfArray kids = pdfFormField.getKids();
        if (kids == null || kids.size() > 1 || (asName = (pdfDictionary = (PdfDictionary) kids.get(0)).getAsName(PdfName.Subtype)) == null || !asName.equals(PdfName.Widget)) {
            return;
        }
        if (!pdfDictionary.containsKey(PdfName.f3007FT)) {
            mergeWidgetWithParentField(pdfObject, pdfDictionary);
        }
        defineWidgetPageAndAddToIt(pdfPage, pdfObject, false);
    }

    public Map<String, PdfFormField> getFormFields() {
        if (this.fields.size() == 0) {
            this.fields = iterateFields(getFields());
        }
        return this.fields;
    }

    public Collection<PdfFormField> getFieldsForFlattening() {
        return Collections.unmodifiableCollection(this.fieldsForFlattening);
    }

    public PdfDocument getPdfDocument() {
        return this.document;
    }

    public PdfAcroForm setNeedAppearances(boolean z) {
        if (VersionConforming.validatePdfVersionForDeprecatedFeatureLogError(this.document, PdfVersion.PDF_2_0, VersionConforming.DEPRECATED_NEED_APPEARANCES_IN_ACROFORM)) {
            getPdfObject().remove(PdfName.NeedAppearances);
            setModified();
        } else {
            put(PdfName.NeedAppearances, PdfBoolean.valueOf(z));
        }
        return this;
    }

    public PdfBoolean getNeedAppearances() {
        return getPdfObject().getAsBoolean(PdfName.NeedAppearances);
    }

    public PdfAcroForm setSignatureFlags(int i) {
        return put(PdfName.SigFlags, new PdfNumber(i));
    }

    public PdfAcroForm setSignatureFlag(int i) {
        return setSignatureFlags(i | getSignatureFlags());
    }

    public int getSignatureFlags() {
        PdfNumber asNumber = getPdfObject().getAsNumber(PdfName.SigFlags);
        if (asNumber != null) {
            return asNumber.intValue();
        }
        return 0;
    }

    public PdfAcroForm setCalculationOrder(PdfArray pdfArray) {
        return put(PdfName.f2987CO, pdfArray);
    }

    public PdfArray getCalculationOrder() {
        return getPdfObject().getAsArray(PdfName.f2987CO);
    }

    public PdfAcroForm setDefaultResources(PdfDictionary pdfDictionary) {
        return put(PdfName.f2995DR, pdfDictionary);
    }

    public PdfDictionary getDefaultResources() {
        return getPdfObject().getAsDictionary(PdfName.f2995DR);
    }

    public PdfAcroForm setDefaultAppearance(String str) {
        return put(PdfName.f2993DA, new PdfString(str));
    }

    public PdfString getDefaultAppearance() {
        return getPdfObject().getAsString(PdfName.f2993DA);
    }

    public PdfAcroForm setDefaultJustification(int i) {
        return put(PdfName.f3055Q, new PdfNumber(i));
    }

    public PdfNumber getDefaultJustification() {
        return getPdfObject().getAsNumber(PdfName.f3055Q);
    }

    public PdfAcroForm setXFAResource(PdfStream pdfStream) {
        return put(PdfName.XFA, pdfStream);
    }

    public PdfAcroForm setXFAResource(PdfArray pdfArray) {
        return put(PdfName.XFA, pdfArray);
    }

    public PdfObject getXFAResource() {
        return getPdfObject().get(PdfName.XFA);
    }

    public PdfFormField getField(String str) {
        return this.fields.get(str);
    }

    public boolean isGenerateAppearance() {
        return this.generateAppearance;
    }

    public void setGenerateAppearance(boolean z) {
        if (z) {
            getPdfObject().remove(PdfName.NeedAppearances);
            setModified();
        }
        this.generateAppearance = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x011b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void flattenFields() {
        /*
            Method dump skipped, instruction units count: 536
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.forms.PdfAcroForm.flattenFields():void");
    }

    public boolean removeField(String str) {
        PdfFormField field = getField(str);
        if (field == null) {
            return false;
        }
        PdfDictionary pdfObject = field.getPdfObject();
        PdfPage fieldPage = getFieldPage(pdfObject);
        PdfAnnotation pdfAnnotationMakeAnnotation = PdfAnnotation.makeAnnotation(pdfObject);
        if (fieldPage != null && pdfAnnotationMakeAnnotation != null) {
            fieldPage.removeAnnotation(pdfAnnotationMakeAnnotation);
        }
        PdfDictionary parent = field.getParent();
        if (parent != null) {
            PdfArray asArray = parent.getAsArray(PdfName.Kids);
            asArray.remove(pdfObject);
            this.fields.remove(str);
            asArray.setModified();
            parent.setModified();
            return true;
        }
        PdfArray fields = getFields();
        if (!fields.contains(pdfObject)) {
            return false;
        }
        fields.remove(pdfObject);
        this.fields.remove(str);
        fields.setModified();
        setModified();
        return true;
    }

    public void partialFormFlattening(String str) {
        PdfFormField pdfFormField = getFormFields().get(str);
        if (pdfFormField != null) {
            this.fieldsForFlattening.add(pdfFormField);
        }
    }

    public void renameField(String str, String str2) {
        PdfFormField pdfFormField;
        Map<String, PdfFormField> formFields = getFormFields();
        if (formFields.containsKey(str2) || (pdfFormField = formFields.get(str)) == null) {
            return;
        }
        pdfFormField.setFieldName(str2);
        formFields.remove(str);
        formFields.put(str2, pdfFormField);
    }

    public PdfFormField copyField(String str) {
        PdfFormField field = getField(str);
        if (field != null) {
            return new PdfFormField((PdfDictionary) field.getPdfObject().m3121clone().makeIndirect(this.document));
        }
        return null;
    }

    public void replaceField(String str, PdfFormField pdfFormField) {
        removeField(str);
        addField(pdfFormField);
    }

    protected PdfArray getFields() {
        PdfArray asArray = getPdfObject().getAsArray(PdfName.Fields);
        if (asArray != null) {
            return asArray;
        }
        LOGGER.warn(IoLogMessageConstant.NO_FIELDS_IN_ACROFORM);
        PdfArray pdfArray = new PdfArray();
        getPdfObject().put(PdfName.Fields, pdfArray);
        return pdfArray;
    }

    private Map<String, PdfFormField> iterateFields(PdfArray pdfArray, Map<String, PdfFormField> map) {
        String unicodeString;
        int i = 1;
        for (PdfObject indirectReference : pdfArray) {
            if (indirectReference.isFlushed()) {
                LOGGER.info(IoLogMessageConstant.FORM_FIELD_WAS_FLUSHED);
            } else {
                PdfFormField pdfFormFieldMakeFormField = PdfFormField.makeFormField(indirectReference, this.document);
                if (pdfFormFieldMakeFormField == null) {
                    Logger logger = LOGGER;
                    if (indirectReference.getIndirectReference() != null) {
                        indirectReference = indirectReference.getIndirectReference();
                    }
                    logger.warn(MessageFormatUtil.format(IoLogMessageConstant.CANNOT_CREATE_FORMFIELD, indirectReference));
                } else {
                    PdfString fieldName = pdfFormFieldMakeFormField.getFieldName();
                    if (fieldName == null) {
                        PdfFormField pdfFormFieldMakeFormField2 = PdfFormField.makeFormField(pdfFormFieldMakeFormField.getParent(), this.document);
                        while (fieldName == null) {
                            fieldName = pdfFormFieldMakeFormField2.getFieldName();
                            if (fieldName == null) {
                                pdfFormFieldMakeFormField2 = PdfFormField.makeFormField(pdfFormFieldMakeFormField2.getParent(), this.document);
                            }
                        }
                        unicodeString = fieldName.toUnicodeString() + "." + i;
                        i++;
                    } else {
                        unicodeString = fieldName.toUnicodeString();
                    }
                    map.put(unicodeString, pdfFormFieldMakeFormField);
                    if (pdfFormFieldMakeFormField.getKids() != null) {
                        iterateFields(pdfFormFieldMakeFormField.getKids(), map);
                    }
                }
            }
        }
        return map;
    }

    private Map<String, PdfFormField> iterateFields(PdfArray pdfArray) {
        return iterateFields(pdfArray, new LinkedHashMap());
    }

    private PdfDictionary processKids(PdfArray pdfArray, PdfDictionary pdfDictionary, PdfPage pdfPage) {
        if (pdfArray.size() == 1) {
            PdfDictionary pdfDictionary2 = (PdfDictionary) pdfArray.get(0);
            PdfName asName = pdfDictionary2.getAsName(PdfName.Subtype);
            if (asName != null && asName.equals(PdfName.Widget)) {
                if (!pdfDictionary2.containsKey(PdfName.f3007FT)) {
                    mergeWidgetWithParentField(pdfDictionary, pdfDictionary2);
                    defineWidgetPageAndAddToIt(pdfPage, pdfDictionary, true);
                } else {
                    defineWidgetPageAndAddToIt(pdfPage, pdfDictionary2, true);
                }
            } else {
                PdfArray asArray = pdfDictionary2.getAsArray(PdfName.Kids);
                if (asArray != null) {
                    processKids(asArray, pdfDictionary2, pdfPage);
                }
            }
        } else {
            for (int i = 0; i < pdfArray.size(); i++) {
                PdfDictionary pdfDictionary3 = (PdfDictionary) pdfArray.get(i);
                PdfArray asArray2 = pdfDictionary3.getAsArray(PdfName.Kids);
                if (asArray2 != null) {
                    processKids(asArray2, pdfDictionary3, pdfPage);
                }
            }
        }
        return pdfDictionary;
    }

    private void mergeWidgetWithParentField(PdfDictionary pdfDictionary, PdfDictionary pdfDictionary2) {
        pdfDictionary.remove(PdfName.Kids);
        pdfDictionary2.remove(PdfName.Parent);
        pdfDictionary.mergeDifferent(pdfDictionary2);
    }

    private void defineWidgetPageAndAddToIt(PdfPage pdfPage, PdfDictionary pdfDictionary, boolean z) {
        PdfAnnotation pdfAnnotationMakeAnnotation = PdfAnnotation.makeAnnotation(pdfDictionary);
        PdfDictionary pageObject = pdfAnnotationMakeAnnotation.getPageObject();
        if (pageObject != null) {
            if (z && pageObject.isFlushed()) {
                throw new PdfException(FormsExceptionMessageConstant.f2851x5d2bf193);
            }
            addWidgetAnnotationToPage(pageObject.getIndirectReference().getDocument().getPage(pageObject), pdfAnnotationMakeAnnotation);
            return;
        }
        addWidgetAnnotationToPage(pdfPage, pdfAnnotationMakeAnnotation);
    }

    private void addWidgetAnnotationToPage(PdfPage pdfPage, PdfAnnotation pdfAnnotation) {
        TagTreePointer autoTaggingPointer;
        if (pdfPage.containsAnnotation(pdfAnnotation)) {
            return;
        }
        boolean zIsTagged = pdfPage.getDocument().isTagged();
        if (zIsTagged) {
            autoTaggingPointer = pdfPage.getDocument().getTagStructureContext().getAutoTaggingPointer();
            autoTaggingPointer.addTag(StandardRoles.FORM);
        } else {
            autoTaggingPointer = null;
        }
        pdfPage.addAnnotation(pdfAnnotation);
        if (zIsTagged) {
            autoTaggingPointer.moveToParent();
        }
    }

    public boolean hasXfaForm() {
        XfaForm xfaForm = this.xfaForm;
        return xfaForm != null && xfaForm.isXfaPresent();
    }

    public XfaForm getXfaForm() {
        return this.xfaForm;
    }

    public void removeXfaForm() {
        if (hasXfaForm()) {
            this.document.getCatalog().getPdfObject().getAsDictionary(PdfName.AcroForm).remove(PdfName.XFA);
            this.xfaForm = null;
        }
    }

    public PdfAcroForm put(PdfName pdfName, PdfObject pdfObject) {
        getPdfObject().put(pdfName, pdfObject);
        setModified();
        return this;
    }

    public void release() {
        unsetForbidRelease();
        getPdfObject().release();
        Iterator<PdfFormField> it = this.fields.values().iterator();
        while (it.hasNext()) {
            it.next().release();
        }
        this.fields = null;
    }

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    public PdfObjectWrapper<PdfDictionary> setModified() {
        if (getPdfObject().getIndirectReference() != null) {
            super.setModified();
        } else {
            this.document.getCatalog().setModified();
        }
        return this;
    }

    private static PdfDictionary createAcroFormDictionaryByFields(PdfArray pdfArray) {
        PdfDictionary pdfDictionary = new PdfDictionary();
        pdfDictionary.put(PdfName.Fields, pdfArray);
        return pdfDictionary;
    }

    private PdfPage getFieldPage(PdfDictionary pdfDictionary) {
        PdfAnnotation pdfAnnotationMakeAnnotation;
        PdfDictionary asDictionary = pdfDictionary.getAsDictionary(PdfName.f3047P);
        if (asDictionary != null) {
            return this.document.getPage(asDictionary);
        }
        for (int i = 1; i <= this.document.getNumberOfPages(); i++) {
            PdfPage page = this.document.getPage(i);
            if (!page.isFlushed() && (pdfAnnotationMakeAnnotation = PdfAnnotation.makeAnnotation(pdfDictionary)) != null && page.containsAnnotation(pdfAnnotationMakeAnnotation)) {
                return page;
            }
        }
        return null;
    }

    private Set<PdfFormField> prepareFieldsForFlattening(PdfFormField pdfFormField) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.add(pdfFormField);
        PdfArray kids = pdfFormField.getKids();
        if (kids != null) {
            Iterator<PdfObject> it = kids.iterator();
            while (it.hasNext()) {
                PdfFormField pdfFormField2 = new PdfFormField((PdfDictionary) it.next());
                linkedHashSet.add(pdfFormField2);
                if (pdfFormField2.getKids() != null) {
                    linkedHashSet.addAll(prepareFieldsForFlattening(pdfFormField2));
                }
            }
        }
        return linkedHashSet;
    }

    private AffineTransform calcFieldAppTransformToAnnotRect(PdfFormXObject pdfFormXObject, Rectangle rectangle) {
        Rectangle bbox;
        PdfArray bBox = pdfFormXObject.getBBox();
        if (bBox.size() != 4) {
            bBox = new PdfArray(new Rectangle(0.0f, 0.0f));
            pdfFormXObject.setBBox(bBox);
        }
        float[] floatArray = bBox.toFloatArray();
        PdfArray asArray = pdfFormXObject.getPdfObject().getAsArray(PdfName.Matrix);
        if (asArray != null && asArray.size() == 6) {
            Point[] pointArr = {new Point(floatArray[0], floatArray[1]), new Point(floatArray[0], floatArray[3]), new Point(floatArray[2], floatArray[1]), new Point(floatArray[2], floatArray[3])};
            Point[] pointArr2 = new Point[4];
            new AffineTransform(asArray.toDoubleArray()).transform(pointArr, 0, pointArr2, 0, 4);
            float[] fArr = {Float.MAX_VALUE, Float.MAX_VALUE, -3.4028235E38f, -3.4028235E38f};
            for (int i = 0; i < 4; i++) {
                Point point = pointArr2[i];
                fArr[0] = (float) Math.min(fArr[0], point.f2960x);
                fArr[1] = (float) Math.min(fArr[1], point.f2961y);
                fArr[2] = (float) Math.max(fArr[2], point.f2960x);
                fArr[3] = (float) Math.max(fArr[3], point.f2961y);
            }
            float f = fArr[0];
            float f2 = fArr[1];
            bbox = new Rectangle(f, f2, fArr[2] - f, fArr[3] - f2);
        } else {
            bbox = new Rectangle(0.0f, 0.0f).setBbox(floatArray[0], floatArray[1], floatArray[2], floatArray[3]);
        }
        AffineTransform translateInstance = AffineTransform.getTranslateInstance(-bbox.getX(), -bbox.getY());
        translateInstance.preConcatenate(AffineTransform.getScaleInstance(bbox.getWidth() == 0.0f ? 1.0f : rectangle.getWidth() / bbox.getWidth(), bbox.getHeight() != 0.0f ? rectangle.getHeight() / bbox.getHeight() : 1.0f));
        translateInstance.preConcatenate(AffineTransform.getTranslateInstance(rectangle.getX(), rectangle.getY()));
        return translateInstance;
    }
}
