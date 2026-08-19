package com.itextpdf.styledxmlparser.css;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.styledxmlparser.css.media.MediaDeviceDescription;
import com.itextpdf.styledxmlparser.node.INode;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.shadow.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes6.dex */
public class CssNestedAtRule extends CssAtRule {
    protected List<CssStatement> body;
    private String ruleParameters;

    public void addBodyCssDeclarations(List<CssDeclaration> list) {
    }

    public CssNestedAtRule(String str, String str2) {
        super(str);
        this.ruleParameters = str2;
        this.body = new ArrayList();
    }

    public void addStatementToBody(CssStatement cssStatement) {
        this.body.add(cssStatement);
    }

    public void addStatementsToBody(Collection<CssStatement> collection) {
        this.body.addAll(collection);
    }

    @Override // com.itextpdf.styledxmlparser.css.CssStatement
    public List<CssRuleSet> getCssRuleSets(INode iNode, MediaDeviceDescription mediaDeviceDescription) {
        ArrayList arrayList = new ArrayList();
        Iterator<CssStatement> it = this.body.iterator();
        while (it.hasNext()) {
            arrayList.addAll(it.next().getCssRuleSets(iNode, mediaDeviceDescription));
        }
        return arrayList;
    }

    public List<CssStatement> getStatements() {
        return this.body;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(MessageFormatUtil.format("@{0} {1} ", this.ruleName, this.ruleParameters));
        sb.append("{\n");
        for (int i = 0; i < this.body.size(); i++) {
            sb.append("    ");
            sb.append(this.body.get(i).toString().replace(StringUtils.f4768LF, "\n    "));
            if (i != this.body.size() - 1) {
                sb.append(StringUtils.f4768LF);
            }
        }
        sb.append("\n}");
        return sb.toString();
    }

    public String getRuleParameters() {
        return this.ruleParameters;
    }
}
