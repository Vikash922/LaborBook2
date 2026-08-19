package com.itextpdf.layout.element;

import com.itextpdf.kernel.pdf.canvas.draw.ILineDrawer;
import com.itextpdf.layout.properties.TabAlignment;
import org.shadow.apache.commons.lang3.ClassUtils;

/* JADX INFO: loaded from: classes6.dex */
public class TabStop {
    private TabAlignment tabAlignment;
    private Character tabAnchor;
    private ILineDrawer tabLeader;
    private float tabPosition;

    public TabStop(float f) {
        this(f, TabAlignment.LEFT);
    }

    public TabStop(float f, TabAlignment tabAlignment) {
        this(f, tabAlignment, null);
    }

    public TabStop(float f, TabAlignment tabAlignment, ILineDrawer iLineDrawer) {
        this.tabPosition = f;
        this.tabAlignment = tabAlignment;
        this.tabLeader = iLineDrawer;
        this.tabAnchor = Character.valueOf(ClassUtils.PACKAGE_SEPARATOR_CHAR);
    }

    public float getTabPosition() {
        return this.tabPosition;
    }

    public TabAlignment getTabAlignment() {
        return this.tabAlignment;
    }

    public void setTabAlignment(TabAlignment tabAlignment) {
        this.tabAlignment = tabAlignment;
    }

    public Character getTabAnchor() {
        return this.tabAnchor;
    }

    public void setTabAnchor(Character ch) {
        this.tabAnchor = ch;
    }

    public ILineDrawer getTabLeader() {
        return this.tabLeader;
    }

    public void setTabLeader(ILineDrawer iLineDrawer) {
        this.tabLeader = iLineDrawer;
    }
}
