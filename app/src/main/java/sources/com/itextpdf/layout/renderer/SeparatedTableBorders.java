package com.itextpdf.layout.renderer;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.layout.borders.Border;
import com.itextpdf.layout.element.Cell;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import java.util.ArrayList;
import java.util.List;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
class SeparatedTableBorders extends TableBorders {
    @Override // com.itextpdf.layout.renderer.TableBorders
    protected TableBorders collapseTableWithFooter(TableBorders tableBorders, boolean z) {
        return this;
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    protected TableBorders collapseTableWithHeader(TableBorders tableBorders, boolean z) {
        return this;
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    protected TableBorders drawHorizontalBorder(PdfCanvas pdfCanvas, TableBorderDescriptor tableBorderDescriptor) {
        return this;
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    protected TableBorders drawVerticalBorder(PdfCanvas pdfCanvas, TableBorderDescriptor tableBorderDescriptor) {
        return this;
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    protected TableBorders fixHeaderOccupiedArea(Rectangle rectangle, Rectangle rectangle2) {
        return this;
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    protected float getCellVerticalAddition(float[] fArr) {
        return 0.0f;
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    protected TableBorders skipHeader(Border[] borderArr) {
        return this;
    }

    public SeparatedTableBorders(List<CellRenderer[]> list, int i, Border[] borderArr) {
        super(list, i, borderArr);
    }

    public SeparatedTableBorders(List<CellRenderer[]> list, int i, Border[] borderArr, int i2) {
        super(list, i, borderArr, i2);
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    protected TableBorders applyTopTableBorder(Rectangle rectangle, Rectangle rectangle2, boolean z, boolean z2, boolean z3) {
        return applyTopTableBorder(rectangle, rectangle2, z3);
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    protected TableBorders applyTopTableBorder(Rectangle rectangle, Rectangle rectangle2, boolean z) {
        float maxTopWidth = (z ? -1 : 1) * getMaxTopWidth();
        rectangle2.decreaseHeight(maxTopWidth);
        rectangle.moveDown(maxTopWidth).increaseHeight(maxTopWidth);
        return this;
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    protected TableBorders applyBottomTableBorder(Rectangle rectangle, Rectangle rectangle2, boolean z, boolean z2, boolean z3) {
        return applyBottomTableBorder(rectangle, rectangle2, z3);
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    protected TableBorders applyBottomTableBorder(Rectangle rectangle, Rectangle rectangle2, boolean z) {
        float maxBottomWidth = (z ? -1 : 1) * getMaxBottomWidth();
        rectangle2.decreaseHeight(maxBottomWidth);
        rectangle.moveDown(maxBottomWidth).increaseHeight(maxBottomWidth);
        return this;
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    protected TableBorders applyLeftAndRightTableBorder(Rectangle rectangle, boolean z) {
        if (rectangle != null) {
            rectangle.applyMargins(0.0f, this.rightBorderMaxWidth, 0.0f, this.leftBorderMaxWidth, z);
        }
        return this;
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    protected TableBorders skipFooter(Border[] borderArr) {
        setTableBoundingBorders(borderArr);
        return this;
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    protected TableBorders applyCellIndents(Rectangle rectangle, float f, float f2, float f3, float f4, boolean z) {
        rectangle.applyMargins(f, f2, f3, f4, false);
        return this;
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    public List<Border> getVerticalBorder(int i) {
        return this.verticalBorders.get(i);
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    public List<Border> getHorizontalBorder(int i) {
        return this.horizontalBorders.get(i - this.largeTableIndexOffset);
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    protected TableBorders updateBordersOnNewPage(boolean z, boolean z2, TableRenderer tableRenderer, TableRenderer tableRenderer2, TableRenderer tableRenderer3) {
        if (!z2 && z && this.rows != null) {
            processAllBordersAndEmptyRows();
            this.rightBorderMaxWidth = getMaxRightWidth();
            this.leftBorderMaxWidth = getMaxLeftWidth();
        }
        if (tableRenderer3 != null) {
            float maxRightWidth = tableRenderer3.bordersHandler.getMaxRightWidth();
            this.leftBorderMaxWidth = Math.max(this.leftBorderMaxWidth, tableRenderer3.bordersHandler.getMaxLeftWidth());
            this.rightBorderMaxWidth = Math.max(this.rightBorderMaxWidth, maxRightWidth);
        }
        if (tableRenderer2 != null) {
            float maxRightWidth2 = tableRenderer2.bordersHandler.getMaxRightWidth();
            this.leftBorderMaxWidth = Math.max(this.leftBorderMaxWidth, tableRenderer2.bordersHandler.getMaxLeftWidth());
            this.rightBorderMaxWidth = Math.max(this.rightBorderMaxWidth, maxRightWidth2);
        }
        return this;
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    public float[] getCellBorderIndents(int i, int i2, int i3, int i4) {
        return new float[]{0.0f, 0.0f, 0.0f, 0.0f};
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    protected void buildBordersArrays(CellRenderer cellRenderer, int i, int i2, int[] iArr) {
        int iIntValue = cellRenderer.getPropertyAsInteger(16).intValue();
        int iIntValue2 = cellRenderer.getPropertyAsInteger(60).intValue();
        int col = ((Cell) cellRenderer.getModelElement()).getCol();
        Border[] borders = cellRenderer.getBorders();
        int i3 = i + 1;
        if (i3 - iIntValue2 < 0) {
            iIntValue2 = i3;
        }
        for (int i4 = 0; i4 < iIntValue; i4++) {
            checkAndReplaceBorderInArray(this.horizontalBorders, (i3 - iIntValue2) * 2, col + i4, borders[0], false);
        }
        for (int i5 = 0; i5 < iIntValue; i5++) {
            checkAndReplaceBorderInArray(this.horizontalBorders, (i * 2) + 1, col + i5, borders[2], true);
        }
        int i6 = (i - iIntValue2) + 1;
        for (int i7 = i6; i7 <= i; i7++) {
            checkAndReplaceBorderInArray(this.verticalBorders, col * 2, i7, borders[3], false);
        }
        while (i6 <= i) {
            checkAndReplaceBorderInArray(this.verticalBorders, ((col + iIntValue) * 2) - 1, i6, borders[1], true);
            i6++;
        }
    }

    protected boolean checkAndReplaceBorderInArray(List<List<Border>> list, int i, int i2, Border border, boolean z) {
        List<Border> list2 = list.get(i);
        if (list2.get(i2) == null) {
            list2.set(i2, border);
            return true;
        }
        LoggerFactory.getLogger((Class<?>) TableRenderer.class).warn(IoLogMessageConstant.UNEXPECTED_BEHAVIOUR_DURING_TABLE_ROW_COLLAPSING);
        return true;
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    protected TableBorders initializeBorders() {
        while (Math.max(this.numberOfColumns, 1) * 2 > this.verticalBorders.size()) {
            ArrayList arrayList = new ArrayList();
            while (Math.max(this.rows.size(), 1) * 2 > arrayList.size()) {
                arrayList.add(null);
            }
            this.verticalBorders.add(arrayList);
        }
        while (Math.max(this.rows.size(), 1) * 2 > this.horizontalBorders.size()) {
            ArrayList arrayList2 = new ArrayList();
            while (this.numberOfColumns > arrayList2.size()) {
                arrayList2.add(null);
            }
            this.horizontalBorders.add(arrayList2);
        }
        return this;
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    public List<Border> getFirstHorizontalBorder() {
        return getHorizontalBorder(this.startRow * 2);
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    public List<Border> getLastHorizontalBorder() {
        return getHorizontalBorder((this.finishRow * 2) + 1);
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    public float getMaxTopWidth() {
        if (this.tableBoundingBorders[0] == null) {
            return 0.0f;
        }
        return this.tableBoundingBorders[0].getWidth();
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    public float getMaxBottomWidth() {
        if (this.tableBoundingBorders[2] == null) {
            return 0.0f;
        }
        return this.tableBoundingBorders[2].getWidth();
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    public float getMaxRightWidth() {
        if (this.tableBoundingBorders[1] == null) {
            return 0.0f;
        }
        return this.tableBoundingBorders[1].getWidth();
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    public float getMaxLeftWidth() {
        if (this.tableBoundingBorders[3] == null) {
            return 0.0f;
        }
        return this.tableBoundingBorders[3].getWidth();
    }
}
