package com.itextpdf.layout.element;

import com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties;
import com.itextpdf.kernel.pdf.tagutils.DefaultAccessibilityProperties;
import com.itextpdf.layout.properties.Leading;
import com.itextpdf.layout.properties.ParagraphOrphansControl;
import com.itextpdf.layout.properties.ParagraphWidowsControl;
import com.itextpdf.layout.properties.UnitValue;
import com.itextpdf.layout.renderer.IRenderer;
import com.itextpdf.layout.renderer.ParagraphRenderer;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes6.dex */
public class Paragraph extends BlockElement<Paragraph> {
    protected DefaultAccessibilityProperties tagProperties;

    public Paragraph() {
    }

    public Paragraph(String str) {
        this(new Text(str));
    }

    public Paragraph(Text text) {
        add(text);
    }

    public Paragraph add(String str) {
        return add(new Text(str));
    }

    public Paragraph add(ILeafElement iLeafElement) {
        this.childElements.add(iLeafElement);
        return this;
    }

    public Paragraph add(IBlockElement iBlockElement) {
        this.childElements.add(iBlockElement);
        return this;
    }

    public <T2 extends ILeafElement> Paragraph addAll(java.util.List<T2> list) {
        Iterator<T2> it = list.iterator();
        while (it.hasNext()) {
            add(it.next());
        }
        return this;
    }

    public Paragraph addTabStops(TabStop... tabStopArr) {
        addTabStopsAsProperty(Arrays.asList(tabStopArr));
        return this;
    }

    public Paragraph addTabStops(java.util.List<TabStop> list) {
        addTabStopsAsProperty(list);
        return this;
    }

    public Paragraph removeTabStop(float f) {
        Map map = (Map) getProperty(69);
        if (map != null) {
            map.remove(Float.valueOf(f));
        }
        return this;
    }

    @Override // com.itextpdf.layout.element.BlockElement, com.itextpdf.layout.ElementPropertyContainer, com.itextpdf.layout.IPropertyContainer
    public <T1> T1 getDefaultProperty(int i) {
        if (i == 18) {
            return (T1) Float.valueOf(0.0f);
        }
        if (i == 33) {
            return (T1) new Leading(2, (this.childElements.size() == 1 && (this.childElements.get(0) instanceof Image)) ? 1.0f : 1.35f);
        }
        if (i == 43 || i == 46) {
            return (T1) UnitValue.createPointValue(4.0f);
        }
        if (i == 67) {
            return (T1) Float.valueOf(50.0f);
        }
        return (T1) super.getDefaultProperty(i);
    }

    public Paragraph setFirstLineIndent(float f) {
        setProperty(18, Float.valueOf(f));
        return this;
    }

    public Paragraph setOrphansControl(ParagraphOrphansControl paragraphOrphansControl) {
        setProperty(121, paragraphOrphansControl);
        return this;
    }

    public Paragraph setWidowsControl(ParagraphWidowsControl paragraphWidowsControl) {
        setProperty(122, paragraphWidowsControl);
        return this;
    }

    public Paragraph setFixedLeading(float f) {
        setProperty(33, new Leading(1, f));
        return this;
    }

    public Paragraph setMultipliedLeading(float f) {
        setProperty(33, new Leading(2, f));
        return this;
    }

    @Override // com.itextpdf.layout.tagging.IAccessibleElement
    public AccessibilityProperties getAccessibilityProperties() {
        if (this.tagProperties == null) {
            this.tagProperties = new DefaultAccessibilityProperties("P");
        }
        return this.tagProperties;
    }

    @Override // com.itextpdf.layout.element.AbstractElement
    protected IRenderer makeNewRenderer() {
        return new ParagraphRenderer(this);
    }

    private void addTabStopsAsProperty(java.util.List<TabStop> list) {
        Map treeMap = (Map) getProperty(69);
        if (treeMap == null) {
            treeMap = new TreeMap();
            setProperty(69, treeMap);
        }
        for (TabStop tabStop : list) {
            treeMap.put(Float.valueOf(tabStop.getTabPosition()), tabStop);
        }
    }
}
