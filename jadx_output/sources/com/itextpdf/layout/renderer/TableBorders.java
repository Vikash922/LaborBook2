package com.itextpdf.layout.renderer;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.layout.borders.Border;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import java.util.ArrayList;
import java.util.List;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
abstract class TableBorders {
    protected int finishRow;
    protected List<List<Border>> horizontalBorders;
    protected int largeTableIndexOffset;
    protected float leftBorderMaxWidth;
    protected final int numberOfColumns;
    protected float rightBorderMaxWidth;
    protected List<CellRenderer[]> rows;
    protected int startRow;
    protected Border[] tableBoundingBorders;
    protected List<List<Border>> verticalBorders;

    protected abstract TableBorders applyBottomTableBorder(Rectangle rectangle, Rectangle rectangle2, boolean z);

    protected abstract TableBorders applyBottomTableBorder(Rectangle rectangle, Rectangle rectangle2, boolean z, boolean z2, boolean z3);

    protected abstract TableBorders applyCellIndents(Rectangle rectangle, float f, float f2, float f3, float f4, boolean z);

    protected abstract TableBorders applyLeftAndRightTableBorder(Rectangle rectangle, boolean z);

    protected abstract TableBorders applyTopTableBorder(Rectangle rectangle, Rectangle rectangle2, boolean z);

    protected abstract TableBorders applyTopTableBorder(Rectangle rectangle, Rectangle rectangle2, boolean z, boolean z2, boolean z3);

    protected abstract void buildBordersArrays(CellRenderer cellRenderer, int i, int i2, int[] iArr);

    protected abstract TableBorders collapseTableWithFooter(TableBorders tableBorders, boolean z);

    protected abstract TableBorders collapseTableWithHeader(TableBorders tableBorders, boolean z);

    protected abstract TableBorders drawHorizontalBorder(PdfCanvas pdfCanvas, TableBorderDescriptor tableBorderDescriptor);

    protected abstract TableBorders drawVerticalBorder(PdfCanvas pdfCanvas, TableBorderDescriptor tableBorderDescriptor);

    protected abstract TableBorders fixHeaderOccupiedArea(Rectangle rectangle, Rectangle rectangle2);

    protected abstract float getCellVerticalAddition(float[] fArr);

    public abstract List<Border> getHorizontalBorder(int i);

    public abstract List<Border> getVerticalBorder(int i);

    protected abstract TableBorders skipFooter(Border[] borderArr);

    protected abstract TableBorders skipHeader(Border[] borderArr);

    protected abstract TableBorders updateBordersOnNewPage(boolean z, boolean z2, TableRenderer tableRenderer, TableRenderer tableRenderer2, TableRenderer tableRenderer3);

    public TableBorders(List<CellRenderer[]> list, int i, Border[] borderArr) {
        this.horizontalBorders = new ArrayList();
        this.verticalBorders = new ArrayList();
        this.tableBoundingBorders = new Border[4];
        this.largeTableIndexOffset = 0;
        this.rows = list;
        this.numberOfColumns = i;
        setTableBoundingBorders(borderArr);
    }

    public TableBorders(List<CellRenderer[]> list, int i, Border[] borderArr, int i2) {
        this(list, i, borderArr);
        this.largeTableIndexOffset = i2;
    }

