package com.itextpdf.styledxmlparser.node.impl.jsoup.node;

import com.itextpdf.styledxmlparser.jsoup.nodes.Attribute;
import com.itextpdf.styledxmlparser.jsoup.nodes.Attributes;
import com.itextpdf.styledxmlparser.node.IAttribute;
import com.itextpdf.styledxmlparser.node.IAttributes;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public class JsoupAttributes implements IAttributes {
    private Attributes attributes;

    public JsoupAttributes(Attributes attributes) {
        this.attributes = attributes;
    }

    @Override // com.itextpdf.styledxmlparser.node.IAttributes
    public String getAttribute(String str) {
        if (this.attributes.hasKey(str)) {
            return this.attributes.get(str);
        }
        return null;
    }

    @Override // com.itextpdf.styledxmlparser.node.IAttributes
    public void setAttribute(String str, String str2) {
        if (this.attributes.hasKey(str)) {
            this.attributes.remove(str);
        }
        this.attributes.put(str, str2);
    }

    @Override // com.itextpdf.styledxmlparser.node.IAttributes
    public int size() {
        return this.attributes.size();
    }

    @Override // java.lang.Iterable
    public Iterator<IAttribute> iterator() {
        return new AttributeIterator(this.attributes.iterator());
    }

    private static class AttributeIterator implements Iterator<IAttribute> {
        private Iterator<Attribute> iterator;

        public AttributeIterator(Iterator<Attribute> it) {
            this.iterator = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.iterator.hasNext();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public IAttribute next() {
            return new JsoupAttribute(this.iterator.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("remove");
        }
    }
}
