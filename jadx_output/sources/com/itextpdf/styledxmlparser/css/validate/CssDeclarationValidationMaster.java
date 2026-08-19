package com.itextpdf.styledxmlparser.css.validate;

import com.itextpdf.styledxmlparser.css.CssDeclaration;
import com.itextpdf.styledxmlparser.css.validate.impl.CssDefaultValidator;

/* JADX INFO: loaded from: classes6.dex */
public class CssDeclarationValidationMaster {
    private static ICssDeclarationValidator VALIDATOR = new CssDefaultValidator();

    private CssDeclarationValidationMaster() {
    }

    public static boolean checkDeclaration(CssDeclaration cssDeclaration) {
        return VALIDATOR.isValid(cssDeclaration);
    }

    public static void setValidator(ICssDeclarationValidator iCssDeclarationValidator) {
        VALIDATOR = iCssDeclarationValidator;
    }
}
