package com.itextpdf.layout.renderer;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.layout.borders.Border;
import com.itextpdf.layout.element.Cell;
import com.itextpdf.layout.element.Table;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
class CollapsedTableBorders extends TableBorders {
    private static Comparator<Border> borderComparator = new BorderComparator();
    private List<Border> bottomBorderCollapseWith;
    private List<Border> topBorderCollapseWith;
    private List<Border> verticalBottomBorderCollapseWith;

    public CollapsedTableBorders(List<CellRenderer[]> list, int i, Border[] borderArr) {
        super(list, i, borderArr);
        this.topBorderCollapseWith = new ArrayList();
        this.bottomBorderCollapseWith = new ArrayList();
        this.verticalBottomBorderCollapseWith = null;
    }

    public CollapsedTableBorders(List<CellRenderer[]> list, int i, Border[] borderArr, int i2) {
        super(list, i, borderArr, i2);
        this.topBorderCollapseWith = new ArrayList();
        this.bottomBorderCollapseWith = new ArrayList();
        this.verticalBottomBorderCollapseWith = null;
    }

    public List<Border> getTopBorderCollapseWith() {
        return this.topBorderCollapseWith;
    }

    public List<Border> getBottomBorderCollapseWith() {
        return this.bottomBorderCollapseWith;
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    public float[] getCellBorderIndents(int i, int i2, int i3, int i4) {
        int i5;
        float[] fArr = new float[4];
        List<Border> horizontalBorder = getHorizontalBorder(((this.startRow + i) - i3) + 1);
        int i6 = i2;
        while (true) {
            i5 = i2 + i4;
            if (i6 >= i5) {
                break;
            }
            Border border = horizontalBorder.get(i6);
            if (border != null && border.getWidth() > fArr[0]) {
                fArr[0] = border.getWidth();
            }
            i6++;
        }
        List<Border> verticalBorder = getVerticalBorder(i5);
        for (int i7 = (((this.startRow - this.largeTableIndexOffset) + i) - i3) + 1; i7 < (this.startRow - this.largeTableIndexOffset) + i + 1; i7++) {
            Border border2 = verticalBorder.get(i7);
            if (border2 != null && border2.getWidth() > fArr[1]) {
                fArr[1] = border2.getWidth();
            }
        }
        List<Border> horizontalBorder2 = getHorizontalBorder(this.startRow + i + 1);
        for (int i8 = i2; i8 < i5; i8++) {
            Border border3 = horizontalBorder2.get(i8);
            if (border3 != null && border3.getWidth() > fArr[2]) {
                fArr[2] = border3.getWidth();
            }
        }
        List<Border> verticalBorder2 = getVerticalBorder(i2);
        for (int i9 = (((this.startRow - this.largeTableIndexOffset) + i) - i3) + 1; i9 < (this.startRow - this.largeTableIndexOffset) + i + 1; i9++) {
            Border border4 = verticalBorder2.get(i9);
            if (border4 != null && border4.getWidth() > fArr[3]) {
                fArr[3] = border4.getWidth();
            }
        }
        return fArr;
    }

    public List<Border> getVerticalBordersCrossingTopHorizontalBorder() {
        ArrayList arrayList = new ArrayList(this.numberOfColumns + 1);
        for (int i = 0; i <= this.numberOfColumns; i++) {
            List<Border> verticalBorder = getVerticalBorder(i);
            arrayList.add(this.startRow - this.largeTableIndexOffset < verticalBorder.size() ? verticalBorder.get(this.startRow - this.largeTableIndexOffset) : null);
        }
        return arrayList;
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    public List<Border> getVerticalBorder(int i) {
        if (i == 0) {
            return getCollapsedList(this.verticalBorders.get(0), TableBorderUtil.createAndFillBorderList(null, this.tableBoundingBorders[3], this.verticalBorders.get(0).size()));
        }
        if (i == this.numberOfColumns) {
            return getCollapsedList(this.verticalBorders.get(this.verticalBorders.size() - 1), TableBorderUtil.createAndFillBorderList(null, this.tableBoundingBorders[1], this.verticalBorders.get(this.verticalBorders.size() - 1).size()));
        }
        return this.verticalBorders.get(i);
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    public List<Border> getHorizontalBorder(int i) {
        int i2 = 0;
        if (i == this.startRow) {
            List<Border> listCreateAndFillBorderList = TableBorderUtil.createAndFillBorderList(this.topBorderCollapseWith, this.tableBoundingBorders[0], this.numberOfColumns);
            if (i == this.largeTableIndexOffset) {
                return getCollapsedList(this.horizontalBorders.get(i - this.largeTableIndexOffset), listCreateAndFillBorderList);
            }
            if (this.rows.size() != 0) {
                loop0: while (true) {
                    int i3 = i;
                    while (i2 < this.numberOfColumns) {
                        if (this.rows.get(i3 - this.largeTableIndexOffset)[i2] != null && (i3 - i) + 1 <= ((Cell) this.rows.get(i3 - this.largeTableIndexOffset)[i2].getModelElement()).getRowspan()) {
                            CellRenderer cellRenderer = this.rows.get(i3 - this.largeTableIndexOffset)[i2];
                            Border cellSideBorder = TableBorderUtil.getCellSideBorder((Cell) cellRenderer.getModelElement(), 13);
                            int iIntValue = cellRenderer.getPropertyAsInteger(16).intValue();
                            if (listCreateAndFillBorderList.get(i2) == null || (cellSideBorder != null && cellSideBorder.getWidth() > listCreateAndFillBorderList.get(i2).getWidth())) {
                                for (int i4 = i2; i4 < i2 + iIntValue; i4++) {
                                    listCreateAndFillBorderList.set(i4, cellSideBorder);
                                }
                            }
                            i2 += iIntValue;
                        } else {
                            i3++;
                            if (i3 == this.rows.size()) {
                                break loop0;
                            }
                        }
                    }
                    break loop0;
                }
            }
            return listCreateAndFillBorderList;
        }
        if (i == this.finishRow + 1) {
            List<Border> listCreateAndFillBorderList2 = TableBorderUtil.createAndFillBorderList(this.bottomBorderCollapseWith, this.tableBoundingBorders[2], this.numberOfColumns);
            if (i - this.largeTableIndexOffset == this.horizontalBorders.size() - 1) {
                return getCollapsedList(this.horizontalBorders.get(i - this.largeTableIndexOffset), listCreateAndFillBorderList2);
            }
            if (this.rows.size() != 0) {
                int i5 = i - 1;
                loop3: while (true) {
                    int i6 = i5;
                    while (i2 < this.numberOfColumns) {
                        if (this.rows.get(i6 - this.largeTableIndexOffset)[i2] != null) {
                            CellRenderer cellRenderer2 = this.rows.get(i6 - this.largeTableIndexOffset)[i2];
                            Border cellSideBorder2 = TableBorderUtil.getCellSideBorder((Cell) cellRenderer2.getModelElement(), 10);
                            int iIntValue2 = cellRenderer2.getPropertyAsInteger(16).intValue();
                            if (listCreateAndFillBorderList2.get(i2) == null || (cellSideBorder2 != null && cellSideBorder2.getWidth() > listCreateAndFillBorderList2.get(i2).getWidth())) {
                                for (int i7 = i2; i7 < i2 + iIntValue2; i7++) {
                                    listCreateAndFillBorderList2.set(i7, cellSideBorder2);
                                }
                            }
                            i2 += iIntValue2;
                        } else {
                            i6++;
                            if (i6 == this.rows.size()) {
                                break loop3;
                            }
                        }
                    }
                    break loop3;
                }
            }
            return listCreateAndFillBorderList2;
        }
        return this.horizontalBorders.get(i - this.largeTableIndexOffset);
    }

    public CollapsedTableBorders setTopBorderCollapseWith(List<Border> list) {
        ArrayList arrayList = new ArrayList();
        this.topBorderCollapseWith = arrayList;
        if (list != null) {
            arrayList.addAll(list);
        }
        return this;
    }

    public CollapsedTableBorders setBottomBorderCollapseWith(List<Border> list, List<Border> list2) {
        ArrayList arrayList = new ArrayList();
        this.bottomBorderCollapseWith = arrayList;
        if (list != null) {
            arrayList.addAll(list);
        }
        this.verticalBottomBorderCollapseWith = null;
        if (list2 != null) {
            this.verticalBottomBorderCollapseWith = new ArrayList(list2);
        }
        return this;
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    protected void buildBordersArrays(CellRenderer cellRenderer, int i, int i2, int[] iArr) {
        int i3;
        if (i > this.horizontalBorders.size()) {
            i--;
        }
        int iIntValue = cellRenderer.getPropertyAsInteger(16).intValue();
        if (i2 != 0 && this.rows.get(i)[i2 - 1] == null) {
            int i4 = i2;
            while (true) {
                i4--;
                i3 = i;
                while (this.rows.size() != i3 && this.rows.get(i3)[i4] == null) {
                    i3++;
                }
                if (i4 <= 0 || this.rows.size() == i3 || (this.rows.get(i3)[i4].getPropertyAsInteger(16).intValue() + i4 == i2 && (i3 - this.rows.get(i3)[i4].getPropertyAsInteger(60).intValue()) + 1 + iArr[i4] == i)) {
                    break;
                }
            }
            if (i4 >= 0 && i3 != this.rows.size() && i3 > i) {
                CellRenderer cellRenderer2 = this.rows.get(i3)[i4];
                cellRenderer2.setProperty(60, Integer.valueOf(cellRenderer2.getPropertyAsInteger(60).intValue() - iArr[i4]));
                int iIntValue2 = cellRenderer2.getPropertyAsInteger(16).intValue();
                for (int i5 = i4; i5 < i4 + iIntValue2; i5++) {
                    iArr[i5] = 0;
                }
                buildBordersArrays(cellRenderer2, i3, true);
            }
        }
        int iIntValue3 = 0;
        while (iIntValue3 < iIntValue) {
            int i6 = i + 1;
            while (i6 < this.rows.size() && this.rows.get(i6)[i2 + iIntValue3] == null) {
                i6++;
            }
            if (i6 == this.rows.size()) {
                break;
            }
            CellRenderer cellRenderer3 = this.rows.get(i6)[i2 + iIntValue3];
            if (i == i6 - cellRenderer3.getPropertyAsInteger(60).intValue()) {
                buildBordersArrays(cellRenderer3, i6, true);
            }
            iIntValue3 += cellRenderer3.getPropertyAsInteger(16).intValue();
        }
        int i7 = i2 + iIntValue;
        if (i7 < this.rows.get(i).length) {
            int i8 = i;
            while (i8 < this.rows.size() && this.rows.get(i8)[i7] == null) {
                i8++;
            }
            if (i8 != this.rows.size()) {
                CellRenderer cellRenderer4 = this.rows.get(i8)[i7];
                cellRenderer4.setProperty(60, Integer.valueOf(cellRenderer4.getPropertyAsInteger(60).intValue() - iArr[i7]));
                int iIntValue4 = cellRenderer4.getPropertyAsInteger(16).intValue();
                for (int i9 = i7; i9 < i7 + iIntValue4; i9++) {
                    iArr[i9] = 0;
                }
                buildBordersArrays(cellRenderer4, i8, true);
            }
        }
        buildBordersArrays(cellRenderer, i, false);
    }

    protected void buildBordersArrays(CellRenderer cellRenderer, int i, boolean z) {
        int iIntValue = cellRenderer.getPropertyAsInteger(16).intValue();
        int iIntValue2 = cellRenderer.getPropertyAsInteger(60).intValue();
        int col = ((Cell) cellRenderer.getModelElement()).getCol();
        Border[] borders = cellRenderer.getBorders();
        int i2 = i + 1;
        int i3 = i2 - iIntValue2 < 0 ? i2 : iIntValue2;
        for (int i4 = 0; i4 < iIntValue; i4++) {
            checkAndReplaceBorderInArray(this.horizontalBorders, i2 - i3, col + i4, borders[0], false);
        }
        for (int i5 = 0; i5 < iIntValue; i5++) {
            checkAndReplaceBorderInArray(this.horizontalBorders, i2, col + i5, borders[2], true);
        }
        int i6 = (i - i3) + 1;
        for (int i7 = i6; i7 <= i; i7++) {
            checkAndReplaceBorderInArray(this.verticalBorders, col, i7, borders[3], false);
        }
        while (i6 <= i) {
            checkAndReplaceBorderInArray(this.verticalBorders, col + iIntValue, i6, borders[1], true);
            i6++;
        }
    }

    protected boolean checkAndReplaceBorderInArray(List<List<Border>> list, int i, int i2, Border border, boolean z) {
        List<Border> list2 = list.get(i);
        Border border2 = list2.get(i2);
        if (border2 == null) {
            list2.set(i2, border);
            return true;
        }
        if (border2 == border || border == null || border2.getWidth() > border.getWidth()) {
            return false;
        }
        if (!z && border2.getWidth() == border.getWidth()) {
            return false;
        }
        list2.set(i2, border);
        return true;
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    protected TableBorders drawHorizontalBorder(PdfCanvas pdfCanvas, TableBorderDescriptor tableBorderDescriptor) {
        int i;
        int borderIndex = tableBorderDescriptor.getBorderIndex();
        float mainCoordinateStart = tableBorderDescriptor.getMainCoordinateStart();
        float crossCoordinate = tableBorderDescriptor.getCrossCoordinate();
        float[] mainCoordinateWidths = tableBorderDescriptor.getMainCoordinateWidths();
        List<Border> horizontalBorder = getHorizontalBorder(this.startRow + borderIndex);
        int i2 = 1;
        float f = mainCoordinateWidths[0] + mainCoordinateStart;
        int i3 = 1;
        while (i3 <= horizontalBorder.size()) {
            int i4 = i3 - 1;
            Border border = horizontalBorder.get(i4);
            Border border2 = i3 < horizontalBorder.size() ? horizontalBorder.get(i3) : null;
            if (border != null) {
                List<Border> crossingBorders = getCrossingBorders(borderIndex, i4);
                Border[] borderArr = new Border[2];
                borderArr[0] = crossingBorders.get(i2);
                borderArr[i2] = crossingBorders.get(3);
                float widestBorderWidth = getWidestBorderWidth(borderArr);
                List<Border> crossingBorders2 = getCrossingBorders(borderIndex, i3);
                Border[] borderArr2 = new Border[2];
                borderArr2[0] = crossingBorders2.get(i2);
                borderArr2[i2] = crossingBorders2.get(3);
                float widestBorderWidth2 = getWidestBorderWidth(borderArr2);
                if (i2 == i3) {
                    crossingBorders.add(0, border);
                }
                if (borderIndex == 0) {
                    if (i2 != i3) {
                        crossingBorders.add(0, crossingBorders.get(3));
                    }
                    crossingBorders2.add(0, crossingBorders2.get(3));
                }
                Collections.sort(crossingBorders, borderComparator);
                Collections.sort(crossingBorders2, borderComparator);
                float f2 = border.equals(crossingBorders.get(0)) ? (-widestBorderWidth) / 2.0f : widestBorderWidth / 2.0f;
                if (!border.equals(crossingBorders2.get(0))) {
                    widestBorderWidth2 = -widestBorderWidth2;
                }
                border.drawCellBorder(pdfCanvas, mainCoordinateStart + f2, crossCoordinate, f + (widestBorderWidth2 / 2.0f), crossCoordinate, Border.Side.NONE);
                i = i3;
                mainCoordinateStart = f;
            } else {
                i = i3;
                mainCoordinateStart += mainCoordinateWidths[i4];
            }
            f = (border2 == null || i == horizontalBorder.size()) ? mainCoordinateStart : mainCoordinateWidths[i] + mainCoordinateStart;
            i3 = i + 1;
            i2 = 1;
        }
        return this;
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    protected TableBorders drawVerticalBorder(PdfCanvas pdfCanvas, TableBorderDescriptor tableBorderDescriptor) {
        int i;
        int i2;
        Border border;
        int borderIndex = tableBorderDescriptor.getBorderIndex();
        float mainCoordinateStart = tableBorderDescriptor.getMainCoordinateStart();
        float crossCoordinate = tableBorderDescriptor.getCrossCoordinate();
        float[] mainCoordinateWidths = tableBorderDescriptor.getMainCoordinateWidths();
        List<Border> verticalBorder = getVerticalBorder(borderIndex);
        int i3 = 1;
        float f = mainCoordinateWidths.length != 0 ? mainCoordinateStart - mainCoordinateWidths[0] : mainCoordinateStart;
        int i4 = 1;
        Float fValueOf = null;
        while (i4 <= mainCoordinateWidths.length) {
            Border border2 = verticalBorder.get(((this.startRow - this.largeTableIndexOffset) + i4) - i3);
            Border border3 = i4 < mainCoordinateWidths.length ? verticalBorder.get((this.startRow - this.largeTableIndexOffset) + i4) : null;
            if (border2 != null) {
                List<Border> crossingBorders = getCrossingBorders(i4 - 1, borderIndex);
                Border[] borderArr = new Border[2];
                borderArr[0] = crossingBorders.get(0);
                borderArr[i3] = crossingBorders.get(2);
                float widestBorderWidth = getWidestBorderWidth(borderArr);
                if (i3 == i4) {
                    crossingBorders.add(0, border2);
                }
                Collections.sort(crossingBorders, borderComparator);
                List<Border> crossingBorders2 = getCrossingBorders(i4, borderIndex);
                i2 = 1;
                float widestBorderWidth2 = getWidestBorderWidth(crossingBorders2.get(0), crossingBorders2.get(2));
                Collections.sort(crossingBorders2, borderComparator);
                if (border2.equals(border3)) {
                    border = border3;
                    i = i4;
                    if (fValueOf == null) {
                        fValueOf = Float.valueOf(border2.equals(crossingBorders.get(0)) ? widestBorderWidth / 2.0f : (-widestBorderWidth) / 2.0f);
                    }
                } else {
                    if (fValueOf == null) {
                        fValueOf = Float.valueOf(border2.equals(crossingBorders.get(0)) ? widestBorderWidth / 2.0f : (-widestBorderWidth) / 2.0f);
                    }
                    border = border3;
                    i = i4;
                    border2.drawCellBorder(pdfCanvas, crossCoordinate, mainCoordinateStart + fValueOf.floatValue(), crossCoordinate, f + (border2.equals(crossingBorders2.get(0)) ? (-widestBorderWidth2) / 2.0f : widestBorderWidth2 / 2.0f), Border.Side.NONE);
                    mainCoordinateStart = f;
                    fValueOf = null;
                }
            } else {
                i = i4;
                i2 = i3;
                border = border3;
                f = mainCoordinateStart - mainCoordinateWidths[i - 1];
                mainCoordinateStart = f;
            }
            if (border != null) {
                f -= mainCoordinateWidths[i];
            }
            i4 = i + 1;
            i3 = i2;
        }
        return this;
    }

    public static Border getCollapsedBorder(Border border, Border border2) {
        return (border2 == null || (border != null && border.getWidth() >= border2.getWidth())) ? border != null ? border : Border.NO_BORDER : border2;
    }

    public static List<Border> getCollapsedList(List<Border> list, List<Border> list2) {
        int iMin = Math.min(list == null ? 0 : list.size(), list2 == null ? 0 : list2.size());
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < iMin; i++) {
            arrayList.add(getCollapsedBorder(list.get(i), list2.get(i)));
        }
        return arrayList;
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    protected TableBorders applyLeftAndRightTableBorder(Rectangle rectangle, boolean z) {
        if (rectangle != null) {
            rectangle.applyMargins(0.0f, this.rightBorderMaxWidth / 2.0f, 0.0f, this.leftBorderMaxWidth / 2.0f, z);
        }
        return this;
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    protected TableBorders applyTopTableBorder(Rectangle rectangle, Rectangle rectangle2, boolean z, boolean z2, boolean z3) {
        if (!z) {
            return applyTopTableBorder(rectangle, rectangle2, z3);
        }
        if (!z2) {
            return this;
        }
        applyTopTableBorder(rectangle, rectangle2, z3);
        return applyTopTableBorder(rectangle, rectangle2, z3);
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    protected TableBorders applyBottomTableBorder(Rectangle rectangle, Rectangle rectangle2, boolean z, boolean z2, boolean z3) {
        if (!z) {
            return applyBottomTableBorder(rectangle, rectangle2, z3);
        }
        if (!z2) {
            return this;
        }
        applyBottomTableBorder(rectangle, rectangle2, z3);
        return applyBottomTableBorder(rectangle, rectangle2, z3);
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    protected TableBorders applyTopTableBorder(Rectangle rectangle, Rectangle rectangle2, boolean z) {
        float maxTopWidth = ((z ? -1 : 1) * getMaxTopWidth()) / 2.0f;
        rectangle2.decreaseHeight(maxTopWidth);
        rectangle.moveDown(maxTopWidth).increaseHeight(maxTopWidth);
        return this;
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    protected TableBorders applyBottomTableBorder(Rectangle rectangle, Rectangle rectangle2, boolean z) {
        float maxBottomWidth = ((z ? -1 : 1) * getMaxBottomWidth()) / 2.0f;
        rectangle2.decreaseHeight(maxBottomWidth);
        rectangle.moveDown(maxBottomWidth).increaseHeight(maxBottomWidth);
        return this;
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    protected TableBorders applyCellIndents(Rectangle rectangle, float f, float f2, float f3, float f4, boolean z) {
        rectangle.applyMargins(f / 2.0f, f2 / 2.0f, f3 / 2.0f, f4 / 2.0f, false);
        return this;
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    protected float getCellVerticalAddition(float[] fArr) {
        return (fArr[0] / 2.0f) + (fArr[2] / 2.0f);
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    protected TableBorders updateBordersOnNewPage(boolean z, boolean z2, TableRenderer tableRenderer, TableRenderer tableRenderer2, TableRenderer tableRenderer3) {
        if (!z2) {
            if (z) {
                if (this.rows != null) {
                    processAllBordersAndEmptyRows();
                    this.rightBorderMaxWidth = getMaxRightWidth();
                    this.leftBorderMaxWidth = getMaxLeftWidth();
                }
                setTopBorderCollapseWith(((Table) tableRenderer.getModelElement()).getLastRowBottomBorder());
            } else {
                setTopBorderCollapseWith(null);
                setBottomBorderCollapseWith(null, null);
            }
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
    protected TableBorders skipFooter(Border[] borderArr) {
        setTableBoundingBorders(borderArr);
        setBottomBorderCollapseWith(null, null);
        return this;
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    protected TableBorders skipHeader(Border[] borderArr) {
        setTableBoundingBorders(borderArr);
        setTopBorderCollapseWith(null);
        return this;
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    protected TableBorders collapseTableWithFooter(TableBorders tableBorders, boolean z) {
        CollapsedTableBorders collapsedTableBorders = (CollapsedTableBorders) tableBorders;
        collapsedTableBorders.setTopBorderCollapseWith(z ? getLastHorizontalBorder() : getTopBorderCollapseWith());
        setBottomBorderCollapseWith(tableBorders.getHorizontalBorder(0), collapsedTableBorders.getVerticalBordersCrossingTopHorizontalBorder());
        return this;
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    protected TableBorders collapseTableWithHeader(TableBorders tableBorders, boolean z) {
        ((CollapsedTableBorders) tableBorders).setBottomBorderCollapseWith(getHorizontalBorder(this.startRow), getVerticalBordersCrossingTopHorizontalBorder());
        if (z) {
            setTopBorderCollapseWith(tableBorders.getLastHorizontalBorder());
        }
        return this;
    }

    @Override // com.itextpdf.layout.renderer.TableBorders
    protected TableBorders fixHeaderOccupiedArea(Rectangle rectangle, Rectangle rectangle2) {
        float maxTopWidth = getMaxTopWidth();
        rectangle2.increaseHeight(maxTopWidth);
        rectangle.moveUp(maxTopWidth).decreaseHeight(maxTopWidth);
        return this;
    }

    List<Border> getCrossingBorders(int i, int i2) {
        List<Border> list;
        List<Border> horizontalBorder = getHorizontalBorder(this.startRow + i);
        List<Border> verticalBorder = getVerticalBorder(i2);
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(i2 > 0 ? horizontalBorder.get(i2 - 1) : null);
        arrayList.add(i > 0 ? verticalBorder.get(((this.startRow - this.largeTableIndexOffset) + i) - 1) : null);
        arrayList.add(i2 < this.numberOfColumns ? horizontalBorder.get(i2) : null);
        arrayList.add(i <= this.finishRow - this.startRow ? verticalBorder.get((this.startRow - this.largeTableIndexOffset) + i) : null);
        if (i == (this.finishRow - this.startRow) + 1 && (list = this.verticalBottomBorderCollapseWith) != null && isBorderWider(list.get(i2), (Border) arrayList.get(3))) {
            arrayList.set(3, this.verticalBottomBorderCollapseWith.get(i2));
        }
        return arrayList;
    }

    private static class BorderComparator implements Comparator<Border> {
        private BorderComparator() {
        }

        @Override // java.util.Comparator
        public int compare(Border border, Border border2) {
            if (border == border2) {
                return 0;
            }
            if (border == null) {
                return 1;
            }
            if (border2 == null) {
                return -1;
            }
            return Float.compare(border2.getWidth(), border.getWidth());
        }
    }

    private float getWidestBorderWidth(Border... borderArr) {
        float width = 0.0f;
        for (Border border : borderArr) {
            if (border != null && width < border.getWidth()) {
                width = border.getWidth();
            }
        }
        return width;
    }

    private static boolean isBorderWider(Border border, Border border2) {
        return isBorderWider(border, border2, true);
    }

    private static boolean isBorderWider(Border border, Border border2, boolean z) {
        if (border == null) {
            return false;
        }
        if (border2 == null) {
            return true;
        }
        int iCompare = Float.compare(border.getWidth(), border2.getWidth());
        if (z) {
            if (iCompare <= 0) {
                return false;
            }
        } else if (iCompare < 0) {
            return false;
        }
        return true;
    }
}
