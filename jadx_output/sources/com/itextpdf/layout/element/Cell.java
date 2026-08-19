package com.itextpdf.layout.element;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.pdf.tagging.StandardRoles;
import com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties;
import com.itextpdf.kernel.pdf.tagutils.DefaultAccessibilityProperties;
import com.itextpdf.layout.borders.Border;
import com.itextpdf.layout.borders.SolidBorder;
import com.itextpdf.layout.properties.UnitValue;
import com.itextpdf.layout.renderer.CellRenderer;
import com.itextpdf.layout.renderer.IRenderer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashSet;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class Cell extends BlockElement<Cell> {
    private static final Border DEFAULT_BORDER = new SolidBorder(0.5f);
    private int col;
    private int colspan;
    private int row;
    private int rowspan;
    protected DefaultAccessibilityProperties tagProperties;

    public Cell(int i, int i2) {
        this.rowspan = Math.max(i, 1);
        this.colspan = Math.max(i2, 1);
    }

    public Cell() {
        this(1, 1);
    }

    @Override // com.itextpdf.layout.element.AbstractElement, com.itextpdf.layout.element.IElement
    public IRenderer getRenderer() {
        CellRenderer cellRenderer;
        if (this.nextRenderer == null) {
            cellRenderer = null;
        } else if (this.nextRenderer instanceof CellRenderer) {
            IRenderer iRenderer = this.nextRenderer;
            this.nextRenderer = this.nextRenderer.getNextRenderer();
            cellRenderer = (CellRenderer) iRenderer;
        } else {
            LoggerFactory.getLogger((Class<?>) Table.class).error("Invalid renderer for Table: must be inherited from TableRenderer");
            cellRenderer = null;
        }
        return cellRenderer == null ? makeNewRenderer() : cellRenderer;
    }

    public int getRow() {
        return this.row;
    }

    public int getCol() {
        return this.col;
    }

    public int getRowspan() {
        return this.rowspan;
    }

    public int getColspan() {
        return this.colspan;
    }

    public Cell add(IBlockElement iBlockElement) {
        this.childElements.add(iBlockElement);
        return this;
    }

    public Cell add(Image image) {
        this.childElements.add(image);
        return this;
    }

    public Cell clone(boolean z) {
        Cell cell = new Cell(this.rowspan, this.colspan);
        cell.row = this.row;
        cell.col = this.col;
        cell.properties = new HashMap(this.properties);
        if (this.styles != null) {
            cell.styles = new LinkedHashSet(this.styles);
        }
        if (z) {
            cell.childElements = new ArrayList(this.childElements);
        }
        return cell;
    }

    @Override // com.itextpdf.layout.element.BlockElement, com.itextpdf.layout.ElementPropertyContainer, com.itextpdf.layout.IPropertyContainer
    public <T1> T1 getDefaultProperty(int i) {
        if (i == 9) {
            return (T1) DEFAULT_BORDER;
        }
        switch (i) {
            case 47:
            case 48:
            case 49:
            case 50:
                return (T1) UnitValue.createPointValue(2.0f);
            default:
                return (T1) super.getDefaultProperty(i);
        }
    }

    public String toString() {
        return MessageFormatUtil.format("Cell[row={0}, col={1}, rowspan={2}, colspan={3}]", Integer.valueOf(this.row), Integer.valueOf(this.col), Integer.valueOf(this.rowspan), Integer.valueOf(this.colspan));
    }

    @Override // com.itextpdf.layout.tagging.IAccessibleElement
    public AccessibilityProperties getAccessibilityProperties() {
        if (this.tagProperties == null) {
            this.tagProperties = new DefaultAccessibilityProperties(StandardRoles.f3198TD);
        }
        return this.tagProperties;
    }

    @Override // com.itextpdf.layout.element.AbstractElement
    protected IRenderer makeNewRenderer() {
        return new CellRenderer(this);
    }

    protected Cell updateCellIndexes(int i, int i2, int i3) {
        this.row = i;
        this.col = i2;
        this.colspan = Math.min(this.colspan, i3 - i2);
        return this;
    }
}
