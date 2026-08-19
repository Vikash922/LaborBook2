package com.itextpdf.styledxmlparser.css.validate.impl.datatype;

import com.itextpdf.styledxmlparser.css.resolve.CssQuotes;
import com.itextpdf.styledxmlparser.css.validate.ICssDataTypeValidator;

/* JADX INFO: loaded from: classes6.dex */
public class CssQuotesValidator implements ICssDataTypeValidator {
    @Override // com.itextpdf.styledxmlparser.css.validate.ICssDataTypeValidator
    public boolean isValid(String str) {
        return CssQuotes.createQuotes(str, false) != null;
    }
}
