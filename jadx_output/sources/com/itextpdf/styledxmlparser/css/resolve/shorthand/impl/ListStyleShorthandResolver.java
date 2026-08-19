package com.itextpdf.styledxmlparser.css.resolve.shorthand.impl;

import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.styledxmlparser.css.CssDeclaration;
import com.itextpdf.styledxmlparser.css.resolve.shorthand.IShorthandResolver;
import com.itextpdf.styledxmlparser.css.util.CssGradientUtil;
import com.itextpdf.styledxmlparser.css.util.CssUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public class ListStyleShorthandResolver implements IShorthandResolver {
    private static final Set<String> LIST_STYLE_TYPE_VALUES = Collections.unmodifiableSet(new HashSet(Arrays.asList(CommonCssConstants.DISC, CommonCssConstants.ARMENIAN, "circle", CommonCssConstants.CJK_IDEOGRAPHIC, CommonCssConstants.DECIMAL, CommonCssConstants.DECIMAL_LEADING_ZERO, CommonCssConstants.GEORGIAN, "hebrew", CommonCssConstants.HIRAGANA, CommonCssConstants.HIRAGANA_IROHA, CommonCssConstants.LOWER_ALPHA, CommonCssConstants.LOWER_GREEK, CommonCssConstants.LOWER_LATIN, CommonCssConstants.LOWER_ROMAN, "none", "square", CommonCssConstants.UPPER_ALPHA, CommonCssConstants.UPPER_LATIN, CommonCssConstants.UPPER_ROMAN)));
    private static final Set<String> LIST_STYLE_POSITION_VALUES = Collections.unmodifiableSet(new HashSet(Arrays.asList(CommonCssConstants.INSIDE, CommonCssConstants.OUTSIDE)));

    @Override // com.itextpdf.styledxmlparser.css.resolve.shorthand.IShorthandResolver
    public List<CssDeclaration> resolveShorthand(String str) {
        String str2 = CommonCssConstants.INITIAL;
        if (CommonCssConstants.INITIAL.equals(str) || CommonCssConstants.INHERIT.equals(str)) {
            return Arrays.asList(new CssDeclaration(CommonCssConstants.LIST_STYLE_TYPE, str), new CssDeclaration(CommonCssConstants.LIST_STYLE_POSITION, str), new CssDeclaration(CommonCssConstants.LIST_STYLE_IMAGE, str));
        }
        String str3 = null;
        String str4 = null;
        String str5 = null;
        for (String str6 : CssUtils.extractShorthandProperties(str).get(0)) {
            if (str6.contains("url(") || CssGradientUtil.isCssLinearGradientValue(str6) || ("none".equals(str6) && str3 != null)) {
                str5 = str6;
            } else if (LIST_STYLE_TYPE_VALUES.contains(str6)) {
                str3 = str6;
            } else if (LIST_STYLE_POSITION_VALUES.contains(str6)) {
                str4 = str6;
            }
        }
        ArrayList arrayList = new ArrayList();
        if (str3 == null) {
            str3 = CommonCssConstants.INITIAL;
        }
        arrayList.add(new CssDeclaration(CommonCssConstants.LIST_STYLE_TYPE, str3));
        if (str4 == null) {
            str4 = CommonCssConstants.INITIAL;
        }
        arrayList.add(new CssDeclaration(CommonCssConstants.LIST_STYLE_POSITION, str4));
        if (str5 != null) {
            str2 = str5;
        }
        arrayList.add(new CssDeclaration(CommonCssConstants.LIST_STYLE_IMAGE, str2));
        return arrayList;
    }
}
