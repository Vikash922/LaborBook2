package com.itextpdf.layout;

import com.itextpdf.commons.actions.sequence.AbstractIdentifiableElement;
import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.font.PdfFont;
import com.itextpdf.layout.IPropertyContainer;
import com.itextpdf.layout.borders.Border;
import com.itextpdf.layout.hyphenation.HyphenationConfig;
import com.itextpdf.layout.properties.Background;
import com.itextpdf.layout.properties.BackgroundImage;
import com.itextpdf.layout.properties.BaseDirection;
import com.itextpdf.layout.properties.BorderRadius;
import com.itextpdf.layout.properties.FontKerning;
import com.itextpdf.layout.properties.HorizontalAlignment;
import com.itextpdf.layout.properties.TextAlignment;
import com.itextpdf.layout.properties.TransparentColor;
import com.itextpdf.layout.properties.Underline;
import com.itextpdf.layout.properties.UnitValue;
import com.itextpdf.layout.splitting.ISplitCharacters;
import java.lang.Character;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ElementPropertyContainer<T extends IPropertyContainer> extends AbstractIdentifiableElement implements IPropertyContainer {
    protected Map<Integer, Object> properties = new HashMap();

    @Override // com.itextpdf.layout.IPropertyContainer
    public void setProperty(int i, Object obj) {
        this.properties.put(Integer.valueOf(i), obj);
    }

    @Override // com.itextpdf.layout.IPropertyContainer
    public boolean hasProperty(int i) {
        return hasOwnProperty(i);
    }

    @Override // com.itextpdf.layout.IPropertyContainer
    public boolean hasOwnProperty(int i) {
        return this.properties.containsKey(Integer.valueOf(i));
    }

    @Override // com.itextpdf.layout.IPropertyContainer
    public void deleteOwnProperty(int i) {
        this.properties.remove(Integer.valueOf(i));
    }

    @Override // com.itextpdf.layout.IPropertyContainer
    public <T1> T1 getProperty(int i) {
        return (T1) getOwnProperty(i);
    }

    @Override // com.itextpdf.layout.IPropertyContainer
    public <T1> T1 getOwnProperty(int i) {
        return (T1) this.properties.get(Integer.valueOf(i));
    }

    public <T1> T1 getDefaultProperty(int i) {
        switch (i) {
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
            case 50:
                return (T1) UnitValue.createPointValue(0.0f);
            default:
                return null;
        }
    }

    public T setRelativePosition(float f, float f2, float f3, float f4) {
        setProperty(52, 2);
        setProperty(34, Float.valueOf(f));
        setProperty(54, Float.valueOf(f3));
        setProperty(73, Float.valueOf(f2));
        setProperty(14, Float.valueOf(f4));
        return this;
    }

    public T setFixedPosition(float f, float f2, float f3) {
        setFixedPosition(f, f2, UnitValue.createPointValue(f3));
        return this;
    }

    public T setFixedPosition(float f, float f2, UnitValue unitValue) {
        setProperty(52, 4);
        setProperty(34, Float.valueOf(f));
        setProperty(14, Float.valueOf(f2));
        setProperty(77, unitValue);
        return this;
    }

    public T setFixedPosition(int i, float f, float f2, float f3) {
        setFixedPosition(f, f2, f3);
        setProperty(51, Integer.valueOf(i));
        return this;
    }

    public T setFixedPosition(int i, float f, float f2, UnitValue unitValue) {
        setFixedPosition(f, f2, unitValue);
        setProperty(51, Integer.valueOf(i));
        return this;
    }

    public T setHorizontalAlignment(HorizontalAlignment horizontalAlignment) {
        setProperty(28, horizontalAlignment);
        return this;
    }

    public T setFont(PdfFont pdfFont) {
        setProperty(20, pdfFont);
        return this;
    }

    public T setFontFamily(String... strArr) {
        setProperty(20, strArr);
        return this;
    }

    public T setFontFamily(List<String> list) {
        return (T) setFontFamily((String[]) list.toArray(new String[list.size()]));
    }

    public T setFontColor(Color color) {
        return (T) setFontColor(color, 1.0f);
    }

    public T setFontColor(Color color, float f) {
        setProperty(21, color != null ? new TransparentColor(color, f) : null);
        return this;
    }

    public T setFontSize(float f) {
        setProperty(24, UnitValue.createPointValue(f));
        return this;
    }

    public T setTextAlignment(TextAlignment textAlignment) {
        setProperty(70, textAlignment);
        return this;
    }

    public T setCharacterSpacing(float f) {
        setProperty(15, Float.valueOf(f));
        return this;
    }

    public T setWordSpacing(float f) {
        setProperty(78, Float.valueOf(f));
        return this;
    }

    public T setFontKerning(FontKerning fontKerning) {
        setProperty(22, fontKerning);
        return this;
    }

    public T setBackgroundColor(Color color) {
        return (T) setBackgroundColor(color, 1.0f);
    }

    public T setBackgroundColor(Color color, float f) {
        return (T) setBackgroundColor(color, f, 0.0f, 0.0f, 0.0f, 0.0f);
    }

    public T setBackgroundColor(Color color, float f, float f2, float f3, float f4) {
        return (T) setBackgroundColor(color, 1.0f, f, f2, f3, f4);
    }

    public T setBackgroundColor(Color color, float f, float f2, float f3, float f4, float f5) {
        setProperty(6, color != null ? new Background(color, f, f2, f3, f4, f5) : null);
        return this;
    }

    public T setBackgroundImage(BackgroundImage backgroundImage) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(backgroundImage);
        setProperty(90, arrayList);
        return this;
    }

    public T setBackgroundImage(List<BackgroundImage> list) {
        setProperty(90, list);
        return this;
    }

    public T setBorder(Border border) {
        setProperty(9, border);
        return this;
    }

    public T setBorderTop(Border border) {
        setProperty(13, border);
        return this;
    }

    public T setBorderRight(Border border) {
        setProperty(12, border);
        return this;
    }

    public T setBorderBottom(Border border) {
        setProperty(10, border);
        return this;
    }

    public T setBorderLeft(Border border) {
        setProperty(11, border);
        return this;
    }

    public T setBorderRadius(BorderRadius borderRadius) {
        setProperty(101, borderRadius);
        return this;
    }

    public T setBorderBottomLeftRadius(BorderRadius borderRadius) {
        setProperty(113, borderRadius);
        return this;
    }

    public T setBorderBottomRightRadius(BorderRadius borderRadius) {
        setProperty(112, borderRadius);
        return this;
    }

    public T setBorderTopLeftRadius(BorderRadius borderRadius) {
        setProperty(110, borderRadius);
        return this;
    }

    public T setBorderTopRightRadius(BorderRadius borderRadius) {
        setProperty(111, borderRadius);
        return this;
    }

    public T setSplitCharacters(ISplitCharacters iSplitCharacters) {
        setProperty(62, iSplitCharacters);
        return this;
    }

    public ISplitCharacters getSplitCharacters() {
        return (ISplitCharacters) getProperty(62);
    }

    public Integer getTextRenderingMode() {
        return (Integer) getProperty(71);
    }

    public T setTextRenderingMode(int i) {
        setProperty(71, Integer.valueOf(i));
        return this;
    }

    public Color getStrokeColor() {
        return (Color) getProperty(63);
    }

    public T setStrokeColor(Color color) {
        setProperty(63, color);
        return this;
    }

    public Float getStrokeWidth() {
        return (Float) getProperty(64);
    }

    public T setStrokeWidth(float f) {
        setProperty(64, Float.valueOf(f));
        return this;
    }

    public T setBold() {
        setProperty(8, true);
        return this;
    }

    public T setItalic() {
        setProperty(31, true);
        return this;
    }

    public T setLineThrough() {
        return (T) setUnderline(null, 0.75f, 0.0f, 0.0f, 0.29166666f, 0);
    }

    public T setUnderline() {
        return (T) setUnderline(null, 0.75f, 0.0f, 0.0f, -0.125f, 0);
    }

    public T setUnderline(float f, float f2) {
        return (T) setUnderline(null, f, 0.0f, f2, 0.0f, 0);
    }

    public T setUnderline(Color color, float f, float f2, float f3, float f4, int i) {
        return (T) setUnderline(color, 1.0f, f, f2, f3, f4, i);
    }

    public T setUnderline(Color color, float f, float f2, float f3, float f4, float f5, int i) {
        Underline underline = new Underline(color, f, f2, f3, f4, f5, i);
        Object property = getProperty(74);
        if (property instanceof List) {
            ((List) property).add(underline);
        } else if (property instanceof Underline) {
            ArrayList arrayList = new ArrayList();
            arrayList.add((Underline) property);
            arrayList.add(underline);
            setProperty(74, arrayList);
        } else {
            setProperty(74, underline);
        }
        return this;
    }

    public T setBaseDirection(BaseDirection baseDirection) {
        setProperty(7, baseDirection);
        return this;
    }

    public T setHyphenation(HyphenationConfig hyphenationConfig) {
        setProperty(30, hyphenationConfig);
        return this;
    }

    public T setFontScript(Character.UnicodeScript unicodeScript) {
        setProperty(23, unicodeScript);
        return this;
    }

    public T setDestination(String str) {
        setProperty(17, str);
        return this;
    }

    public T setOpacity(Float f) {
        setProperty(92, f);
        return this;
    }
}
