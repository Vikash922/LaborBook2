package com.itextpdf.styledxmlparser.css;

import com.itextpdf.layout.font.Range;
import com.itextpdf.styledxmlparser.css.util.CssUtils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class CssFontFaceRule extends CssNestedAtRule {
    private List<CssDeclaration> properties;

    public CssFontFaceRule() {
        super("font-face", "");
    }

    public List<CssDeclaration> getProperties() {
        if (this.properties == null) {
            return new ArrayList();
        }
        return new ArrayList(this.properties);
    }

    @Override // com.itextpdf.styledxmlparser.css.CssNestedAtRule
    public void addBodyCssDeclarations(List<CssDeclaration> list) {
        this.properties = new ArrayList(list);
    }

    @Override // com.itextpdf.styledxmlparser.css.CssNestedAtRule
    public String toString() {
        StringBuilder sb = new StringBuilder("@");
        sb.append(getRuleName()).append(" {\n");
        for (CssDeclaration cssDeclaration : getProperties()) {
            sb.append("    ");
            sb.append(cssDeclaration);
            sb.append(";\n");
        }
        sb.append("}");
        return sb.toString();
    }

    public Range resolveUnicodeRange() {
        Range unicodeRange = null;
        for (CssDeclaration cssDeclaration : getProperties()) {
            if ("unicode-range".equals(cssDeclaration.getProperty())) {
                unicodeRange = CssUtils.parseUnicodeRange(cssDeclaration.getExpression());
            }
        }
        return unicodeRange;
    }
}
