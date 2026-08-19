package com.itextpdf.layout.renderer;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.font.PdfFont;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.tagging.StandardRoles;
import com.itextpdf.layout.element.ListItem;
import com.itextpdf.layout.element.Paragraph;
import com.itextpdf.layout.layout.LayoutContext;
import com.itextpdf.layout.layout.LayoutResult;
import com.itextpdf.layout.properties.BaseDirection;
import com.itextpdf.layout.properties.ListSymbolAlignment;
import com.itextpdf.layout.properties.ListSymbolPosition;
import com.itextpdf.layout.properties.UnitValue;
import com.itextpdf.layout.tagging.LayoutTaggingHelper;
import com.itextpdf.layout.tagging.TaggingDummyElement;
import com.itextpdf.layout.tagging.TaggingHintKey;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import java.util.Collections;
import java.util.Iterator;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class ListItemRenderer extends DivRenderer {
    private boolean symbolAddedInside;
    protected float symbolAreaWidth;
    protected IRenderer symbolRenderer;

    public ListItemRenderer(ListItem listItem) {
        super(listItem);
    }

    public void addSymbolRenderer(IRenderer iRenderer, float f) {
        this.symbolRenderer = iRenderer;
        this.symbolAreaWidth = f;
    }

    @Override // com.itextpdf.layout.renderer.BlockRenderer, com.itextpdf.layout.renderer.IRenderer
    public LayoutResult layout(LayoutContext layoutContext) {
        if (this.symbolRenderer != null && getProperty(27) == null && !isListSymbolEmpty(this.symbolRenderer)) {
            float[] fArrCalculateAscenderDescender = calculateAscenderDescender();
            updateMinHeight(UnitValue.createPointValue(Math.max(this.symbolRenderer.getOccupiedArea().getBBox().getHeight(), fArrCalculateAscenderDescender[0] - fArrCalculateAscenderDescender[1])));
        }
        applyListSymbolPosition();
        LayoutResult layoutResultLayout = super.layout(layoutContext);
        if (2 == layoutResultLayout.getStatus()) {
            layoutResultLayout.getOverflowRenderer().deleteOwnProperty(85);
        }
        return layoutResultLayout;
    }

    @Override // com.itextpdf.layout.renderer.BlockRenderer, com.itextpdf.layout.renderer.AbstractRenderer, com.itextpdf.layout.renderer.IRenderer
    public void draw(DrawContext drawContext) {
        LayoutTaggingHelper layoutTaggingHelper;
        if (this.occupiedArea == null) {
            LoggerFactory.getLogger((Class<?>) ListItemRenderer.class).error(MessageFormatUtil.format(IoLogMessageConstant.OCCUPIED_AREA_HAS_NOT_BEEN_INITIALIZED, "Drawing won't be performed."));
            return;
        }
        if (drawContext.isTaggingEnabled() && (layoutTaggingHelper = (LayoutTaggingHelper) getProperty(108)) != null) {
            IRenderer iRenderer = this.symbolRenderer;
            if (iRenderer != null) {
                LayoutTaggingHelper.addTreeHints(layoutTaggingHelper, iRenderer);
            }
            if (layoutTaggingHelper.isArtifact(this)) {
                layoutTaggingHelper.markArtifactHint(this.symbolRenderer);
            } else {
                TaggingHintKey hintKey = LayoutTaggingHelper.getHintKey(this);
                TaggingHintKey accessibleParentHint = layoutTaggingHelper.getAccessibleParentHint(hintKey);
                if (accessibleParentHint != null && !StandardRoles.f3193LI.equals(accessibleParentHint.getAccessibleElement().getAccessibilityProperties().getRole())) {
                    TaggingDummyElement taggingDummyElement = new TaggingDummyElement(StandardRoles.f3193LI);
                    layoutTaggingHelper.replaceKidHint(hintKey, Collections.singletonList(LayoutTaggingHelper.getOrCreateHintKey(taggingDummyElement)));
                    IRenderer iRenderer2 = this.symbolRenderer;
                    if (iRenderer2 != null) {
                        layoutTaggingHelper.addKidsHint(taggingDummyElement, Collections.singletonList(iRenderer2));
                    }
                    layoutTaggingHelper.addKidsHint(taggingDummyElement, Collections.singletonList(this));
                }
            }
        }
        super.draw(drawContext);
        if (this.symbolRenderer == null || this.symbolAddedInside) {
            return;
        }
        boolean z = BaseDirection.RIGHT_TO_LEFT == getProperty(7);
        this.symbolRenderer.setParent(this);
        Rectangle bBox = this.occupiedArea.getBBox();
        float right = z ? bBox.getRight() : bBox.getLeft();
        ListSymbolPosition listSymbolPosition = (ListSymbolPosition) ListRenderer.getListItemOrListProperty(this, this.parent, 83);
        if (listSymbolPosition != ListSymbolPosition.DEFAULT) {
            Float propertyAsFloat = getPropertyAsFloat(39);
            right = z ? right + this.symbolAreaWidth + (propertyAsFloat == null ? 0.0f : propertyAsFloat.floatValue()) : right - (this.symbolAreaWidth + (propertyAsFloat == null ? 0.0f : propertyAsFloat.floatValue()));
            if (listSymbolPosition == ListSymbolPosition.OUTSIDE) {
                if (z) {
                    UnitValue propertyAsUnitValue = getPropertyAsUnitValue(45);
                    if (!propertyAsUnitValue.isPointValue()) {
                        LoggerFactory.getLogger((Class<?>) ListItemRenderer.class).error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, 45));
                    }
                    right -= propertyAsUnitValue.getValue();
                } else {
                    UnitValue propertyAsUnitValue2 = getPropertyAsUnitValue(44);
                    if (!propertyAsUnitValue2.isPointValue()) {
                        LoggerFactory.getLogger((Class<?>) ListItemRenderer.class).error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, 44));
                    }
                    right += propertyAsUnitValue2.getValue();
                }
            }
        }
        applyMargins(this.occupiedArea.getBBox(), false);
        applyBorderBox(this.occupiedArea.getBBox(), false);
        if (this.childRenderers.size() > 0) {
            Float firstYLineRecursively = null;
            for (int i = 0; i < this.childRenderers.size() && (this.childRenderers.get(i).getOccupiedArea().getBBox().getHeight() <= 0.0f || (firstYLineRecursively = ((AbstractRenderer) this.childRenderers.get(i)).getFirstYLineRecursively()) == null); i++) {
            }
            if (firstYLineRecursively != null) {
                IRenderer iRenderer3 = this.symbolRenderer;
                if (iRenderer3 instanceof LineRenderer) {
                    iRenderer3.move(0.0f, firstYLineRecursively.floatValue() - ((LineRenderer) this.symbolRenderer).getYLine());
                } else {
                    iRenderer3.move(0.0f, firstYLineRecursively.floatValue() - this.symbolRenderer.getOccupiedArea().getBBox().getY());
                }
            } else {
                this.symbolRenderer.move(0.0f, (this.occupiedArea.getBBox().getY() + this.occupiedArea.getBBox().getHeight()) - (this.symbolRenderer.getOccupiedArea().getBBox().getY() + this.symbolRenderer.getOccupiedArea().getBBox().getHeight()));
            }
        } else {
            IRenderer iRenderer4 = this.symbolRenderer;
            if (iRenderer4 instanceof TextRenderer) {
                ((TextRenderer) iRenderer4).moveYLineTo((this.occupiedArea.getBBox().getY() + this.occupiedArea.getBBox().getHeight()) - calculateAscenderDescender()[0]);
            } else {
                iRenderer4.move(0.0f, ((this.occupiedArea.getBBox().getY() + this.occupiedArea.getBBox().getHeight()) - this.symbolRenderer.getOccupiedArea().getBBox().getHeight()) - this.symbolRenderer.getOccupiedArea().getBBox().getY());
            }
        }
        applyBorderBox(this.occupiedArea.getBBox(), true);
        applyMargins(this.occupiedArea.getBBox(), true);
        ListSymbolAlignment listSymbolAlignment = (ListSymbolAlignment) this.parent.getProperty(38, z ? ListSymbolAlignment.LEFT : ListSymbolAlignment.RIGHT);
        float x = right - this.symbolRenderer.getOccupiedArea().getBBox().getX();
        if (listSymbolAlignment == ListSymbolAlignment.RIGHT) {
            if (!z) {
                x += this.symbolAreaWidth - this.symbolRenderer.getOccupiedArea().getBBox().getWidth();
            }
        } else if (listSymbolAlignment == ListSymbolAlignment.LEFT && z) {
            x -= this.symbolAreaWidth - this.symbolRenderer.getOccupiedArea().getBBox().getWidth();
        }
        IRenderer iRenderer5 = this.symbolRenderer;
        if ((iRenderer5 instanceof LineRenderer) && z) {
            iRenderer5.move(x - iRenderer5.getOccupiedArea().getBBox().getWidth(), 0.0f);
        } else {
            iRenderer5.move(x, 0.0f);
        }
        Rectangle bBox2 = getRootRenderer().getCurrentArea().getBBox();
        if ((z || this.symbolRenderer.getOccupiedArea().getBBox().getRight() <= bBox2.getLeft()) && (!z || this.symbolRenderer.getOccupiedArea().getBBox().getLeft() >= bBox2.getRight())) {
            return;
        }
        beginElementOpacityApplying(drawContext);
        this.symbolRenderer.draw(drawContext);
        endElementOpacityApplying(drawContext);
    }

    @Override // com.itextpdf.layout.renderer.DivRenderer, com.itextpdf.layout.renderer.IRenderer
    public IRenderer getNextRenderer() {
        return new ListItemRenderer((ListItem) this.modelElement);
    }

    @Override // com.itextpdf.layout.renderer.BlockRenderer
    protected AbstractRenderer createSplitRenderer(int i) {
        ListItemRenderer listItemRenderer = (ListItemRenderer) getNextRenderer();
        listItemRenderer.parent = this.parent;
        listItemRenderer.modelElement = this.modelElement;
        listItemRenderer.occupiedArea = this.occupiedArea;
        listItemRenderer.symbolAddedInside = this.symbolAddedInside;
        listItemRenderer.isLastRendererForModelElement = false;
        if (i == 2) {
            listItemRenderer.symbolRenderer = this.symbolRenderer;
            listItemRenderer.symbolAreaWidth = this.symbolAreaWidth;
        }
        listItemRenderer.addAllProperties(getOwnProperties());
        return listItemRenderer;
    }

    @Override // com.itextpdf.layout.renderer.BlockRenderer
    protected AbstractRenderer createOverflowRenderer(int i) {
        ListItemRenderer listItemRenderer = (ListItemRenderer) getNextRenderer();
        listItemRenderer.parent = this.parent;
        listItemRenderer.modelElement = this.modelElement;
        if (i == 3) {
            listItemRenderer.symbolRenderer = this.symbolRenderer;
            listItemRenderer.symbolAreaWidth = this.symbolAreaWidth;
        }
        listItemRenderer.addAllProperties(getOwnProperties());
        return listItemRenderer;
    }

    private void applyListSymbolPosition() {
        if (this.symbolRenderer == null || ((ListSymbolPosition) ListRenderer.getListItemOrListProperty(this, this.parent, 83)) != ListSymbolPosition.INSIDE) {
            return;
        }
        boolean zEquals = BaseDirection.RIGHT_TO_LEFT.equals(getProperty(7));
        if (this.childRenderers.size() > 0 && (this.childRenderers.get(0) instanceof ParagraphRenderer)) {
            ParagraphRenderer paragraphRenderer = (ParagraphRenderer) this.childRenderers.get(0);
            Float propertyAsFloat = getPropertyAsFloat(39);
            IRenderer iRenderer = this.symbolRenderer;
            if (iRenderer instanceof LineRenderer) {
                if (propertyAsFloat != null) {
                    iRenderer.getChildRenderers().get(1).setProperty(zEquals ? 44 : 45, UnitValue.createPointValue(propertyAsFloat.floatValue()));
                }
                Iterator<IRenderer> it = this.symbolRenderer.getChildRenderers().iterator();
                while (it.hasNext()) {
                    paragraphRenderer.childRenderers.add(0, it.next());
                }
            } else {
                if (propertyAsFloat != null) {
                    iRenderer.setProperty(zEquals ? 44 : 45, UnitValue.createPointValue(propertyAsFloat.floatValue()));
                }
                paragraphRenderer.childRenderers.add(0, this.symbolRenderer);
            }
            this.symbolAddedInside = true;
        } else if (this.childRenderers.size() > 0 && (this.childRenderers.get(0) instanceof ImageRenderer)) {
            IRenderer iRendererRenderSymbolInNeutralParagraph = renderSymbolInNeutralParagraph();
            iRendererRenderSymbolInNeutralParagraph.addChild(this.childRenderers.get(0));
            this.childRenderers.set(0, iRendererRenderSymbolInNeutralParagraph);
            this.symbolAddedInside = true;
        }
        if (this.symbolAddedInside) {
            return;
        }
        this.childRenderers.add(0, renderSymbolInNeutralParagraph());
        this.symbolAddedInside = true;
    }

    private IRenderer renderSymbolInNeutralParagraph() {
        IRenderer iRendererCreateRendererSubTree = new Paragraph().setNeutralRole().setMargin(0.0f).createRendererSubTree();
        Float f = (Float) ListRenderer.getListItemOrListProperty(this, this.parent, 39);
        if (f != null) {
            this.symbolRenderer.setProperty(45, UnitValue.createPointValue(f.floatValue()));
        }
        iRendererCreateRendererSubTree.addChild(this.symbolRenderer);
        return iRendererCreateRendererSubTree;
    }

    private boolean isListSymbolEmpty(IRenderer iRenderer) {
        return iRenderer instanceof TextRenderer ? ((TextRenderer) iRenderer).getText().toString().length() == 0 : (iRenderer instanceof LineRenderer) && ((TextRenderer) iRenderer.getChildRenderers().get(1)).getText().toString().length() == 0;
    }

    private float[] calculateAscenderDescender() {
        PdfFont pdfFontResolveFirstPdfFont = resolveFirstPdfFont();
        UnitValue propertyAsUnitValue = getPropertyAsUnitValue(24);
        if (pdfFontResolveFirstPdfFont != null && propertyAsUnitValue != null) {
            if (!propertyAsUnitValue.isPointValue()) {
                LoggerFactory.getLogger((Class<?>) ListItemRenderer.class).error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, 24));
            }
            float[] fArrCalculateAscenderDescender = TextRenderer.calculateAscenderDescender(pdfFontResolveFirstPdfFont);
            return new float[]{(propertyAsUnitValue.getValue() * fArrCalculateAscenderDescender[0]) / 1000.0f, (propertyAsUnitValue.getValue() * fArrCalculateAscenderDescender[1]) / 1000.0f};
        }
        return new float[]{0.0f, 0.0f};
    }
}
