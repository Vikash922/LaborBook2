package com.itextpdf.svg.css;

import com.itextpdf.styledxmlparser.css.resolve.AbstractCssContext;
import com.itextpdf.styledxmlparser.css.resolve.CssDefaults;
import com.itextpdf.styledxmlparser.css.util.CssDimensionParsingUtils;

/* JADX INFO: loaded from: classes6.dex */
public class SvgCssContext extends AbstractCssContext {
    private float rootFontSize = CssDimensionParsingUtils.parseAbsoluteFontSize(CssDefaults.getDefaultValue("font-size"));

    public float getRootFontSize() {
        return this.rootFontSize;
    }

    public void setRootFontSize(String str) {
        this.rootFontSize = CssDimensionParsingUtils.parseAbsoluteFontSize(str);
    }
}
