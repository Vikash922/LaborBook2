package com.itextpdf.styledxmlparser.css.resolve.shorthand.impl;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.styledxmlparser.css.CssDeclaration;
import com.itextpdf.styledxmlparser.css.resolve.shorthand.IShorthandResolver;
import com.itextpdf.styledxmlparser.css.util.CssUtils;
import com.itextpdf.styledxmlparser.logs.StyledXmlParserLogMessageConstant;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractBoxShorthandResolver implements IShorthandResolver {
    private static final String _0_BOTTOM_1 = "{0}-bottom{1}";
    private static final String _0_LEFT_1 = "{0}-left{1}";
    private static final String _0_RIGHT_1 = "{0}-right{1}";
    private static final String _0_TOP_1 = "{0}-top{1}";

    protected abstract String getPostfix();

    protected abstract String getPrefix();

    @Override // com.itextpdf.styledxmlparser.css.resolve.shorthand.IShorthandResolver
    public List<CssDeclaration> resolveShorthand(String str) {
        List<String> list = CssUtils.extractShorthandProperties(str).get(0);
        ArrayList arrayList = new ArrayList();
        String str2 = MessageFormatUtil.format(_0_TOP_1, getPrefix(), getPostfix());
        String str3 = MessageFormatUtil.format(_0_RIGHT_1, getPrefix(), getPostfix());
        String str4 = MessageFormatUtil.format(_0_BOTTOM_1, getPrefix(), getPostfix());
        String str5 = MessageFormatUtil.format(_0_LEFT_1, getPrefix(), getPostfix());
        if (list.size() == 1) {
            arrayList.add(new CssDeclaration(str2, list.get(0)));
            arrayList.add(new CssDeclaration(str3, list.get(0)));
            arrayList.add(new CssDeclaration(str4, list.get(0)));
            arrayList.add(new CssDeclaration(str5, list.get(0)));
        } else {
            for (String str6 : list) {
                if (CommonCssConstants.INHERIT.equals(str6) || CommonCssConstants.INITIAL.equals(str6)) {
                    LoggerFactory.getLogger((Class<?>) AbstractBoxShorthandResolver.class).warn(MessageFormatUtil.format(StyledXmlParserLogMessageConstant.INVALID_CSS_PROPERTY_DECLARATION, str));
                    return Collections.emptyList();
                }
            }
            if (list.size() == 2) {
                arrayList.add(new CssDeclaration(str2, list.get(0)));
                arrayList.add(new CssDeclaration(str3, list.get(1)));
                arrayList.add(new CssDeclaration(str4, list.get(0)));
                arrayList.add(new CssDeclaration(str5, list.get(1)));
            } else if (list.size() == 3) {
                arrayList.add(new CssDeclaration(str2, list.get(0)));
                arrayList.add(new CssDeclaration(str3, list.get(1)));
                arrayList.add(new CssDeclaration(str4, list.get(2)));
                arrayList.add(new CssDeclaration(str5, list.get(1)));
            } else if (list.size() == 4) {
                arrayList.add(new CssDeclaration(str2, list.get(0)));
                arrayList.add(new CssDeclaration(str3, list.get(1)));
                arrayList.add(new CssDeclaration(str4, list.get(2)));
                arrayList.add(new CssDeclaration(str5, list.get(3)));
            }
        }
        return arrayList;
    }
}
