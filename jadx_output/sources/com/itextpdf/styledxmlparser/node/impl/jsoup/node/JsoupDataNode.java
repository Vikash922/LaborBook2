package com.itextpdf.styledxmlparser.node.impl.jsoup.node;

import com.itextpdf.styledxmlparser.jsoup.nodes.DataNode;
import com.itextpdf.styledxmlparser.node.IDataNode;

/* JADX INFO: loaded from: classes6.dex */
public class JsoupDataNode extends JsoupNode implements IDataNode {
    private DataNode dataNode;

    public JsoupDataNode(DataNode dataNode) {
        super(dataNode);
        this.dataNode = dataNode;
    }

    @Override // com.itextpdf.styledxmlparser.node.IDataNode
    public String getWholeData() {
        return this.dataNode.getWholeData();
    }
}
