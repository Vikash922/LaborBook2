package com.itextpdf.styledxmlparser.node;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public interface INode {
    void addChild(INode iNode);

    List<INode> childNodes();

    INode parentNode();
}
