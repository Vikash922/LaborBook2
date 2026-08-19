package com.itextpdf.styledxmlparser.css.resolve.shorthand.impl;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.styledxmlparser.css.CssDeclaration;
import com.itextpdf.styledxmlparser.css.resolve.shorthand.IShorthandResolver;
import com.itextpdf.styledxmlparser.css.util.CssTypesValidationUtils;
import com.itextpdf.styledxmlparser.css.util.CssUtils;
import com.itextpdf.styledxmlparser.logs.StyledXmlParserLogMessageConstant;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractBorderShorthandResolver implements IShorthandResolver {
    private static final String _0_COLOR = "{0}-color";
    private static final String _0_STYLE = "{0}-style";
    private static final String _0_WIDTH = "{0}-width";

    protected abstract String getPrefix();

    @Override // com.itextpdf.styledxmlparser.css.resolve.shorthand.IShorthandResolver
    public List<CssDeclaration> resolveShorthand(String str) {
        String str2 = MessageFormatUtil.format(_0_WIDTH, getPrefix());
        String str3 = MessageFormatUtil.format(_0_STYLE, getPrefix());
        String str4 = MessageFormatUtil.format(_0_COLOR, getPrefix());
        String str5 = CommonCssConstants.INITIAL;
        if (CommonCssConstants.INITIAL.equals(str) || CommonCssConstants.INHERIT.equals(str)) {
            return Arrays.asList(new CssDeclaration(str2, str), new CssDeclaration(str3, str), new CssDeclaration(str4, str));
        }
        String str6 = null;
        String str7 = null;
        String str8 = null;
        for (String str9 : CssUtils.extractShorthandProperties(str).get(0)) {
            if (CommonCssConstants.INITIAL.equals(str9) || CommonCssConstants.INHERIT.equals(str9)) {
                LoggerFactory.getLogger((Class<?>) AbstractBorderShorthandResolver.class).warn(MessageFormatUtil.format(StyledXmlParserLogMessageConstant.INVALID_CSS_PROPERTY_DECLARATION, str));
                return Collections.emptyList();
            }
            if (CommonCssConstants.BORDER_WIDTH_VALUES.contains(str9) || CssTypesValidationUtils.isNumber(str9) || CssTypesValidationUtils.isMetricValue(str9) || CssTypesValidationUtils.isRelativeValue(str9)) {
                str6 = str9;
            } else if (CommonCssConstants.BORDER_STYLE_VALUES.contains(str9) || str9.equals("auto")) {
                str7 = str9;
            } else if (CssTypesValidationUtils.isColorProperty(str9)) {
                str8 = str9;
            }
        }
        ArrayList arrayList = new ArrayList();
        if (str6 == null) {
            str6 = CommonCssConstants.INITIAL;
        }
        arrayList.add(new CssDeclaration(str2, str6));
        if (str7 == null) {
            str7 = CommonCssConstants.INITIAL;
        }
        arrayList.add(new CssDeclaration(str3, str7));
        if (str8 != null) {
            str5 = str8;
        }
        arrayList.add(new CssDeclaration(str4, str5));
        return arrayList;
    }
}
