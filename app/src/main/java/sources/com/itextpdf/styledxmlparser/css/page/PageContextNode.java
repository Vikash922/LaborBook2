package com.itextpdf.styledxmlparser.css.page;

import com.itextpdf.styledxmlparser.css.CssContextNode;
import com.itextpdf.styledxmlparser.node.INode;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class PageContextNode extends CssContextNode {
    private List<String> pageClasses;
    private String pageTypeName;

    public PageContextNode() {
        this(null);
    }

    public PageContextNode(INode iNode) {
        super(iNode);
        this.pageClasses = new ArrayList();
    }

    public PageContextNode addPageClass(String str) {
        this.pageClasses.add(str.toLowerCase());
        return this;
    }

    public String getPageTypeName() {
        return this.pageTypeName;
    }

    public PageContextNode setPageTypeName(String str) {
        this.pageTypeName = str;
        return this;
    }

    public List<String> getPageClasses() {
        return Collections.unmodifiableList(this.pageClasses);
    }
}
