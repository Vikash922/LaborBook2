package com.itextpdf.layout.layout;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.p017io.util.HashCode;

/* JADX INFO: loaded from: classes6.dex */
public class LayoutArea implements Cloneable {
    protected Rectangle bBox;
    protected int pageNumber;

    public LayoutArea(int i, Rectangle rectangle) {
        this.pageNumber = i;
        this.bBox = rectangle;
    }

    public int getPageNumber() {
        return this.pageNumber;
    }

    public Rectangle getBBox() {
        return this.bBox;
    }

    public void setBBox(Rectangle rectangle) {
        this.bBox = rectangle;
    }

    @Override // 
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public LayoutArea mo3122clone() {
        try {
            LayoutArea layoutArea = (LayoutArea) super.clone();
            layoutArea.bBox = this.bBox.mo3120clone();
            return layoutArea;
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public boolean equals(Object obj) {
        if (getClass() != obj.getClass()) {
            return false;
        }
        LayoutArea layoutArea = (LayoutArea) obj;
        return this.pageNumber == layoutArea.pageNumber && this.bBox.equalsWithEpsilon(layoutArea.bBox);
    }

    public int hashCode() {
        HashCode hashCode = new HashCode();
        hashCode.append(this.pageNumber).append(this.bBox.hashCode());
        return hashCode.hashCode();
    }

    public String toString() {
        return MessageFormatUtil.format("{0}, page {1}", this.bBox.toString(), Integer.valueOf(this.pageNumber));
    }
}
