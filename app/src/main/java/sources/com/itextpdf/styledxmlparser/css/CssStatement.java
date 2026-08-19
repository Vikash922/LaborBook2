package com.itextpdf.styledxmlparser.css;

import com.itextpdf.styledxmlparser.css.media.MediaDeviceDescription;
import com.itextpdf.styledxmlparser.node.INode;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class CssStatement {
    public List<CssRuleSet> getCssRuleSets(INode iNode, MediaDeviceDescription mediaDeviceDescription) {
        return Collections.emptyList();
    }
}
