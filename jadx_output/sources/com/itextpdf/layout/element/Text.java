package com.itextpdf.layout.element;

import com.itextpdf.kernel.pdf.tagging.StandardRoles;
import com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties;
import com.itextpdf.kernel.pdf.tagutils.DefaultAccessibilityProperties;
import com.itextpdf.layout.renderer.IRenderer;
import com.itextpdf.layout.renderer.TextRenderer;
import com.itextpdf.layout.tagging.IAccessibleElement;

/* JADX INFO: loaded from: classes6.dex */
public class Text extends AbstractElement<Text> implements ILeafElement, IAccessibleElement {
    protected DefaultAccessibilityProperties tagProperties;
    protected String text;

    public Text(String str) {
        if (str == null) {
            throw new IllegalArgumentException();
        }
        this.text = str;
    }

    public String getText() {
        return this.text;
    }

    public void setText(String str) {
        this.text = str;
    }

    public float getTextRise() {
        return ((Float) getProperty(72)).floatValue();
    }

    public Text setTextRise(float f) {
        setProperty(72, Float.valueOf(f));
        return this;
    }

    public Float getHorizontalScaling() {
        return (Float) getProperty(29);
    }

    public Text setSkew(float f, float f2) {
        setProperty(65, new float[]{(float) Math.tan((((double) f) * 3.141592653589793d) / 180.0d), (float) Math.tan((((double) f2) * 3.141592653589793d) / 180.0d)});
        return this;
    }

    public Text setHorizontalScaling(float f) {
        setProperty(29, Float.valueOf(f));
        return this;
    }

    public AccessibilityProperties getAccessibilityProperties() {
        if (this.tagProperties == null) {
            this.tagProperties = new DefaultAccessibilityProperties(StandardRoles.SPAN);
        }
        return this.tagProperties;
    }

    public Text setNeutralRole() {
        getAccessibilityProperties().setRole(null);
        return this;
    }

    @Override // com.itextpdf.layout.element.AbstractElement
    protected IRenderer makeNewRenderer() {
        return new TextRenderer(this, this.text);
    }
}
