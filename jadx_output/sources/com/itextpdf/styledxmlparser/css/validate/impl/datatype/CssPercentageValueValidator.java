package com.itextpdf.styledxmlparser.css.validate.impl.datatype;

import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.styledxmlparser.css.util.CssTypesValidationUtils;
import com.itextpdf.styledxmlparser.css.validate.ICssDataTypeValidator;

/* JADX INFO: loaded from: classes6.dex */
public class CssPercentageValueValidator implements ICssDataTypeValidator {
    private final boolean allowedNegative;

    public CssPercentageValueValidator(boolean z) {
        this.allowedNegative = z;
    }

    @Override // com.itextpdf.styledxmlparser.css.validate.ICssDataTypeValidator
    public boolean isValid(String str) {
        if (str == null) {
            return false;
        }
        if (!CommonCssConstants.INITIAL.equals(str) && !CommonCssConstants.INHERIT.equals(str) && !CommonCssConstants.UNSET.equals(str)) {
            if (!CssTypesValidationUtils.isPercentageValue(str)) {
                return false;
            }
            if (CssTypesValidationUtils.isNegativeValue(str) && !CssTypesValidationUtils.isZero(str)) {
                return this.allowedNegative;
            }
        }
        return true;
    }
}
