package com.itextpdf.layout.renderer;

import com.itextpdf.commons.actions.contexts.IMetaInfo;
import com.itextpdf.commons.actions.sequence.SequenceId;
import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.font.PdfFont;
import com.itextpdf.kernel.font.PdfType0Font;
import com.itextpdf.kernel.font.PdfType1Font;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.layout.borders.Border;
import com.itextpdf.layout.element.Text;
import com.itextpdf.layout.exceptions.LayoutExceptionMessageConstant;
import com.itextpdf.layout.font.FontCharacteristics;
import com.itextpdf.layout.font.FontProvider;
import com.itextpdf.layout.font.FontSelectorStrategy;
import com.itextpdf.layout.font.FontSet;
import com.itextpdf.layout.layout.LayoutArea;
import com.itextpdf.layout.layout.LayoutContext;
import com.itextpdf.layout.layout.TextLayoutResult;
import com.itextpdf.layout.minmaxwidth.MinMaxWidth;
import com.itextpdf.layout.minmaxwidth.MinMaxWidthUtils;
import com.itextpdf.layout.properties.BaseDirection;
import com.itextpdf.layout.properties.FontKerning;
import com.itextpdf.layout.properties.RenderingMode;
import com.itextpdf.layout.properties.TransparentColor;
import com.itextpdf.layout.properties.Underline;
import com.itextpdf.layout.properties.UnitValue;
import com.itextpdf.layout.splitting.BreakAllSplitCharacters;
import com.itextpdf.layout.splitting.ISplitCharacters;
import com.itextpdf.p017io.font.FontMetrics;
import com.itextpdf.p017io.font.TrueTypeFont;
import com.itextpdf.p017io.font.otf.Glyph;
import com.itextpdf.p017io.font.otf.GlyphLine;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import com.itextpdf.p017io.util.EnumUtil;
import com.itextpdf.p017io.util.TextUtil;
import java.lang.Character;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class TextRenderer extends AbstractRenderer implements ILeafElementRenderer {
    private static final float BOLD_SIMULATION_STROKE_COEFF = 0.033333335f;
    private static final float ITALIC_ANGLE = 0.21256f;
    protected static final float TEXT_SPACE_COEFF = 1000.0f;
    static final float TYPO_ASCENDER_SCALE_COEFF = 1.2f;
    static final int UNDEFINED_FIRST_CHAR_TO_FORCE_OVERFLOW = Integer.MAX_VALUE;
    private PdfFont font;
    private int indexOfFirstCharacterToBeForcedToOverflow;
    protected GlyphLine line;
    protected boolean otfFeaturesApplied;
    protected List<int[]> reversedRanges;
    protected GlyphLine savedWordBreakAtLineEnding;
    private int specialScriptFirstNotFittingIndex;
    private List<Integer> specialScriptsWordBreakPoints;
    protected String strToBeConverted;
    protected float tabAnchorCharacterPosition;
    protected GlyphLine text;
    protected float yLineOffset;

    public TextRenderer(Text text) {
        this(text, text.getText());
    }

    public TextRenderer(Text text, String str) {
        super(text);
        this.otfFeaturesApplied = false;
        this.tabAnchorCharacterPosition = -1.0f;
        this.specialScriptFirstNotFittingIndex = -1;
        this.indexOfFirstCharacterToBeForcedToOverflow = Integer.MAX_VALUE;
        this.strToBeConverted = str;
    }

    protected TextRenderer(TextRenderer textRenderer) {
        super(textRenderer);
        this.otfFeaturesApplied = false;
        this.tabAnchorCharacterPosition = -1.0f;
        this.specialScriptFirstNotFittingIndex = -1;
        this.indexOfFirstCharacterToBeForcedToOverflow = Integer.MAX_VALUE;
        this.text = textRenderer.text;
        this.line = textRenderer.line;
        this.font = textRenderer.font;
        this.yLineOffset = textRenderer.yLineOffset;
        this.strToBeConverted = textRenderer.strToBeConverted;
        this.otfFeaturesApplied = textRenderer.otfFeaturesApplied;
        this.tabAnchorCharacterPosition = textRenderer.tabAnchorCharacterPosition;
        this.reversedRanges = textRenderer.reversedRanges;
        this.specialScriptsWordBreakPoints = textRenderer.specialScriptsWordBreakPoints;
    }

    /* JADX WARN: Removed duplicated region for block: B:144:0x04ed  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0509  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0588  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x05a8  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x0963 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:280:0x096d  */
    /* JADX WARN: Removed duplicated region for block: B:288:0x097f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:292:0x098c A[PHI: r10
      0x098c: PHI (r10v18 int) = (r10v14 int), (r10v14 int), (r10v22 int) binds: [B:287:0x097d, B:288:0x097f, B:291:0x098b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:294:0x0992  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x0998  */
    /* JADX WARN: Removed duplicated region for block: B:305:0x09b7  */
    /* JADX WARN: Removed duplicated region for block: B:308:0x09bf  */
    /* JADX WARN: Removed duplicated region for block: B:315:0x09f8  */
    /* JADX WARN: Removed duplicated region for block: B:317:0x0a09  */
    /* JADX WARN: Removed duplicated region for block: B:319:0x0a15  */
    /* JADX WARN: Removed duplicated region for block: B:326:0x0a39  */
    /* JADX WARN: Removed duplicated region for block: B:328:0x0a62  */
    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r3v86 int, still in use, count: 2, list:
          (r3v86 int) from 0x0486: IF  (r3v86 int) != (-1 int)  -> B:125:0x048b A[HIDDEN]
          (r3v86 int) from 0x048b: PHI (r3v73 int) = (r3v86 int) binds: [B:122:0x0486] A[DONT_GENERATE, DONT_INLINE]
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
        	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:126)
        	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:62)
        	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:45)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:67)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1117)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1117)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1117)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1117)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1117)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.TernaryMod.process(TernaryMod.java:35)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:44)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.visit(IfRegionVisitor.java:30)
        */
    @Override // com.itextpdf.layout.renderer.IRenderer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.itextpdf.layout.layout.LayoutResult layout(com.itextpdf.layout.layout.LayoutContext r86) {
        /*
            Method dump skipped, instruction units count: 3196
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.layout.renderer.TextRenderer.layout(com.itextpdf.layout.layout.LayoutContext):com.itextpdf.layout.layout.LayoutResult");
    }

    private void increaseYLineOffset(UnitValue[] unitValueArr, Border[] borderArr, UnitValue[] unitValueArr2) {
        float f = this.yLineOffset;
        UnitValue unitValue = unitValueArr[0];
        float value = f + (unitValue != null ? unitValue.getValue() : 0.0f);
        this.yLineOffset = value;
        Border border = borderArr[0];
        float width = value + (border != null ? border.getWidth() : 0.0f);
        this.yLineOffset = width;
        UnitValue unitValue2 = unitValueArr2[0];
        this.yLineOffset = width + (unitValue2 != null ? unitValue2.getValue() : 0.0f);
    }

    public void applyOtf() {
        updateFontAndText();
        Character.UnicodeScript unicodeScript = (Character.UnicodeScript) getProperty(23);
        if (this.otfFeaturesApplied || !TypographyUtils.isPdfCalligraphAvailable() || this.text.start >= this.text.end) {
            return;
        }
        PdfDocument pdfDocument = getPdfDocument();
        SequenceId documentIdWrapper = pdfDocument == null ? null : pdfDocument.getDocumentIdWrapper();
        MetaInfoContainer metaInfoContainer = (MetaInfoContainer) getProperty(135);
        IMetaInfo metaInfo = metaInfoContainer == null ? null : metaInfoContainer.getMetaInfo();
        if (hasOtfFont()) {
            Object property = getProperty(117);
            Collection<Character.UnicodeScript> supportedScripts = property != null ? TypographyUtils.getSupportedScripts(property) : null;
            if (supportedScripts == null) {
                supportedScripts = TypographyUtils.getSupportedScripts();
            }
            Collection<Character.UnicodeScript> collection = supportedScripts;
            ArrayList<ScriptRange> arrayList = new ArrayList();
            if (unicodeScript != null) {
                arrayList.add(new ScriptRange(unicodeScript, this.text.end));
            } else {
                ScriptRange scriptRange = new ScriptRange(null, this.text.end);
                arrayList.add(scriptRange);
                for (int i = this.text.start; i < this.text.end; i++) {
                    int unicode = this.text.get(i).getUnicode();
                    if (unicode > -1) {
                        Character.UnicodeScript unicodeScriptOf = Character.UnicodeScript.of(unicode);
                        if (!Character.UnicodeScript.COMMON.equals(unicodeScriptOf) && !Character.UnicodeScript.UNKNOWN.equals(unicodeScriptOf) && !Character.UnicodeScript.INHERITED.equals(unicodeScriptOf) && unicodeScriptOf != scriptRange.script) {
                            if (scriptRange.script == null) {
                                scriptRange.script = unicodeScriptOf;
                            } else {
                                scriptRange.rangeEnd = i;
                                scriptRange = new ScriptRange(unicodeScriptOf, this.text.end);
                                arrayList.add(scriptRange);
                            }
                        }
                    }
                }
            }
            int i2 = this.text.start;
            int i3 = this.text.end;
            int i4 = this.text.start;
            int i5 = 0;
            for (ScriptRange scriptRange2 : arrayList) {
                if (scriptRange2.script != null && collection.contains(EnumUtil.throwIfNull(scriptRange2.script))) {
                    scriptRange2.rangeEnd += i5;
                    this.text.start = i4;
                    this.text.end = scriptRange2.rangeEnd;
                    if ((scriptRange2.script == Character.UnicodeScript.ARABIC || scriptRange2.script == Character.UnicodeScript.HEBREW) && (this.parent instanceof LineRenderer)) {
                        setProperty(7, BaseDirection.DEFAULT_BIDI);
                    }
                    TypographyUtils.applyOtfScript(this.font.getFontProgram(), this.text, scriptRange2.script, property, documentIdWrapper, metaInfo);
                    i5 += this.text.end - scriptRange2.rangeEnd;
                    i4 = this.text.end;
                    scriptRange2.rangeEnd = i4;
                }
            }
            this.text.start = i2;
            this.text.end = i3 + i5;
        }
        if (((FontKerning) getProperty(22, FontKerning.NO)) == FontKerning.YES) {
            TypographyUtils.applyKerning(this.font.getFontProgram(), this.text, documentIdWrapper, metaInfo);
        }
        this.otfFeaturesApplied = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:113:0x02b8  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x02d3  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x02ed  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0326  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0343  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x025c  */
    @Override // com.itextpdf.layout.renderer.AbstractRenderer, com.itextpdf.layout.renderer.IRenderer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(com.itextpdf.layout.renderer.DrawContext r28) {
        /*
            Method dump skipped, instruction units count: 858
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.layout.renderer.TextRenderer.draw(com.itextpdf.layout.renderer.DrawContext):void");
    }

    public void trimFirst() {
        updateFontAndText();
        if (this.text != null) {
            while (this.text.start < this.text.end) {
                GlyphLine glyphLine = this.text;
                Glyph glyph = glyphLine.get(glyphLine.start);
                if (!TextUtil.isWhitespace(glyph) || TextUtil.isNewLine(glyph)) {
                    break;
                }
                this.text.start++;
            }
        }
        if (textContainsSpecialScriptGlyphs(true) && this.specialScriptsWordBreakPoints.get(0).intValue() == this.text.start) {
            if (this.specialScriptsWordBreakPoints.size() == 1) {
                this.specialScriptsWordBreakPoints.set(0, -1);
            } else {
                this.specialScriptsWordBreakPoints.remove(0);
            }
        }
    }

    float trimLast() {
        if (this.line.end <= 0) {
            return 0.0f;
        }
        UnitValue propertyAsUnitValue = getPropertyAsUnitValue(24);
        if (!propertyAsUnitValue.isPointValue()) {
            LoggerFactory.getLogger((Class<?>) TextRenderer.class).error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, 24));
        }
        Float propertyAsFloat = getPropertyAsFloat(15);
        Float propertyAsFloat2 = getPropertyAsFloat(78);
        float fFloatValue = getPropertyAsFloat(29, Float.valueOf(1.0f)).floatValue();
        float fScaleXAdvance = 0.0f;
        int i = this.line.end - 1;
        while (i >= this.line.start) {
            Glyph glyph = this.line.get(i);
            if (!TextUtil.isWhitespace(glyph)) {
                break;
            }
            saveWordBreakIfNotYetSaved(glyph);
            float charWidth = getCharWidth(glyph, propertyAsUnitValue.getValue(), Float.valueOf(fFloatValue), propertyAsFloat, propertyAsFloat2) / TEXT_SPACE_COEFF;
            fScaleXAdvance += charWidth - (i > this.line.start ? scaleXAdvance(this.line.get(i - 1).getXAdvance(), propertyAsUnitValue.getValue(), Float.valueOf(fFloatValue)) / TEXT_SPACE_COEFF : 0.0f);
            this.occupiedArea.getBBox().setWidth(this.occupiedArea.getBBox().getWidth() - charWidth);
            i--;
        }
        this.line.end = i + 1;
        return fScaleXAdvance;
    }

    @Override // com.itextpdf.layout.renderer.ILeafElementRenderer
    public float getAscent() {
        return this.yLineOffset;
    }

    @Override // com.itextpdf.layout.renderer.ILeafElementRenderer
    public float getDescent() {
        return -((getOccupiedAreaBBox().getHeight() - this.yLineOffset) - getPropertyAsFloat(72).floatValue());
    }

    public float getYLine() {
        return ((this.occupiedArea.getBBox().getY() + this.occupiedArea.getBBox().getHeight()) - this.yLineOffset) - getPropertyAsFloat(72).floatValue();
    }

    public void moveYLineTo(float f) {
        this.occupiedArea.getBBox().setY(this.occupiedArea.getBBox().getY() + (f - getYLine()));
    }

    public void setText(String str) {
        this.strToBeConverted = str;
        updateFontAndText();
    }

    public void setText(GlyphLine glyphLine, PdfFont pdfFont) {
        setProcessedGlyphLineAndFont(TextPreprocessingUtil.replaceSpecialWhitespaceGlyphs(new GlyphLine(glyphLine), pdfFont), pdfFont);
    }

    public GlyphLine getText() {
        updateFontAndText();
        return this.text;
    }

    public int length() {
        GlyphLine glyphLine = this.text;
        if (glyphLine == null) {
            return 0;
        }
        return glyphLine.end - this.text.start;
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer
    public String toString() {
        GlyphLine glyphLine = this.line;
        if (glyphLine != null) {
            return glyphLine.toString();
        }
        return null;
    }

    public int charAt(int i) {
        GlyphLine glyphLine = this.text;
        return glyphLine.get(i + glyphLine.start).getUnicode();
    }

    public float getTabAnchorCharacterPosition() {
        return this.tabAnchorCharacterPosition;
    }

    @Override // com.itextpdf.layout.renderer.IRenderer
    public IRenderer getNextRenderer() {
        logWarningIfGetNextRendererNotOverridden(TextRenderer.class, getClass());
        return new TextRenderer((Text) this.modelElement);
    }

    public static float[] calculateAscenderDescender(PdfFont pdfFont) {
        return calculateAscenderDescender(pdfFont, RenderingMode.DEFAULT_LAYOUT_MODE);
    }

    public static float[] calculateAscenderDescender(PdfFont pdfFont, RenderingMode renderingMode) {
        float typoDescender;
        float typoAscender;
        FontMetrics fontMetrics = pdfFont.getFontProgram().getFontMetrics();
        float f = (!RenderingMode.HTML_MODE.equals(renderingMode) || (pdfFont instanceof PdfType1Font)) ? TYPO_ASCENDER_SCALE_COEFF : 1.0f;
        if (fontMetrics.getWinAscender() == 0 || fontMetrics.getWinDescender() == 0 || (fontMetrics.getTypoAscender() == fontMetrics.getWinAscender() && fontMetrics.getTypoDescender() == fontMetrics.getWinDescender())) {
            typoDescender = f * fontMetrics.getTypoDescender();
            typoAscender = fontMetrics.getTypoAscender() * f;
        } else {
            typoAscender = fontMetrics.getWinAscender();
            typoDescender = fontMetrics.getWinDescender();
        }
        return new float[]{typoAscender, typoDescender};
    }

    List<int[]> getReversedRanges() {
        return this.reversedRanges;
    }

    List<int[]> initReversedRanges() {
        if (this.reversedRanges == null) {
            this.reversedRanges = new ArrayList();
        }
        return this.reversedRanges;
    }

    TextRenderer removeReversedRanges() {
        this.reversedRanges = null;
        return this;
    }

    private TextRenderer[] splitIgnoreFirstNewLine(int i) {
        if (TextUtil.isCarriageReturnFollowedByLineFeed(this.text, i)) {
            return split(i + 2);
        }
        return split(i + 1);
    }

    private GlyphLine convertToGlyphLine(String str) {
        return this.font.createGlyphLine(str);
    }

    private boolean hasOtfFont() {
        PdfFont pdfFont = this.font;
        return (pdfFont instanceof PdfType0Font) && (pdfFont.getFontProgram() instanceof TrueTypeFont);
    }

    boolean textContainsSpecialScriptGlyphs(boolean z) {
        if (this.specialScriptsWordBreakPoints != null) {
            return !r0.isEmpty();
        }
        if (z) {
            return false;
        }
        if (((ISplitCharacters) getProperty(62)) instanceof BreakAllSplitCharacters) {
            this.specialScriptsWordBreakPoints = new ArrayList();
        }
        for (int i = this.text.start; i < this.text.end; i++) {
            int unicode = this.text.get(i).getUnicode();
            if (unicode > -1) {
                if (codePointIsOfSpecialScript(unicode)) {
                    return true;
                }
            } else {
                char[] chars = this.text.get(i).getChars();
                if (chars != null) {
                    for (char c : chars) {
                        if (codePointIsOfSpecialScript(c)) {
                            return true;
                        }
                    }
                } else {
                    continue;
                }
            }
        }
        this.specialScriptsWordBreakPoints = new ArrayList();
        return false;
    }

    void setSpecialScriptsWordBreakPoints(List<Integer> list) {
        this.specialScriptsWordBreakPoints = list;
    }

    List<Integer> getSpecialScriptsWordBreakPoints() {
        return this.specialScriptsWordBreakPoints;
    }

    void setSpecialScriptFirstNotFittingIndex(int i) {
        this.specialScriptFirstNotFittingIndex = i;
    }

    int getSpecialScriptFirstNotFittingIndex() {
        return this.specialScriptFirstNotFittingIndex;
    }

    void setIndexOfFirstCharacterToBeForcedToOverflow(int i) {
        this.indexOfFirstCharacterToBeForcedToOverflow = i;
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer
    protected Rectangle getBackgroundArea(Rectangle rectangle) {
        float fFloatValue = getPropertyAsFloat(72).floatValue();
        return rectangle.moveUp(fFloatValue).decreaseHeight(fFloatValue);
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer
    protected Float getFirstYLineRecursively() {
        return Float.valueOf(getYLine());
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer
    protected Float getLastYLineRecursively() {
        return Float.valueOf(getYLine());
    }

    protected int lineLength() {
        if (this.line.end > 0) {
            return this.line.end - this.line.start;
        }
        return 0;
    }

    protected int baseCharactersCount() {
        int i = 0;
        for (int i2 = this.line.start; i2 < this.line.end; i2++) {
            if (!this.line.get(i2).hasPlacement()) {
                i++;
            }
        }
        return i;
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer
    public MinMaxWidth getMinMaxWidth() {
        return ((TextLayoutResult) layout(new LayoutContext(new LayoutArea(1, new Rectangle(MinMaxWidthUtils.getInfWidth(), 1000000.0f))))).getMinMaxWidth();
    }

    protected int getNumberOfSpaces() {
        int i = 0;
        if (this.line.end <= 0) {
            return 0;
        }
        for (int i2 = this.line.start; i2 < this.line.end; i2++) {
            if (this.line.get(i2).getUnicode() == 32) {
                i++;
            }
        }
        return i;
    }

    protected TextRenderer createSplitRenderer() {
        return (TextRenderer) getNextRenderer();
    }

    protected TextRenderer createOverflowRenderer() {
        return (TextRenderer) getNextRenderer();
    }

    protected TextRenderer[] split(int i) {
        TextRenderer textRendererCreateSplitRenderer = createSplitRenderer();
        GlyphLine glyphLine = new GlyphLine(this.text);
        glyphLine.start = this.text.start;
        glyphLine.end = i;
        textRendererCreateSplitRenderer.setProcessedGlyphLineAndFont(glyphLine, this.font);
        textRendererCreateSplitRenderer.line = this.line;
        textRendererCreateSplitRenderer.occupiedArea = this.occupiedArea.mo3122clone();
        textRendererCreateSplitRenderer.parent = this.parent;
        textRendererCreateSplitRenderer.yLineOffset = this.yLineOffset;
        textRendererCreateSplitRenderer.otfFeaturesApplied = this.otfFeaturesApplied;
        textRendererCreateSplitRenderer.isLastRendererForModelElement = false;
        textRendererCreateSplitRenderer.addAllProperties(getOwnProperties());
        TextRenderer textRendererCreateOverflowRenderer = createOverflowRenderer();
        GlyphLine glyphLine2 = new GlyphLine(this.text);
        glyphLine2.start = i;
        glyphLine2.end = this.text.end;
        textRendererCreateOverflowRenderer.setProcessedGlyphLineAndFont(glyphLine2, this.font);
        textRendererCreateOverflowRenderer.otfFeaturesApplied = this.otfFeaturesApplied;
        textRendererCreateOverflowRenderer.parent = this.parent;
        textRendererCreateOverflowRenderer.addAllProperties(getOwnProperties());
        List<Integer> list = this.specialScriptsWordBreakPoints;
        if (list != null) {
            if (list.isEmpty()) {
                textRendererCreateSplitRenderer.setSpecialScriptsWordBreakPoints(new ArrayList());
                textRendererCreateOverflowRenderer.setSpecialScriptsWordBreakPoints(new ArrayList());
            } else if (this.specialScriptsWordBreakPoints.get(0).intValue() == -1) {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(-1);
                textRendererCreateSplitRenderer.setSpecialScriptsWordBreakPoints(arrayList);
                ArrayList arrayList2 = new ArrayList(1);
                arrayList2.add(-1);
                textRendererCreateOverflowRenderer.setSpecialScriptsWordBreakPoints(arrayList2);
            } else {
                int iFindPossibleBreaksSplitPosition = findPossibleBreaksSplitPosition(this.specialScriptsWordBreakPoints, i, false);
                if (iFindPossibleBreaksSplitPosition > -1) {
                    textRendererCreateSplitRenderer.setSpecialScriptsWordBreakPoints(this.specialScriptsWordBreakPoints.subList(0, iFindPossibleBreaksSplitPosition + 1));
                } else {
                    ArrayList arrayList3 = new ArrayList(1);
                    arrayList3.add(-1);
                    textRendererCreateSplitRenderer.setSpecialScriptsWordBreakPoints(arrayList3);
                }
                int i2 = iFindPossibleBreaksSplitPosition + 1;
                if (i2 < this.specialScriptsWordBreakPoints.size()) {
                    List<Integer> list2 = this.specialScriptsWordBreakPoints;
                    textRendererCreateOverflowRenderer.setSpecialScriptsWordBreakPoints(list2.subList(i2, list2.size()));
                } else {
                    ArrayList arrayList4 = new ArrayList(1);
                    arrayList4.add(-1);
                    textRendererCreateOverflowRenderer.setSpecialScriptsWordBreakPoints(arrayList4);
                }
            }
        }
        return new TextRenderer[]{textRendererCreateSplitRenderer, textRendererCreateOverflowRenderer};
    }

    protected void drawSingleUnderline(Underline underline, TransparentColor transparentColor, PdfCanvas pdfCanvas, float f, float f2) {
        if (underline.getColor() != null) {
            transparentColor = new TransparentColor(underline.getColor(), underline.getOpacity());
        }
        pdfCanvas.saveState();
        if (transparentColor != null) {
            pdfCanvas.setStrokeColor(transparentColor.getColor());
            transparentColor.applyStrokeTransparency(pdfCanvas);
        }
        pdfCanvas.setLineCapStyle(underline.getLineCapStyle());
        float thickness = underline.getThickness(f);
        if (thickness != 0.0f) {
            pdfCanvas.setLineWidth(thickness);
            float yPosition = underline.getYPosition(f) + getYLine();
            Rectangle innerAreaBBox = getInnerAreaBBox();
            double d = yPosition;
            pdfCanvas.moveTo(innerAreaBBox.getX(), d).lineTo((innerAreaBBox.getX() + innerAreaBBox.getWidth()) - ((f * 0.5f) * f2), d).stroke();
        }
        pdfCanvas.restoreState();
    }

    protected float calculateLineWidth() {
        UnitValue propertyAsUnitValue = getPropertyAsUnitValue(24);
        if (!propertyAsUnitValue.isPointValue()) {
            LoggerFactory.getLogger((Class<?>) TextRenderer.class).error(MessageFormatUtil.format(IoLogMessageConstant.PROPERTY_IN_PERCENTS_NOT_SUPPORTED, 24));
        }
        return getGlyphLineWidth(this.line, propertyAsUnitValue.getValue(), getPropertyAsFloat(29, Float.valueOf(1.0f)).floatValue(), getPropertyAsFloat(15), getPropertyAsFloat(78));
    }

    protected boolean resolveFonts(List<IRenderer> list) {
        Object property = getProperty(20);
        if (property instanceof PdfFont) {
            list.add(this);
            return false;
        }
        if (property instanceof String[]) {
            FontProvider fontProvider = (FontProvider) getProperty(91);
            FontSet fontSet = (FontSet) getProperty(98);
            if (fontProvider.getFontSet().isEmpty() && (fontSet == null || fontSet.isEmpty())) {
                throw new IllegalStateException(LayoutExceptionMessageConstant.FONT_PROVIDER_NOT_SET_FONT_FAMILY_NOT_RESOLVED);
            }
            FontSelectorStrategy strategy = fontProvider.getStrategy(this.strToBeConverted, Arrays.asList((String[]) property), createFontCharacteristics(), fontSet);
            String str = this.strToBeConverted;
            if (str == null || str.isEmpty()) {
                list.add(this);
                return true;
            }
            while (!strategy.endOfText()) {
                GlyphLine glyphLine = new GlyphLine(strategy.nextGlyphs());
                PdfFont currentFont = strategy.getCurrentFont();
                list.add(createCopy(TextPreprocessingUtil.replaceSpecialWhitespaceGlyphs(glyphLine, currentFont), currentFont));
            }
            return true;
        }
        throw new IllegalStateException("Invalid FONT property value type.");
    }

    protected void setProcessedGlyphLineAndFont(GlyphLine glyphLine, PdfFont pdfFont) {
        this.text = glyphLine;
        this.font = pdfFont;
        this.otfFeaturesApplied = false;
        this.strToBeConverted = null;
        this.specialScriptsWordBreakPoints = null;
        setProperty(20, pdfFont);
    }

    protected TextRenderer createCopy(GlyphLine glyphLine, PdfFont pdfFont) {
        if (TextRenderer.class != getClass()) {
            LoggerFactory.getLogger((Class<?>) TextRenderer.class).error(MessageFormatUtil.format(IoLogMessageConstant.CREATE_COPY_SHOULD_BE_OVERRIDDEN, new Object[0]));
        }
        TextRenderer textRenderer = new TextRenderer(this);
        textRenderer.setProcessedGlyphLineAndFont(glyphLine, pdfFont);
        return textRenderer;
    }

    static void updateRangeBasedOnRemovedCharacters(ArrayList<Integer> arrayList, int[] iArr) {
        iArr[0] = iArr[0] - numberOfElementsLessThan(arrayList, iArr[0]);
        iArr[1] = iArr[1] - numberOfElementsLessThanOrEqual(arrayList, iArr[1]);
    }

    static int findPossibleBreaksSplitPosition(List<Integer> list, int i, boolean z) {
        int size = list.size() - 1;
        int i2 = 0;
        while (i2 <= size) {
            int i3 = (i2 + size) >>> 1;
            if (list.get(i3).compareTo(Integer.valueOf(i)) < 0) {
                i2 = i3 + 1;
            } else {
                if (list.get(i3).compareTo(Integer.valueOf(i)) <= 0) {
                    return i3;
                }
                size = i3 - 1;
            }
        }
        if (z || i2 <= 0) {
            return -1;
        }
        return i2 - 1;
    }

    static boolean codePointIsOfSpecialScript(int i) {
        Character.UnicodeScript unicodeScriptOf = Character.UnicodeScript.of(i);
        return Character.UnicodeScript.THAI == unicodeScriptOf || Character.UnicodeScript.KHMER == unicodeScriptOf || Character.UnicodeScript.LAO == unicodeScriptOf || Character.UnicodeScript.MYANMAR == unicodeScriptOf;
    }

    @Override // com.itextpdf.layout.renderer.AbstractRenderer
    PdfFont resolveFirstPdfFont(String[] strArr, FontProvider fontProvider, FontCharacteristics fontCharacteristics, FontSet fontSet) {
        FontSelectorStrategy strategy = fontProvider.getStrategy(this.strToBeConverted, Arrays.asList(strArr), fontCharacteristics, fontSet);
        while (!strategy.endOfText()) {
            List<Glyph> listNextGlyphs = strategy.nextGlyphs();
            PdfFont currentFont = strategy.getCurrentFont();
            Iterator<Glyph> it = listNextGlyphs.iterator();
            while (it.hasNext()) {
                if (currentFont.containsGlyph(it.next().getUnicode())) {
                    return currentFont;
                }
            }
        }
        return super.resolveFirstPdfFont(strArr, fontProvider, fontCharacteristics, fontSet);
    }

    boolean[] isStartsWithSplitCharWhiteSpaceAndEndsWithSplitChar(ISplitCharacters iSplitCharacters) {
        boolean z = this.line.start < this.line.end && iSplitCharacters.isSplitCharacter(this.text, this.line.start) && TextUtil.isSpaceOrWhitespace(this.text.get(this.line.start));
        boolean zContains = this.line.start < this.line.end && iSplitCharacters.isSplitCharacter(this.text, this.line.end - 1);
        List<Integer> list = this.specialScriptsWordBreakPoints;
        if (list == null || list.isEmpty()) {
            return new boolean[]{z, zContains};
        }
        if (!zContains) {
            zContains = this.specialScriptsWordBreakPoints.contains(Integer.valueOf(this.line.end));
        }
        return new boolean[]{z, zContains};
    }

    private float getCharWidth(Glyph glyph, float f, Float f2, Float f3, Float f4) {
        if (f2 == null) {
            f2 = Float.valueOf(1.0f);
        }
        float width = glyph.getWidth() * f * f2.floatValue();
        if (f3 != null) {
            width += f3.floatValue() * f2.floatValue() * TEXT_SPACE_COEFF;
        }
        return (f4 == null || glyph.getUnicode() != 32) ? width : width + (f4.floatValue() * f2.floatValue() * TEXT_SPACE_COEFF);
    }

    private float scaleXAdvance(float f, float f2, Float f3) {
        return f * f2 * f3.floatValue();
    }

    private float getGlyphLineWidth(GlyphLine glyphLine, float f, float f2, Float f3, Float f4) {
        int i = glyphLine.start;
        float charWidth = 0.0f;
        while (i < glyphLine.end) {
            if (!noPrint(glyphLine.get(i))) {
                charWidth = charWidth + getCharWidth(glyphLine.get(i), f, Float.valueOf(f2), f3, f4) + (i != glyphLine.start ? scaleXAdvance(glyphLine.get(i - 1).getXAdvance(), f, Float.valueOf(f2)) : 0.0f);
            }
            i++;
        }
        return charWidth / TEXT_SPACE_COEFF;
    }

    private int[] getWordBoundsForHyphenation(GlyphLine glyphLine, int i, int i2, int i3) {
        while (i3 >= i && !isGlyphPartOfWordForHyphenation(glyphLine.get(i3)) && !TextUtil.isUni0020(glyphLine.get(i3))) {
            i3--;
        }
        if (i3 < i) {
            return null;
        }
        int i4 = i3;
        while (i4 >= i && isGlyphPartOfWordForHyphenation(glyphLine.get(i4))) {
            i4--;
        }
        while (i3 < i2 && isGlyphPartOfWordForHyphenation(glyphLine.get(i3))) {
            i3++;
        }
        return new int[]{i4 + 1, i3};
    }

    private boolean isGlyphPartOfWordForHyphenation(Glyph glyph) {
        return Character.isLetter((char) glyph.getUnicode()) || 173 == glyph.getUnicode();
    }

    private void updateFontAndText() {
        PdfFont pdfFontResolveFirstPdfFont;
        if (this.strToBeConverted != null) {
            try {
                pdfFontResolveFirstPdfFont = getPropertyAsFont(20);
            } catch (ClassCastException unused) {
                pdfFontResolveFirstPdfFont = resolveFirstPdfFont();
                if (!this.strToBeConverted.isEmpty()) {
                    LoggerFactory.getLogger((Class<?>) TextRenderer.class).error(IoLogMessageConstant.FONT_PROPERTY_MUST_BE_PDF_FONT_OBJECT);
                }
            }
            setProcessedGlyphLineAndFont(TextPreprocessingUtil.replaceSpecialWhitespaceGlyphs(pdfFontResolveFirstPdfFont.createGlyphLine(this.strToBeConverted), pdfFontResolveFirstPdfFont), pdfFontResolveFirstPdfFont);
        }
    }

    private void saveWordBreakIfNotYetSaved(Glyph glyph) {
        if (this.savedWordBreakAtLineEnding == null) {
            if (TextUtil.isNewLine(glyph)) {
                glyph = this.font.getGlyph(32);
            }
            this.savedWordBreakAtLineEnding = new GlyphLine((List<Glyph>) Collections.singletonList(glyph));
        }
    }

    private static int numberOfElementsLessThan(ArrayList<Integer> arrayList, int i) {
        int iBinarySearch = Collections.binarySearch(arrayList, Integer.valueOf(i));
        return iBinarySearch >= 0 ? iBinarySearch : (-iBinarySearch) - 1;
    }

    private static int numberOfElementsLessThanOrEqual(ArrayList<Integer> arrayList, int i) {
        int iBinarySearch = Collections.binarySearch(arrayList, Integer.valueOf(i));
        return iBinarySearch >= 0 ? iBinarySearch + 1 : (-iBinarySearch) - 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean noPrint(Glyph glyph) {
        if (glyph.hasValidUnicode()) {
            return TextUtil.isNonPrintable(glyph.getUnicode());
        }
        return false;
    }

    private static boolean glyphBelongsToNonBreakingHyphenRelatedChunk(GlyphLine glyphLine, int i) {
        if (TextUtil.isNonBreakingHyphen(glyphLine.get(i))) {
            return true;
        }
        int i2 = i + 1;
        if (i2 < glyphLine.end && TextUtil.isNonBreakingHyphen(glyphLine.get(i2))) {
            return true;
        }
        int i3 = i - 1;
        return i3 >= glyphLine.start && TextUtil.isNonBreakingHyphen(glyphLine.get(i3));
    }

    private static class ReversedCharsIterator implements Iterator<GlyphLine.GlyphLinePart> {
        private boolean useReversed;
        private int currentInd = 0;
        private List<Integer> outStart = new ArrayList();
        private List<Integer> outEnd = new ArrayList();
        private List<Boolean> reversed = new ArrayList();

        public ReversedCharsIterator(List<int[]> list, GlyphLine glyphLine) {
            if (list != null) {
                if (list.get(0)[0] > 0) {
                    this.outStart.add(0);
                    this.outEnd.add(Integer.valueOf(list.get(0)[0]));
                    this.reversed.add(false);
                }
                for (int i = 0; i < list.size(); i++) {
                    int[] iArr = list.get(i);
                    this.outStart.add(Integer.valueOf(iArr[0]));
                    this.outEnd.add(Integer.valueOf(iArr[1] + 1));
                    this.reversed.add(true);
                    if (i != list.size() - 1) {
                        this.outStart.add(Integer.valueOf(iArr[1] + 1));
                        this.outEnd.add(Integer.valueOf(list.get(i + 1)[0]));
                        this.reversed.add(false);
                    }
                }
                int i2 = list.get(list.size() - 1)[1];
                if (i2 < glyphLine.size() - 1) {
                    this.outStart.add(Integer.valueOf(i2 + 1));
                    this.outEnd.add(Integer.valueOf(glyphLine.size()));
                    this.reversed.add(false);
                    return;
                }
                return;
            }
            this.outStart.add(Integer.valueOf(glyphLine.start));
            this.outEnd.add(Integer.valueOf(glyphLine.end));
            this.reversed.add(false);
        }

        public ReversedCharsIterator setUseReversed(boolean z) {
            this.useReversed = z;
            return this;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.currentInd < this.outStart.size();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public GlyphLine.GlyphLinePart next() {
            GlyphLine.GlyphLinePart reversed = new GlyphLine.GlyphLinePart(this.outStart.get(this.currentInd).intValue(), this.outEnd.get(this.currentInd).intValue()).setReversed(this.useReversed && this.reversed.get(this.currentInd).booleanValue());
            this.currentInd++;
            return reversed;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new IllegalStateException("Operation not supported");
        }
    }

    private static class ScriptRange {
        int rangeEnd;
        Character.UnicodeScript script;

        ScriptRange(Character.UnicodeScript unicodeScript, int i) {
            this.script = unicodeScript;
            this.rangeEnd = i;
        }
    }

    private static final class CustomGlyphLineFilter implements GlyphLine.IGlyphLineFilter {
        private CustomGlyphLineFilter() {
        }

        @Override // com.itextpdf.io.font.otf.GlyphLine.IGlyphLineFilter
        public boolean accept(Glyph glyph) {
            return !TextRenderer.noPrint(glyph);
        }
    }
}
