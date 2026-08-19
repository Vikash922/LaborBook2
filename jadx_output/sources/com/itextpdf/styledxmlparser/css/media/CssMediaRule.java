package com.itextpdf.styledxmlparser.css.media;

import com.itextpdf.styledxmlparser.css.CssNestedAtRule;
import com.itextpdf.styledxmlparser.css.CssRuleSet;
import com.itextpdf.styledxmlparser.css.CssStatement;
import com.itextpdf.styledxmlparser.node.INode;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class CssMediaRule extends CssNestedAtRule {
    private List<MediaQuery> mediaQueries;

    public CssMediaRule(String str) {
        super("media", str);
        this.mediaQueries = MediaQueryParser.parseMediaQueries(str);
    }

    @Override // com.itextpdf.styledxmlparser.css.CssNestedAtRule, com.itextpdf.styledxmlparser.css.CssStatement
    public List<CssRuleSet> getCssRuleSets(INode iNode, MediaDeviceDescription mediaDeviceDescription) {
        ArrayList arrayList = new ArrayList();
        Iterator<MediaQuery> it = this.mediaQueries.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            if (it.next().matches(mediaDeviceDescription)) {
                Iterator<CssStatement> it2 = this.body.iterator();
                while (it2.hasNext()) {
                    arrayList.addAll(it2.next().getCssRuleSets(iNode, mediaDeviceDescription));
                }
            }
        }
        return arrayList;
    }

    public boolean matchMediaDevice(MediaDeviceDescription mediaDeviceDescription) {
        Iterator<MediaQuery> it = this.mediaQueries.iterator();
        while (it.hasNext()) {
            if (it.next().matches(mediaDeviceDescription)) {
                return true;
            }
        }
        return false;
    }
}
