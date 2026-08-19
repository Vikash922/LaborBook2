package com.itextpdf.styledxmlparser.css.resolve.shorthand.impl;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.styledxmlparser.css.CssDeclaration;
import com.itextpdf.styledxmlparser.css.resolve.shorthand.IShorthandResolver;
import com.itextpdf.styledxmlparser.css.resolve.shorthand.ShorthandResolverFactory;
import java.util.ArrayList;
import java.util.List;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class BorderShorthandResolver extends AbstractBorderShorthandResolver {
    @Override // com.itextpdf.styledxmlparser.css.resolve.shorthand.impl.AbstractBorderShorthandResolver
    protected String getPrefix() {
        return CommonCssConstants.BORDER;
    }

    @Override // com.itextpdf.styledxmlparser.css.resolve.shorthand.impl.AbstractBorderShorthandResolver, com.itextpdf.styledxmlparser.css.resolve.shorthand.IShorthandResolver
    public List<CssDeclaration> resolveShorthand(String str) {
        List<CssDeclaration> listResolveShorthand = super.resolveShorthand(str);
        ArrayList arrayList = new ArrayList();
        for (CssDeclaration cssDeclaration : listResolveShorthand) {
            IShorthandResolver shorthandResolver = ShorthandResolverFactory.getShorthandResolver(cssDeclaration.getProperty());
            if (shorthandResolver != null) {
                arrayList.addAll(shorthandResolver.resolveShorthand(cssDeclaration.getExpression()));
            } else {
                LoggerFactory.getLogger((Class<?>) BorderShorthandResolver.class).error(MessageFormatUtil.format("Cannot find a shorthand resolver for the \"{0}\" property. Expected border-width, border-style or border-color properties.", cssDeclaration.getProperty()));
            }
        }
        return arrayList;
    }
}
