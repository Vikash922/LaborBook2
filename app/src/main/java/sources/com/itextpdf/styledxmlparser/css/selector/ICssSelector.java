package com.itextpdf.styledxmlparser.css.selector;

import com.itextpdf.styledxmlparser.node.INode;

/* JADX INFO: loaded from: classes6.dex */
public interface ICssSelector {
    int calculateSpecificity();

    boolean matches(INode iNode);
}
