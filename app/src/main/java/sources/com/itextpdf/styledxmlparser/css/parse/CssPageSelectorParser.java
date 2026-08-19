package com.itextpdf.styledxmlparser.css.parse;

import com.itextpdf.styledxmlparser.css.selector.item.CssPagePseudoClassSelectorItem;
import com.itextpdf.styledxmlparser.css.selector.item.CssPageTypeSelectorItem;
import com.itextpdf.styledxmlparser.css.selector.item.ICssSelectorItem;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public final class CssPageSelectorParser {
    private static final String PAGE_SELECTOR_PATTERN_STR = "(^-?[_a-zA-Z][\\w-]*)|(:(?i)(left|right|first|blank))";
    private static final Pattern selectorPattern = Pattern.compile(PAGE_SELECTOR_PATTERN_STR);

    public static List<ICssSelectorItem> parseSelectorItems(String str) {
        ArrayList arrayList = new ArrayList();
        Matcher matcher = selectorPattern.matcher(str);
        while (matcher.find()) {
            String strGroup = matcher.group(0);
            if (strGroup.charAt(0) == ':') {
                arrayList.add(new CssPagePseudoClassSelectorItem(strGroup.substring(1).toLowerCase()));
            } else {
                arrayList.add(new CssPageTypeSelectorItem(strGroup));
            }
        }
        return arrayList;
    }
}
