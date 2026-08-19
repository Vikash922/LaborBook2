package com.itextpdf.styledxmlparser.css.resolve.shorthand.impl;

import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.styledxmlparser.css.CssDeclaration;
import com.itextpdf.styledxmlparser.css.resolve.shorthand.IShorthandResolver;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.shadow.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes6.dex */
public class TextDecorationShorthandResolver implements IShorthandResolver {
    private static final Set<String> TEXT_DECORATION_LINE_VALUES = Collections.unmodifiableSet(new HashSet(Arrays.asList("underline", CommonCssConstants.OVERLINE, CommonCssConstants.LINE_THROUGH, CommonCssConstants.BLINK)));
    private static final Set<String> TEXT_DECORATION_STYLE_VALUES = Collections.unmodifiableSet(new HashSet(Arrays.asList(CommonCssConstants.SOLID, CommonCssConstants.DOUBLE, CommonCssConstants.DOTTED, CommonCssConstants.DASHED, CommonCssConstants.WAVY)));

    @Override // com.itextpdf.styledxmlparser.css.resolve.shorthand.IShorthandResolver
    public List<CssDeclaration> resolveShorthand(String str) {
        String str2 = CommonCssConstants.INITIAL;
        if (CommonCssConstants.INITIAL.equals(str) || CommonCssConstants.INHERIT.equals(str)) {
            return Arrays.asList(new CssDeclaration(CommonCssConstants.TEXT_DECORATION_LINE, str), new CssDeclaration(CommonCssConstants.TEXT_DECORATION_STYLE, str), new CssDeclaration(CommonCssConstants.TEXT_DECORATION_COLOR, str));
        }
        String[] strArrSplit = str.split("\\s+(?![^\\(]*\\))");
        ArrayList arrayList = new ArrayList();
        String str3 = null;
        String str4 = null;
        for (String str5 : strArrSplit) {
            if (TEXT_DECORATION_LINE_VALUES.contains(str5) || "none".equals(str5)) {
                arrayList.add(str5);
            } else if (TEXT_DECORATION_STYLE_VALUES.contains(str5)) {
                str3 = str5;
            } else if (!str5.isEmpty()) {
                str4 = str5;
            }
        }
        ArrayList arrayList2 = new ArrayList();
        if (arrayList.isEmpty()) {
            arrayList2.add(new CssDeclaration(CommonCssConstants.TEXT_DECORATION_LINE, CommonCssConstants.INITIAL));
        } else {
            StringBuilder sb = new StringBuilder();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                sb.append((String) it.next()).append(StringUtils.SPACE);
            }
            arrayList2.add(new CssDeclaration(CommonCssConstants.TEXT_DECORATION_LINE, sb.toString().trim()));
        }
        if (str3 == null) {
            str3 = CommonCssConstants.INITIAL;
        }
        arrayList2.add(new CssDeclaration(CommonCssConstants.TEXT_DECORATION_STYLE, str3));
        if (str4 != null) {
            str2 = str4;
        }
        arrayList2.add(new CssDeclaration(CommonCssConstants.TEXT_DECORATION_COLOR, str2));
        return arrayList2;
    }
}
