package com.itextpdf.layout.renderer;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.layout.borders.Border;
import com.itextpdf.layout.element.Cell;
import com.itextpdf.layout.element.Table;
import com.itextpdf.layout.minmaxwidth.MinMaxWidth;
import com.itextpdf.layout.minmaxwidth.MinMaxWidthUtils;
import com.itextpdf.layout.properties.BorderCollapsePropertyValue;
import com.itextpdf.layout.properties.UnitValue;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import com.itextpdf.p017io.util.ArrayUtil;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
final class TableWidths {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final UnitValue ZeroWidth = UnitValue.createPointValue(0.0f);
    private List<CellInfo> cells;
    private boolean fixedTableLayout = false;
    private boolean fixedTableWidth;
    private final float horizontalBorderSpacing;
    private float layoutMinWidth;
    private final float leftBorderMaxWidth;
    private final int numberOfColumns;
    private final float rightBorderMaxWidth;
    private float tableMaxWidth;
    private float tableMinWidth;
    private final TableRenderer tableRenderer;
    private float tableWidth;
    private final ColumnWidthData[] widths;

    TableWidths(TableRenderer tableRenderer, float f, boolean z, float f2, float f3) {
        this.tableRenderer = tableRenderer;
        int numberOfColumns = ((Table) tableRenderer.getModelElement()).getNumberOfColumns();
        this.numberOfColumns = numberOfColumns;
        this.widths = new ColumnWidthData[numberOfColumns];
        this.rightBorderMaxWidth = f2;
        this.leftBorderMaxWidth = f3;
        if (tableRenderer.bordersHandler instanceof SeparatedTableBorders) {
            Float propertyAsFloat = tableRenderer.getPropertyAsFloat(115);
            this.horizontalBorderSpacing = propertyAsFloat != null ? propertyAsFloat.floatValue() : 0.0f;
        } else {
            this.horizontalBorderSpacing = 0.0f;
        }
        calculateTableWidth(f, z);
    }

    boolean hasFixedLayout() {
        return this.fixedTableLayout;
    }

    float[] layout() {
        if (hasFixedLayout()) {
            return fixedLayout();
        }
        return autoLayout();
    }

    float getMinWidth() {
        return this.layoutMinWidth;
    }

    float[] autoLayout() {
        fillAndSortCells();
        calculateMinMaxWidths();
        float f = 0.0f;
        for (ColumnWidthData columnWidthData : this.widths) {
            f += columnWidthData.min;
        }
        Iterator<CellInfo> it = this.cells.iterator();
        while (it.hasNext()) {
            processCell(it.next());
        }
        processColumns();
        recalculate(f);
        return extractWidths();
    }

    List<CellInfo> autoLayoutCustom() {
        fillAndSortCells();
        calculateMinMaxWidths();
        return this.cells;
    }

