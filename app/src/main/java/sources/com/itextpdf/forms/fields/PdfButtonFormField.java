package com.itextpdf.forms.fields;

import com.itextpdf.commons.utils.Base64;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.annot.PdfWidgetAnnotation;
import com.itextpdf.kernel.pdf.xobject.PdfFormXObject;
import com.itextpdf.p017io.util.StreamUtil;
import java.io.FileInputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public class PdfButtonFormField extends PdfFormField {
    public static final int FF_NO_TOGGLE_TO_OFF = makeFieldFlag(15);
    public static final int FF_RADIO = makeFieldFlag(16);
    public static final int FF_PUSH_BUTTON = makeFieldFlag(17);
    public static final int FF_RADIOS_IN_UNISON = makeFieldFlag(26);

    protected PdfButtonFormField(PdfDocument pdfDocument) {
        super(pdfDocument);
    }

    protected PdfButtonFormField(PdfWidgetAnnotation pdfWidgetAnnotation, PdfDocument pdfDocument) {
        super(pdfWidgetAnnotation, pdfDocument);
    }

    protected PdfButtonFormField(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    @Override // com.itextpdf.forms.fields.PdfFormField
    public PdfName getFormType() {
        return PdfName.Btn;
    }

    public boolean isRadio() {
        return getFieldFlag(FF_RADIO);
    }

    public PdfButtonFormField setRadio(boolean z) {
        return (PdfButtonFormField) setFieldFlag(FF_RADIO, z);
    }

    public boolean isToggleOff() {
        return !getFieldFlag(FF_NO_TOGGLE_TO_OFF);
    }

    public PdfButtonFormField setToggleOff(boolean z) {
        return (PdfButtonFormField) setFieldFlag(FF_NO_TOGGLE_TO_OFF, !z);
    }

    public boolean isPushButton() {
        return getFieldFlag(FF_PUSH_BUTTON);
    }

    public PdfButtonFormField setPushButton(boolean z) {
        return (PdfButtonFormField) setFieldFlag(FF_PUSH_BUTTON, z);
    }

    public boolean isRadiosInUnison() {
        return getFieldFlag(FF_RADIOS_IN_UNISON);
    }

    public PdfButtonFormField setRadiosInUnison(boolean z) {
        return (PdfButtonFormField) setFieldFlag(FF_RADIOS_IN_UNISON, z);
    }

    public PdfButtonFormField setImage(String str) throws IOException {
        return (PdfButtonFormField) setValue(Base64.encodeBytes(StreamUtil.inputStreamToArray(new FileInputStream(str))));
    }

    public PdfButtonFormField setImageAsForm(PdfFormXObject pdfFormXObject) {
        this.form = pdfFormXObject;
        regenerateField();
        return this;
    }
}