    protected TableBorders processAllBordersAndEmptyRows() {
        int[] iArr = new int[this.numberOfColumns];
        if (!this.rows.isEmpty()) {
            int i = this.startRow - this.largeTableIndexOffset;
            int i2 = 0;
            while (i <= this.finishRow - this.largeTableIndexOffset) {
                CellRenderer[] cellRendererArr = this.rows.get(i);
                int i3 = 0;
                boolean z = false;
                while (i3 < this.numberOfColumns) {
                    CellRenderer cellRenderer = cellRendererArr[i3];
                    if (cellRenderer != null) {
                        int iIntValue = cellRenderer.getPropertyAsInteger(16).intValue();
                        if (iArr[i3] > 0) {
                            int iIntValue2 = cellRendererArr[i3].getPropertyAsInteger(60).intValue() - iArr[i3];
                            if (iIntValue2 < 1) {
                                LoggerFactory.getLogger((Class<?>) TableRenderer.class).warn(IoLogMessageConstant.UNEXPECTED_BEHAVIOUR_DURING_TABLE_ROW_COLLAPSING);
                                iIntValue2 = 1;
                            }
                            cellRendererArr[i3].setProperty(60, Integer.valueOf(iIntValue2));
                            if (i2 != 0) {
                                i -= i2;
                                removeRows(i, i2);
                                i2 = 0;
                            }
                        }
                        buildBordersArrays(cellRendererArr[i3], i, i3, iArr);
                        for (int i4 = 0; i4 < iIntValue; i4++) {
                            iArr[i3 + i4] = 0;
                        }
                        i3 += iIntValue - 1;
                        z = true;
                    } else if (this.horizontalBorders.get(i).size() <= i3) {
                        this.horizontalBorders.get(i).add(null);
                    }
                    i3++;
                }
                if (!z) {
                    if (i == this.rows.size() - 1) {
                        int i5 = iArr[0];
                        removeRows(i - i5, i5);
                        this.rows.remove(i - iArr[0]);
                        setFinishRow(this.finishRow - 1);
                        LoggerFactory.getLogger((Class<?>) TableRenderer.class).warn(IoLogMessageConstant.LAST_ROW_IS_NOT_COMPLETE);
                    } else {
                        for (int i6 = 0; i6 < this.numberOfColumns; i6++) {
                            iArr[i6] = iArr[i6] + 1;
                        }
                        i2++;
                    }
                }
                i++;
            }
        }
        int i7 = this.finishRow;
        int i8 = this.startRow;
        if (i7 < i8) {
            setFinishRow(i8);
        }
        return this;
    }

