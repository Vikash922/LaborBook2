package com.itextpdf.forms.fields;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.kernel.pdf.annot.PdfWidgetAnnotation;
import com.itextpdf.p017io.font.PdfEncodings;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import java.util.ArrayList;
import java.util.List;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class PdfChoiceFormField extends PdfFormField {
    public static final int FF_COMBO = makeFieldFlag(18);
    public static final int FF_EDIT = makeFieldFlag(19);
    public static final int FF_SORT = makeFieldFlag(20);
    public static final int FF_MULTI_SELECT = makeFieldFlag(22);
    public static final int FF_DO_NOT_SPELL_CHECK = makeFieldFlag(23);
    public static final int FF_COMMIT_ON_SEL_CHANGE = makeFieldFlag(27);

    protected PdfChoiceFormField(PdfDocument pdfDocument) {
        super(pdfDocument);
    }

    protected PdfChoiceFormField(PdfWidgetAnnotation pdfWidgetAnnotation, PdfDocument pdfDocument) {
        super(pdfWidgetAnnotation, pdfDocument);
    }

    protected PdfChoiceFormField(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    @Override // com.itextpdf.forms.fields.PdfFormField
    public PdfName getFormType() {
        return PdfName.f2991Ch;
    }

    public PdfChoiceFormField setTopIndex(int i) {
        put(PdfName.f3076TI, new PdfNumber(i));
        regenerateField();
        return this;
    }

    public PdfNumber getTopIndex() {
        return getPdfObject().getAsNumber(PdfName.f3076TI);
    }

    public PdfChoiceFormField setIndices(PdfArray pdfArray) {
        return (PdfChoiceFormField) put(PdfName.f3019I, pdfArray);
    }

    public PdfChoiceFormField setListSelected(String[] strArr) {
        return setListSelected(strArr, true);
    }

    public PdfChoiceFormField setListSelected(String[] strArr, boolean z) {
        if (strArr.length > 1 && !isMultiSelect()) {
            LoggerFactory.getLogger(getClass()).warn(IoLogMessageConstant.MULTIPLE_VALUES_ON_A_NON_MULTISELECT_FIELD);
        }
        PdfArray options = getOptions();
        PdfArray pdfArray = new PdfArray();
        PdfArray pdfArray2 = new PdfArray();
        List<String> listOptionsToUnicodeNames = optionsToUnicodeNames();
        for (String str : strArr) {
            if (str != null) {
                if (listOptionsToUnicodeNames.contains(str)) {
                    int iIndexOf = listOptionsToUnicodeNames.indexOf(str);
                    pdfArray.add(new PdfNumber(iIndexOf));
                    PdfObject pdfObject = options.get(iIndexOf);
                    if (!pdfObject.isString()) {
                        pdfObject = ((PdfArray) pdfObject).get(1);
                    }
                    pdfArray2.add((PdfString) pdfObject);
                } else {
                    if (!isCombo() || !isEdit()) {
                        LoggerFactory.getLogger(getClass()).warn(MessageFormatUtil.format(IoLogMessageConstant.FIELD_VALUE_IS_NOT_CONTAINED_IN_OPT_ARRAY, str, getFieldName()));
                    }
                    pdfArray2.add(new PdfString(str, PdfEncodings.UNICODE_BIG));
                }
            }
        }
        if (pdfArray.size() > 0) {
            setIndices(pdfArray);
        } else {
            remove(PdfName.f3019I);
        }
        if (pdfArray2.size() == 1) {
            put(PdfName.f3086V, pdfArray2.get(0));
        } else {
            put(PdfName.f3086V, pdfArray2);
        }
        if (z) {
            regenerateField();
        }
        return this;
    }

    public PdfChoiceFormField setListSelected(int[] iArr) {
        if (iArr.length > 1 && !isMultiSelect()) {
            LoggerFactory.getLogger(getClass()).warn(IoLogMessageConstant.MULTIPLE_VALUES_ON_A_NON_MULTISELECT_FIELD);
        }
        PdfArray pdfArray = new PdfArray();
        PdfArray pdfArray2 = new PdfArray();
        PdfArray options = getOptions();
        for (int i : iArr) {
            if (i >= 0 && i < options.size()) {
                pdfArray.add(new PdfNumber(i));
                PdfObject pdfObject = options.get(i);
                if (pdfObject.isString()) {
                    pdfArray2.add(pdfObject);
                } else if (pdfObject.isArray()) {
                    pdfArray2.add(((PdfArray) pdfObject).get(0));
                }
            }
        }
        if (pdfArray.size() > 0) {
            setIndices(pdfArray);
            if (pdfArray2.size() == 1) {
                put(PdfName.f3086V, pdfArray2.get(0));
            } else {
                put(PdfName.f3086V, pdfArray2);
            }
        } else {
            remove(PdfName.f3019I);
            remove(PdfName.f3086V);
        }
        regenerateField();
        return this;
    }

    public PdfArray getIndices() {
        return getPdfObject().getAsArray(PdfName.f3019I);
    }

    public PdfChoiceFormField setCombo(boolean z) {
        return (PdfChoiceFormField) setFieldFlag(FF_COMBO, z);
    }

    public boolean isCombo() {
        return getFieldFlag(FF_COMBO);
    }

    public PdfChoiceFormField setEdit(boolean z) {
        return (PdfChoiceFormField) setFieldFlag(FF_EDIT, z);
    }

    public boolean isEdit() {
        return getFieldFlag(FF_EDIT);
    }

    public PdfChoiceFormField setSort(boolean z) {
        return (PdfChoiceFormField) setFieldFlag(FF_SORT, z);
    }

    public boolean isSort() {
        return getFieldFlag(FF_SORT);
    }

    public PdfChoiceFormField setMultiSelect(boolean z) {
        return (PdfChoiceFormField) setFieldFlag(FF_MULTI_SELECT, z);
    }

    public boolean isMultiSelect() {
        return getFieldFlag(FF_MULTI_SELECT);
    }

    public PdfChoiceFormField setSpellCheck(boolean z) {
        return (PdfChoiceFormField) setFieldFlag(FF_DO_NOT_SPELL_CHECK, !z);
    }

    public boolean isSpellCheck() {
        return !getFieldFlag(FF_DO_NOT_SPELL_CHECK);
    }

    public PdfChoiceFormField setCommitOnSelChange(boolean z) {
        return (PdfChoiceFormField) setFieldFlag(FF_COMMIT_ON_SEL_CHANGE, z);
    }

    public boolean isCommitOnSelChange() {
        return getFieldFlag(FF_COMMIT_ON_SEL_CHANGE);
    }

    private List<String> optionsToUnicodeNames() {
        PdfString pdfString;
        PdfArray options = getOptions();
        ArrayList arrayList = new ArrayList(options.size());
        for (int i = 0; i < options.size(); i++) {
            PdfObject pdfObject = options.get(i);
            String unicodeString = null;
            if (pdfObject.isString()) {
                pdfString = (PdfString) pdfObject;
            } else {
                pdfString = pdfObject.isArray() ? (PdfString) ((PdfArray) pdfObject).get(1) : null;
            }
            if (pdfString != null) {
                unicodeString = pdfString.toUnicodeString();
            }
            arrayList.add(unicodeString);
        }
        return arrayList;
    }
}
