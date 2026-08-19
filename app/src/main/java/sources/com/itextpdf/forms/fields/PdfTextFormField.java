package com.itextpdf.forms.fields;

import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.annot.PdfWidgetAnnotation;

/* JADX INFO: loaded from: classes6.dex */
public class PdfTextFormField extends PdfFormField {
    public static final int FF_FILE_SELECT = makeFieldFlag(21);
    public static final int FF_DO_NOT_SPELL_CHECK = makeFieldFlag(23);
    public static final int FF_DO_NOT_SCROLL = makeFieldFlag(24);
    public static final int FF_COMB = makeFieldFlag(25);
    public static final int FF_RICH_TEXT = makeFieldFlag(26);

    protected PdfTextFormField(PdfDocument pdfDocument) {
        super(pdfDocument);
    }

    protected PdfTextFormField(PdfWidgetAnnotation pdfWidgetAnnotation, PdfDocument pdfDocument) {
        super(pdfWidgetAnnotation, pdfDocument);
    }

    protected PdfTextFormField(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    @Override // com.itextpdf.forms.fields.PdfFormField
    public PdfName getFormType() {
        return PdfName.f3082Tx;
    }

    public PdfTextFormField setMultiline(boolean z) {
        return (PdfTextFormField) setFieldFlag(FF_MULTILINE, z);
    }

    public PdfTextFormField setPassword(boolean z) {
        return (PdfTextFormField) setFieldFlag(FF_PASSWORD, z);
    }

    public boolean isFileSelect() {
        return getFieldFlag(FF_FILE_SELECT);
    }

    public PdfTextFormField setFileSelect(boolean z) {
        return (PdfTextFormField) setFieldFlag(FF_FILE_SELECT, z);
    }

    public boolean isSpellCheck() {
        return !getFieldFlag(FF_DO_NOT_SPELL_CHECK);
    }

    public PdfTextFormField setSpellCheck(boolean z) {
        return (PdfTextFormField) setFieldFlag(FF_DO_NOT_SPELL_CHECK, !z);
    }

    public boolean isScroll() {
        return !getFieldFlag(FF_DO_NOT_SCROLL);
    }

    public PdfTextFormField setScroll(boolean z) {
        return (PdfTextFormField) setFieldFlag(FF_DO_NOT_SCROLL, !z);
    }

    public boolean isComb() {
        return getFieldFlag(FF_COMB);
    }

    public PdfTextFormField setComb(boolean z) {
        return (PdfTextFormField) setFieldFlag(FF_COMB, z);
    }

    public boolean isRichText() {
        return getFieldFlag(FF_RICH_TEXT);
    }

    public PdfTextFormField setRichText(boolean z) {
        return (PdfTextFormField) setFieldFlag(FF_RICH_TEXT, z);
    }

    public int getMaxLen() {
        PdfNumber asNumber = getPdfObject().getAsNumber(PdfName.MaxLen);
        if (asNumber != null) {
            return asNumber.intValue();
        }
        PdfDictionary parent = getParent();
        if (parent != null) {
            return new PdfTextFormField(parent).getMaxLen();
        }
        return 0;
    }

    public PdfTextFormField setMaxLen(int i) {
        put(PdfName.MaxLen, new PdfNumber(i));
        if (getFieldFlag(FF_COMB)) {
            regenerateField();
        }
        return this;
    }
}
