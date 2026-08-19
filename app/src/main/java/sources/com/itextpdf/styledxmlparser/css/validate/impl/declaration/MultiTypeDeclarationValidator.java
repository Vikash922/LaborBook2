package com.itextpdf.styledxmlparser.css.validate.impl.declaration;

import com.itextpdf.styledxmlparser.css.CssDeclaration;
import com.itextpdf.styledxmlparser.css.validate.ICssDataTypeValidator;
import com.itextpdf.styledxmlparser.css.validate.ICssDeclarationValidator;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class MultiTypeDeclarationValidator implements ICssDeclarationValidator {
    private List<ICssDataTypeValidator> allowedTypes;

    public MultiTypeDeclarationValidator(ICssDataTypeValidator... iCssDataTypeValidatorArr) {
        this.allowedTypes = Arrays.asList(iCssDataTypeValidatorArr);
    }

    @Override // com.itextpdf.styledxmlparser.css.validate.ICssDeclarationValidator
    public boolean isValid(CssDeclaration cssDeclaration) {
        Iterator<ICssDataTypeValidator> it = this.allowedTypes.iterator();
        while (it.hasNext()) {
            if (it.next().isValid(cssDeclaration.getExpression())) {
                return true;
            }
        }
        return false;
    }
}
