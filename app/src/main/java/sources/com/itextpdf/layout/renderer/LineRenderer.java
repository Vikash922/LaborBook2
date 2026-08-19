package com.itextpdf.layout.renderer;

import com.itextpdf.commons.actions.sequence.SequenceId;
import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.layout.element.TabStop;
import com.itextpdf.layout.layout.LayoutArea;
import com.itextpdf.layout.layout.LayoutContext;
import com.itextpdf.layout.layout.LayoutResult;
import com.itextpdf.layout.layout.LineLayoutResult;
import com.itextpdf.layout.layout.TextLayoutResult;
import com.itextpdf.layout.minmaxwidth.MinMaxWidth;
import com.itextpdf.layout.minmaxwidth.MinMaxWidthUtils;
import com.itextpdf.layout.properties.BaseDirection;
import com.itextpdf.layout.properties.FloatPropertyValue;
import com.itextpdf.layout.properties.InlineVerticalAlignment;
import com.itextpdf.layout.properties.InlineVerticalAlignmentType;
import com.itextpdf.layout.properties.Leading;
import com.itextpdf.layout.properties.OverflowPropertyValue;
import com.itextpdf.layout.properties.RenderingMode;
import com.itextpdf.layout.properties.TabAlignment;
import com.itextpdf.layout.properties.UnitValue;
import com.itextpdf.p017io.font.otf.Glyph;
import com.itextpdf.p017io.font.otf.GlyphLine;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import com.itextpdf.p017io.util.ArrayUtil;
import com.itextpdf.p017io.util.TextUtil;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class LineRenderer extends AbstractRenderer {
    private static final float MIN_MAX_WIDTH_CORRECTION_EPS = 0.001f;
    private static final Logger logger = LoggerFactory.getLogger((Class<?>) LineRenderer.class);
    protected byte[] levels;
    protected float maxAscent;
    private float maxBlockAscent;
    private float maxBlockDescent;
    protected float maxDescent;
    float maxTextAscent;
    float maxTextDescent;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:209:0x06b8  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x06d0  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x070f  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x072b  */
    /* JADX WARN: Removed duplicated region for block: B:282:0x081e  */
    /* JADX WARN: Removed duplicated region for block: B:285:0x082c  */
    /* JADX WARN: Removed duplicated region for block: B:325:0x09a3  */
    /* JADX WARN: Removed duplicated region for block: B:388:0x0b0c  */
    /* JADX WARN: Removed duplicated region for block: B:457:0x0486 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:459:0x02b2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:460:0x09b0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x025c  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x029f  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0048  */
    /* JADX WARN: Type inference failed for: r13v12 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v34 */
    /* JADX WARN: Type inference failed for: r13v35 */
    /* JADX WARN: Type inference failed for: r13v4, types: [byte[], com.itextpdf.layout.renderer.IRenderer] */
    @Override // com.itextpdf.layout.renderer.IRenderer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.itextpdf.layout.layout.LayoutResult layout(com.itextpdf.layout.layout.LayoutContext r60) {
        /*
            Method dump skipped, instruction units count: 3236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.layout.renderer.LineRenderer.layout(com.itextpdf.layout.layout.LayoutContext):com.itextpdf.layout.layout.LayoutResult");
    }

    public float getMaxAscent() {
        return this.maxAscent;
    }

    public float getMaxDescent() {
        return this.maxDescent;
    }

    public float getYLine() {
        return this.occupiedArea.getBBox().getY() - this.maxDescent;
    }

    public float getLeadingValue(Leading leading) {
        int type = leading.getType();
        if (type == 1) {
            return Math.max(leading.getValue(), this.maxBlockAscent - this.maxBlockDescent);
        }
        if (type == 2) {
            return getTopLeadingIndent(leading) + getBottomLeadingIndent(leading);
        }
        throw new IllegalStateException();
    }

    @Override // com.itextpdf.layout.renderer.IRenderer
    public IRenderer getNextRenderer() {
        return new LineRenderer();
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer
    protected Float getFirstYLineRecursively() {
        return Float.valueOf(getYLine());
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer
    protected Float getLastYLineRecursively() {
        return Float.valueOf(getYLine());
    }

    public void justify(float f) {
        float fFloatValue = getPropertyAsFloat(61).floatValue();
        IRenderer lastNonFloatChildRenderer = getLastNonFloatChildRenderer();
        if (lastNonFloatChildRenderer == null) {
            return;
        }
        float f2 = 1.0f - fFloatValue;
        float x = (((this.occupiedArea.getBBox().getX() + f) - lastNonFloatChildRenderer.getOccupiedArea().getBBox().getX()) - lastNonFloatChildRenderer.getOccupiedArea().getBBox().getWidth()) / ((getNumberOfSpaces() * fFloatValue) + ((baseCharactersCount() - 1) * f2));
        if (Float.isInfinite(x)) {
            x = 0.0f;
        }
        float f3 = fFloatValue * x;
        float f4 = f2 * x;
        float x2 = this.occupiedArea.getBBox().getX();
        for (IRenderer iRenderer : getChildRenderers()) {
            if (!FloatingHelper.isRendererFloating(iRenderer)) {
                iRenderer.move(x2 - iRenderer.getOccupiedArea().getBBox().getX(), 0.0f);
                if (iRenderer instanceof TextRenderer) {
                    TextRenderer textRenderer = (TextRenderer) iRenderer;
                    float fFloatValue2 = textRenderer.getPropertyAsFloat(29, Float.valueOf(1.0f)).floatValue();
                    Float propertyAsFloat = textRenderer.getPropertyAsFloat(15);
                    Float propertyAsFloat2 = textRenderer.getPropertyAsFloat(78);
                    iRenderer.setProperty(15, Float.valueOf((propertyAsFloat == null ? 0.0f : propertyAsFloat.floatValue()) + (f4 / fFloatValue2)));
                    iRenderer.setProperty(78, Float.valueOf((propertyAsFloat2 == null ? 0.0f : propertyAsFloat2.floatValue()) + (f3 / fFloatValue2)));
                    iRenderer.getOccupiedArea().getBBox().setWidth(iRenderer.getOccupiedArea().getBBox().getWidth() + ((iRenderer == lastNonFloatChildRenderer ? textRenderer.lineLength() - 1 : textRenderer.lineLength()) * f4) + (textRenderer.getNumberOfSpaces() * f3));
                }
                x2 += iRenderer.getOccupiedArea().getBBox().getWidth();
            }
        }
        getOccupiedArea().getBBox().setWidth(f);
    }

    protected int getNumberOfSpaces() {
        int numberOfSpaces = 0;
        for (IRenderer iRenderer : getChildRenderers()) {
            if ((iRenderer instanceof TextRenderer) && !FloatingHelper.isRendererFloating(iRenderer)) {
                numberOfSpaces += ((TextRenderer) iRenderer).getNumberOfSpaces();
            }
        }
        return numberOfSpaces;
    }

    protected int length() {
        int iLineLength = 0;
        for (IRenderer iRenderer : getChildRenderers()) {
            if ((iRenderer instanceof TextRenderer) && !FloatingHelper.isRendererFloating(iRenderer)) {
                iLineLength += ((TextRenderer) iRenderer).lineLength();
            }
        }
        return iLineLength;
    }

    protected int baseCharactersCount() {
        int iBaseCharactersCount = 0;
        for (IRenderer iRenderer : getChildRenderers()) {
            if ((iRenderer instanceof TextRenderer) && !FloatingHelper.isRendererFloating(iRenderer)) {
                iBaseCharactersCount += ((TextRenderer) iRenderer).baseCharactersCount();
            }
        }
        return iBaseCharactersCount;
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer
    public String toString() {
        StringBuilder sb = new StringBuilder();
        Iterator<IRenderer> it = getChildRenderers().iterator();
        while (it.hasNext()) {
            sb.append(it.next().toString());
        }
        return sb.toString();
    }

    protected LineRenderer createSplitRenderer() {
        return (LineRenderer) getNextRenderer();
    }

    protected LineRenderer createOverflowRenderer() {
        return (LineRenderer) getNextRenderer();
    }

    protected LineRenderer[] split() {
        LineRenderer lineRendererCreateSplitRenderer = createSplitRenderer();
        lineRendererCreateSplitRenderer.occupiedArea = this.occupiedArea.mo3122clone();
        lineRendererCreateSplitRenderer.parent = this.parent;
        lineRendererCreateSplitRenderer.maxAscent = this.maxAscent;
        lineRendererCreateSplitRenderer.maxDescent = this.maxDescent;
        lineRendererCreateSplitRenderer.maxTextAscent = this.maxTextAscent;
        lineRendererCreateSplitRenderer.maxTextDescent = this.maxTextDescent;
        lineRendererCreateSplitRenderer.maxBlockAscent = this.maxBlockAscent;
        lineRendererCreateSplitRenderer.maxBlockDescent = this.maxBlockDescent;
        lineRendererCreateSplitRenderer.levels = this.levels;
        lineRendererCreateSplitRenderer.addAllProperties(getOwnProperties());
        LineRenderer lineRendererCreateOverflowRenderer = createOverflowRenderer();
        lineRendererCreateOverflowRenderer.parent = this.parent;
        lineRendererCreateOverflowRenderer.addAllProperties(getOwnProperties());
        return new LineRenderer[]{lineRendererCreateSplitRenderer, lineRendererCreateOverflowRenderer};
    }

    protected LineRenderer adjustChildrenYLine() {
        if (RenderingMode.HTML_MODE == getProperty(123) && hasInlineBlocksWithVerticalAlignment()) {
            InlineVerticalAlignmentHelper.adjustChildrenYLineHtmlMode(this);
        } else {
            adjustChildrenYLineDefaultMode();
        }
        return this;
    }

    protected void applyLeading(float f) {
        this.occupiedArea.getBBox().moveUp(f);
        this.occupiedArea.getBBox().decreaseHeight(f);
        for (IRenderer iRenderer : getChildRenderers()) {
            if (!FloatingHelper.isRendererFloating(iRenderer)) {
                iRenderer.move(0.0f, f);
            }
        }
    }

    protected LineRenderer trimLast() {
        int size = getChildRenderers().size();
        IRenderer iRenderer = null;
        do {
            size--;
            if (size < 0) {
                break;
            }
            iRenderer = getChildRenderers().get(size);
        } while (FloatingHelper.isRendererFloating(iRenderer));
        if ((iRenderer instanceof TextRenderer) && size >= 0) {
            this.occupiedArea.getBBox().setWidth(this.occupiedArea.getBBox().getWidth() - ((TextRenderer) iRenderer).trimLast());
        }
        return this;
    }

    public boolean containsImage() {
        Iterator<IRenderer> it = getChildRenderers().iterator();
        while (it.hasNext()) {
            if (it.next() instanceof ImageRenderer) {
                return true;
            }
        }
        return false;
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer
    public MinMaxWidth getMinMaxWidth() {
        return ((LineLayoutResult) layout(new LayoutContext(new LayoutArea(1, new Rectangle(MinMaxWidthUtils.getInfWidth(), 1000000.0f))))).getMinMaxWidth();
    }

    boolean hasChildRendererInHtmlMode() {
        Iterator<IRenderer> it = getChildRenderers().iterator();
        while (it.hasNext()) {
            if (RenderingMode.HTML_MODE.equals(it.next().getProperty(123))) {
                return true;
            }
        }
        return false;
    }

    float getTopLeadingIndent(Leading leading) {
        int type = leading.getType();
        if (type == 1) {
            return (Math.max(leading.getValue(), this.maxBlockAscent - this.maxBlockDescent) - this.occupiedArea.getBBox().getHeight()) / 2.0f;
        }
        if (type == 2) {
            UnitValue unitValue = (UnitValue) getProperty(24, UnitValue.createPointValue(0.0f));
            if (!unitValue.isPointValue()) {
                logger.error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, 24));
            }
            float value = (this.maxTextAscent != 0.0f || this.maxTextDescent != 0.0f || Math.abs(this.maxAscent) + Math.abs(this.maxDescent) == 0.0f || containsImage()) ? this.maxTextAscent : unitValue.getValue() * 0.8f;
            return Math.max(value + (((value - ((this.maxTextAscent != 0.0f || this.maxTextDescent != 0.0f || Math.abs(this.maxAscent) + Math.abs(this.maxDescent) == 0.0f || containsImage()) ? this.maxTextDescent : (-unitValue.getValue()) * 0.2f)) * (leading.getValue() - 1.0f)) / 2.0f), this.maxBlockAscent) - this.maxAscent;
        }
        throw new IllegalStateException();
    }

    float getBottomLeadingIndent(Leading leading) {
        int type = leading.getType();
        if (type == 1) {
            return (Math.max(leading.getValue(), this.maxBlockAscent - this.maxBlockDescent) - this.occupiedArea.getBBox().getHeight()) / 2.0f;
        }
        if (type == 2) {
            UnitValue unitValue = (UnitValue) getProperty(24, UnitValue.createPointValue(0.0f));
            if (!unitValue.isPointValue()) {
                logger.error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, 24));
            }
            float value = (this.maxTextAscent == 0.0f && this.maxTextDescent == 0.0f && !containsImage()) ? unitValue.getValue() * 0.8f : this.maxTextAscent;
            float f = (this.maxTextAscent == 0.0f && this.maxTextDescent == 0.0f && !containsImage()) ? (-unitValue.getValue()) * 0.2f : this.maxTextDescent;
            return Math.max((-f) + (((value - f) * (leading.getValue() - 1.0f)) / 2.0f), -this.maxBlockDescent) + this.maxDescent;
        }
        throw new IllegalStateException();
    }

    static LineSplitIntoGlyphsData splitLineIntoGlyphs(LineRenderer lineRenderer) {
        LineSplitIntoGlyphsData lineSplitIntoGlyphsData = new LineSplitIntoGlyphsData();
        boolean z = false;
        TextRenderer textRenderer = null;
        for (IRenderer iRenderer : lineRenderer.getChildRenderers()) {
            if (z) {
                break;
            }
            if (iRenderer instanceof TextRenderer) {
                TextRenderer textRenderer2 = (TextRenderer) iRenderer;
                GlyphLine glyphLine = textRenderer2.line;
                int i = glyphLine.start;
                while (true) {
                    if (i >= glyphLine.end) {
                        break;
                    }
                    if (TextUtil.isNewLine(glyphLine.get(i))) {
                        z = true;
                        break;
                    }
                    lineSplitIntoGlyphsData.addLineGlyph(new RendererGlyph(glyphLine.get(i), textRenderer2));
                    i++;
                }
                textRenderer = textRenderer2;
            } else {
                lineSplitIntoGlyphsData.addInsertAfter(textRenderer, iRenderer);
            }
        }
        return lineSplitIntoGlyphsData;
    }

    static void reorder(LineRenderer lineRenderer, LineSplitIntoGlyphsData lineSplitIntoGlyphsData, int[] iArr) {
        int i;
        lineRenderer.setChildRenderers(lineSplitIntoGlyphsData.getStarterNonTextRenderers());
        List<RendererGlyph> lineGlyphs = lineSplitIntoGlyphsData.getLineGlyphs();
        for (int i2 = 0; i2 < lineGlyphs.size(); i2 = i) {
            TextRenderer textRenderer = lineGlyphs.get(i2).renderer;
            TextRenderer textRendererRemoveReversedRanges = new TextRenderer(textRenderer).removeReversedRanges();
            lineRenderer.addChildRenderer(textRendererRemoveReversedRanges);
            lineRenderer.addAllChildRenderers(lineSplitIntoGlyphsData.getInsertAfterAndRemove(textRenderer));
            textRendererRemoveReversedRanges.line = new GlyphLine(textRendererRemoveReversedRanges.line);
            ArrayList arrayList = new ArrayList();
            boolean z = false;
            int i3 = i2;
            i = i3;
            while (i3 < lineGlyphs.size() && lineGlyphs.get(i3).renderer == textRenderer) {
                arrayList.add(lineGlyphs.get(i3).glyph);
                int i4 = i3 + 1;
                if (i4 >= lineGlyphs.size() || lineGlyphs.get(i4).renderer != textRenderer || iArr[i3] != iArr[i4] + 1 || TextUtil.isSpaceOrWhitespace(lineGlyphs.get(i4).glyph) || TextUtil.isSpaceOrWhitespace(lineGlyphs.get(i3).glyph)) {
                    if (z) {
                        textRendererRemoveReversedRanges.initReversedRanges().add(new int[]{i - i2, i3 - i2});
                        z = false;
                    }
                    i = i4;
                } else {
                    z = true;
                }
                i3 = i4;
            }
            textRendererRemoveReversedRanges.line.setGlyphs(arrayList);
        }
    }

    static void adjustChildPositionsAfterReordering(List<IRenderer> list, float f) {
        float width;
        for (IRenderer iRenderer : list) {
            if (!FloatingHelper.isRendererFloating(iRenderer)) {
                if (iRenderer instanceof TextRenderer) {
                    TextRenderer textRenderer = (TextRenderer) iRenderer;
                    float fCalculateLineWidth = textRenderer.calculateLineWidth();
                    UnitValue[] margins = textRenderer.getMargins();
                    if (!margins[1].isPointValue()) {
                        Logger logger2 = logger;
                        if (logger2.isErrorEnabled()) {
                            logger2.error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, "right margin"));
                        }
                    }
                    if (!margins[3].isPointValue()) {
                        Logger logger3 = logger;
                        if (logger3.isErrorEnabled()) {
                            logger3.error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, "left margin"));
                        }
                    }
                    UnitValue[] paddings = textRenderer.getPaddings();
                    if (!paddings[1].isPointValue()) {
                        Logger logger4 = logger;
                        if (logger4.isErrorEnabled()) {
                            logger4.error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, "right padding"));
                        }
                    }
                    if (!paddings[3].isPointValue()) {
                        Logger logger5 = logger;
                        if (logger5.isErrorEnabled()) {
                            logger5.error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, "left padding"));
                        }
                    }
                    width = fCalculateLineWidth + margins[1].getValue() + margins[3].getValue() + paddings[1].getValue() + paddings[3].getValue();
                    textRenderer.occupiedArea.getBBox().setX(f).setWidth(width);
                } else {
                    width = iRenderer.getOccupiedArea().getBBox().getWidth();
                    iRenderer.move(f - iRenderer.getOccupiedArea().getBBox().getX(), 0.0f);
                }
                f += width;
            }
        }
    }

    private LineRenderer[] splitNotFittingFloat(int i, LayoutResult layoutResult) {
        LineRenderer[] lineRendererArrSplit = split();
        lineRendererArrSplit[0].addAllChildRenderers(getChildRenderers().subList(0, i));
        lineRendererArrSplit[0].addChildRenderer(layoutResult.getSplitRenderer());
        lineRendererArrSplit[1].addChildRenderer(layoutResult.getOverflowRenderer());
        lineRendererArrSplit[1].addAllChildRenderers(getChildRenderers().subList(i + 1, getChildRenderers().size()));
        return lineRendererArrSplit;
    }

    private void adjustLineOnFloatPlaced(Rectangle rectangle, int i, FloatPropertyValue floatPropertyValue, Rectangle rectangle2) {
        if (rectangle2.getBottom() >= rectangle.getTop() || rectangle2.getTop() < rectangle.getTop()) {
            return;
        }
        float width = rectangle2.getWidth();
        if (floatPropertyValue.equals(FloatPropertyValue.LEFT)) {
            rectangle.setWidth(rectangle.getWidth() - width).moveRight(width);
            this.occupiedArea.getBBox().moveRight(width);
            for (int i2 = 0; i2 < i; i2++) {
                IRenderer iRenderer = getChildRenderers().get(i2);
                if (!FloatingHelper.isRendererFloating(iRenderer)) {
                    iRenderer.move(width, 0.0f);
                }
            }
            return;
        }
        rectangle.setWidth(rectangle.getWidth() - width);
    }

    private void replaceSplitRendererKidFloats(Map<Integer, IRenderer> map, LineRenderer lineRenderer) {
        for (Map.Entry<Integer, IRenderer> entry : map.entrySet()) {
            if (entry.getValue() != null) {
                lineRenderer.setChildRenderer(entry.getKey().intValue(), entry.getValue());
            } else {
                lineRenderer.setChildRenderer(entry.getKey().intValue(), null);
            }
        }
        for (int size = lineRenderer.getChildRenderers().size() - 1; size >= 0; size--) {
            if (lineRenderer.getChildRenderers().get(size) == null) {
                lineRenderer.removeChildRenderer(size);
            }
        }
    }

    private IRenderer getLastNonFloatChildRenderer() {
        for (int size = getChildRenderers().size() - 1; size >= 0; size--) {
            IRenderer iRenderer = getChildRenderers().get(size);
            if (!FloatingHelper.isRendererFloating(iRenderer)) {
                return iRenderer;
            }
        }
        return null;
    }

    private TabStop getNextTabStop(float f) {
        NavigableMap navigableMap = (NavigableMap) getProperty(69);
        Map.Entry entryHigherEntry = navigableMap != null ? navigableMap.higherEntry(Float.valueOf(f)) : null;
        if (entryHigherEntry != null) {
            return (TabStop) entryHigherEntry.getValue();
        }
        return null;
    }

    private TabStop calculateTab(IRenderer iRenderer, float f, float f2) {
        TabStop nextTabStop = getNextTabStop(f);
        if (nextTabStop == null) {
            processDefaultTab(iRenderer, f, f2);
            return null;
        }
        iRenderer.setProperty(68, nextTabStop.getTabLeader());
        iRenderer.setProperty(77, UnitValue.createPointValue(nextTabStop.getTabPosition() - f));
        iRenderer.setProperty(85, UnitValue.createPointValue(this.maxAscent - this.maxDescent));
        if (nextTabStop.getTabAlignment() == TabAlignment.LEFT) {
            return null;
        }
        return nextTabStop;
    }

    private float calculateTab(Rectangle rectangle, float f, TabStop tabStop, List<IRenderer> list, IRenderer iRenderer) {
        float tabPosition;
        Iterator<IRenderer> it = list.iterator();
        float width = 0.0f;
        while (it.hasNext()) {
            width += it.next().getOccupiedArea().getBBox().getWidth();
        }
        int i = C35161.$SwitchMap$com$itextpdf$layout$properties$TabAlignment[tabStop.getTabAlignment().ordinal()];
        if (i == 1) {
            tabPosition = (tabStop.getTabPosition() - f) - width;
        } else if (i == 2) {
            tabPosition = (tabStop.getTabPosition() - f) - (width / 2.0f);
        } else if (i != 3) {
            tabPosition = 0.0f;
        } else {
            Iterator<IRenderer> it2 = list.iterator();
            float f2 = -1.0f;
            float width2 = 0.0f;
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                IRenderer next = it2.next();
                float tabAnchorCharacterPosition = ((TextRenderer) next).getTabAnchorCharacterPosition();
                if (-1.0f != tabAnchorCharacterPosition) {
                    f2 = tabAnchorCharacterPosition;
                    break;
                }
                width2 += next.getOccupiedArea().getBBox().getWidth();
                f2 = tabAnchorCharacterPosition;
            }
            if (f2 == -1.0f) {
                f2 = 0.0f;
            }
            tabPosition = ((tabStop.getTabPosition() - f) - f2) - width2;
        }
        float width3 = tabPosition >= 0.0f ? tabPosition : 0.0f;
        if (f + width3 + width > rectangle.getWidth()) {
            width3 -= ((f + width) + width3) - rectangle.getWidth();
        }
        iRenderer.setProperty(77, UnitValue.createPointValue(width3));
        iRenderer.setProperty(85, UnitValue.createPointValue(this.maxAscent - this.maxDescent));
        return width3;
    }

    /* JADX INFO: renamed from: com.itextpdf.layout.renderer.LineRenderer$1 */
    static /* synthetic */ class C35161 {
        static final /* synthetic */ int[] $SwitchMap$com$itextpdf$layout$properties$TabAlignment;

        static {
            int[] iArr = new int[TabAlignment.values().length];
            $SwitchMap$com$itextpdf$layout$properties$TabAlignment = iArr;
            try {
                iArr[TabAlignment.RIGHT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$TabAlignment[TabAlignment.CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$TabAlignment[TabAlignment.ANCHOR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private void processDefaultTab(IRenderer iRenderer, float f, float f2) {
        Float propertyAsFloat = getPropertyAsFloat(67);
        Float fValueOf = Float.valueOf(propertyAsFloat.floatValue() - (f % propertyAsFloat.floatValue()));
        if (fValueOf.floatValue() + f > f2) {
            fValueOf = Float.valueOf(f2 - f);
        }
        iRenderer.setProperty(77, UnitValue.createPointValue(fValueOf.floatValue()));
        iRenderer.setProperty(85, UnitValue.createPointValue(this.maxAscent - this.maxDescent));
    }

    private void updateChildrenParent() {
        Iterator<IRenderer> it = getChildRenderers().iterator();
        while (it.hasNext()) {
            it.next().setParent(this);
        }
    }

    int trimFirst() {
        int i = 0;
        for (IRenderer iRenderer : getChildRenderers()) {
            if (!FloatingHelper.isRendererFloating(iRenderer)) {
                boolean z = true;
                if (iRenderer instanceof TextRenderer) {
                    TextRenderer textRenderer = (TextRenderer) iRenderer;
                    GlyphLine text = textRenderer.getText();
                    if (text != null) {
                        int i2 = text.start;
                        textRenderer.trimFirst();
                        i += textRenderer.getText().start - i2;
                    }
                    if (textRenderer.length() <= 0) {
                        z = false;
                    }
                }
                if (z) {
                    break;
                }
            }
        }
        return i;
    }

    private BaseDirection applyOtf() {
        BaseDirection baseDirection = (BaseDirection) getProperty(7);
        for (IRenderer iRenderer : getChildRenderers()) {
            if (iRenderer instanceof TextRenderer) {
                ((TextRenderer) iRenderer).applyOtf();
                if (baseDirection == null || baseDirection == BaseDirection.NO_BIDI) {
                    baseDirection = (BaseDirection) iRenderer.getOwnProperty(7);
                }
            }
        }
        return baseDirection;
    }

    static boolean isChildFloating(IRenderer iRenderer) {
        return (iRenderer instanceof AbstractRenderer) && FloatingHelper.isRendererFloating(iRenderer, (FloatPropertyValue) iRenderer.getProperty(99));
    }

    static boolean isInlineBlockChild(IRenderer iRenderer) {
        return (iRenderer instanceof BlockRenderer) || (iRenderer instanceof TableRenderer);
    }

    boolean isForceOverflowForTextRendererPartialResult(IRenderer iRenderer, boolean z, OverflowPropertyValue overflowPropertyValue, LayoutContext layoutContext, Rectangle rectangle, boolean z2) {
        if (z) {
            setProperty(103, overflowPropertyValue);
        }
        LayoutResult layoutResultLayout = iRenderer.layout(new LayoutContext(new LayoutArea(layoutContext.getArea().getPageNumber(), rectangle), z2));
        if (z) {
            setProperty(103, OverflowPropertyValue.FIT);
        }
        return (layoutResultLayout instanceof TextLayoutResult) && !((TextLayoutResult) layoutResultLayout).isWordHasBeenSplit();
    }

    float[] getAscentDescentOfLayoutedChildRenderer(IRenderer iRenderer, LayoutResult layoutResult, RenderingMode renderingMode, boolean z) {
        float descent;
        float height;
        Float lastYLineRecursively;
        if ((iRenderer instanceof ILeafElementRenderer) && layoutResult.getStatus() != 3) {
            if (RenderingMode.HTML_MODE == renderingMode && (iRenderer instanceof TextRenderer)) {
                return LineHeightHelper.getActualAscenderDescender((TextRenderer) iRenderer);
            }
            ILeafElementRenderer iLeafElementRenderer = (ILeafElementRenderer) iRenderer;
            height = iLeafElementRenderer.getAscent();
            descent = iLeafElementRenderer.getDescent();
        } else if (!z || layoutResult.getStatus() == 3) {
            descent = 0.0f;
            height = 0.0f;
        } else if (!(iRenderer instanceof AbstractRenderer) || (lastYLineRecursively = ((AbstractRenderer) iRenderer).getLastYLineRecursively()) == null) {
            height = iRenderer.getOccupiedArea().getBBox().getHeight();
            descent = 0.0f;
        } else {
            float top = iRenderer.getOccupiedArea().getBBox().getTop() - lastYLineRecursively.floatValue();
            descent = -(lastYLineRecursively.floatValue() - iRenderer.getOccupiedArea().getBBox().getBottom());
            height = top;
        }
        return new float[]{height, descent};
    }

    float[] updateAscentDescentAfterTextRendererSequenceProcessing(int i, LineAscentDescentState lineAscentDescentState, Map<Integer, float[]> map) {
        float fMax = lineAscentDescentState.maxAscent;
        float fMin = lineAscentDescentState.maxDescent;
        float fMax2 = lineAscentDescentState.maxTextAscent;
        float fMin2 = lineAscentDescentState.maxTextDescent;
        for (Map.Entry<Integer, float[]> entry : map.entrySet()) {
            if (entry.getKey().intValue() <= i) {
                fMax = Math.max(fMax, entry.getValue()[0]);
                fMin = Math.min(fMin, entry.getValue()[1]);
                fMax2 = Math.max(fMax2, entry.getValue()[0]);
                fMin2 = Math.min(fMin2, entry.getValue()[1]);
            }
        }
        this.maxAscent = fMax;
        this.maxDescent = fMin;
        this.maxTextAscent = fMax2;
        this.maxTextDescent = fMin2;
        return new float[]{fMax, fMin};
    }

    void updateAscentDescentAfterChildLayout(float[] fArr, IRenderer iRenderer, boolean z) {
        float f = fArr[0];
        float f2 = fArr[1];
        this.maxAscent = Math.max(this.maxAscent, f);
        boolean z2 = iRenderer instanceof TextRenderer;
        if (z2) {
            this.maxTextAscent = Math.max(this.maxTextAscent, f);
        } else if (!z) {
            this.maxBlockAscent = Math.max(this.maxBlockAscent, f);
        }
        this.maxDescent = Math.min(this.maxDescent, f2);
        if (z2) {
            this.maxTextDescent = Math.min(this.maxTextDescent, f2);
        } else {
            if (z) {
                return;
            }
            this.maxBlockDescent = Math.min(this.maxBlockDescent, f2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void updateBidiLevels(int i, BaseDirection baseDirection) {
        byte[] bArr;
        if (i != 0 && (bArr = this.levels) != null) {
            this.levels = Arrays.copyOfRange(bArr, i, bArr.length);
        }
        if (this.levels != null || baseDirection == null || baseDirection == BaseDirection.NO_BIDI) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        for (IRenderer iRenderer : getChildRenderers()) {
            if (z) {
                break;
            }
            if (iRenderer instanceof TextRenderer) {
                GlyphLine text = ((TextRenderer) iRenderer).getText();
                int i2 = text.start;
                while (true) {
                    if (i2 < text.end) {
                        Glyph glyph = text.get(i2);
                        if (TextUtil.isNewLine(glyph)) {
                            z = true;
                            break;
                        } else {
                            arrayList.add(Integer.valueOf(glyph.hasValidUnicode() ? glyph.getUnicode() : glyph.getUnicodeChars()[0]));
                            i2++;
                        }
                    }
                }
            }
        }
        if (arrayList.size() > 0) {
            PdfDocument pdfDocument = getPdfDocument();
            SequenceId documentIdWrapper = pdfDocument == null ? null : pdfDocument.getDocumentIdWrapper();
            MetaInfoContainer metaInfoContainer = (MetaInfoContainer) getProperty(135);
            this.levels = TypographyUtils.getBidiLevels(baseDirection, ArrayUtil.toIntArray(arrayList), documentIdWrapper, metaInfoContainer != null ? metaInfoContainer.getMetaInfo() : null);
            return;
        }
        this.levels = null;
    }

    private void resolveChildrenFonts() {
        ArrayList arrayList = new ArrayList(getChildRenderers().size());
        boolean z = false;
        for (IRenderer iRenderer : getChildRenderers()) {
            if (iRenderer instanceof TextRenderer) {
                if (((TextRenderer) iRenderer).resolveFonts(arrayList)) {
                    z = true;
                }
            } else {
                arrayList.add(iRenderer);
            }
        }
        if (z) {
            setChildRenderers(arrayList);
        }
    }

    private float decreaseRelativeWidthByChildAdditionalWidth(IRenderer iRenderer, float f) {
        if (!(iRenderer instanceof AbstractRenderer)) {
            return f;
        }
        Rectangle rectangle = new Rectangle(f, 0.0f);
        AbstractRenderer abstractRenderer = (AbstractRenderer) iRenderer;
        abstractRenderer.applyMargins(rectangle, false);
        if (!isBorderBoxSizing(iRenderer)) {
            abstractRenderer.applyBorderBox(rectangle, false);
            abstractRenderer.applyPaddings(rectangle, false);
        }
        return rectangle.getWidth();
    }

    private void adjustChildrenYLineDefaultMode() {
        float y = (this.occupiedArea.getBBox().getY() + this.occupiedArea.getBBox().getHeight()) - this.maxAscent;
        for (IRenderer iRenderer : getChildRenderers()) {
            if (!FloatingHelper.isRendererFloating(iRenderer)) {
                if (iRenderer instanceof ILeafElementRenderer) {
                    iRenderer.move(0.0f, (y - iRenderer.getOccupiedArea().getBBox().getBottom()) + ((ILeafElementRenderer) iRenderer).getDescent());
                } else {
                    Float lastYLineRecursively = (isInlineBlockChild(iRenderer) && (iRenderer instanceof AbstractRenderer)) ? ((AbstractRenderer) iRenderer).getLastYLineRecursively() : null;
                    iRenderer.move(0.0f, y - (lastYLineRecursively == null ? iRenderer.getOccupiedArea().getBBox().getBottom() : lastYLineRecursively.floatValue()));
                }
            }
        }
    }

    private boolean hasInlineBlocksWithVerticalAlignment() {
        for (IRenderer iRenderer : getChildRenderers()) {
            if (iRenderer.hasProperty(136) && InlineVerticalAlignmentType.BASELINE != ((InlineVerticalAlignment) iRenderer.getProperty(136)).getType()) {
                return true;
            }
        }
        return false;
    }

    public static class RendererGlyph {
        public Glyph glyph;
        public TextRenderer renderer;

        public RendererGlyph(Glyph glyph, TextRenderer textRenderer) {
            this.glyph = glyph;
            this.renderer = textRenderer;
        }
    }

    static class LineAscentDescentState {
        float maxAscent;
        float maxDescent;
        float maxTextAscent;
        float maxTextDescent;

        LineAscentDescentState(float f, float f2, float f3, float f4) {
            this.maxAscent = f;
            this.maxDescent = f2;
            this.maxTextAscent = f3;
            this.maxTextDescent = f4;
        }
    }

    static class LineSplitIntoGlyphsData {
        private final List<RendererGlyph> lineGlyphs = new ArrayList();
        private final Map<TextRenderer, List<IRenderer>> insertAfter = new HashMap();
        private final List<IRenderer> starterNonTextRenderers = new ArrayList();

        public List<RendererGlyph> getLineGlyphs() {
            return this.lineGlyphs;
        }

        public List<IRenderer> getInsertAfterAndRemove(TextRenderer textRenderer) {
            return this.insertAfter.remove(textRenderer);
        }

        public List<IRenderer> getStarterNonTextRenderers() {
            return this.starterNonTextRenderers;
        }

        public void addLineGlyph(RendererGlyph rendererGlyph) {
            this.lineGlyphs.add(rendererGlyph);
        }

        public void addInsertAfter(TextRenderer textRenderer, IRenderer iRenderer) {
            if (textRenderer == null) {
                this.starterNonTextRenderers.add(iRenderer);
                return;
            }
            if (!this.insertAfter.containsKey(textRenderer)) {
                this.insertAfter.put(textRenderer, new ArrayList());
            }
            this.insertAfter.get(textRenderer).add(iRenderer);
        }
    }
}
