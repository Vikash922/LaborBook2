package com.itextpdf.styledxmlparser.css.resolve.shorthand.impl;

import com.itextpdf.styledxmlparser.css.CommonCssConstants;

/* JADX INFO: loaded from: classes6.dex */
public class PaddingShorthandResolver extends AbstractBoxShorthandResolver {
    @Override // com.itextpdf.styledxmlparser.css.resolve.shorthand.impl.AbstractBoxShorthandResolver
    protected String getPrefix() {
        return CommonCssConstants.PADDING;
    }

    @Override // com.itextpdf.styledxmlparser.css.resolve.shorthand.impl.AbstractBoxShorthandResolver
    protected String getPostfix() {
        return "";
    }
}