    private void removeRows(int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            this.rows.remove(i);
            int i4 = i + 1;
            this.horizontalBorders.remove(i4);
            for (int i5 = 0; i5 <= this.numberOfColumns; i5++) {
                this.verticalBorders.get(i5).remove(i4);
            }
        }
        setFinishRow(this.finishRow - i2);
    }

    protected TableBorders initializeBorders() {
        while (this.numberOfColumns + 1 > this.verticalBorders.size()) {
            ArrayList arrayList = new ArrayList();
            while (Math.max(this.rows.size(), 1) > arrayList.size()) {
                arrayList.add(null);
            }
            this.verticalBorders.add(arrayList);
        }
        while (Math.max(this.rows.size(), 1) + 1 > this.horizontalBorders.size()) {
            ArrayList arrayList2 = new ArrayList();
            while (this.numberOfColumns > arrayList2.size()) {
                arrayList2.add(null);
            }
            this.horizontalBorders.add(arrayList2);
        }
        return this;
    }

    protected TableBorders setTableBoundingBorders(Border[] borderArr) {
        this.tableBoundingBorders = new Border[4];
        if (borderArr != null) {
            for (int i = 0; i < borderArr.length; i++) {
                this.tableBoundingBorders[i] = borderArr[i];
            }
        }
        return this;
    }

    protected TableBorders setRowRange(int i, int i2) {
        this.startRow = i;
        this.finishRow = i2;
        return this;
    }

    protected TableBorders setStartRow(int i) {
        this.startRow = i;
        return this;
    }

    protected TableBorders setFinishRow(int i) {
        this.finishRow = i;
        return this;
    }

    public float getLeftBorderMaxWidth() {
        return this.leftBorderMaxWidth;
    }

    public float getRightBorderMaxWidth() {
        return this.rightBorderMaxWidth;
    }

    public float getMaxTopWidth() {
        Border widestHorizontalBorder = getWidestHorizontalBorder(this.startRow);
        if (widestHorizontalBorder == null || widestHorizontalBorder.getWidth() < 0.0f) {
            return 0.0f;
        }
        return widestHorizontalBorder.getWidth();
    }

    public float getMaxBottomWidth() {
        Border widestHorizontalBorder = getWidestHorizontalBorder(this.finishRow + 1);
        if (widestHorizontalBorder == null || widestHorizontalBorder.getWidth() < 0.0f) {
            return 0.0f;
        }
        return widestHorizontalBorder.getWidth();
    }

    public float getMaxRightWidth() {
        Border widestVerticalBorder = getWidestVerticalBorder(this.verticalBorders.size() - 1);
        if (widestVerticalBorder == null || widestVerticalBorder.getWidth() < 0.0f) {
            return 0.0f;
        }
        return widestVerticalBorder.getWidth();
    }

    public float getMaxLeftWidth() {
        Border widestVerticalBorder = getWidestVerticalBorder(0);
        if (widestVerticalBorder == null || widestVerticalBorder.getWidth() < 0.0f) {
            return 0.0f;
        }
        return widestVerticalBorder.getWidth();
    }

    public Border getWidestVerticalBorder(int i) {
        return TableBorderUtil.getWidestBorder(getVerticalBorder(i));
    }

    public Border getWidestVerticalBorder(int i, int i2, int i3) {
        return TableBorderUtil.getWidestBorder(getVerticalBorder(i), i2, i3);
    }

    public Border getWidestHorizontalBorder(int i) {
        return TableBorderUtil.getWidestBorder(getHorizontalBorder(i));
    }

    public Border getWidestHorizontalBorder(int i, int i2, int i3) {
        return TableBorderUtil.getWidestBorder(getHorizontalBorder(i), i2, i3);
    }

    public List<Border> getFirstHorizontalBorder() {
        return getHorizontalBorder(this.startRow);
    }

    public List<Border> getLastHorizontalBorder() {
        return getHorizontalBorder(this.finishRow + 1);
    }

    public List<Border> getFirstVerticalBorder() {
        return getVerticalBorder(0);
    }

    public List<Border> getLastVerticalBorder() {
        return getVerticalBorder(this.verticalBorders.size() - 1);
    }

    public int getNumberOfColumns() {
        return this.numberOfColumns;
    }

    public int getStartRow() {
        return this.startRow;
    }

    public int getFinishRow() {
        return this.finishRow;
    }

    public Border[] getTableBoundingBorders() {
        return this.tableBoundingBorders;
    }

    public float[] getCellBorderIndents(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        float[] fArr = new float[4];
        List<Border> horizontalBorder = getHorizontalBorder(((this.startRow + i) - i3) + 1);
        int i7 = i2;
        while (true) {
            i5 = i2 + i4;
            if (i7 >= i5) {
                break;
            }
            Border border = horizontalBorder.get(i7);
            if (border != null && border.getWidth() > fArr[0]) {
                fArr[0] = border.getWidth();
            }
            i7++;
        }
        List<Border> verticalBorder = getVerticalBorder(i5);
        int i8 = ((this.startRow + i) - i3) + 1;
        while (true) {
            i6 = this.startRow;
            if (i8 >= i6 + i + 1) {
                break;
            }
            Border border2 = verticalBorder.get(i8);
            if (border2 != null && border2.getWidth() > fArr[1]) {
                fArr[1] = border2.getWidth();
            }
            i8++;
        }
        List<Border> horizontalBorder2 = getHorizontalBorder(i6 + i + 1);
        for (int i9 = i2; i9 < i5; i9++) {
            Border border3 = horizontalBorder2.get(i9);
            if (border3 != null && border3.getWidth() > fArr[2]) {
                fArr[2] = border3.getWidth();
            }
        }
        List<Border> verticalBorder2 = getVerticalBorder(i2);
        for (int i10 = ((this.startRow + i) - i3) + 1; i10 < this.startRow + i + 1; i10++) {
            Border border4 = verticalBorder2.get(i10);
            if (border4 != null && border4.getWidth() > fArr[3]) {
                fArr[3] = border4.getWidth();
            }
        }
        return fArr;
    }
}
