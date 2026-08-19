package com.itextpdf.layout.element;

import com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties;
import com.itextpdf.kernel.pdf.tagutils.DefaultAccessibilityProperties;
import com.itextpdf.layout.properties.ListNumberingType;
import com.itextpdf.layout.properties.ListSymbolAlignment;
import com.itextpdf.layout.properties.ListSymbolPosition;
import com.itextpdf.layout.renderer.IRenderer;
import com.itextpdf.layout.renderer.ListRenderer;
import org.shadow.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes6.dex */
public class List extends BlockElement<List> {
    public static final String DEFAULT_LIST_SYMBOL = "- ";
    protected DefaultAccessibilityProperties tagProperties;

    public List() {
    }

    public List(ListNumberingType listNumberingType) {
        setListSymbol(listNumberingType);
    }

    @Override // com.itextpdf.layout.element.BlockElement, com.itextpdf.layout.ElementPropertyContainer, com.itextpdf.layout.IPropertyContainer
    public <T1> T1 getDefaultProperty(int i) {
        if (i == 37) {
            return (T1) new Text(DEFAULT_LIST_SYMBOL);
        }
        if (i == 83) {
            return (T1) ListSymbolPosition.DEFAULT;
        }
        if (i == 41) {
            return "";
        }
        if (i == 42) {
            return ". ";
        }
        return (T1) super.getDefaultProperty(i);
    }

    public List add(ListItem listItem) {
        this.childElements.add(listItem);
        return this;
    }

    public List add(String str) {
        return add(new ListItem(str));
    }

    public List setItemStartIndex(int i) {
        setProperty(36, Integer.valueOf(i));
        return this;
    }

    public List setListSymbol(String str) {
        return setListSymbol(new Text(str));
    }

    public List setListSymbol(Text text) {
        setProperty(37, text);
        return this;
    }

    public List setListSymbol(Image image) {
        setProperty(37, image);
        return this;
    }

    public List setListSymbol(ListNumberingType listNumberingType) {
        if (listNumberingType == ListNumberingType.ZAPF_DINGBATS_1 || listNumberingType == ListNumberingType.ZAPF_DINGBATS_2 || listNumberingType == ListNumberingType.ZAPF_DINGBATS_3 || listNumberingType == ListNumberingType.ZAPF_DINGBATS_4) {
            setPostSymbolText(StringUtils.SPACE);
        }
        setProperty(37, listNumberingType);
        return this;
    }

    public List setListSymbolAlignment(ListSymbolAlignment listSymbolAlignment) {
        setProperty(38, listSymbolAlignment);
        return this;
    }

    public Float getSymbolIndent() {
        return (Float) getProperty(39);
    }

    public List setSymbolIndent(float f) {
        setProperty(39, Float.valueOf(f));
        return this;
    }

    public String getPostSymbolText() {
        return (String) getProperty(42);
    }

    public void setPostSymbolText(String str) {
        setProperty(42, str);
    }

    public String getPreSymbolText() {
        return (String) getProperty(41);
    }

    public void setPreSymbolText(String str) {
        setProperty(41, str);
    }

    @Override // com.itextpdf.layout.tagging.IAccessibleElement
    public AccessibilityProperties getAccessibilityProperties() {
        if (this.tagProperties == null) {
            this.tagProperties = new DefaultAccessibilityProperties("L");
        }
        return this.tagProperties;
    }

    @Override // com.itextpdf.layout.element.AbstractElement
    protected IRenderer makeNewRenderer() {
        return new ListRenderer(this);
    }
}
