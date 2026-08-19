package com.itextpdf.styledxmlparser.css.resolve.shorthand.impl;

import com.itextpdf.styledxmlparser.css.CommonCssConstants;

/* JADX INFO: loaded from: classes6.dex */
public class BorderRadiusShorthandResolver extends AbstractCornersShorthandResolver {
    @Override // com.itextpdf.styledxmlparser.css.resolve.shorthand.impl.AbstractCornersShorthandResolver
    protected String getPrefix() {
        return CommonCssConstants.BORDER;
    }

    @Override // com.itextpdf.styledxmlparser.css.resolve.shorthand.impl.AbstractCornersShorthandResolver
    protected String getPostfix() {
        return "-radius";
    }
}
