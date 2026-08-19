package com.itextpdf.styledxmlparser.css;

import com.itextpdf.styledxmlparser.css.media.MediaDeviceDescription;
import com.itextpdf.styledxmlparser.css.selector.ICssSelector;
import com.itextpdf.styledxmlparser.node.INode;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public class CssRuleSet extends CssStatement {
    private static final Pattern IMPORTANT_MATCHER = Pattern.compile(".*!\\s*important$");
    private List<CssDeclaration> importantDeclarations;
    private List<CssDeclaration> normalDeclarations;
    private ICssSelector selector;

    public CssRuleSet(ICssSelector iCssSelector, List<CssDeclaration> list) {
        this.selector = iCssSelector;
        this.normalDeclarations = new ArrayList();
        ArrayList arrayList = new ArrayList();
        this.importantDeclarations = arrayList;
        splitDeclarationsIntoNormalAndImportant(list, this.normalDeclarations, arrayList);
    }

    public CssRuleSet(ICssSelector iCssSelector, List<CssDeclaration> list, List<CssDeclaration> list2) {
        this.selector = iCssSelector;
        this.normalDeclarations = list;
        this.importantDeclarations = list2;
    }

    @Override // com.itextpdf.styledxmlparser.css.CssStatement
    public List<CssRuleSet> getCssRuleSets(INode iNode, MediaDeviceDescription mediaDeviceDescription) {
        if (this.selector.matches(iNode)) {
            return Collections.singletonList(this);
        }
        return super.getCssRuleSets(iNode, mediaDeviceDescription);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.selector.toString());
        sb.append(" {\n");
        for (int i = 0; i < this.normalDeclarations.size(); i++) {
            if (i > 0) {
                sb.append(";\n");
            }
            sb.append("    ").append(this.normalDeclarations.get(i).toString());
        }
        for (int i2 = 0; i2 < this.importantDeclarations.size(); i2++) {
            if (i2 > 0 || this.normalDeclarations.size() > 0) {
                sb.append(";\n");
            }
            sb.append("    ").append(this.importantDeclarations.get(i2).toString()).append(" !important");
        }
        sb.append("\n}");
        return sb.toString();
    }

    public ICssSelector getSelector() {
        return this.selector;
    }

    public List<CssDeclaration> getNormalDeclarations() {
        return this.normalDeclarations;
    }

    public List<CssDeclaration> getImportantDeclarations() {
        return this.importantDeclarations;
    }

    private static void splitDeclarationsIntoNormalAndImportant(List<CssDeclaration> list, List<CssDeclaration> list2, List<CssDeclaration> list3) {
        for (CssDeclaration cssDeclaration : list) {
            int iIndexOf = cssDeclaration.getExpression().indexOf(33);
            if (iIndexOf > 0 && IMPORTANT_MATCHER.matcher(cssDeclaration.getExpression()).matches()) {
                list3.add(new CssDeclaration(cssDeclaration.getProperty(), cssDeclaration.getExpression().substring(0, iIndexOf).trim()));
            } else {
                list2.add(cssDeclaration);
            }
        }
    }
}
