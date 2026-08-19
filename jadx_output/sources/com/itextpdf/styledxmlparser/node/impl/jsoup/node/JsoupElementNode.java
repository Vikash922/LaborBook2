package com.itextpdf.styledxmlparser.node.impl.jsoup.node;

import com.itextpdf.styledxmlparser.jsoup.nodes.Element;
import com.itextpdf.styledxmlparser.node.IAttributes;
import com.itextpdf.styledxmlparser.node.IElementNode;
import com.itextpdf.styledxmlparser.node.INode;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class JsoupElementNode extends JsoupNode implements IElementNode {
    private IAttributes attributes;
    private List<Map<String, String>> customDefaultStyles;
    private Element element;
    private Map<String, String> elementResolvedStyles;
    private String lang;

    public JsoupElementNode(Element element) {
        super(element);
        this.lang = null;
        this.element = element;
        this.attributes = new JsoupAttributes(element.attributes());
        this.lang = getAttribute("lang");
    }

    @Override // com.itextpdf.styledxmlparser.node.IElementNode
    public String name() {
        return this.element.nodeName();
    }

    @Override // com.itextpdf.styledxmlparser.node.IElementNode
    public IAttributes getAttributes() {
        return this.attributes;
    }

    @Override // com.itextpdf.styledxmlparser.node.IElementNode
    public String getAttribute(String str) {
        return this.attributes.getAttribute(str);
    }

    @Override // com.itextpdf.styledxmlparser.node.IStylesContainer
    public void setStyles(Map<String, String> map) {
        this.elementResolvedStyles = map;
    }

    @Override // com.itextpdf.styledxmlparser.node.IStylesContainer
    public Map<String, String> getStyles() {
        return this.elementResolvedStyles;
    }

    @Override // com.itextpdf.styledxmlparser.node.IElementNode
    public List<Map<String, String>> getAdditionalHtmlStyles() {
        return this.customDefaultStyles;
    }

    @Override // com.itextpdf.styledxmlparser.node.IElementNode
    public void addAdditionalHtmlStyles(Map<String, String> map) {
        if (this.customDefaultStyles == null) {
            this.customDefaultStyles = new ArrayList();
        }
        this.customDefaultStyles.add(map);
    }

    @Override // com.itextpdf.styledxmlparser.node.IElementNode
    public String getLang() {
        String str = this.lang;
        if (str != null) {
            return str;
        }
        INode iNode = this.parentNode;
        String lang = iNode instanceof IElementNode ? ((IElementNode) iNode).getLang() : null;
        this.lang = lang;
        if (lang == null) {
            this.lang = "";
        }
        return this.lang;
    }

    public String text() {
        return this.element.text();
    }
}
