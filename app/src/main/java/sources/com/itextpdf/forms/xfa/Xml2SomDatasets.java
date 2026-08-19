package com.itextpdf.forms.xfa;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Stack;
import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Node;

/* JADX INFO: loaded from: classes6.dex */
class Xml2SomDatasets extends Xml2Som {
    public Xml2SomDatasets(Node node) {
        this.order = new ArrayList();
        this.name2Node = new HashMap();
        this.stack = new Stack<>();
        this.anform = 0;
        this.inverseSearch = new HashMap();
        processDatasetsInternal(node);
    }

    public Node insertNode(Node node, String str) {
        Stack<String> stackSplitParts = splitParts(str);
        Document ownerDocument = node.getOwnerDocument();
        Node firstChild = node.getFirstChild();
        while (firstChild.getNodeType() != 1) {
            firstChild = firstChild.getNextSibling();
        }
        int i = 0;
        Node node2 = null;
        while (i < stackSplitParts.size()) {
            String str2 = stackSplitParts.get(i);
            int iLastIndexOf = str2.lastIndexOf(91);
            String strSubstring = str2.substring(0, iLastIndexOf);
            int i2 = Integer.parseInt(str2.substring(iLastIndexOf + 1, str2.length() - 1));
            Node firstChild2 = firstChild.getFirstChild();
            int i3 = -1;
            while (firstChild2 != null && (firstChild2.getNodeType() != 1 || !escapeSom(firstChild2.getLocalName()).equals(strSubstring) || (i3 = i3 + 1) != i2)) {
                firstChild2 = firstChild2.getNextSibling();
            }
            while (i3 < i2) {
                firstChild2 = firstChild.appendChild(ownerDocument.createElementNS(null, strSubstring));
                Attr attrCreateAttributeNS = ownerDocument.createAttributeNS(XfaForm.XFA_DATA_SCHEMA, "dataNode");
                attrCreateAttributeNS.setNodeValue("dataGroup");
                firstChild2.getAttributes().setNamedItemNS(attrCreateAttributeNS);
                i3++;
            }
            i++;
            firstChild = firstChild2;
            node2 = firstChild;
        }
        inverseSearchAdd(this.inverseSearch, stackSplitParts, str);
        this.name2Node.put(str, node2);
        this.order.add(str);
        return node2;
    }

    private static boolean hasChildren(Node node) {
        Node namedItemNS = node.getAttributes().getNamedItemNS(XfaForm.XFA_DATA_SCHEMA, "dataNode");
        if (namedItemNS != null) {
            String nodeValue = namedItemNS.getNodeValue();
            if ("dataGroup".equals(nodeValue)) {
                return true;
            }
            if ("dataValue".equals(nodeValue)) {
                return false;
            }
        }
        if (!node.hasChildNodes()) {
            return false;
        }
        for (Node firstChild = node.getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
            if (firstChild.getNodeType() == 1) {
                return true;
            }
        }
        return false;
    }

    private void processDatasetsInternal(Node node) {
        Integer numValueOf;
        if (node != null) {
            HashMap map = new HashMap();
            for (Node firstChild = node.getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
                if (firstChild.getNodeType() == 1) {
                    String strEscapeSom = escapeSom(firstChild.getLocalName());
                    Integer num = (Integer) map.get(strEscapeSom);
                    if (num == null) {
                        numValueOf = 0;
                    } else {
                        numValueOf = Integer.valueOf(num.intValue() + 1);
                    }
                    map.put(strEscapeSom, numValueOf);
                    this.stack.push(String.format("%s[%s]", strEscapeSom, numValueOf.toString()));
                    if (hasChildren(firstChild)) {
                        processDatasetsInternal(firstChild);
                    }
                    String strPrintStack = printStack();
                    this.order.add(strPrintStack);
                    inverseSearchAdd(strPrintStack);
                    this.name2Node.put(strPrintStack, firstChild);
                    this.stack.pop();
                }
            }
        }
    }
}
