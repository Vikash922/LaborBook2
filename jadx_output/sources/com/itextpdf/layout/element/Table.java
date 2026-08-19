package com.itextpdf.layout.element;

import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.tagging.StandardRoles;
import com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties;
import com.itextpdf.kernel.pdf.tagutils.DefaultAccessibilityProperties;
import com.itextpdf.layout.Document;
import com.itextpdf.layout.borders.Border;
import com.itextpdf.layout.exceptions.LayoutExceptionMessageConstant;
import com.itextpdf.layout.properties.BorderCollapsePropertyValue;
import com.itextpdf.layout.properties.CaptionSide;
import com.itextpdf.layout.properties.UnitValue;
import com.itextpdf.layout.renderer.IRenderer;
import com.itextpdf.layout.renderer.TableRenderer;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import java.util.ArrayList;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class Table extends BlockElement<Table> implements ILargeElement {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private Div caption;
    private UnitValue[] columnWidths;
    private int currentColumn;
    private int currentRow;
    private Document document;
    private Table footer;
    private Table header;
    private boolean isComplete;
    private Cell[] lastAddedRow;
    private java.util.List<RowRange> lastAddedRowGroups;
    private int rowWindowStart;
    private java.util.List<Cell[]> rows;
    private boolean skipFirstHeader;
    private boolean skipLastFooter;
    protected DefaultAccessibilityProperties tagProperties;

    public Table(float[] fArr, boolean z) {
        this.currentColumn = 0;
        this.currentRow = -1;
        this.rowWindowStart = 0;
        if (fArr == null) {
            throw new IllegalArgumentException("The widths array in table constructor can not be null.");
        }
        if (fArr.length == 0) {
            throw new IllegalArgumentException("The widths array in table constructor can not have zero length.");
        }
        this.columnWidths = normalizeColumnWidths(fArr);
        initializeLargeTable(z);
        initializeRows();
    }

    public Table(UnitValue[] unitValueArr, boolean z) {
        this.currentColumn = 0;
        this.currentRow = -1;
        this.rowWindowStart = 0;
        if (unitValueArr == null) {
            throw new IllegalArgumentException("The widths array in table constructor can not be null.");
        }
        if (unitValueArr.length == 0) {
            throw new IllegalArgumentException("The widths array in table constructor can not have zero length.");
        }
        this.columnWidths = normalizeColumnWidths(unitValueArr);
        initializeLargeTable(z);
        initializeRows();
    }

    public Table(UnitValue[] unitValueArr) {
        this(unitValueArr, false);
    }

    public Table(float[] fArr) {
        this(fArr, false);
    }

    public Table(int i, boolean z) {
        this.currentColumn = 0;
        this.currentRow = -1;
        this.rowWindowStart = 0;
        if (i <= 0) {
            throw new IllegalArgumentException("The number of columns in Table constructor must be greater than zero");
        }
        this.columnWidths = normalizeColumnWidths(i);
        initializeLargeTable(z);
        initializeRows();
    }

    public Table(int i) {
        this(i, false);
    }

    public Table setFixedLayout() {
        setProperty(93, CommonCssConstants.FIXED);
        return this;
    }

    public Table setAutoLayout() {
        setProperty(93, "auto");
        return this;
    }

    public Table useAllAvailableWidth() {
        setProperty(77, UnitValue.createPercentValue(100.0f));
        return this;
    }

    public UnitValue getColumnWidth(int i) {
        return this.columnWidths[i];
    }

    public int getNumberOfColumns() {
        return this.columnWidths.length;
    }

    public int getNumberOfRows() {
        return this.rows.size();
    }

    public Table addHeaderCell(Cell cell) {
        ensureHeaderIsInitialized();
        this.header.addCell(cell);
        return this;
    }

    public <T extends IElement> Table addHeaderCell(BlockElement<T> blockElement) {
        ensureHeaderIsInitialized();
        this.header.addCell(blockElement);
        return this;
    }

    public Table addHeaderCell(Image image) {
        ensureHeaderIsInitialized();
        this.header.addCell(image);
        return this;
    }

    public Table addHeaderCell(String str) {
        ensureHeaderIsInitialized();
        this.header.addCell(str);
        return this;
    }

    public Table getHeader() {
        return this.header;
    }

    public Table addFooterCell(Cell cell) {
        ensureFooterIsInitialized();
        this.footer.addCell(cell);
        return this;
    }

    public <T extends IElement> Table addFooterCell(BlockElement<T> blockElement) {
        ensureFooterIsInitialized();
        this.footer.addCell(blockElement);
        return this;
    }

    public Table addFooterCell(Image image) {
        ensureFooterIsInitialized();
        this.footer.addCell(image);
        return this;
    }

    public Table addFooterCell(String str) {
        ensureFooterIsInitialized();
        this.footer.addCell(str);
        return this;
    }

    public Table getFooter() {
        return this.footer;
    }

    public boolean isSkipFirstHeader() {
        return this.skipFirstHeader;
    }

    public Table setSkipFirstHeader(boolean z) {
        this.skipFirstHeader = z;
        return this;
    }

    public boolean isSkipLastFooter() {
        return this.skipLastFooter;
    }

    public Table setSkipLastFooter(boolean z) {
        this.skipLastFooter = z;
        return this;
    }

    public Table setCaption(Div div) {
        this.caption = div;
        if (div != null) {
            ensureCaptionPropertiesAreSet();
        }
        return this;
    }

    public Table setCaption(Div div, CaptionSide captionSide) {
        if (div != null) {
            div.setProperty(119, captionSide);
        }
        setCaption(div);
        return this;
    }

    private void ensureCaptionPropertiesAreSet() {
        this.caption.getAccessibilityProperties().setRole(StandardRoles.CAPTION);
    }

    public Div getCaption() {
        return this.caption;
    }

    public Table startNewRow() {
        this.currentColumn = 0;
        int i = this.currentRow + 1;
        this.currentRow = i;
        if (i >= this.rows.size()) {
            this.rows.add(new Cell[this.columnWidths.length]);
        }
        return this;
    }

    public Table addCell(Cell cell) {
        if (this.isComplete && this.lastAddedRow != null) {
            throw new PdfException(LayoutExceptionMessageConstant.CANNOT_ADD_CELL_TO_COMPLETED_LARGE_TABLE);
        }
        while (true) {
            int i = this.currentColumn;
            if (i >= this.columnWidths.length || i == -1) {
                startNewRow();
            }
            Cell[] cellArr = this.rows.get(this.currentRow - this.rowWindowStart);
            int i2 = this.currentColumn;
            if (cellArr[i2] == null) {
                break;
            }
            this.currentColumn = i2 + 1;
        }
        this.childElements.add(cell);
        cell.updateCellIndexes(this.currentRow, this.currentColumn, this.columnWidths.length);
        while ((this.currentRow - this.rowWindowStart) + cell.getRowspan() > this.rows.size()) {
            this.rows.add(new Cell[this.columnWidths.length]);
        }
        for (int i3 = this.currentRow; i3 < this.currentRow + cell.getRowspan(); i3++) {
            Cell[] cellArr2 = this.rows.get(i3 - this.rowWindowStart);
            for (int i4 = this.currentColumn; i4 < this.currentColumn + cell.getColspan(); i4++) {
                if (cellArr2[i4] == null) {
                    cellArr2[i4] = cell;
                }
            }
        }
        this.currentColumn += cell.getColspan();
        return this;
    }

    public <T extends IElement> Table addCell(BlockElement<T> blockElement) {
        return addCell(new Cell().add(blockElement));
    }

    public Table addCell(Image image) {
        return addCell(new Cell().add(image));
    }

    public Table addCell(String str) {
        return addCell(new Cell().add(new Paragraph(str)));
    }

    public Cell getCell(int i, int i2) {
        Cell cell;
        if (i - this.rowWindowStart >= this.rows.size() || (cell = this.rows.get(i - this.rowWindowStart)[i2]) == null || cell.getRow() != i || cell.getCol() != i2) {
            return null;
        }
        return cell;
    }

    @Override // com.itextpdf.layout.element.AbstractElement, com.itextpdf.layout.element.IElement
    public IRenderer createRendererSubTree() {
        TableRenderer tableRenderer = (TableRenderer) getRenderer();
        for (IElement iElement : this.childElements) {
            if (this.isComplete || cellBelongsToAnyRowGroup((Cell) iElement, this.lastAddedRowGroups)) {
                tableRenderer.addChild(iElement.createRendererSubTree());
            }
        }
        return tableRenderer;
    }

    @Override // com.itextpdf.layout.element.AbstractElement, com.itextpdf.layout.element.IElement
    public IRenderer getRenderer() {
        int i;
        if (this.nextRenderer != null) {
            if (this.nextRenderer instanceof TableRenderer) {
                IRenderer iRenderer = this.nextRenderer;
                this.nextRenderer = this.nextRenderer.getNextRenderer();
                return iRenderer;
            }
            LoggerFactory.getLogger((Class<?>) Table.class).error("Invalid renderer for Table: must be inherited from TableRenderer");
        }
        if (this.isComplete) {
            if (this.lastAddedRow != null && this.rows.size() != 0) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(new RowRange(this.rowWindowStart, (this.rows.size() + r2) - 1));
                this.lastAddedRowGroups = arrayList;
            }
        } else {
            this.lastAddedRowGroups = getRowGroups();
        }
        if (this.isComplete) {
            return new TableRenderer(this, new RowRange(this.rowWindowStart, (this.rows.size() + r2) - 1));
        }
        if (this.lastAddedRowGroups.size() != 0) {
            i = this.lastAddedRowGroups.get(r0.size() - 1).finishRow;
        } else {
            i = -1;
        }
        return new TableRenderer(this, new RowRange(this.rowWindowStart, i));
    }

    @Override // com.itextpdf.layout.element.ILargeElement
    public boolean isComplete() {
        return this.isComplete;
    }

    @Override // com.itextpdf.layout.element.ILargeElement
    public void complete() {
        this.isComplete = true;
        flush();
    }

    @Override // com.itextpdf.layout.element.ILargeElement
    public void flush() {
        Cell[] cellArr;
        int size = this.rows.size();
        if (this.rows.isEmpty()) {
            cellArr = null;
        } else {
            cellArr = this.rows.get(r1.size() - 1);
        }
        this.document.add((IBlockElement) this);
        if (cellArr == null || size == this.rows.size()) {
            return;
        }
        this.lastAddedRow = cellArr;
    }

    @Override // com.itextpdf.layout.element.ILargeElement
    public void flushContent() {
        java.util.List<RowRange> list = this.lastAddedRowGroups;
        if (list == null || list.isEmpty()) {
            return;
        }
        int i = this.lastAddedRowGroups.get(0).startRow;
        int i2 = this.lastAddedRowGroups.get(r2.size() - 1).finishRow;
        ArrayList arrayList = new ArrayList();
        for (IElement iElement : this.childElements) {
            Cell cell = (Cell) iElement;
            if (cell.getRow() >= i && cell.getRow() <= i2) {
                arrayList.add(iElement);
            }
        }
        this.childElements.removeAll(arrayList);
        for (int i3 = 0; i3 < i2 - i; i3++) {
            this.rows.remove(i - this.rowWindowStart);
        }
        this.lastAddedRow = this.rows.remove(i - this.rowWindowStart);
        this.rowWindowStart = this.lastAddedRowGroups.get(r0.size() - 1).getFinishRow() + 1;
        this.lastAddedRowGroups = null;
    }

    @Override // com.itextpdf.layout.element.ILargeElement
    public void setDocument(Document document) {
        this.document = document;
    }

    public java.util.List<Border> getLastRowBottomBorder() {
        Border border;
        ArrayList arrayList = new ArrayList();
        if (this.lastAddedRow != null) {
            int i = 0;
            while (true) {
                Cell[] cellArr = this.lastAddedRow;
                if (i >= cellArr.length) {
                    break;
                }
                Cell cell = cellArr[i];
                if (cell == null) {
                    border = null;
                } else if (cell.hasProperty(10)) {
                    border = (Border) cell.getProperty(10);
                } else if (cell.hasProperty(9)) {
                    border = (Border) cell.getProperty(9);
                } else {
                    border = (Border) cell.getDefaultProperty(9);
                }
                arrayList.add(border);
                i++;
            }
        }
        return arrayList;
    }

    public Table setExtendBottomRow(boolean z) {
        setProperty(86, Boolean.valueOf(z));
        return this;
    }

    public Table setExtendBottomRowOnSplit(boolean z) {
        setProperty(87, Boolean.valueOf(z));
        return this;
    }

    public Table setBorderCollapse(BorderCollapsePropertyValue borderCollapsePropertyValue) {
        setProperty(114, borderCollapsePropertyValue);
        Table table = this.header;
        if (table != null) {
            table.setBorderCollapse(borderCollapsePropertyValue);
        }
        Table table2 = this.footer;
        if (table2 != null) {
            table2.setBorderCollapse(borderCollapsePropertyValue);
        }
        return this;
    }

    public Table setHorizontalBorderSpacing(float f) {
        setProperty(115, Float.valueOf(f));
        Table table = this.header;
        if (table != null) {
            table.setHorizontalBorderSpacing(f);
        }
        Table table2 = this.footer;
        if (table2 != null) {
            table2.setHorizontalBorderSpacing(f);
        }
        return this;
    }

    public Table setVerticalBorderSpacing(float f) {
        setProperty(116, Float.valueOf(f));
        Table table = this.header;
        if (table != null) {
            table.setVerticalBorderSpacing(f);
        }
        Table table2 = this.footer;
        if (table2 != null) {
            table2.setVerticalBorderSpacing(f);
        }
        return this;
    }

    @Override // com.itextpdf.layout.tagging.IAccessibleElement
    public AccessibilityProperties getAccessibilityProperties() {
        if (this.tagProperties == null) {
            this.tagProperties = new DefaultAccessibilityProperties(StandardRoles.TABLE);
        }
        return this.tagProperties;
    }

    @Override // com.itextpdf.layout.element.AbstractElement
    protected IRenderer makeNewRenderer() {
        return new TableRenderer(this);
    }

    private static UnitValue[] normalizeColumnWidths(float[] fArr) {
        int length = fArr.length;
        UnitValue[] unitValueArr = new UnitValue[length];
        for (int i = 0; i < length; i++) {
            float f = fArr[i];
            if (f >= 0.0f) {
                unitValueArr[i] = UnitValue.createPointValue(f);
            }
        }
        return unitValueArr;
    }

    private static UnitValue[] normalizeColumnWidths(UnitValue[] unitValueArr) {
        UnitValue[] unitValueArr2 = new UnitValue[unitValueArr.length];
        for (int i = 0; i < unitValueArr.length; i++) {
            UnitValue unitValue = unitValueArr[i];
            unitValueArr2[i] = (unitValue == null || unitValue.getValue() < 0.0f) ? null : new UnitValue(unitValueArr[i]);
        }
        return unitValueArr2;
    }

    private static UnitValue[] normalizeColumnWidths(int i) {
        return new UnitValue[i];
    }

    protected java.util.List<RowRange> getRowGroups() {
        int rowspan;
        int i = this.currentColumn;
        UnitValue[] unitValueArr = this.columnWidths;
        int i2 = i == unitValueArr.length ? this.currentRow : this.currentRow - 1;
        int[] iArr = new int[unitValueArr.length];
        ArrayList arrayList = new ArrayList();
        for (int i3 = this.rowWindowStart; i3 <= i2; i3 = rowspan + 1) {
            for (int i4 = 0; i4 < this.columnWidths.length; i4++) {
                iArr[i4] = i3;
            }
            int i5 = iArr[0];
            rowspan = (i5 + this.rows.get(i5 - this.rowWindowStart)[0].getRowspan()) - 1;
            boolean z = true;
            boolean z2 = false;
            while (!z2) {
                z2 = true;
                for (int i6 = 0; i6 < this.columnWidths.length; i6++) {
                    while (true) {
                        int i7 = iArr[i6];
                        if (i7 >= i2 || (i7 + this.rows.get(i7 - this.rowWindowStart)[i6].getRowspan()) - 1 >= rowspan) {
                            break;
                        }
                        int i8 = iArr[i6];
                        iArr[i6] = i8 + this.rows.get(i8 - this.rowWindowStart)[i6].getRowspan();
                    }
                    int i9 = iArr[i6];
                    if ((i9 + this.rows.get(i9 - this.rowWindowStart)[i6].getRowspan()) - 1 > rowspan) {
                        int i10 = iArr[i6];
                        rowspan = (i10 + this.rows.get(i10 - this.rowWindowStart)[i6].getRowspan()) - 1;
                        z2 = false;
                    } else {
                        int i11 = iArr[i6];
                        if ((i11 + this.rows.get(i11 - this.rowWindowStart)[i6].getRowspan()) - 1 < rowspan) {
                            z = false;
                        }
                    }
                }
            }
            if (z) {
                arrayList.add(new RowRange(i3, rowspan));
            }
        }
        return arrayList;
    }

    private void initializeRows() {
        this.rows = new ArrayList();
        this.currentColumn = -1;
    }

    private boolean cellBelongsToAnyRowGroup(Cell cell, java.util.List<RowRange> list) {
        return list != null && list.size() > 0 && cell.getRow() >= list.get(0).getStartRow() && cell.getRow() <= list.get(list.size() - 1).getFinishRow();
    }

    private void ensureHeaderIsInitialized() {
        if (this.header == null) {
            this.header = new Table(this.columnWidths);
            UnitValue width = getWidth();
            if (width != null) {
                this.header.setWidth(width);
            }
            this.header.getAccessibilityProperties().setRole(StandardRoles.THEAD);
            if (hasOwnProperty(114)) {
                this.header.setBorderCollapse((BorderCollapsePropertyValue) getProperty(114));
            }
            if (hasOwnProperty(115)) {
                this.header.setHorizontalBorderSpacing(((Float) getProperty(115)).floatValue());
            }
            if (hasOwnProperty(116)) {
                this.header.setVerticalBorderSpacing(((Float) getProperty(116)).floatValue());
            }
        }
    }

    private void ensureFooterIsInitialized() {
        if (this.footer == null) {
            this.footer = new Table(this.columnWidths);
            UnitValue width = getWidth();
            if (width != null) {
                this.footer.setWidth(width);
            }
            this.footer.getAccessibilityProperties().setRole(StandardRoles.TFOOT);
            if (hasOwnProperty(114)) {
                this.footer.setBorderCollapse((BorderCollapsePropertyValue) getProperty(114));
            }
            if (hasOwnProperty(115)) {
                this.footer.setHorizontalBorderSpacing(((Float) getProperty(115)).floatValue());
            }
            if (hasOwnProperty(116)) {
                this.footer.setVerticalBorderSpacing(((Float) getProperty(116)).floatValue());
            }
        }
    }

    private void initializeLargeTable(boolean z) {
        this.isComplete = !z;
        if (z) {
            setWidth(UnitValue.createPercentValue(100.0f));
            setFixedLayout();
        }
    }

    public static class RowRange {
        int finishRow;
        int startRow;

        public RowRange(int i, int i2) {
            this.startRow = i;
            this.finishRow = i2;
        }

        public int getStartRow() {
            return this.startRow;
        }

        public int getFinishRow() {
            return this.finishRow;
        }
    }
}
