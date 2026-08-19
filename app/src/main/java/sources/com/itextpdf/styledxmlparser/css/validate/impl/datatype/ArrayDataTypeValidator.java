package com.itextpdf.styledxmlparser.css.validate.impl.datatype;

import com.itextpdf.styledxmlparser.css.util.CssUtils;
import com.itextpdf.styledxmlparser.css.validate.ICssDataTypeValidator;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public class ArrayDataTypeValidator implements ICssDataTypeValidator {
    private final ICssDataTypeValidator dataTypeValidator;

    public ArrayDataTypeValidator(ICssDataTypeValidator iCssDataTypeValidator) {
        this.dataTypeValidator = iCssDataTypeValidator;
    }

    @Override // com.itextpdf.styledxmlparser.css.validate.ICssDataTypeValidator
    public boolean isValid(String str) {
        if (str == null) {
            return false;
        }
        Iterator<String> it = CssUtils.splitStringWithComma(str).iterator();
        while (it.hasNext()) {
            if (!this.dataTypeValidator.isValid(it.next().trim())) {
                return false;
            }
        }
        return true;
    }
}