    void processCell(CellInfo cellInfo) {
        int i = 0;
        UnitValue cellWidth = getCellWidth(cellInfo.getCell(), false);
        if (cellWidth != null) {
            if (cellWidth.isPercentValue()) {
                if (cellInfo.getColspan() == 1) {
                    this.widths[cellInfo.getCol()].setPercents(cellWidth.getValue());
                    return;
                }
                float f = 0.0f;
                for (int col = cellInfo.getCol(); col < cellInfo.getCol() + cellInfo.getColspan(); col++) {
                    if (this.widths[col].isPercent) {
                        f += this.widths[col].width;
                    } else {
                        i++;
                    }
                }
                float value = cellWidth.getValue() - f;
                if (value > 0.0f) {
                    if (i == 0) {
                        for (int col2 = cellInfo.getCol(); col2 < cellInfo.getCol() + cellInfo.getColspan(); col2++) {
                            this.widths[col2].addPercents(value / cellInfo.getColspan());
                        }
                        return;
                    }
                    for (int col3 = cellInfo.getCol(); col3 < cellInfo.getCol() + cellInfo.getColspan(); col3++) {
                        if (!this.widths[col3].isPercent) {
                            this.widths[col3].setPercents(value / i);
                        }
                    }
                    return;
                }
                return;
            }
            if (cellInfo.getColspan() == 1) {
                if (this.widths[cellInfo.getCol()].isPercent) {
                    return;
                }
                if (this.widths[cellInfo.getCol()].min <= cellWidth.getValue()) {
                    this.widths[cellInfo.getCol()].setPoints(cellWidth.getValue()).setFixed(true);
                    return;
                } else {
                    this.widths[cellInfo.getCol()].setPoints(this.widths[cellInfo.getCol()].min);
                    return;
                }
            }
            processCellsRemainWidth(cellInfo, cellWidth);
            return;
        }
        if (this.widths[cellInfo.getCol()].isFlexible()) {
            float f2 = 0.0f;
            for (int col4 = cellInfo.getCol(); col4 < cellInfo.getCol() + cellInfo.getColspan(); col4++) {
                if (this.widths[col4].isFlexible()) {
                    f2 += this.widths[col4].max - this.widths[col4].width;
                    i++;
                }
            }
            if (f2 > 0.0f) {
                for (int col5 = cellInfo.getCol(); col5 < cellInfo.getCol() + cellInfo.getColspan(); col5++) {
                    if (this.widths[col5].isFlexible()) {
                        this.widths[col5].addPoints(f2 / i);
                    }
                }
            }
        }
    }

