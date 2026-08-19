package com.itextpdf.styledxmlparser.css.selector.item;

import com.itextpdf.styledxmlparser.node.IElementNode;
import com.itextpdf.styledxmlparser.node.INode;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
class CssPseudoClassChildSelectorItem extends CssPseudoClassSelectorItem {
    CssPseudoClassChildSelectorItem(String str) {
        super(str);
    }

    CssPseudoClassChildSelectorItem(String str, String str2) {
        super(str, str2);
    }

    List<INode> getAllSiblings(INode iNode) {
        INode iNodeParentNode = iNode.parentNode();
        if (iNodeParentNode != null) {
            List<INode> listChildNodes = iNodeParentNode.childNodes();
            ArrayList arrayList = new ArrayList(listChildNodes.size());
            for (INode iNode2 : listChildNodes) {
                if (iNode2 instanceof IElementNode) {
                    arrayList.add(iNode2);
                }
            }
            return arrayList;
        }
        return Collections.emptyList();
    }

    List<INode> getAllSiblingsOfNodeType(INode iNode) {
        INode iNodeParentNode = iNode.parentNode();
        if (iNodeParentNode != null) {
            List<INode> listChildNodes = iNodeParentNode.childNodes();
            ArrayList arrayList = new ArrayList(listChildNodes.size());
            for (INode iNode2 : listChildNodes) {
                if ((iNode2 instanceof IElementNode) && ((IElementNode) iNode2).name().equals(((IElementNode) iNode).name())) {
                    arrayList.add(iNode2);
                }
            }
            return arrayList;
        }
        return Collections.emptyList();
    }
}
