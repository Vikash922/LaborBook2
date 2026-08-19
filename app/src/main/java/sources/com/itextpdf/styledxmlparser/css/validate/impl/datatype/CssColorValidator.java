package com.itextpdf.styledxmlparser.css.validate.impl.datatype;

import com.itextpdf.kernel.colors.WebColors;
import com.itextpdf.styledxmlparser.css.validate.ICssDataTypeValidator;

/* JADX INFO: loaded from: classes6.dex */
public class CssColorValidator implements ICssDataTypeValidator {
    @Override // com.itextpdf.styledxmlparser.css.validate.ICssDataTypeValidator
    public boolean isValid(String str) {
        return WebColors.getRGBAColor(str) != null;
    }
}
