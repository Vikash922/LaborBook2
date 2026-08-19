package com.itextpdf.layout.renderer;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.canvas.CanvasArtifact;
import com.itextpdf.kernel.pdf.tagutils.TagTreePointer;
import com.itextpdf.layout.borders.Border;
import com.itextpdf.layout.element.Cell;
import com.itextpdf.layout.element.Div;
import com.itextpdf.layout.element.Table;
import com.itextpdf.layout.layout.LayoutArea;
import com.itextpdf.layout.layout.LayoutResult;
import com.itextpdf.layout.minmaxwidth.MinMaxWidth;
import com.itextpdf.layout.minmaxwidth.MinMaxWidthUtils;
import com.itextpdf.layout.properties.BorderCollapsePropertyValue;
import com.itextpdf.layout.properties.CaptionSide;
import com.itextpdf.layout.properties.UnitValue;
import com.itextpdf.layout.tagging.LayoutTaggingHelper;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class TableRenderer extends AbstractRenderer {
    TableBorders bordersHandler;
    protected DivRenderer captionRenderer;
    private float[] columnWidths;
    private float[] countedColumnWidth;
    protected TableRenderer footerRenderer;
    protected TableRenderer headerRenderer;
    private List<Float> heights;
    protected boolean isOriginalNonSplitRenderer;
    protected Table.RowRange rowRange;
    protected List<CellRenderer[]> rows;
    private float topBorderMaxWidth;
    private float totalWidthForColumns;

    @Override // com.itextpdf.layout.renderer.AbstractRenderer
    protected boolean allowLastYLineRecursiveExtraction() {
        return false;
    }

    private TableRenderer() {
        this.rows = new ArrayList();
        this.isOriginalNonSplitRenderer = true;
        this.columnWidths = null;
        this.heights = new ArrayList();
        this.countedColumnWidth = null;
    }

    public TableRenderer(Table table, Table.RowRange rowRange) {
        super(table);
        this.rows = new ArrayList();
        this.isOriginalNonSplitRenderer = true;
        this.columnWidths = null;
        this.heights = new ArrayList();
        this.countedColumnWidth = null;
        setRowRange(rowRange);
    }

    public TableRenderer(Table table) {
        this(table, new Table.RowRange(0, table.getNumberOfRows() - 1));
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer, com.itextpdf.layout.renderer.IRenderer
    public void addChild(IRenderer iRenderer) {
        if (iRenderer instanceof CellRenderer) {
            this.rows.get(((r0.getRow() - this.rowRange.getStartRow()) + r0.getRowspan()) - 1)[((Cell) iRenderer.getModelElement()).getCol()] = (CellRenderer) iRenderer;
        } else {
            LoggerFactory.getLogger((Class<?>) TableRenderer.class).error("Only CellRenderer could be added");
        }
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer
    protected Rectangle applyBorderBox(Rectangle rectangle, Border[] borderArr, boolean z) {
        if (this.bordersHandler instanceof SeparatedTableBorders) {
            super.applyBorderBox(rectangle, borderArr, z);
        }
        return rectangle;
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer
    protected Rectangle applyPaddings(Rectangle rectangle, UnitValue[] unitValueArr, boolean z) {
        if (this.bordersHandler instanceof SeparatedTableBorders) {
            super.applyPaddings(rectangle, unitValueArr, z);
        }
        return rectangle;
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer
    public Rectangle applyPaddings(Rectangle rectangle, boolean z) {
        if (this.bordersHandler instanceof SeparatedTableBorders) {
            super.applyPaddings(rectangle, z);
        }
        return rectangle;
    }

    private Rectangle applySpacing(Rectangle rectangle, float f, float f2, boolean z) {
        if (!(this.bordersHandler instanceof SeparatedTableBorders)) {
            return rectangle;
        }
        float f3 = f2 / 2.0f;
        float f4 = f / 2.0f;
        return rectangle.applyMargins(f3, f4, f3, f4, z);
    }

    private Rectangle applySingleSpacing(Rectangle rectangle, float f, boolean z, boolean z2) {
        if (!(this.bordersHandler instanceof SeparatedTableBorders)) {
            return rectangle;
        }
        if (z) {
            float f2 = f / 2.0f;
            return rectangle.applyMargins(0.0f, f2, 0.0f, f2, z2);
        }
        float f3 = f / 2.0f;
        return rectangle.applyMargins(f3, 0.0f, f3, 0.0f, z2);
    }

    Table getTable() {
        return (Table) getModelElement();
    }

    private void initializeHeaderAndFooter(boolean z) {
        Table table = (Table) getModelElement();
        Border[] borders = getBorders();
        Table header = table.getHeader();
        boolean z2 = false;
        boolean z3 = (table.isComplete() || !this.rows.isEmpty()) && z && !((table.isSkipFirstHeader() && (this.rowRange.getStartRow() == 0 && this.isOriginalNonSplitRenderer)) || Boolean.TRUE.equals(getOwnProperty(97)));
        if (header != null && z3) {
            this.headerRenderer = initFooterOrHeaderRenderer(false, borders);
        }
        Table footer = table.getFooter();
        if ((!table.isComplete() || table.getLastRowBottomBorder().size() == 0 || !table.isSkipLastFooter()) && !Boolean.TRUE.equals(getOwnProperty(96))) {
            z2 = true;
        }
        if (footer == null || !z2) {
            return;
        }
        this.footerRenderer = initFooterOrHeaderRenderer(true, borders);
    }

    private void initializeCaptionRenderer(Div div) {
        if (!this.isOriginalNonSplitRenderer || div == null) {
            return;
        }
        DivRenderer divRenderer = (DivRenderer) div.createRendererSubTree();
        this.captionRenderer = divRenderer;
        divRenderer.setParent(this.parent);
        LayoutTaggingHelper layoutTaggingHelper = (LayoutTaggingHelper) getProperty(108);
        if (layoutTaggingHelper != null) {
            layoutTaggingHelper.addKidsHint(this, Collections.singletonList(this.captionRenderer));
            LayoutTaggingHelper.addTreeHints(layoutTaggingHelper, this.captionRenderer);
        }
    }

    private boolean isOriginalRenderer() {
        return (!this.isOriginalNonSplitRenderer || isFooterRenderer() || isHeaderRenderer()) ? false : true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:104:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x02ae  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0373  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0456  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x046e  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x048f  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x073a  */
    /* JADX WARN: Removed duplicated region for block: B:320:0x093e  */
    /* JADX WARN: Removed duplicated region for block: B:343:0x09ce  */
    /* JADX WARN: Removed duplicated region for block: B:344:0x09ee  */
    /* JADX WARN: Removed duplicated region for block: B:384:0x0afc  */
    /* JADX WARN: Removed duplicated region for block: B:421:0x0c69  */
    /* JADX WARN: Removed duplicated region for block: B:422:0x0c74  */
    /* JADX WARN: Removed duplicated region for block: B:532:0x0edb  */
    /* JADX WARN: Removed duplicated region for block: B:615:0x11e8 A[LOOP:0: B:161:0x0485->B:615:0x11e8, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:628:0x126d  */
    /* JADX WARN: Removed duplicated region for block: B:646:0x12d8  */
    /* JADX WARN: Removed duplicated region for block: B:652:0x12f6  */
    /* JADX WARN: Removed duplicated region for block: B:656:0x132f  */
    /* JADX WARN: Removed duplicated region for block: B:661:0x1340  */
    /* JADX WARN: Removed duplicated region for block: B:667:0x1357  */
    /* JADX WARN: Removed duplicated region for block: B:670:0x1361  */
    /* JADX WARN: Removed duplicated region for block: B:673:0x1377  */
    /* JADX WARN: Removed duplicated region for block: B:695:0x1412  */
    /* JADX WARN: Removed duplicated region for block: B:707:0x144a  */
    /* JADX WARN: Removed duplicated region for block: B:710:0x1469  */
    /* JADX WARN: Removed duplicated region for block: B:720:0x1512  */
    /* JADX WARN: Removed duplicated region for block: B:727:0x153c  */
    /* JADX WARN: Removed duplicated region for block: B:735:0x1558  */
    /* JADX WARN: Removed duplicated region for block: B:740:0x1566  */
    /* JADX WARN: Removed duplicated region for block: B:754:0x0c8d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:767:0x06e1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01ee  */
    /* JADX WARN: Type inference failed for: r0v161, types: [com.itextpdf.layout.renderer.TableBorders] */
    /* JADX WARN: Type inference failed for: r0v164, types: [com.itextpdf.layout.renderer.TableBorders] */
    /* JADX WARN: Type inference failed for: r0v182, types: [com.itextpdf.layout.renderer.TableBorders] */
    /* JADX WARN: Type inference failed for: r0v184 */
    /* JADX WARN: Type inference failed for: r0v185, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v256, types: [com.itextpdf.layout.renderer.TableBorders] */
    /* JADX WARN: Type inference failed for: r0v259, types: [com.itextpdf.layout.renderer.TableBorders] */
    /* JADX WARN: Type inference failed for: r0v271 */
    /* JADX WARN: Type inference failed for: r13v17 */
    /* JADX WARN: Type inference failed for: r13v19, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r13v38 */
    /* JADX WARN: Type inference failed for: r14v24, types: [com.itextpdf.layout.renderer.TableBorders] */
    /* JADX WARN: Type inference failed for: r14v25, types: [com.itextpdf.layout.renderer.TableBorders] */
    /* JADX WARN: Type inference failed for: r17v14 */
    /* JADX WARN: Type inference failed for: r17v15, types: [com.itextpdf.layout.renderer.IRenderer] */
    /* JADX WARN: Type inference failed for: r17v16 */
    /* JADX WARN: Type inference failed for: r17v17 */
    /* JADX WARN: Type inference failed for: r17v18, types: [boolean] */
    /* JADX WARN: Type inference failed for: r17v19 */
    /* JADX WARN: Type inference failed for: r17v20, types: [boolean] */
    /* JADX WARN: Type inference failed for: r17v21 */
    /* JADX WARN: Type inference failed for: r17v22 */
    /* JADX WARN: Type inference failed for: r17v23 */
    /* JADX WARN: Type inference failed for: r17v24, types: [boolean] */
    /* JADX WARN: Type inference failed for: r17v25 */
    /* JADX WARN: Type inference failed for: r3v148 */
    /* JADX WARN: Type inference failed for: r3v98 */
    /* JADX WARN: Type inference failed for: r3v99, types: [int] */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v19, types: [boolean] */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v22, types: [boolean] */
    /* JADX WARN: Type inference failed for: r4v23 */
    /* JADX WARN: Type inference failed for: r4v24 */
    /* JADX WARN: Type inference failed for: r5v27 */
    /* JADX WARN: Type inference failed for: r5v28, types: [com.itextpdf.layout.renderer.IRenderer] */
    /* JADX WARN: Type inference failed for: r5v29 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r6v14, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v47 */
    /* JADX WARN: Type inference failed for: r78v0, types: [com.itextpdf.layout.IPropertyContainer, com.itextpdf.layout.renderer.IRenderer, com.itextpdf.layout.renderer.TableRenderer] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.itextpdf.layout.renderer.IRenderer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.itextpdf.layout.layout.LayoutResult layout(com.itextpdf.layout.layout.LayoutContext r79) {
        /*
            Method dump skipped, instruction units count: 5540
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.layout.renderer.TableRenderer.layout(com.itextpdf.layout.layout.LayoutContext):com.itextpdf.layout.layout.LayoutResult");
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer, com.itextpdf.layout.renderer.IRenderer
    public void draw(DrawContext drawContext) {
        LayoutTaggingHelper layoutTaggingHelper;
        boolean zIsTaggingEnabled = drawContext.isTaggingEnabled();
        if (zIsTaggingEnabled) {
            layoutTaggingHelper = (LayoutTaggingHelper) getProperty(108);
            if (layoutTaggingHelper == null) {
                zIsTaggingEnabled = false;
            } else {
                TagTreePointer tagTreePointerUseAutoTaggingPointerAndRememberItsPosition = layoutTaggingHelper.useAutoTaggingPointerAndRememberItsPosition(this);
                if (layoutTaggingHelper.createTag(this, tagTreePointerUseAutoTaggingPointerAndRememberItsPosition)) {
                    tagTreePointerUseAutoTaggingPointerAndRememberItsPosition.getProperties().addAttributes(0, AccessibleAttributesApplier.getLayoutAttributes(this, tagTreePointerUseAutoTaggingPointerAndRememberItsPosition));
                }
            }
        } else {
            layoutTaggingHelper = null;
        }
        beginTransformationIfApplied(drawContext.getCanvas());
        applyDestinationsAndAnnotation(drawContext);
        boolean zIsRelativePosition = isRelativePosition();
        if (zIsRelativePosition) {
            applyRelativePositioningTranslation(false);
        }
        beginElementOpacityApplying(drawContext);
        DivRenderer divRenderer = this.captionRenderer;
        float height = divRenderer != null ? divRenderer.getOccupiedArea().getBBox().getHeight() : 0.0f;
        boolean zEquals = CaptionSide.BOTTOM.equals(0.0f != height ? this.captionRenderer.getProperty(119) : null);
        if (0.0f != height) {
            this.occupiedArea.getBBox().applyMargins(zEquals ? 0.0f : height, 0.0f, zEquals ? height : 0.0f, 0.0f, false);
        }
        drawBackground(drawContext);
        if ((this.bordersHandler instanceof SeparatedTableBorders) && !isHeaderRenderer() && !isFooterRenderer()) {
            drawBorder(drawContext);
        }
        drawChildren(drawContext);
        drawPositionedChildren(drawContext);
        if (0.0f != height) {
            this.occupiedArea.getBBox().applyMargins(zEquals ? 0.0f : height, 0.0f, zEquals ? height : 0.0f, 0.0f, true);
        }
        drawCaption(drawContext);
        endElementOpacityApplying(drawContext);
        if (zIsRelativePosition) {
            applyRelativePositioningTranslation(true);
        }
        this.flushed = true;
        endTransformationIfApplied(drawContext.getCanvas());
        if (zIsTaggingEnabled) {
            if (this.isLastRendererForModelElement && ((Table) getModelElement()).isComplete()) {
                layoutTaggingHelper.finishTaggingHint(this);
            }
            layoutTaggingHelper.restoreAutoTaggingPointerPosition(this);
        }
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer
    public void drawChildren(DrawContext drawContext) {
        TableRenderer tableRenderer = this.headerRenderer;
        if (tableRenderer != null) {
            tableRenderer.draw(drawContext);
        }
        Iterator<IRenderer> it = this.childRenderers.iterator();
        while (it.hasNext()) {
            it.next().draw(drawContext);
        }
        if (this.bordersHandler instanceof CollapsedTableBorders) {
            drawBorders(drawContext);
        }
        TableRenderer tableRenderer2 = this.footerRenderer;
        if (tableRenderer2 != null) {
            tableRenderer2.draw(drawContext);
        }
    }

    protected void drawBackgrounds(DrawContext drawContext) {
        boolean z = (this.bordersHandler instanceof CollapsedTableBorders) && (isHeaderRenderer() || isFooterRenderer());
        if (z) {
            this.occupiedArea.getBBox().applyMargins(this.bordersHandler.getMaxTopWidth() / 2.0f, this.bordersHandler.getRightBorderMaxWidth() / 2.0f, this.bordersHandler.getMaxBottomWidth() / 2.0f, this.bordersHandler.getLeftBorderMaxWidth() / 2.0f, false);
        }
        super.drawBackground(drawContext);
        if (z) {
            this.occupiedArea.getBBox().applyMargins(this.bordersHandler.getMaxTopWidth() / 2.0f, this.bordersHandler.getRightBorderMaxWidth() / 2.0f, this.bordersHandler.getMaxBottomWidth() / 2.0f, this.bordersHandler.getLeftBorderMaxWidth() / 2.0f, true);
        }
        TableRenderer tableRenderer = this.headerRenderer;
        if (tableRenderer != null) {
            tableRenderer.drawBackgrounds(drawContext);
        }
        TableRenderer tableRenderer2 = this.footerRenderer;
        if (tableRenderer2 != null) {
            tableRenderer2.drawBackgrounds(drawContext);
        }
    }

    protected void drawCaption(DrawContext drawContext) {
        if (this.captionRenderer == null || isFooterRenderer() || isHeaderRenderer()) {
            return;
        }
        this.captionRenderer.draw(drawContext);
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer
    public void drawBackground(DrawContext drawContext) {
        if (isFooterRenderer() || isHeaderRenderer()) {
            return;
        }
        drawBackgrounds(drawContext);
    }

    @Override // com.itextpdf.layout.renderer.IRenderer
    public IRenderer getNextRenderer() {
        logWarningIfGetNextRendererNotOverridden(TableRenderer.class, getClass());
        TableRenderer tableRenderer = new TableRenderer();
        tableRenderer.modelElement = this.modelElement;
        return tableRenderer;
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer, com.itextpdf.layout.renderer.IRenderer
    public void move(float f, float f2) {
        super.move(f, f2);
        TableRenderer tableRenderer = this.headerRenderer;
        if (tableRenderer != null) {
            tableRenderer.move(f, f2);
        }
        TableRenderer tableRenderer2 = this.footerRenderer;
        if (tableRenderer2 != null) {
            tableRenderer2.move(f, f2);
        }
    }

    protected TableRenderer[] split(int i) {
        return split(i, false);
    }

    protected TableRenderer[] split(int i, boolean z) {
        return split(i, z, false);
    }

    protected TableRenderer[] split(int i, boolean z, boolean z2) {
        TableRenderer tableRendererCreateSplitRenderer = createSplitRenderer(new Table.RowRange(this.rowRange.getStartRow(), this.rowRange.getStartRow() + i));
        tableRendererCreateSplitRenderer.rows = this.rows.subList(0, i);
        tableRendererCreateSplitRenderer.bordersHandler = this.bordersHandler;
        tableRendererCreateSplitRenderer.heights = this.heights;
        tableRendererCreateSplitRenderer.columnWidths = this.columnWidths;
        tableRendererCreateSplitRenderer.countedColumnWidth = this.countedColumnWidth;
        tableRendererCreateSplitRenderer.totalWidthForColumns = this.totalWidthForColumns;
        TableRenderer tableRendererCreateOverflowRenderer = createOverflowRenderer(new Table.RowRange(this.rowRange.getStartRow() + i, this.rowRange.getFinishRow()));
        if (i == 0 && !z && !z2 && this.rowRange.getStartRow() == 0) {
            tableRendererCreateOverflowRenderer.isOriginalNonSplitRenderer = this.isOriginalNonSplitRenderer;
        }
        List<CellRenderer[]> list = this.rows;
        tableRendererCreateOverflowRenderer.rows = list.subList(i, list.size());
        tableRendererCreateSplitRenderer.occupiedArea = this.occupiedArea;
        tableRendererCreateOverflowRenderer.bordersHandler = this.bordersHandler;
        return new TableRenderer[]{tableRendererCreateSplitRenderer, tableRendererCreateOverflowRenderer};
    }

    protected TableRenderer createSplitRenderer(Table.RowRange rowRange) {
        TableRenderer tableRenderer = (TableRenderer) getNextRenderer();
        tableRenderer.rowRange = rowRange;
        tableRenderer.parent = this.parent;
        tableRenderer.modelElement = this.modelElement;
        tableRenderer.childRenderers = this.childRenderers;
        tableRenderer.addAllProperties(getOwnProperties());
        tableRenderer.headerRenderer = this.headerRenderer;
        tableRenderer.footerRenderer = this.footerRenderer;
        tableRenderer.isLastRendererForModelElement = false;
        tableRenderer.topBorderMaxWidth = this.topBorderMaxWidth;
        tableRenderer.captionRenderer = this.captionRenderer;
        tableRenderer.isOriginalNonSplitRenderer = this.isOriginalNonSplitRenderer;
        return tableRenderer;
    }

    protected TableRenderer createOverflowRenderer(Table.RowRange rowRange) {
        TableRenderer tableRenderer = (TableRenderer) getNextRenderer();
        tableRenderer.setRowRange(rowRange);
        tableRenderer.parent = this.parent;
        tableRenderer.modelElement = this.modelElement;
        tableRenderer.addAllProperties(getOwnProperties());
        tableRenderer.isOriginalNonSplitRenderer = false;
        tableRenderer.countedColumnWidth = this.countedColumnWidth;
        return tableRenderer;
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer
    protected Float retrieveWidth(float f) {
        Float fRetrieveWidth = super.retrieveWidth(f);
        Table table = (Table) getModelElement();
        if (fRetrieveWidth != null && fRetrieveWidth.floatValue() != 0.0f) {
            return fRetrieveWidth;
        }
        float value = 0.0f;
        for (int i = 0; i < table.getNumberOfColumns(); i++) {
            UnitValue columnWidth = table.getColumnWidth(i);
            if (columnWidth.isPercentValue()) {
                value += columnWidth.getValue();
            }
        }
        return value > 0.0f ? Float.valueOf((f * value) / 100.0f) : Float.valueOf(f);
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer
    public MinMaxWidth getMinMaxWidth() {
        if (this.isOriginalNonSplitRenderer) {
            initializeTableLayoutBorders();
        }
        float rightBorderMaxWidth = this.bordersHandler.getRightBorderMaxWidth();
        float leftBorderMaxWidth = this.bordersHandler.getLeftBorderMaxWidth();
        TableWidths tableWidths = new TableWidths(this, MinMaxWidthUtils.getInfWidth(), true, rightBorderMaxWidth, leftBorderMaxWidth);
        float f = 0.0f;
        for (float f2 : this.isOriginalNonSplitRenderer ? tableWidths.layout() : this.countedColumnWidth) {
            f += f2;
        }
        float minWidth = this.isOriginalNonSplitRenderer ? tableWidths.getMinWidth() : f;
        UnitValue propertyAsUnitValue = getPropertyAsUnitValue(45);
        if (!propertyAsUnitValue.isPointValue()) {
            LoggerFactory.getLogger((Class<?>) TableRenderer.class).error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, 45));
        }
        UnitValue propertyAsUnitValue2 = getPropertyAsUnitValue(44);
        if (!propertyAsUnitValue2.isPointValue()) {
            LoggerFactory.getLogger((Class<?>) TableRenderer.class).error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, 44));
        }
        return new MinMaxWidth(minWidth, f, propertyAsUnitValue2.getValue() + propertyAsUnitValue.getValue() + (rightBorderMaxWidth / 2.0f) + (leftBorderMaxWidth / 2.0f));
    }

    private void initializeTableLayoutBorders() {
        TableBorders collapsedTableBorders;
        if (BorderCollapsePropertyValue.SEPARATE.equals(getProperty(114))) {
            collapsedTableBorders = new SeparatedTableBorders(this.rows, ((Table) getModelElement()).getNumberOfColumns(), getBorders());
        } else {
            collapsedTableBorders = new CollapsedTableBorders(this.rows, ((Table) getModelElement()).getNumberOfColumns(), getBorders());
        }
        this.bordersHandler = collapsedTableBorders;
        collapsedTableBorders.initializeBorders();
        this.bordersHandler.setTableBoundingBorders(getBorders());
        this.bordersHandler.setRowRange(this.rowRange.getStartRow(), this.rowRange.getFinishRow());
        boolean z = true;
        initializeHeaderAndFooter(true);
        TableBorders tableBorders = this.bordersHandler;
        boolean z2 = this.isOriginalNonSplitRenderer;
        if (!isFooterRenderer() && !isHeaderRenderer()) {
            z = false;
        }
        tableBorders.updateBordersOnNewPage(z2, z, this, this.headerRenderer, this.footerRenderer);
        correctRowRange();
    }

    private void correctRowRange() {
        if (this.rows.size() < (this.rowRange.getFinishRow() - this.rowRange.getStartRow()) + 1) {
            this.rowRange = new Table.RowRange(this.rowRange.getStartRow(), (this.rowRange.getStartRow() + this.rows.size()) - 1);
        }
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer
    public void drawBorder(DrawContext drawContext) {
        if (this.bordersHandler instanceof SeparatedTableBorders) {
            super.drawBorder(drawContext);
        }
    }

    protected void drawBorders(DrawContext drawContext) {
        drawBorders(drawContext, this.headerRenderer != null, this.footerRenderer != null);
    }

    private void drawBorders(DrawContext drawContext, boolean z, boolean z2) {
        float fFloatValue;
        float height = this.occupiedArea.getBBox().getHeight();
        TableRenderer tableRenderer = this.footerRenderer;
        if (tableRenderer != null) {
            height -= tableRenderer.occupiedArea.getBBox().getHeight();
        }
        TableRenderer tableRenderer2 = this.headerRenderer;
        if (tableRenderer2 != null) {
            height -= tableRenderer2.occupiedArea.getBBox().getHeight();
        }
        if (height < 1.0E-4f) {
            return;
        }
        float x = getOccupiedArea().getBBox().getX() + (this.bordersHandler.getLeftBorderMaxWidth() / 2.0f);
        float y = getOccupiedArea().getBBox().getY() + getOccupiedArea().getBBox().getHeight();
        TableRenderer tableRenderer3 = this.headerRenderer;
        if (tableRenderer3 != null) {
            fFloatValue = (y - tableRenderer3.occupiedArea.getBBox().getHeight()) + (this.topBorderMaxWidth / 2.0f);
        } else {
            fFloatValue = y - (this.topBorderMaxWidth / 2.0f);
        }
        if (hasProperty(46)) {
            UnitValue propertyAsUnitValue = getPropertyAsUnitValue(46);
            if (propertyAsUnitValue != null && !propertyAsUnitValue.isPointValue()) {
                LoggerFactory.getLogger((Class<?>) TableRenderer.class).error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, 44));
            }
            fFloatValue -= propertyAsUnitValue == null ? 0.0f : propertyAsUnitValue.getValue();
        }
        if (hasProperty(44)) {
            UnitValue propertyAsUnitValue2 = getPropertyAsUnitValue(44);
            if (propertyAsUnitValue2 != null && !propertyAsUnitValue2.isPointValue()) {
                LoggerFactory.getLogger((Class<?>) TableRenderer.class).error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, 44));
            }
            x += propertyAsUnitValue2 == null ? 0.0f : propertyAsUnitValue2.getValue();
        }
        if (this.childRenderers.size() == 0) {
            Border[] borderArr = this.bordersHandler.tableBoundingBorders;
            if (borderArr[0] != null) {
                if (borderArr[2] != null && this.heights.size() == 0) {
                    this.heights.add(0, Float.valueOf((borderArr[0].getWidth() / 2.0f) + (borderArr[2].getWidth() / 2.0f)));
                }
            } else {
                Border border = borderArr[2];
                if (border != null) {
                    fFloatValue -= border.getWidth() / 2.0f;
                }
            }
            if (this.heights.size() == 0) {
                this.heights.add(Float.valueOf(0.0f));
            }
        }
        boolean zIsTaggingEnabled = drawContext.isTaggingEnabled();
        if (zIsTaggingEnabled) {
            drawContext.getCanvas().openTag(new CanvasArtifact());
        }
        boolean zIsTopTablePart = isTopTablePart();
        boolean zIsBottomTablePart = isBottomTablePart();
        boolean zIsComplete = getTable().isComplete();
        boolean zIsFooterRendererOfLargeTable = isFooterRendererOfLargeTable();
        this.bordersHandler.setRowRange(this.rowRange.getStartRow(), (this.rowRange.getStartRow() + this.heights.size()) - 1);
        TableBorders tableBorders = this.bordersHandler;
        if (tableBorders instanceof CollapsedTableBorders) {
            if (z2) {
                ((CollapsedTableBorders) tableBorders).setBottomBorderCollapseWith(this.footerRenderer.bordersHandler.getFirstHorizontalBorder(), ((CollapsedTableBorders) this.footerRenderer.bordersHandler).getVerticalBordersCrossingTopHorizontalBorder());
            } else if (zIsBottomTablePart) {
                ((CollapsedTableBorders) tableBorders).setBottomBorderCollapseWith(null, null);
            }
        }
        float[] fArr = new float[this.heights.size()];
        for (int i = 0; i < this.heights.size(); i++) {
            fArr[i] = this.heights.get(i).floatValue();
        }
        float f = x;
        for (int i2 = 0; i2 <= this.bordersHandler.getNumberOfColumns(); i2++) {
            this.bordersHandler.drawVerticalBorder(drawContext.getCanvas(), new TableBorderDescriptor(i2, fFloatValue, f, fArr));
            float[] fArr2 = this.countedColumnWidth;
            if (i2 < fArr2.length) {
                f += fArr2[i2];
            }
        }
        int i3 = (zIsFooterRendererOfLargeTable || zIsTopTablePart) ? 1 : 0;
        if (!this.heights.isEmpty() && i3 == 0) {
            fFloatValue -= this.heights.get(0).floatValue();
        }
        for (int i4 = i3 ^ 1; i4 < this.heights.size(); i4++) {
            this.bordersHandler.drawHorizontalBorder(drawContext.getCanvas(), new TableBorderDescriptor(i4, x, fFloatValue, this.countedColumnWidth));
            fFloatValue -= this.heights.get(i4).floatValue();
        }
        if ((!zIsBottomTablePart && zIsComplete) || (zIsBottomTablePart && (zIsComplete || (!this.isLastRendererForModelElement && !isEmptyTableRenderer())))) {
            this.bordersHandler.drawHorizontalBorder(drawContext.getCanvas(), new TableBorderDescriptor(this.heights.size(), x, fFloatValue, this.countedColumnWidth));
        }
        if (zIsTaggingEnabled) {
            drawContext.getCanvas().closeTag();
        }
    }

    private boolean isEmptyTableRenderer() {
        return this.rows.isEmpty() && this.heights.size() == 1 && this.heights.get(0).floatValue() == 0.0f;
    }

    private void applyFixedXOrYPosition(boolean z, Rectangle rectangle) {
        if (isPositioned() && isFixedLayout()) {
            if (z) {
                rectangle.setX(getPropertyAsFloat(34).floatValue());
            } else {
                move(0.0f, getPropertyAsFloat(14).floatValue() - this.occupiedArea.getBBox().getY());
            }
        }
    }

    private void adjustFooterAndFixOccupiedArea(Rectangle rectangle, float f) {
        TableRenderer tableRenderer = this.footerRenderer;
        if (tableRenderer != null) {
            tableRenderer.move(0.0f, rectangle.getHeight() + f);
            float height = this.footerRenderer.getOccupiedArea().getBBox().getHeight() - f;
            this.occupiedArea.getBBox().moveDown(height).increaseHeight(height);
        }
    }

    private void adjustCaptionAndFixOccupiedArea(Rectangle rectangle, float f) {
        DivRenderer divRenderer = this.captionRenderer;
        if (divRenderer != null) {
            float height = divRenderer.getOccupiedArea().getBBox().getHeight();
            this.occupiedArea.getBBox().moveDown(height).increaseHeight(height);
            if (CaptionSide.BOTTOM.equals(this.captionRenderer.getProperty(119))) {
                this.captionRenderer.move(0.0f, rectangle.getHeight() + f);
            } else {
                this.occupiedArea.getBBox().moveUp(height);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x01ae  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void correctLayoutedCellsOccupiedAreas(com.itextpdf.layout.layout.LayoutResult[] r17, int r18, int[] r19, java.lang.Float r20, com.itextpdf.kernel.geom.Rectangle r21, java.util.List<java.lang.Boolean> r22, boolean r23, boolean r24, boolean r25) {
        /*
            Method dump skipped, instruction units count: 558
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.layout.renderer.TableRenderer.correctLayoutedCellsOccupiedAreas(com.itextpdf.layout.layout.LayoutResult[], int, int[], java.lang.Float, com.itextpdf.kernel.geom.Rectangle, java.util.List, boolean, boolean, boolean):void");
    }

    private void correctRowCellsOccupiedAreas(LayoutResult[] layoutResultArr, int i, int[] iArr, int i2, List<Boolean> list, float f, float f2) {
        LayoutResult layoutResult;
        CellRenderer[] cellRendererArr = this.rows.get(i2);
        for (int i3 = 0; i3 < cellRendererArr.length; i3++) {
            CellRenderer cellRenderer = (i2 < i || (layoutResult = layoutResultArr[i3]) == null) ? cellRendererArr[i3] : (CellRenderer) layoutResult.getSplitRenderer();
            if (cellRenderer != null) {
                int iIntValue = cellRenderer.getPropertyAsInteger(16).intValue();
                int iIntValue2 = cellRenderer.getPropertyAsInteger(60).intValue();
                int size = (i2 < i ? i2 : this.heights.size() - 1) - 1;
                float fFloatValue = 0.0f;
                float f3 = 0.0f;
                while (true) {
                    if (size <= (i2 < i ? i2 : iArr[i3]) - iIntValue2 || size < 0) {
                        break;
                    }
                    fFloatValue += this.heights.get(size).floatValue();
                    if (Boolean.FALSE.equals(list.get(size))) {
                        f3 += f2;
                    }
                    size--;
                }
                float fFloatValue2 = fFloatValue + this.heights.get(i2 < i ? i2 : r9.size() - 1).floatValue();
                TableBorders tableBorders = this.bordersHandler;
                float[] cellBorderIndents = tableBorders.getCellBorderIndents((i2 < i || (tableBorders instanceof SeparatedTableBorders)) ? i2 : iArr[i3], i3, iIntValue2, iIntValue);
                float f4 = fFloatValue2 - ((cellBorderIndents[0] / 2.0f) + (cellBorderIndents[2] / 2.0f));
                float height = f4 - cellRenderer.getOccupiedArea().getBBox().getHeight();
                Rectangle bBox = cellRenderer.getOccupiedArea().getBBox();
                bBox.moveDown(height);
                try {
                    cellRenderer.move(0.0f, -(f - f3));
                    bBox.setHeight(f4);
                    cellRenderer.applyVerticalAlignment();
                } catch (NullPointerException unused) {
                    LoggerFactory.getLogger((Class<?>) TableRenderer.class).error(MessageFormatUtil.format(IoLogMessageConstant.OCCUPIED_AREA_HAS_NOT_BEEN_INITIALIZED, "Some of the cell's content might not end up placed correctly."));
                }
            }
        }
    }

    protected void extendLastRow(CellRenderer[] cellRendererArr, Rectangle rectangle) {
        if (cellRendererArr == null || this.heights.size() == 0) {
            return;
        }
        List<Float> list = this.heights;
        list.set(list.size() - 1, Float.valueOf(this.heights.get(r2.size() - 1).floatValue() + rectangle.getHeight()));
        this.occupiedArea.getBBox().moveDown(rectangle.getHeight()).increaseHeight(rectangle.getHeight());
        for (CellRenderer cellRenderer : cellRendererArr) {
            if (cellRenderer != null) {
                cellRenderer.occupiedArea.getBBox().moveDown(rectangle.getHeight()).increaseHeight(rectangle.getHeight());
            }
        }
        rectangle.moveUp(rectangle.getHeight()).setHeight(0.0f);
    }

    private void setRowRange(Table.RowRange rowRange) {
        this.rowRange = rowRange;
        for (int startRow = rowRange.getStartRow(); startRow <= rowRange.getFinishRow(); startRow++) {
            this.rows.add(new CellRenderer[((Table) this.modelElement).getNumberOfColumns()]);
        }
    }

    private TableRenderer initFooterOrHeaderRenderer(boolean z, Border[] borderArr) {
        TableBorders collapsedTableBorders;
        Table table = (Table) getModelElement();
        boolean zEquals = BorderCollapsePropertyValue.SEPARATE.equals(getProperty(114));
        Table footer = z ? table.getFooter() : table.getHeader();
        boolean z2 = false;
        int i = z ? 0 : 2;
        int i2 = z ? 2 : 0;
        TableRenderer tableRenderer = (TableRenderer) footer.createRendererSubTree().setParent(this);
        ensureFooterOrHeaderHasTheSamePropertiesAsParentTableRenderer(tableRenderer);
        if (!z && this.rowRange.getStartRow() == 0 && this.isOriginalNonSplitRenderer) {
            z2 = true;
        }
        LayoutTaggingHelper layoutTaggingHelper = (LayoutTaggingHelper) getProperty(108);
        if (layoutTaggingHelper != null) {
            layoutTaggingHelper.addKidsHint(this, Collections.singletonList(tableRenderer));
            LayoutTaggingHelper.addTreeHints(layoutTaggingHelper, tableRenderer);
            if (!z && !z2) {
                layoutTaggingHelper.markArtifactHint(tableRenderer);
            }
        }
        TableBorders tableBorders = this.bordersHandler;
        if (tableBorders instanceof SeparatedTableBorders) {
            if (table.isEmpty()) {
                if (!z || this.headerRenderer == null) {
                    tableRenderer.setBorders(borderArr[i], i);
                }
                this.bordersHandler.tableBoundingBorders[i] = Border.NO_BORDER;
            }
            tableRenderer.setBorders(borderArr[1], 1);
            tableRenderer.setBorders(borderArr[3], 3);
            tableRenderer.setBorders(borderArr[i2], i2);
            this.bordersHandler.tableBoundingBorders[i2] = Border.NO_BORDER;
        } else if (tableBorders instanceof CollapsedTableBorders) {
            Border[] borders = tableRenderer.getBorders();
            if (table.isEmpty()) {
                tableRenderer.setBorders(CollapsedTableBorders.getCollapsedBorder(borders[i], borderArr[i]), i);
                this.bordersHandler.tableBoundingBorders[i] = Border.NO_BORDER;
            }
            tableRenderer.setBorders(CollapsedTableBorders.getCollapsedBorder(borders[1], borderArr[1]), 1);
            tableRenderer.setBorders(CollapsedTableBorders.getCollapsedBorder(borders[3], borderArr[3]), 3);
            tableRenderer.setBorders(CollapsedTableBorders.getCollapsedBorder(borders[i2], borderArr[i2]), i2);
            this.bordersHandler.tableBoundingBorders[i2] = Border.NO_BORDER;
        }
        if (zEquals) {
            collapsedTableBorders = new SeparatedTableBorders(tableRenderer.rows, ((Table) tableRenderer.getModelElement()).getNumberOfColumns(), tableRenderer.getBorders());
        } else {
            collapsedTableBorders = new CollapsedTableBorders(tableRenderer.rows, ((Table) tableRenderer.getModelElement()).getNumberOfColumns(), tableRenderer.getBorders());
        }
        tableRenderer.bordersHandler = collapsedTableBorders;
        collapsedTableBorders.initializeBorders();
        tableRenderer.bordersHandler.setRowRange(tableRenderer.rowRange.getStartRow(), tableRenderer.rowRange.getFinishRow());
        tableRenderer.bordersHandler.processAllBordersAndEmptyRows();
        tableRenderer.correctRowRange();
        return tableRenderer;
    }

    private void ensureFooterOrHeaderHasTheSamePropertiesAsParentTableRenderer(TableRenderer tableRenderer) {
        tableRenderer.setProperty(114, getProperty(114));
        if (this.bordersHandler instanceof SeparatedTableBorders) {
            tableRenderer.setProperty(115, getPropertyAsFloat(115));
            tableRenderer.setProperty(116, getPropertyAsFloat(116));
            tableRenderer.setProperty(9, Border.NO_BORDER);
            tableRenderer.setProperty(11, Border.NO_BORDER);
            tableRenderer.setProperty(13, Border.NO_BORDER);
            tableRenderer.setProperty(12, Border.NO_BORDER);
            tableRenderer.setProperty(10, Border.NO_BORDER);
        }
    }

    private TableRenderer prepareFooterOrHeaderRendererForLayout(TableRenderer tableRenderer, float f) {
        tableRenderer.countedColumnWidth = this.countedColumnWidth;
        tableRenderer.bordersHandler.leftBorderMaxWidth = this.bordersHandler.getLeftBorderMaxWidth();
        tableRenderer.bordersHandler.rightBorderMaxWidth = this.bordersHandler.getRightBorderMaxWidth();
        if (hasProperty(77)) {
            tableRenderer.setProperty(77, UnitValue.createPointValue(f));
        }
        return this;
    }

    private boolean isHeaderRenderer() {
        return (this.parent instanceof TableRenderer) && ((TableRenderer) this.parent).headerRenderer == this;
    }

    private boolean isFooterRenderer() {
        return (this.parent instanceof TableRenderer) && ((TableRenderer) this.parent).footerRenderer == this;
    }

    private boolean isFooterRendererOfLargeTable() {
        return isFooterRenderer() && !(((TableRenderer) this.parent).getTable().isComplete() && ((TableRenderer) this.parent).getTable().getLastRowBottomBorder().size() == 0);
    }

    private boolean isTopTablePart() {
        return this.headerRenderer == null && (!isFooterRenderer() || (((TableRenderer) this.parent).rows.size() == 0 && ((TableRenderer) this.parent).headerRenderer == null));
    }

    private boolean isBottomTablePart() {
        return this.footerRenderer == null && (!isHeaderRenderer() || (((TableRenderer) this.parent).rows.size() == 0 && ((TableRenderer) this.parent).footerRenderer == null));
    }

    private void calculateColumnWidths(float f) {
        if (this.countedColumnWidth == null || this.totalWidthForColumns != f) {
            this.countedColumnWidth = new TableWidths(this, f, false, this.bordersHandler.rightBorderMaxWidth, this.bordersHandler.leftBorderMaxWidth).layout();
        }
    }

    private float getTableWidth() {
        float f = 0.0f;
        for (float f2 : this.countedColumnWidth) {
            f += f2;
        }
        TableBorders tableBorders = this.bordersHandler;
        if (tableBorders instanceof SeparatedTableBorders) {
            float rightBorderMaxWidth = f + tableBorders.getRightBorderMaxWidth() + this.bordersHandler.getLeftBorderMaxWidth();
            Float propertyAsFloat = getPropertyAsFloat(115);
            return rightBorderMaxWidth + (propertyAsFloat != null ? propertyAsFloat.floatValue() : 0.0f);
        }
        return f + (tableBorders.getRightBorderMaxWidth() / 2.0f) + (this.bordersHandler.getLeftBorderMaxWidth() / 2.0f);
    }

    private static class CellRendererInfo {
        public CellRenderer cellRenderer;
        public int column;
        public int finishRowInd;

        public CellRendererInfo(CellRenderer cellRenderer, int i, int i2) {
            this.cellRenderer = cellRenderer;
            this.column = i;
            this.finishRowInd = i2;
        }
    }

    private static class OverflowRowsWrapper {
        private TableRenderer overflowRenderer;
        private HashMap<Integer, Boolean> isRowReplaced = new HashMap<>();
        private boolean isReplaced = false;

        public OverflowRowsWrapper(TableRenderer tableRenderer) {
            this.overflowRenderer = tableRenderer;
        }

        public CellRenderer getCell(int i, int i2) {
            return this.overflowRenderer.rows.get(i)[i2];
        }

        public CellRenderer setCell(int i, int i2, CellRenderer cellRenderer) {
            if (!this.isReplaced) {
                this.overflowRenderer.rows = new ArrayList(this.overflowRenderer.rows);
                this.isReplaced = true;
            }
            if (!Boolean.TRUE.equals(this.isRowReplaced.get(Integer.valueOf(i)))) {
                this.overflowRenderer.rows.set(i, (CellRenderer[]) this.overflowRenderer.rows.get(i).clone());
            }
            this.overflowRenderer.rows.get(i)[i2] = cellRenderer;
            return cellRenderer;
        }
    }

    private void enlargeCellWithBigRowspan(CellRenderer[] cellRendererArr, OverflowRowsWrapper overflowRowsWrapper, int i, int i2, int i3, TableRenderer[] tableRendererArr, int[] iArr) {
        int i4;
        int i5;
        this.childRenderers.add(cellRendererArr[i2]);
        int i6 = i;
        while (true) {
            i4 = i + i3;
            if (i6 < i4 && (i5 = i6 + 1) < this.rows.size()) {
                int i7 = i5 - i;
                if (tableRendererArr[1].rows.get(i7)[i2] == null) {
                    break;
                }
                overflowRowsWrapper.setCell(i6 - i, i2, tableRendererArr[1].rows.get(i7)[i2]);
                overflowRowsWrapper.setCell(i7, i2, null);
                this.rows.get(i6)[i2] = this.rows.get(i5)[i2];
                this.rows.get(i5)[i2] = null;
                i6 = i5;
            } else {
                break;
            }
        }
        if (i6 == i4 - 1 || this.rows.get(i6)[i2] == null) {
            return;
        }
        CellRenderer cellRenderer = (CellRenderer) ((Cell) this.rows.get(i6)[i2].getModelElement()).getRenderer().setParent(this);
        overflowRowsWrapper.setCell(i6 - i, i2, null);
        overflowRowsWrapper.setCell(iArr[i2] - i, i2, cellRenderer);
        CellRenderer cellRenderer2 = this.rows.get(i6)[i2];
        this.rows.get(i6)[i2] = null;
        this.rows.get(iArr[i2])[i2] = cellRenderer2;
        cellRenderer2.isLastRendererForModelElement = false;
        cellRenderer.setProperty(109, cellRenderer2.getProperty(109));
    }

    private void enlargeCell(int i, int i2, int i3, CellRenderer[] cellRendererArr, OverflowRowsWrapper overflowRowsWrapper, int[] iArr, TableRenderer[] tableRendererArr) {
        LayoutArea occupiedArea = cellRendererArr[i].getOccupiedArea();
        if (1 == i3) {
            CellRenderer cellRenderer = (CellRenderer) ((Cell) cellRendererArr[i].getModelElement()).clone(true).getRenderer();
            cellRenderer.setParent(this);
            cellRenderer.deleteProperty(27);
            cellRenderer.deleteProperty(85);
            cellRenderer.deleteProperty(84);
            overflowRowsWrapper.setCell(0, i, null);
            overflowRowsWrapper.setCell(iArr[i] - i2, i, cellRenderer);
            this.childRenderers.add(cellRendererArr[i]);
            CellRenderer cellRenderer2 = cellRendererArr[i];
            cellRendererArr[i] = null;
            this.rows.get(iArr[i])[i] = cellRenderer2;
            cellRenderer2.isLastRendererForModelElement = false;
            cellRenderer.setProperty(109, cellRenderer2.getProperty(109));
        } else {
            enlargeCellWithBigRowspan(cellRendererArr, overflowRowsWrapper, i2, i, i3, tableRendererArr, iArr);
        }
        overflowRowsWrapper.getCell(iArr[i] - i2, i).occupiedArea = occupiedArea;
    }

    void applyMarginsAndPaddingsAndCalculateColumnWidths(Rectangle rectangle) {
        UnitValue[] margins = getMargins();
        if (!margins[1].isPointValue()) {
            LoggerFactory.getLogger((Class<?>) TableRenderer.class).error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, 45));
        }
        if (!margins[3].isPointValue()) {
            LoggerFactory.getLogger((Class<?>) TableRenderer.class).error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, 44));
        }
        UnitValue[] paddings = getPaddings();
        if (!paddings[1].isPointValue()) {
            LoggerFactory.getLogger((Class<?>) TableRenderer.class).error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, 49));
        }
        if (!paddings[3].isPointValue()) {
            LoggerFactory.getLogger((Class<?>) TableRenderer.class).error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, 48));
        }
        calculateColumnWidths((((rectangle.getWidth() - margins[1].getValue()) - margins[3].getValue()) - paddings[1].getValue()) - paddings[3].getValue());
    }
}
