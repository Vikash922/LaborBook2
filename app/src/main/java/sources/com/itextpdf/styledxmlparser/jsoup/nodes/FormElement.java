package com.itextpdf.styledxmlparser.jsoup.nodes;

import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.styledxmlparser.jsoup.helper.KeyVal;
import com.itextpdf.styledxmlparser.jsoup.parser.Tag;
import com.itextpdf.styledxmlparser.jsoup.select.Elements;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlinx.coroutines.DebugKt;

/* JADX INFO: loaded from: classes6.dex */
public class FormElement extends Element {
    private final Elements elements;

    public FormElement(Tag tag, String str, Attributes attributes) {
        super(tag, str, attributes);
        this.elements = new Elements();
    }

    public Elements elements() {
        return this.elements;
    }

    public FormElement addElement(Element element) {
        this.elements.add(element);
        return this;
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Node
    protected void removeChild(Node node) {
        super.removeChild(node);
        this.elements.remove((Element) node);
    }

    public List<KeyVal> formData() {
        Element elementSelectFirst;
        ArrayList arrayList = new ArrayList();
        for (Element element : this.elements) {
            if (element.tag().isFormSubmittable() && !element.hasAttr("disabled")) {
                String strAttr = element.attr("name");
                if (strAttr.length() != 0) {
                    String strAttr2 = element.attr("type");
                    if (!strAttr2.equalsIgnoreCase("button")) {
                        if ("select".equals(element.normalName())) {
                            Iterator<Element> it = element.select("option[selected]").iterator();
                            boolean z = false;
                            while (it.hasNext()) {
                                arrayList.add(KeyVal.create(strAttr, it.next().val()));
                                z = true;
                            }
                            if (!z && (elementSelectFirst = element.selectFirst("option")) != null) {
                                arrayList.add(KeyVal.create(strAttr, elementSelectFirst.val()));
                            }
                        } else if ("checkbox".equalsIgnoreCase(strAttr2) || "radio".equalsIgnoreCase(strAttr2)) {
                            if (element.hasAttr(CommonCssConstants.CHECKED)) {
                                arrayList.add(KeyVal.create(strAttr, element.val().length() > 0 ? element.val() : DebugKt.DEBUG_PROPERTY_VALUE_ON));
                            }
                        } else {
                            arrayList.add(KeyVal.create(strAttr, element.val()));
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    @Override // com.itextpdf.styledxmlparser.jsoup.nodes.Element, com.itextpdf.styledxmlparser.jsoup.nodes.Node
    public Object clone() {
        return (FormElement) super.clone();
    }
}
