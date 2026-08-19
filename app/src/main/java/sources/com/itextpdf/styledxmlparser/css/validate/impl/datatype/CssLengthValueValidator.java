package com.itextpdf.styledxmlparser.css.validate.impl.datatype;

import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.styledxmlparser.css.util.CssTypesValidationUtils;
import com.itextpdf.styledxmlparser.css.validate.ICssDataTypeValidator;

/* JADX INFO: loaded from: classes6.dex */
public class CssLengthValueValidator implements ICssDataTypeValidator {
    private final boolean allowedNegative;

    public CssLengthValueValidator(boolean z) {
        this.allowedNegative = z;
    }

    @Override // com.itextpdf.styledxmlparser.css.validate.ICssDataTypeValidator
    public boolean isValid(String str) {
        if (str == null) {
            return false;
        }
        if (!CommonCssConstants.INITIAL.equals(str) && !CommonCssConstants.INHERIT.equals(str) && !CommonCssConstants.UNSET.equals(str)) {
            if (!CssTypesValidationUtils.isMetricValue(str) && ((!CssTypesValidationUtils.isRelativeValue(str) || CssTypesValidationUtils.isPercentageValue(str)) && !CssTypesValidationUtils.isZero(str))) {
                return false;
            }
            if (CssTypesValidationUtils.isNegativeValue(str) && !CssTypesValidationUtils.isZero(str)) {
                return this.allowedNegative;
            }
        }
        return true;
    }
}
