package com.itextpdf.styledxmlparser.css.validate.impl;

import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.styledxmlparser.css.validate.impl.datatype.CssCmykAwareColorValidator;
import com.itextpdf.styledxmlparser.css.validate.impl.datatype.CssEnumValidator;
import com.itextpdf.styledxmlparser.css.validate.impl.declaration.MultiTypeDeclarationValidator;

/* JADX INFO: loaded from: classes6.dex */
public class CssDeviceCmykAwareValidator extends CssDefaultValidator {
    public CssDeviceCmykAwareValidator() {
        MultiTypeDeclarationValidator multiTypeDeclarationValidator = new MultiTypeDeclarationValidator(new CssEnumValidator(CommonCssConstants.TRANSPARENT, CommonCssConstants.INITIAL, CommonCssConstants.INHERIT, CommonCssConstants.CURRENTCOLOR), new CssCmykAwareColorValidator());
        this.defaultValidators.put(CommonCssConstants.BACKGROUND_COLOR, multiTypeDeclarationValidator);
        this.defaultValidators.put("color", multiTypeDeclarationValidator);
        this.defaultValidators.put(CommonCssConstants.BORDER_COLOR, multiTypeDeclarationValidator);
        this.defaultValidators.put(CommonCssConstants.BORDER_BOTTOM_COLOR, multiTypeDeclarationValidator);
        this.defaultValidators.put(CommonCssConstants.BORDER_TOP_COLOR, multiTypeDeclarationValidator);
        this.defaultValidators.put(CommonCssConstants.BORDER_LEFT_COLOR, multiTypeDeclarationValidator);
        this.defaultValidators.put(CommonCssConstants.BORDER_RIGHT_COLOR, multiTypeDeclarationValidator);
    }
}