    void processColumns() {
        for (int i = 0; i < this.numberOfColumns; i++) {
            UnitValue columnWidth = getTable().getColumnWidth(i);
            if (columnWidth != null && columnWidth.getValue() > 0.0f) {
                if (columnWidth.isPercentValue()) {
                    if (!this.widths[i].isPercent) {
                        if (this.widths[i].isFixed && this.widths[i].width > this.widths[i].min) {
                            ColumnWidthData columnWidthData = this.widths[i];
                            columnWidthData.max = columnWidthData.width;
                        }
                        this.widths[i].setPercents(columnWidth.getValue());
                    }
                } else if (!this.widths[i].isPercent && columnWidth.getValue() >= this.widths[i].min) {
                    if (this.widths[i].isFixed) {
                        this.widths[i].setPoints(columnWidth.getValue());
                    } else {
                        this.widths[i].resetPoints(columnWidth.getValue()).setFixed(true);
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00c7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void recalculate(float r14) {
        /*
            Method dump skipped, instruction units count: 766
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.layout.renderer.TableWidths.recalculate(float):void");
    }

    void processCellsRemainWidth(CellInfo cellInfo, UnitValue unitValue) {
        float value = unitValue.getValue();
        int col = cellInfo.getCol();
        int i = 0;
        while (true) {
            if (col >= cellInfo.getCol() + cellInfo.getColspan()) {
                break;
            }
            if (this.widths[col].isPercent) {
                value = 0.0f;
                break;
            }
            value -= this.widths[col].width;
            if (!this.widths[col].isFixed) {
                i++;
            }
            col++;
        }
        if (value > 0.0f) {
            int[] iArrFillWithValue = ArrayUtil.fillWithValue(new int[cellInfo.getColspan()], -1);
            if (i > 0) {
                for (int col2 = cellInfo.getCol(); col2 < cellInfo.getCol() + cellInfo.getColspan(); col2++) {
                    if (this.widths[col2].isFlexible()) {
                        if (this.widths[col2].min > this.widths[col2].width + (value / i)) {
                            ColumnWidthData columnWidthData = this.widths[col2];
                            columnWidthData.resetPoints(columnWidthData.min);
                            value -= this.widths[col2].min - this.widths[col2].width;
                            i--;
                            if (i == 0 || value <= 0.0f) {
                                break;
                            }
                        } else {
                            iArrFillWithValue[col2 - cellInfo.getCol()] = col2;
                        }
                    }
                }
                if (i <= 0 || value <= 0.0f) {
                    return;
                }
                for (int i2 : iArrFillWithValue) {
                    if (i2 >= 0) {
                        this.widths[i2].addPoints(value / i).setFixed(true);
                    }
                }
                return;
            }
            for (int col3 = cellInfo.getCol(); col3 < cellInfo.getCol() + cellInfo.getColspan(); col3++) {
                this.widths[col3].addPoints(value / cellInfo.getColspan());
            }
        }
    }

    float[] fixedLayout() {
        CellRenderer[] cellRendererArr;
        int i;
        float f;
        UnitValue cellWidth;
        float value;
        int i2 = this.numberOfColumns;
        float[] fArr = new float[i2];
        int i3 = 0;
        for (int i4 = 0; i4 < this.numberOfColumns; i4++) {
            UnitValue columnWidth = getTable().getColumnWidth(i4);
            if (columnWidth == null || columnWidth.getValue() < 0.0f) {
                fArr[i4] = -1.0f;
            } else if (columnWidth.isPercentValue()) {
                fArr[i4] = (columnWidth.getValue() * this.tableWidth) / 100.0f;
            } else {
                fArr[i4] = columnWidth.getValue();
            }
        }
        float f2 = this.tableWidth;
        if (this.tableRenderer.headerRenderer != null && this.tableRenderer.headerRenderer.rows.size() > 0) {
            cellRendererArr = this.tableRenderer.headerRenderer.rows.get(0);
        } else {
            cellRendererArr = (this.tableRenderer.rows.size() > 0 && getTable().isComplete() && getTable().getLastRowBottomBorder().size() == 0) ? this.tableRenderer.rows.get(0) : null;
        }
        float[] fArr2 = new float[i2];
        for (int i5 = 0; i5 < i2; i5++) {
            fArr2[i5] = -1.0f;
        }
        if (cellRendererArr != null && getTable().isComplete() && getTable().getLastRowBottomBorder().isEmpty()) {
            int i6 = 0;
            i = 0;
            f = 0.0f;
            while (i6 < this.numberOfColumns) {
                float f3 = fArr[i6];
                if (f3 == -1.0f) {
                    CellRenderer cellRenderer = cellRendererArr[i6];
                    if (cellRenderer == null || (cellWidth = getCellWidth(cellRenderer, true)) == null) {
                        i6++;
                        i3 = 0;
                    } else {
                        if (cellWidth.isPercentValue()) {
                            value = (this.tableWidth * cellWidth.getValue()) / 100.0f;
                            float value2 = cellWidth.getValue();
                            fArr2[i6] = value2;
                            f += value2;
                        } else {
                            value = cellWidth.getValue();
                        }
                        int colspan = ((Cell) cellRenderer.getModelElement()).getColspan();
                        for (int i7 = i3; i7 < colspan; i7++) {
                            fArr[i6 + i7] = value / colspan;
                        }
                        f2 -= fArr[i6];
                    }
                } else {
                    f2 -= f3;
                }
                i++;
                i6++;
                i3 = 0;
            }
        } else {
            i = 0;
            for (int i8 = 0; i8 < this.numberOfColumns; i8++) {
                float f4 = fArr[i8];
                if (f4 != -1.0f) {
                    i++;
                    f2 -= f4;
                }
            }
            f = 0.0f;
        }
        if (f > 100.0f) {
            warn100percent();
        }
        if (f2 > 0.0f) {
            if (this.numberOfColumns == i) {
                for (int i9 = 0; i9 < this.numberOfColumns; i9++) {
                    float f5 = this.tableWidth;
                    fArr[i9] = (fArr[i9] * f5) / (f5 - f2);
                }
            }
        } else if (f2 < 0.0f) {
            for (int i10 = 0; i10 < this.numberOfColumns; i10++) {
                float f6 = fArr[i10];
                float f7 = fArr2[i10];
                fArr[i10] = f6 + (-1.0f != f7 ? (f7 * f2) / f : 0.0f);
            }
        }
        int i11 = 0;
        while (true) {
            if (i11 >= this.numberOfColumns) {
                break;
            }
            if (fArr[i11] == -1.0f) {
                fArr[i11] = Math.max(0.0f, f2 / (r3 - i));
            }
            i11++;
        }
        if (this.tableRenderer.bordersHandler instanceof SeparatedTableBorders) {
            for (int i12 = 0; i12 < this.numberOfColumns; i12++) {
                fArr[i12] = fArr[i12] + this.horizontalBorderSpacing;
            }
        }
        return fArr;
    }

    private void calculateTableWidth(float f, boolean z) {
        this.fixedTableLayout = CommonCssConstants.FIXED.equals(((String) this.tableRenderer.getProperty(93, "auto")).toLowerCase());
        UnitValue width = (UnitValue) this.tableRenderer.getProperty(77);
        if (this.fixedTableLayout && width != null && width.getValue() >= 0.0f) {
            if (getTable().getLastRowBottomBorder().size() != 0) {
                width = getTable().getWidth();
            } else if (!getTable().isComplete() && getTable().getWidth() != null && getTable().getWidth().isPercentValue()) {
                getTable().setWidth(this.tableRenderer.retrieveUnitValue(f, 77).floatValue());
            }
            this.fixedTableWidth = true;
            this.tableWidth = retrieveTableWidth(width, f).floatValue();
            this.layoutMinWidth = width.isPercentValue() ? 0.0f : this.tableWidth;
        } else {
            this.fixedTableLayout = false;
            this.layoutMinWidth = -1.0f;
            if (!z && width != null && width.getValue() >= 0.0f) {
                this.fixedTableWidth = true;
                this.tableWidth = retrieveTableWidth(width, f).floatValue();
            } else {
                this.fixedTableWidth = false;
                this.tableWidth = retrieveTableWidth(f);
            }
        }
        Float fRetrieveTableWidth = retrieveTableWidth((UnitValue) this.tableRenderer.getProperty(80), f);
        Float fRetrieveTableWidth2 = retrieveTableWidth((UnitValue) this.tableRenderer.getProperty(79), f);
        this.tableMinWidth = fRetrieveTableWidth != null ? fRetrieveTableWidth.floatValue() : this.layoutMinWidth;
        float fFloatValue = fRetrieveTableWidth2 != null ? fRetrieveTableWidth2.floatValue() : this.tableWidth;
        this.tableMaxWidth = fFloatValue;
        float f2 = this.tableMinWidth;
        if (f2 > fFloatValue) {
            this.tableMaxWidth = f2;
        }
        if (f2 > this.tableWidth) {
            this.tableWidth = f2;
        }
        float f3 = this.tableMaxWidth;
        if (f3 < this.tableWidth) {
            this.tableWidth = f3;
        }
    }

    private Float retrieveTableWidth(UnitValue unitValue, float f) {
        float value;
        if (unitValue == null) {
            return null;
        }
        if (unitValue.isPercentValue()) {
            value = (unitValue.getValue() * f) / 100.0f;
        } else {
            value = unitValue.getValue();
        }
        return Float.valueOf(retrieveTableWidth(value));
    }

    private float retrieveTableWidth(float f) {
        float f2;
        if (BorderCollapsePropertyValue.SEPARATE.equals(this.tableRenderer.getProperty(114))) {
            f -= this.rightBorderMaxWidth + this.leftBorderMaxWidth;
            f2 = (this.numberOfColumns + 1) * this.horizontalBorderSpacing;
        } else {
            f2 = (this.rightBorderMaxWidth + this.leftBorderMaxWidth) / 2.0f;
        }
        return Math.max(f - f2, 0.0f);
    }

    private Table getTable() {
        return (Table) this.tableRenderer.getModelElement();
    }

    private void calculateMinMaxWidths() {
        int i = this.numberOfColumns;
        float[] fArr = new float[i];
        float[] fArr2 = new float[i];
        for (CellInfo cellInfo : this.cells) {
            cellInfo.setParent(this.tableRenderer);
            MinMaxWidth minMaxWidth = cellInfo.getCell().getMinMaxWidth();
            if (BorderCollapsePropertyValue.SEPARATE.equals(this.tableRenderer.getProperty(114))) {
                minMaxWidth.setAdditionalWidth(minMaxWidth.getAdditionalWidth() - this.horizontalBorderSpacing);
            } else {
                float[] cellBorderIndents = getCellBorderIndents(cellInfo);
                minMaxWidth.setAdditionalWidth(minMaxWidth.getAdditionalWidth() + (cellBorderIndents[1] / 2.0f) + (cellBorderIndents[3] / 2.0f));
            }
            if (cellInfo.getColspan() == 1) {
                fArr[cellInfo.getCol()] = Math.max(minMaxWidth.getMinWidth(), fArr[cellInfo.getCol()]);
                fArr2[cellInfo.getCol()] = Math.max(minMaxWidth.getMaxWidth(), fArr2[cellInfo.getCol()]);
            } else {
                float minWidth = minMaxWidth.getMinWidth();
                float maxWidth = minMaxWidth.getMaxWidth();
                for (int col = cellInfo.getCol(); col < cellInfo.getCol() + cellInfo.getColspan(); col++) {
                    minWidth -= fArr[col];
                    maxWidth -= fArr2[col];
                }
                if (minWidth > 0.0f) {
                    for (int col2 = cellInfo.getCol(); col2 < cellInfo.getCol() + cellInfo.getColspan(); col2++) {
                        fArr[col2] = fArr[col2] + (minWidth / cellInfo.getColspan());
                    }
                }
                if (maxWidth > 0.0f) {
                    for (int col3 = cellInfo.getCol(); col3 < cellInfo.getCol() + cellInfo.getColspan(); col3++) {
                        fArr2[col3] = fArr2[col3] + (maxWidth / cellInfo.getColspan());
                    }
                }
            }
        }
        int i2 = 0;
        while (true) {
            ColumnWidthData[] columnWidthDataArr = this.widths;
            if (i2 >= columnWidthDataArr.length) {
                return;
            }
            columnWidthDataArr[i2] = new ColumnWidthData(fArr[i2], fArr2[i2]);
            i2++;
        }
    }

    private float[] getCellBorderIndents(CellInfo cellInfo) {
        TableRenderer tableRenderer;
        if (cellInfo.region == 1) {
            tableRenderer = this.tableRenderer.headerRenderer;
        } else if (cellInfo.region == 3) {
            tableRenderer = this.tableRenderer.footerRenderer;
        } else {
            tableRenderer = this.tableRenderer;
        }
        return tableRenderer.bordersHandler.getCellBorderIndents(cellInfo.getRow(), cellInfo.getCol(), cellInfo.getRowspan(), cellInfo.getColspan());
    }

    private void fillAndSortCells() {
        this.cells = new ArrayList();
        if (this.tableRenderer.headerRenderer != null) {
            fillRendererCells(this.tableRenderer.headerRenderer, (byte) 1);
        }
        fillRendererCells(this.tableRenderer, (byte) 2);
        if (this.tableRenderer.footerRenderer != null) {
            fillRendererCells(this.tableRenderer.footerRenderer, (byte) 3);
        }
        Collections.sort(this.cells);
    }

    private void fillRendererCells(TableRenderer tableRenderer, byte b) {
        for (int i = 0; i < tableRenderer.rows.size(); i++) {
            for (int i2 = 0; i2 < this.numberOfColumns; i2++) {
                CellRenderer cellRenderer = tableRenderer.rows.get(i)[i2];
                if (cellRenderer != null) {
                    this.cells.add(new CellInfo(cellRenderer, i, i2, b));
                }
            }
        }
    }

    private void warn100percent() {
        LoggerFactory.getLogger((Class<?>) TableWidths.class).warn(IoLogMessageConstant.SUM_OF_TABLE_COLUMNS_IS_GREATER_THAN_100);
    }

    private float[] extractWidths() {
        float f = 0.0f;
        this.layoutMinWidth = 0.0f;
        float[] fArr = new float[this.widths.length];
        int i = 0;
        while (true) {
            ColumnWidthData[] columnWidthDataArr = this.widths;
            if (i >= columnWidthDataArr.length) {
                break;
            }
            fArr[i] = columnWidthDataArr[i].finalWidth + this.horizontalBorderSpacing;
            f += this.widths[i].finalWidth;
            this.layoutMinWidth += this.widths[i].min + this.horizontalBorderSpacing;
            i++;
        }
        if (f > this.tableWidth + (MinMaxWidthUtils.getEps() * this.widths.length)) {
            LoggerFactory.getLogger((Class<?>) TableWidths.class).warn(IoLogMessageConstant.TABLE_WIDTH_IS_MORE_THAN_EXPECTED_DUE_TO_MIN_WIDTH);
        }
        return fArr;
    }

    public String toString() {
        return "width=" + this.tableWidth + (this.fixedTableWidth ? "!!" : "");
    }

    private static class ColumnWidthData {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        float max;
        final float min;
        float width = 0.0f;
        float finalWidth = -1.0f;
        boolean isPercent = false;
        boolean isFixed = false;

        ColumnWidthData(float f, float f2) {
            this.min = f > 0.0f ? f + MinMaxWidthUtils.getEps() : 0.0f;
            this.max = f2 > 0.0f ? Math.min(f2 + MinMaxWidthUtils.getEps(), 32760.0f) : 0.0f;
        }

        ColumnWidthData setPoints(float f) {
            this.width = Math.max(this.width, f);
            return this;
        }

        ColumnWidthData resetPoints(float f) {
            this.width = f;
            this.isPercent = false;
            return this;
        }

        ColumnWidthData addPoints(float f) {
            this.width += f;
            return this;
        }

        ColumnWidthData setPercents(float f) {
            if (this.isPercent) {
                this.width = Math.max(this.width, f);
            } else {
                this.isPercent = true;
                this.width = f;
            }
            this.isFixed = false;
            return this;
        }

        ColumnWidthData addPercents(float f) {
            this.width += f;
            return this;
        }

        ColumnWidthData setFixed(boolean z) {
            this.isFixed = z;
            return this;
        }

        boolean isFlexible() {
            return (this.isFixed || this.isPercent) ? false : true;
        }

        public String toString() {
            return "w=" + this.width + (this.isPercent ? CommonCssConstants.PERCENTAGE : CommonCssConstants.f3303PT) + (this.isFixed ? " !!" : "") + ", min=" + this.min + ", max=" + this.max + ", finalWidth=" + this.finalWidth;
        }
    }

    private UnitValue getCellWidth(CellRenderer cellRenderer, boolean z) {
        float width;
        float width2;
        UnitValue unitValue = new UnitValue((UnitValue) cellRenderer.getProperty(77, UnitValue.createPointValue(-1.0f)));
        if (unitValue.getValue() < -1.0E-4f) {
            return null;
        }
        if (unitValue.getValue() < 1.0E-4f) {
            if (z) {
                return ZeroWidth;
            }
            return null;
        }
        if (unitValue.isPercentValue()) {
            return unitValue;
        }
        UnitValue unitValueResolveMinMaxCollision = resolveMinMaxCollision(cellRenderer, unitValue);
        if (!AbstractRenderer.isBorderBoxSizing(cellRenderer)) {
            Border[] borders = cellRenderer.getBorders();
            if (borders[1] != null) {
                float value = unitValueResolveMinMaxCollision.getValue();
                if (this.tableRenderer.bordersHandler instanceof SeparatedTableBorders) {
                    width2 = borders[1].getWidth();
                } else {
                    width2 = borders[1].getWidth() / 2.0f;
                }
                unitValueResolveMinMaxCollision.setValue(value + width2);
            }
            if (borders[3] != null) {
                float value2 = unitValueResolveMinMaxCollision.getValue();
                if (this.tableRenderer.bordersHandler instanceof SeparatedTableBorders) {
                    width = borders[3].getWidth();
                } else {
                    width = borders[3].getWidth() / 2.0f;
                }
                unitValueResolveMinMaxCollision.setValue(value2 + width);
            }
            UnitValue[] paddings = cellRenderer.getPaddings();
            if (!paddings[1].isPointValue()) {
                LoggerFactory.getLogger((Class<?>) TableWidths.class).error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, 48));
            }
            if (!paddings[3].isPointValue()) {
                LoggerFactory.getLogger((Class<?>) TableWidths.class).error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, 49));
            }
            unitValueResolveMinMaxCollision.setValue(unitValueResolveMinMaxCollision.getValue() + paddings[1].getValue() + paddings[3].getValue());
        }
        return unitValueResolveMinMaxCollision;
    }

    private UnitValue resolveMinMaxCollision(CellRenderer cellRenderer, UnitValue unitValue) {
        UnitValue unitValue2 = (UnitValue) cellRenderer.getProperty(80);
        if (unitValue2 != null && unitValue2.isPointValue() && unitValue2.getValue() > unitValue.getValue()) {
            return unitValue2;
        }
        UnitValue unitValue3 = (UnitValue) cellRenderer.getProperty(79);
        return (unitValue3 == null || !unitValue3.isPointValue() || unitValue3.getValue() >= unitValue.getValue()) ? unitValue : unitValue3;
    }

    static class CellInfo implements Comparable<CellInfo> {
        static final byte BODY = 2;
        static final byte FOOTER = 3;
        static final byte HEADER = 1;
        private final CellRenderer cell;
        private final int col;
        final byte region;
        private final int row;

        CellInfo(CellRenderer cellRenderer, int i, int i2, byte b) {
            this.cell = cellRenderer;
            this.region = b;
            this.row = i;
            this.col = i2;
        }

        CellRenderer getCell() {
            return this.cell;
        }

        int getCol() {
            return this.col;
        }

        int getColspan() {
            return this.cell.getPropertyAsInteger(16).intValue();
        }

        int getRow() {
            return this.row;
        }

        int getRowspan() {
            return this.cell.getPropertyAsInteger(60).intValue();
        }

        @Override // java.lang.Comparable
        public int compareTo(CellInfo cellInfo) {
            int col;
            int colspan;
            if ((getColspan() == 1) ^ (cellInfo.getColspan() == 1)) {
                col = getColspan();
                colspan = cellInfo.getColspan();
            } else if (this.region == cellInfo.region && getRow() == cellInfo.getRow()) {
                col = (getCol() + getColspan()) - cellInfo.getCol();
                colspan = cellInfo.getColspan();
            } else {
                byte b = this.region;
                byte b2 = cellInfo.region;
                return b == b2 ? getRow() - cellInfo.getRow() : b - b2;
            }
            return col - colspan;
        }

        public String toString() {
            String str = MessageFormatUtil.format("row={0}, col={1}, rowspan={2}, colspan={3}, ", Integer.valueOf(getRow()), Integer.valueOf(getCol()), Integer.valueOf(getRowspan()), Integer.valueOf(getColspan()));
            byte b = this.region;
            if (b == 1) {
                return str + "header";
            }
            if (b == 2) {
                return str + SDKConstants.PARAM_A2U_BODY;
            }
            return b == 3 ? str + "footer" : str;
        }

        public void setParent(TableRenderer tableRenderer) {
            byte b = this.region;
            if (b == 1) {
                this.cell.setParent(tableRenderer.headerRenderer);
            } else if (b == 3) {
                this.cell.setParent(tableRenderer.footerRenderer);
            } else {
                this.cell.setParent(tableRenderer);
            }
        }
    }
}
