package com.itextpdf.styledxmlparser.css.selector.item;

import com.itextpdf.styledxmlparser.node.INode;

/* JADX INFO: loaded from: classes6.dex */
public interface ICssSelectorItem {
    int getSpecificity();

    boolean matches(INode iNode);
}
