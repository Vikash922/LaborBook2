package com.itextpdf.kernel.pdf.canvas.parser;

import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.ads.RequestConfiguration;
import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.forms.xfdf.XfdfConstants;
import com.itextpdf.kernel.colors.CalGray;
import com.itextpdf.kernel.colors.CalRgb;
import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.colors.DeviceCmyk;
import com.itextpdf.kernel.colors.DeviceGray;
import com.itextpdf.kernel.colors.DeviceN;
import com.itextpdf.kernel.colors.DeviceRgb;
import com.itextpdf.kernel.colors.IccBased;
import com.itextpdf.kernel.colors.Indexed;
import com.itextpdf.kernel.colors.Lab;
import com.itextpdf.kernel.colors.PatternColor;
import com.itextpdf.kernel.colors.Separation;
import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.font.PdfFont;
import com.itextpdf.kernel.font.PdfFontFactory;
import com.itextpdf.kernel.geom.Matrix;
import com.itextpdf.kernel.geom.NoninvertibleTransformException;
import com.itextpdf.kernel.geom.Path;
import com.itextpdf.kernel.logs.KernelLogMessageConstant;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfIndirectReference;
import com.itextpdf.kernel.pdf.PdfLiteral;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfPage;
import com.itextpdf.kernel.pdf.PdfResources;
import com.itextpdf.kernel.pdf.PdfStream;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.kernel.pdf.canvas.CanvasTag;
import com.itextpdf.kernel.pdf.canvas.parser.data.AbstractRenderInfo;
import com.itextpdf.kernel.pdf.canvas.parser.data.ClippingPathInfo;
import com.itextpdf.kernel.pdf.canvas.parser.data.IEventData;
import com.itextpdf.kernel.pdf.canvas.parser.data.ImageRenderInfo;
import com.itextpdf.kernel.pdf.canvas.parser.data.PathRenderInfo;
import com.itextpdf.kernel.pdf.canvas.parser.data.TextRenderInfo;
import com.itextpdf.kernel.pdf.canvas.parser.listener.IEventListener;
import com.itextpdf.kernel.pdf.canvas.parser.util.PdfCanvasParser;
import com.itextpdf.kernel.pdf.colorspace.PdfCieBasedCs;
import com.itextpdf.kernel.pdf.colorspace.PdfColorSpace;
import com.itextpdf.kernel.pdf.colorspace.PdfPattern;
import com.itextpdf.kernel.pdf.colorspace.PdfSpecialCs;
import com.itextpdf.kernel.pdf.extgstate.PdfExtGState;
import com.itextpdf.kernel.pdf.tagging.StandardRoles;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import com.itextpdf.p017io.source.PdfTokenizer;
import com.itextpdf.p017io.source.RandomAccessFileOrArray;
import com.itextpdf.p017io.source.RandomAccessSourceFactory;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import com.itextpdf.svg.SvgConstants;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Stack;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class PdfCanvasProcessor {
    public static final String DEFAULT_OPERATOR = "DefaultOperator";
    private Map<Integer, WeakReference<PdfFont>> cachedFonts;
    protected int clippingRule;
    protected Path currentPath;
    protected final IEventListener eventListener;
    private final Stack<ParserGraphicsState> gsStack;
    protected boolean isClip;
    private Stack<CanvasTag> markedContentStack;
    private Map<String, IContentOperator> operators;
    private Stack<PdfResources> resourcesStack;
    protected final Set<EventType> supportedEvents;
    private Matrix textLineMatrix;
    private Matrix textMatrix;
    private Map<PdfName, IXObjectDoHandler> xobjectDoHandlers;

    public PdfCanvasProcessor(IEventListener iEventListener) {
        this.currentPath = new Path();
        this.gsStack = new Stack<>();
        this.cachedFonts = new HashMap();
        this.markedContentStack = new Stack<>();
        this.eventListener = iEventListener;
        this.supportedEvents = iEventListener.getSupportedEvents();
        this.operators = new HashMap();
        populateOperators();
        this.xobjectDoHandlers = new HashMap();
        populateXObjectDoHandlers();
        reset();
    }

    public PdfCanvasProcessor(IEventListener iEventListener, Map<String, IContentOperator> map) {
        this(iEventListener);
        for (Map.Entry<String, IContentOperator> entry : map.entrySet()) {
            registerContentOperator(entry.getKey(), entry.getValue());
        }
    }

    public IXObjectDoHandler registerXObjectDoHandler(PdfName pdfName, IXObjectDoHandler iXObjectDoHandler) {
        return this.xobjectDoHandlers.put(pdfName, iXObjectDoHandler);
    }

    public IContentOperator registerContentOperator(String str, IContentOperator iContentOperator) {
        return this.operators.put(str, iContentOperator);
    }

    public Collection<String> getRegisteredOperatorStrings() {
        return new ArrayList(this.operators.keySet());
    }

    public void reset() {
        this.gsStack.removeAllElements();
        this.gsStack.push(new ParserGraphicsState());
        this.textMatrix = null;
        this.textLineMatrix = null;
        this.resourcesStack = new Stack<>();
        this.isClip = false;
        this.currentPath = new Path();
    }

    public ParserGraphicsState getGraphicsState() {
        return this.gsStack.peek();
    }

    public void processContent(byte[] bArr, PdfResources pdfResources) {
        if (pdfResources == null) {
            throw new PdfException(KernelExceptionMessageConstant.RESOURCES_CANNOT_BE_NULL);
        }
        this.resourcesStack.push(pdfResources);
        PdfCanvasParser pdfCanvasParser = new PdfCanvasParser(new PdfTokenizer(new RandomAccessFileOrArray(new RandomAccessSourceFactory().createSource(bArr))), pdfResources);
        ArrayList arrayList = new ArrayList();
        while (pdfCanvasParser.parse(arrayList).size() > 0) {
            try {
                invokeOperator((PdfLiteral) arrayList.get(arrayList.size() - 1), arrayList);
            } catch (IOException e) {
                throw new PdfException("Cannot parse content stream.", (Throwable) e);
            }
        }
        this.resourcesStack.pop();
    }

    public void processPageContent(PdfPage pdfPage) {
        initClippingPath(pdfPage);
        ParserGraphicsState graphicsState = getGraphicsState();
        eventOccurred(new ClippingPathInfo(graphicsState, graphicsState.getClippingPath(), graphicsState.getCtm()), EventType.CLIP_PATH_CHANGED);
        processContent(pdfPage.getContentBytes(), pdfPage.getResources());
    }

    public IEventListener getEventListener() {
        return this.eventListener;
    }

    protected void populateOperators() {
        registerContentOperator(DEFAULT_OPERATOR, new IgnoreOperator());
        registerContentOperator("q", new PushGraphicsStateOperator());
        registerContentOperator(SvgConstants.Attributes.PATH_DATA_QUAD_CURVE_TO, new PopGraphicsStateOperator());
        registerContentOperator(CommonCssConstants.f3297CM, new ModifyCurrentTransformationMatrixOperator());
        registerContentOperator("Do", new DoOperator());
        registerContentOperator("BMC", new BeginMarkedContentOperator());
        registerContentOperator("BDC", new BeginMarkedContentDictionaryOperator());
        registerContentOperator("EMC", new EndMarkedContentOperator());
        Set<EventType> set = this.supportedEvents;
        if (set == null || set.contains(EventType.RENDER_TEXT) || this.supportedEvents.contains(EventType.RENDER_PATH) || this.supportedEvents.contains(EventType.CLIP_PATH_CHANGED)) {
            registerContentOperator(SvgConstants.Tags.f3337G, new SetGrayFillOperator());
            registerContentOperator(RequestConfiguration.MAX_AD_CONTENT_RATING_G, new SetGrayStrokeOperator());
            registerContentOperator("rg", new SetRGBFillOperator());
            registerContentOperator("RG", new SetRGBStrokeOperator());
            registerContentOperator("k", new SetCMYKFillOperator());
            registerContentOperator("K", new SetCMYKStrokeOperator());
            registerContentOperator("cs", new SetColorSpaceFillOperator());
            registerContentOperator("CS", new SetColorSpaceStrokeOperator());
            registerContentOperator("sc", new SetColorFillOperator());
            registerContentOperator("SC", new SetColorStrokeOperator());
            registerContentOperator("scn", new SetColorFillOperator());
            registerContentOperator("SCN", new SetColorStrokeOperator());
            registerContentOperator("gs", new ProcessGraphicsStateResourceOperator());
        }
        Set<EventType> set2 = this.supportedEvents;
        if (set2 == null || set2.contains(EventType.RENDER_IMAGE)) {
            registerContentOperator("EI", new EndImageOperator());
        }
        Set<EventType> set3 = this.supportedEvents;
        if (set3 == null || set3.contains(EventType.RENDER_TEXT) || this.supportedEvents.contains(EventType.BEGIN_TEXT) || this.supportedEvents.contains(EventType.END_TEXT)) {
            registerContentOperator("BT", new BeginTextOperator());
            registerContentOperator("ET", new EndTextOperator());
        }
        Set<EventType> set4 = this.supportedEvents;
        if (set4 == null || set4.contains(EventType.RENDER_TEXT)) {
            SetTextCharacterSpacingOperator setTextCharacterSpacingOperator = new SetTextCharacterSpacingOperator();
            registerContentOperator("Tc", setTextCharacterSpacingOperator);
            SetTextWordSpacingOperator setTextWordSpacingOperator = new SetTextWordSpacingOperator();
            registerContentOperator("Tw", setTextWordSpacingOperator);
            registerContentOperator("Tz", new SetTextHorizontalScalingOperator());
            SetTextLeadingOperator setTextLeadingOperator = new SetTextLeadingOperator();
            registerContentOperator("TL", setTextLeadingOperator);
            registerContentOperator("Tf", new SetTextFontOperator());
            registerContentOperator("Tr", new SetTextRenderModeOperator());
            registerContentOperator("Ts", new SetTextRiseOperator());
            TextMoveStartNextLineOperator textMoveStartNextLineOperator = new TextMoveStartNextLineOperator();
            registerContentOperator("Td", textMoveStartNextLineOperator);
            registerContentOperator(StandardRoles.f3198TD, new TextMoveStartNextLineWithLeadingOperator(textMoveStartNextLineOperator, setTextLeadingOperator));
            registerContentOperator("Tm", new TextSetTextMatrixOperator());
            TextMoveNextLineOperator textMoveNextLineOperator = new TextMoveNextLineOperator(textMoveStartNextLineOperator);
            registerContentOperator("T*", textMoveNextLineOperator);
            ShowTextOperator showTextOperator = new ShowTextOperator();
            registerContentOperator("Tj", showTextOperator);
            MoveNextLineAndShowTextOperator moveNextLineAndShowTextOperator = new MoveNextLineAndShowTextOperator(textMoveNextLineOperator, showTextOperator);
            registerContentOperator("'", moveNextLineAndShowTextOperator);
            registerContentOperator("\"", new MoveNextLineAndShowTextWithSpacingOperator(setTextWordSpacingOperator, setTextCharacterSpacingOperator, moveNextLineAndShowTextOperator));
            registerContentOperator("TJ", new ShowTextArrayOperator());
        }
        Set<EventType> set5 = this.supportedEvents;
        if (set5 == null || set5.contains(EventType.CLIP_PATH_CHANGED) || this.supportedEvents.contains(EventType.RENDER_PATH)) {
            registerContentOperator("w", new SetLineWidthOperator());
            registerContentOperator("J", new SetLineCapOperator());
            registerContentOperator("j", new SetLineJoinOperator());
            registerContentOperator("M", new SetMiterLimitOperator());
            registerContentOperator(SvgConstants.Attributes.f3323D, new SetLineDashPatternOperator());
            registerContentOperator(SvgConstants.Attributes.PATH_DATA_REL_MOVE_TO, new MoveToOperator());
            registerContentOperator(SvgConstants.Attributes.PATH_DATA_REL_LINE_TO, new LineToOperator());
            registerContentOperator(SvgConstants.Attributes.PATH_DATA_REL_CURVE_TO, new CurveOperator());
            registerContentOperator(SvgConstants.Attributes.PATH_DATA_REL_LINE_TO_V, new CurveFirstPointDuplicatedOperator());
            registerContentOperator(SvgConstants.Attributes.f3333Y, new CurveFourhPointDuplicatedOperator());
            registerContentOperator(SvgConstants.Attributes.PATH_DATA_REL_LINE_TO_H, new CloseSubpathOperator());
            registerContentOperator("re", new RectangleOperator());
            registerContentOperator("S", new PaintPathOperator(1, -1, false));
            registerContentOperator(SvgConstants.Attributes.PATH_DATA_REL_CURVE_TO_S, new PaintPathOperator(1, -1, true));
            registerContentOperator(XfdfConstants.f2852F, new PaintPathOperator(2, 1, false));
            registerContentOperator("F", new PaintPathOperator(2, 1, false));
            registerContentOperator("f*", new PaintPathOperator(2, 2, false));
            registerContentOperator(SvgConstants.Attributes.PATH_DATA_BEARING, new PaintPathOperator(3, 1, false));
            registerContentOperator("B*", new PaintPathOperator(3, 2, false));
            registerContentOperator(SvgConstants.Attributes.PATH_DATA_REL_BEARING, new PaintPathOperator(3, 1, true));
            registerContentOperator("b*", new PaintPathOperator(3, 2, true));
            registerContentOperator("n", new PaintPathOperator(0, -1, false));
            registerContentOperator(ExifInterface.LONGITUDE_WEST, new ClipPathOperator(1));
            registerContentOperator("W*", new ClipPathOperator(2));
        }
    }

    protected void paintPath(int i, int i2) {
        ParserGraphicsState graphicsState = getGraphicsState();
        eventOccurred(new PathRenderInfo(this.markedContentStack, graphicsState, this.currentPath, i, i2, this.isClip, this.clippingRule), EventType.RENDER_PATH);
        if (this.isClip) {
            this.isClip = false;
            graphicsState.clip(this.currentPath, this.clippingRule);
            eventOccurred(new ClippingPathInfo(graphicsState, graphicsState.getClippingPath(), graphicsState.getCtm()), EventType.CLIP_PATH_CHANGED);
        }
        this.currentPath = new Path();
    }

    protected void invokeOperator(PdfLiteral pdfLiteral, List<PdfObject> list) {
        IContentOperator iContentOperator = this.operators.get(pdfLiteral.toString());
        if (iContentOperator == null) {
            iContentOperator = this.operators.get(DEFAULT_OPERATOR);
        }
        iContentOperator.invoke(this, pdfLiteral, list);
    }

    protected PdfStream getXObjectStream(PdfName pdfName) {
        return getResources().getResource(PdfName.XObject).getAsStream(pdfName);
    }

    protected PdfResources getResources() {
        return this.resourcesStack.peek();
    }

    protected void populateXObjectDoHandlers() {
        registerXObjectDoHandler(PdfName.Default, new IgnoreXObjectDoHandler());
        registerXObjectDoHandler(PdfName.Form, new FormXObjectDoHandler());
        Set<EventType> set = this.supportedEvents;
        if (set == null || set.contains(EventType.RENDER_IMAGE)) {
            registerXObjectDoHandler(PdfName.Image, new ImageXObjectDoHandler());
        }
    }

    protected PdfFont getFont(PdfDictionary pdfDictionary) {
        if (pdfDictionary.getIndirectReference() == null) {
            return PdfFontFactory.createFont(pdfDictionary);
        }
        int objNumber = pdfDictionary.getIndirectReference().getObjNumber();
        WeakReference<PdfFont> weakReference = this.cachedFonts.get(Integer.valueOf(objNumber));
        PdfFont pdfFont = weakReference == null ? null : weakReference.get();
        if (pdfFont != null) {
            return pdfFont;
        }
        PdfFont pdfFontCreateFont = PdfFontFactory.createFont(pdfDictionary);
        this.cachedFonts.put(Integer.valueOf(objNumber), new WeakReference<>(pdfFontCreateFont));
        return pdfFontCreateFont;
    }

    protected void beginMarkedContent(PdfName pdfName, PdfDictionary pdfDictionary) {
        this.markedContentStack.push(new CanvasTag(pdfName).setProperties(pdfDictionary));
    }

    protected void endMarkedContent() {
        this.markedContentStack.pop();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void beginText() {
        eventOccurred(null, EventType.BEGIN_TEXT);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void endText() {
        eventOccurred(null, EventType.END_TEXT);
    }

    protected void eventOccurred(IEventData iEventData, EventType eventType) {
        Set<EventType> set = this.supportedEvents;
        if (set == null || set.contains(eventType)) {
            this.eventListener.eventOccurred(iEventData, eventType);
        }
        if (iEventData instanceof AbstractRenderInfo) {
            ((AbstractRenderInfo) iEventData).releaseGraphicsState();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void displayPdfString(PdfString pdfString) {
        TextRenderInfo textRenderInfo = new TextRenderInfo(pdfString, getGraphicsState(), this.textMatrix, this.markedContentStack);
        this.textMatrix = new Matrix(textRenderInfo.getUnscaledWidth(), 0.0f).multiply(this.textMatrix);
        eventOccurred(textRenderInfo, EventType.RENDER_TEXT);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void displayXObject(PdfName pdfName) {
        PdfStream xObjectStream = getXObjectStream(pdfName);
        IXObjectDoHandler iXObjectDoHandler = this.xobjectDoHandlers.get(xObjectStream.getAsName(PdfName.Subtype));
        if (iXObjectDoHandler == null) {
            iXObjectDoHandler = this.xobjectDoHandlers.get(PdfName.Default);
        }
        iXObjectDoHandler.handleXObject(this, this.markedContentStack, xObjectStream, pdfName);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void displayImage(Stack<CanvasTag> stack, PdfStream pdfStream, PdfName pdfName, boolean z) {
        eventOccurred(new ImageRenderInfo(stack, getGraphicsState(), getGraphicsState().getCtm(), pdfStream, pdfName, getResources().getResource(PdfName.ColorSpace), z), EventType.RENDER_IMAGE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyTextAdjust(float f) {
        this.textMatrix = new Matrix(((-f) / 1000.0f) * getGraphicsState().getFontSize() * (getGraphicsState().getHorizontalScaling() / 100.0f), 0.0f).multiply(this.textMatrix);
    }

    private void initClippingPath(PdfPage pdfPage) {
        Path path = new Path();
        path.rectangle(pdfPage.getCropBox());
        getGraphicsState().setClippingPath(path);
    }

    private static class IgnoreOperator implements IContentOperator {
        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
        }

        private IgnoreOperator() {
        }
    }

    private static class ShowTextArrayOperator implements IContentOperator {
        private ShowTextArrayOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            for (PdfObject pdfObject : (PdfArray) list.get(0)) {
                if (pdfObject instanceof PdfString) {
                    pdfCanvasProcessor.displayPdfString((PdfString) pdfObject);
                } else {
                    pdfCanvasProcessor.applyTextAdjust(((PdfNumber) pdfObject).floatValue());
                }
            }
        }
    }

    private static class MoveNextLineAndShowTextWithSpacingOperator implements IContentOperator {
        private final MoveNextLineAndShowTextOperator moveNextLineAndShowText;
        private final SetTextCharacterSpacingOperator setTextCharacterSpacing;
        private final SetTextWordSpacingOperator setTextWordSpacing;

        public MoveNextLineAndShowTextWithSpacingOperator(SetTextWordSpacingOperator setTextWordSpacingOperator, SetTextCharacterSpacingOperator setTextCharacterSpacingOperator, MoveNextLineAndShowTextOperator moveNextLineAndShowTextOperator) {
            this.setTextWordSpacing = setTextWordSpacingOperator;
            this.setTextCharacterSpacing = setTextCharacterSpacingOperator;
            this.moveNextLineAndShowText = moveNextLineAndShowTextOperator;
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            PdfNumber pdfNumber = (PdfNumber) list.get(0);
            PdfNumber pdfNumber2 = (PdfNumber) list.get(1);
            PdfString pdfString = (PdfString) list.get(2);
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(0, pdfNumber);
            this.setTextWordSpacing.invoke(pdfCanvasProcessor, null, arrayList);
            ArrayList arrayList2 = new ArrayList(1);
            arrayList2.add(0, pdfNumber2);
            this.setTextCharacterSpacing.invoke(pdfCanvasProcessor, null, arrayList2);
            ArrayList arrayList3 = new ArrayList(1);
            arrayList3.add(0, pdfString);
            this.moveNextLineAndShowText.invoke(pdfCanvasProcessor, null, arrayList3);
        }
    }

    private static class MoveNextLineAndShowTextOperator implements IContentOperator {
        private final ShowTextOperator showText;
        private final TextMoveNextLineOperator textMoveNextLine;

        public MoveNextLineAndShowTextOperator(TextMoveNextLineOperator textMoveNextLineOperator, ShowTextOperator showTextOperator) {
            this.textMoveNextLine = textMoveNextLineOperator;
            this.showText = showTextOperator;
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            this.textMoveNextLine.invoke(pdfCanvasProcessor, null, new ArrayList(0));
            this.showText.invoke(pdfCanvasProcessor, null, list);
        }
    }

    private static class ShowTextOperator implements IContentOperator {
        private ShowTextOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            pdfCanvasProcessor.displayPdfString((PdfString) list.get(0));
        }
    }

    private static class TextMoveNextLineOperator implements IContentOperator {
        private final TextMoveStartNextLineOperator moveStartNextLine;

        public TextMoveNextLineOperator(TextMoveStartNextLineOperator textMoveStartNextLineOperator) {
            this.moveStartNextLine = textMoveStartNextLineOperator;
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(0, new PdfNumber(0));
            arrayList.add(1, new PdfNumber(-pdfCanvasProcessor.getGraphicsState().getLeading()));
            this.moveStartNextLine.invoke(pdfCanvasProcessor, null, arrayList);
        }
    }

    private static class TextSetTextMatrixOperator implements IContentOperator {
        private TextSetTextMatrixOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            pdfCanvasProcessor.textLineMatrix = new Matrix(((PdfNumber) list.get(0)).floatValue(), ((PdfNumber) list.get(1)).floatValue(), ((PdfNumber) list.get(2)).floatValue(), ((PdfNumber) list.get(3)).floatValue(), ((PdfNumber) list.get(4)).floatValue(), ((PdfNumber) list.get(5)).floatValue());
            pdfCanvasProcessor.textMatrix = pdfCanvasProcessor.textLineMatrix;
        }
    }

    private static class TextMoveStartNextLineWithLeadingOperator implements IContentOperator {
        private final TextMoveStartNextLineOperator moveStartNextLine;
        private final SetTextLeadingOperator setTextLeading;

        public TextMoveStartNextLineWithLeadingOperator(TextMoveStartNextLineOperator textMoveStartNextLineOperator, SetTextLeadingOperator setTextLeadingOperator) {
            this.moveStartNextLine = textMoveStartNextLineOperator;
            this.setTextLeading = setTextLeadingOperator;
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            float fFloatValue = ((PdfNumber) list.get(1)).floatValue();
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(0, new PdfNumber(-fFloatValue));
            this.setTextLeading.invoke(pdfCanvasProcessor, null, arrayList);
            this.moveStartNextLine.invoke(pdfCanvasProcessor, null, list);
        }
    }

    private static class TextMoveStartNextLineOperator implements IContentOperator {
        private TextMoveStartNextLineOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            pdfCanvasProcessor.textMatrix = new Matrix(((PdfNumber) list.get(0)).floatValue(), ((PdfNumber) list.get(1)).floatValue()).multiply(pdfCanvasProcessor.textLineMatrix);
            pdfCanvasProcessor.textLineMatrix = pdfCanvasProcessor.textMatrix;
        }
    }

    private static class SetTextFontOperator implements IContentOperator {
        private SetTextFontOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            PdfName pdfName = (PdfName) list.get(0);
            float fFloatValue = ((PdfNumber) list.get(1)).floatValue();
            pdfCanvasProcessor.getGraphicsState().setFont(pdfCanvasProcessor.getFont(pdfCanvasProcessor.getResources().getResource(PdfName.Font).getAsDictionary(pdfName)));
            pdfCanvasProcessor.getGraphicsState().setFontSize(fFloatValue);
        }
    }

    private static class SetTextRenderModeOperator implements IContentOperator {
        private SetTextRenderModeOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            pdfCanvasProcessor.getGraphicsState().setTextRenderingMode(((PdfNumber) list.get(0)).intValue());
        }
    }

    private static class SetTextRiseOperator implements IContentOperator {
        private SetTextRiseOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            pdfCanvasProcessor.getGraphicsState().setTextRise(((PdfNumber) list.get(0)).floatValue());
        }
    }

    private static class SetTextLeadingOperator implements IContentOperator {
        private SetTextLeadingOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            pdfCanvasProcessor.getGraphicsState().setLeading(((PdfNumber) list.get(0)).floatValue());
        }
    }

    private static class SetTextHorizontalScalingOperator implements IContentOperator {
        private SetTextHorizontalScalingOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            pdfCanvasProcessor.getGraphicsState().setHorizontalScaling(((PdfNumber) list.get(0)).floatValue());
        }
    }

    private static class SetTextCharacterSpacingOperator implements IContentOperator {
        private SetTextCharacterSpacingOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            pdfCanvasProcessor.getGraphicsState().setCharSpacing(((PdfNumber) list.get(0)).floatValue());
        }
    }

    private static class SetTextWordSpacingOperator implements IContentOperator {
        private SetTextWordSpacingOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            pdfCanvasProcessor.getGraphicsState().setWordSpacing(((PdfNumber) list.get(0)).floatValue());
        }
    }

    private static class ProcessGraphicsStateResourceOperator implements IContentOperator {
        private ProcessGraphicsStateResourceOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            PdfName pdfName = (PdfName) list.get(0);
            PdfDictionary resource = pdfCanvasProcessor.getResources().getResource(PdfName.ExtGState);
            if (resource == null) {
                throw new PdfException(KernelExceptionMessageConstant.f2924xdbda090b).setMessageParams(pdfLiteral);
            }
            PdfDictionary asDictionary = resource.getAsDictionary(pdfName);
            if (asDictionary == null && (asDictionary = resource.getAsStream(pdfName)) == null) {
                throw new PdfException(KernelExceptionMessageConstant.UNKNOWN_GRAPHICS_STATE_DICTIONARY).setMessageParams(pdfName);
            }
            PdfArray asArray = asDictionary.getAsArray(PdfName.Font);
            if (asArray != null) {
                PdfFont font = pdfCanvasProcessor.getFont(asArray.getAsDictionary(0));
                float fFloatValue = asArray.getAsNumber(1).floatValue();
                pdfCanvasProcessor.getGraphicsState().setFont(font);
                pdfCanvasProcessor.getGraphicsState().setFontSize(fFloatValue);
            }
            pdfCanvasProcessor.getGraphicsState().updateFromExtGState(new PdfExtGState(asDictionary.clone(Collections.singletonList(PdfName.Font))));
        }
    }

    private static class PushGraphicsStateOperator implements IContentOperator {
        private PushGraphicsStateOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            pdfCanvasProcessor.gsStack.push(new ParserGraphicsState((ParserGraphicsState) pdfCanvasProcessor.gsStack.peek()));
        }
    }

    private static class ModifyCurrentTransformationMatrixOperator implements IContentOperator {
        private ModifyCurrentTransformationMatrixOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            try {
                pdfCanvasProcessor.getGraphicsState().updateCtm(new Matrix(((PdfNumber) list.get(0)).floatValue(), ((PdfNumber) list.get(1)).floatValue(), ((PdfNumber) list.get(2)).floatValue(), ((PdfNumber) list.get(3)).floatValue(), ((PdfNumber) list.get(4)).floatValue(), ((PdfNumber) list.get(5)).floatValue()));
            } catch (PdfException e) {
                if (!(e.getCause() instanceof NoninvertibleTransformException)) {
                    throw e;
                }
                LoggerFactory.getLogger((Class<?>) PdfCanvasProcessor.class).error(MessageFormatUtil.format(IoLogMessageConstant.FAILED_TO_PROCESS_A_TRANSFORMATION_MATRIX, new Object[0]));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Color getColor(PdfColorSpace pdfColorSpace, List<PdfObject> list, PdfResources pdfResources) {
        PdfObject pdfObject;
        PdfPattern pattern;
        if (pdfColorSpace.getPdfObject().isIndirectReference()) {
            pdfObject = ((PdfIndirectReference) pdfColorSpace.getPdfObject()).getRefersTo();
        } else {
            pdfObject = pdfColorSpace.getPdfObject();
        }
        if (pdfObject.isName()) {
            if (PdfName.DeviceGray.equals(pdfObject)) {
                return new DeviceGray(getColorants(list)[0]);
            }
            if (PdfName.Pattern.equals(pdfObject) && (list.get(0) instanceof PdfName) && (pattern = pdfResources.getPattern((PdfName) list.get(0))) != null) {
                return new PatternColor(pattern);
            }
            if (PdfName.DeviceRGB.equals(pdfObject)) {
                float[] colorants = getColorants(list);
                return new DeviceRgb(colorants[0], colorants[1], colorants[2]);
            }
            if (PdfName.DeviceCMYK.equals(pdfObject)) {
                float[] colorants2 = getColorants(list);
                return new DeviceCmyk(colorants2[0], colorants2[1], colorants2[2], colorants2[3]);
            }
        } else if (pdfObject.isArray()) {
            PdfName asName = ((PdfArray) pdfObject).getAsName(0);
            if (PdfName.CalGray.equals(asName)) {
                return new CalGray((PdfCieBasedCs.CalGray) pdfColorSpace, getColorants(list)[0]);
            }
            if (PdfName.CalRGB.equals(asName)) {
                return new CalRgb((PdfCieBasedCs.CalRgb) pdfColorSpace, getColorants(list));
            }
            if (PdfName.Lab.equals(asName)) {
                return new Lab((PdfCieBasedCs.Lab) pdfColorSpace, getColorants(list));
            }
            if (PdfName.ICCBased.equals(asName)) {
                return new IccBased((PdfCieBasedCs.IccBased) pdfColorSpace, getColorants(list));
            }
            if (PdfName.Indexed.equals(asName)) {
                return new Indexed(pdfColorSpace, (int) getColorants(list)[0]);
            }
            if (PdfName.Separation.equals(asName)) {
                return new Separation((PdfSpecialCs.Separation) pdfColorSpace, getColorants(list)[0]);
            }
            if (PdfName.DeviceN.equals(asName)) {
                return new DeviceN((PdfSpecialCs.DeviceN) pdfColorSpace, getColorants(list));
            }
            if (PdfName.Pattern.equals(asName)) {
                ArrayList arrayList = new ArrayList(list);
                PdfObject pdfObject2 = (PdfObject) arrayList.remove(list.size() - 2);
                PdfColorSpace underlyingColorSpace = ((PdfSpecialCs.UncoloredTilingPattern) pdfColorSpace).getUnderlyingColorSpace();
                if (pdfObject2 instanceof PdfName) {
                    PdfPattern pattern2 = pdfResources.getPattern((PdfName) pdfObject2);
                    if (pattern2 instanceof PdfPattern.Tiling) {
                        PdfPattern.Tiling tiling = (PdfPattern.Tiling) pattern2;
                        if (!tiling.isColored()) {
                            return new PatternColor(tiling, underlyingColorSpace, getColorants(arrayList));
                        }
                    }
                }
            }
        }
        LoggerFactory.getLogger((Class<?>) PdfCanvasProcessor.class).warn(MessageFormatUtil.format(KernelLogMessageConstant.UNABLE_TO_PARSE_COLOR_WITHIN_COLORSPACE, Arrays.toString(list.toArray()), pdfColorSpace.getPdfObject()));
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Color getColor(int i, List<PdfObject> list) {
        float[] fArr = new float[i];
        for (int i2 = 0; i2 < i; i2++) {
            fArr[i2] = ((PdfNumber) list.get(i2)).floatValue();
        }
        if (i == 1) {
            return new DeviceGray(fArr[0]);
        }
        if (i == 3) {
            return new DeviceRgb(fArr[0], fArr[1], fArr[2]);
        }
        if (i != 4) {
            return null;
        }
        return new DeviceCmyk(fArr[0], fArr[1], fArr[2], fArr[3]);
    }

    private static float[] getColorants(List<PdfObject> list) {
        float[] fArr = new float[list.size() - 1];
        for (int i = 0; i < list.size() - 1; i++) {
            fArr[i] = ((PdfNumber) list.get(i)).floatValue();
        }
        return fArr;
    }

    protected static class PopGraphicsStateOperator implements IContentOperator {
        protected PopGraphicsStateOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            pdfCanvasProcessor.gsStack.pop();
            ParserGraphicsState graphicsState = pdfCanvasProcessor.getGraphicsState();
            pdfCanvasProcessor.eventOccurred(new ClippingPathInfo(graphicsState, graphicsState.getClippingPath(), graphicsState.getCtm()), EventType.CLIP_PATH_CHANGED);
        }
    }

    private static class SetGrayFillOperator implements IContentOperator {
        private SetGrayFillOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            pdfCanvasProcessor.getGraphicsState().setFillColor(PdfCanvasProcessor.getColor(1, list));
        }
    }

    private static class SetGrayStrokeOperator implements IContentOperator {
        private SetGrayStrokeOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            pdfCanvasProcessor.getGraphicsState().setStrokeColor(PdfCanvasProcessor.getColor(1, list));
        }
    }

    private static class SetRGBFillOperator implements IContentOperator {
        private SetRGBFillOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            pdfCanvasProcessor.getGraphicsState().setFillColor(PdfCanvasProcessor.getColor(3, list));
        }
    }

    private static class SetRGBStrokeOperator implements IContentOperator {
        private SetRGBStrokeOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            pdfCanvasProcessor.getGraphicsState().setStrokeColor(PdfCanvasProcessor.getColor(3, list));
        }
    }

    private static class SetCMYKFillOperator implements IContentOperator {
        private SetCMYKFillOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            pdfCanvasProcessor.getGraphicsState().setFillColor(PdfCanvasProcessor.getColor(4, list));
        }
    }

    private static class SetCMYKStrokeOperator implements IContentOperator {
        private SetCMYKStrokeOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            pdfCanvasProcessor.getGraphicsState().setStrokeColor(PdfCanvasProcessor.getColor(4, list));
        }
    }

    private static class SetColorSpaceFillOperator implements IContentOperator {
        private SetColorSpaceFillOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            pdfCanvasProcessor.getGraphicsState().setFillColor(Color.makeColor(determineColorSpace((PdfName) list.get(0), pdfCanvasProcessor)));
        }

        static PdfColorSpace determineColorSpace(PdfName pdfName, PdfCanvasProcessor pdfCanvasProcessor) {
            if (PdfColorSpace.DIRECT_COLOR_SPACES.contains(pdfName)) {
                return PdfColorSpace.makeColorSpace(pdfName);
            }
            return PdfColorSpace.makeColorSpace(pdfCanvasProcessor.getResources().getPdfObject().getAsDictionary(PdfName.ColorSpace).get(pdfName));
        }
    }

    private static class SetColorSpaceStrokeOperator implements IContentOperator {
        private SetColorSpaceStrokeOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            pdfCanvasProcessor.getGraphicsState().setStrokeColor(Color.makeColor(SetColorSpaceFillOperator.determineColorSpace((PdfName) list.get(0), pdfCanvasProcessor)));
        }
    }

    private static class SetColorFillOperator implements IContentOperator {
        private SetColorFillOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            pdfCanvasProcessor.getGraphicsState().setFillColor(PdfCanvasProcessor.getColor(pdfCanvasProcessor.getGraphicsState().getFillColor().getColorSpace(), list, pdfCanvasProcessor.getResources()));
        }
    }

    private static class SetColorStrokeOperator implements IContentOperator {
        private SetColorStrokeOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            pdfCanvasProcessor.getGraphicsState().setStrokeColor(PdfCanvasProcessor.getColor(pdfCanvasProcessor.getGraphicsState().getStrokeColor().getColorSpace(), list, pdfCanvasProcessor.getResources()));
        }
    }

    private static class BeginTextOperator implements IContentOperator {
        private BeginTextOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            pdfCanvasProcessor.textMatrix = new Matrix();
            pdfCanvasProcessor.textLineMatrix = pdfCanvasProcessor.textMatrix;
            pdfCanvasProcessor.beginText();
        }
    }

    private static class EndTextOperator implements IContentOperator {
        private EndTextOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            pdfCanvasProcessor.textMatrix = null;
            pdfCanvasProcessor.textLineMatrix = null;
            pdfCanvasProcessor.endText();
        }
    }

    private static class BeginMarkedContentOperator implements IContentOperator {
        private BeginMarkedContentOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            pdfCanvasProcessor.beginMarkedContent((PdfName) list.get(0), null);
        }
    }

    private static class BeginMarkedContentDictionaryOperator implements IContentOperator {
        private BeginMarkedContentDictionaryOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            pdfCanvasProcessor.beginMarkedContent((PdfName) list.get(0), getPropertiesDictionary(list.get(1), pdfCanvasProcessor.getResources()));
        }

        PdfDictionary getPropertiesDictionary(PdfObject pdfObject, PdfResources pdfResources) {
            if (pdfObject.isDictionary()) {
                return (PdfDictionary) pdfObject;
            }
            PdfName pdfName = (PdfName) pdfObject;
            PdfDictionary resource = pdfResources.getResource(PdfName.Properties);
            if (resource == null) {
                LoggerFactory.getLogger((Class<?>) PdfCanvasProcessor.class).warn(MessageFormatUtil.format(IoLogMessageConstant.PDF_REFERS_TO_NOT_EXISTING_PROPERTY_DICTIONARY, PdfName.Properties));
                return null;
            }
            if (resource.getAsDictionary(pdfName) == null) {
                LoggerFactory.getLogger((Class<?>) PdfCanvasProcessor.class).warn(MessageFormatUtil.format(IoLogMessageConstant.PDF_REFERS_TO_NOT_EXISTING_PROPERTY_DICTIONARY, pdfName));
                return null;
            }
            return resource.getAsDictionary(pdfName);
        }
    }

    private static class EndMarkedContentOperator implements IContentOperator {
        private EndMarkedContentOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            pdfCanvasProcessor.endMarkedContent();
        }
    }

    private static class DoOperator implements IContentOperator {
        private DoOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            pdfCanvasProcessor.displayXObject((PdfName) list.get(0));
        }
    }

    private static class EndImageOperator implements IContentOperator {
        private EndImageOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            pdfCanvasProcessor.displayImage(pdfCanvasProcessor.markedContentStack, (PdfStream) list.get(0), null, true);
        }
    }

    private static class SetLineWidthOperator implements IContentOperator {
        private SetLineWidthOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            pdfCanvasProcessor.getGraphicsState().setLineWidth(((PdfNumber) list.get(0)).floatValue());
        }
    }

    private static class SetLineCapOperator implements IContentOperator {
        private SetLineCapOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            pdfCanvasProcessor.getGraphicsState().setLineCapStyle(((PdfNumber) list.get(0)).intValue());
        }
    }

    private static class SetLineJoinOperator implements IContentOperator {
        private SetLineJoinOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            pdfCanvasProcessor.getGraphicsState().setLineJoinStyle(((PdfNumber) list.get(0)).intValue());
        }
    }

    private static class SetMiterLimitOperator implements IContentOperator {
        private SetMiterLimitOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            pdfCanvasProcessor.getGraphicsState().setMiterLimit(((PdfNumber) list.get(0)).floatValue());
        }
    }

    private static class SetLineDashPatternOperator implements IContentOperator {
        private SetLineDashPatternOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            pdfCanvasProcessor.getGraphicsState().setDashPattern(new PdfArray((List<? extends PdfObject>) Arrays.asList(list.get(0), list.get(1))));
        }
    }

    private static class FormXObjectDoHandler implements IXObjectDoHandler {
        private FormXObjectDoHandler() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IXObjectDoHandler
        public void handleXObject(PdfCanvasProcessor pdfCanvasProcessor, Stack<CanvasTag> stack, PdfStream pdfStream, PdfName pdfName) {
            PdfResources pdfResources;
            PdfDictionary asDictionary = pdfStream.getAsDictionary(PdfName.Resources);
            if (asDictionary == null) {
                pdfResources = pdfCanvasProcessor.getResources();
            } else {
                pdfResources = new PdfResources(asDictionary);
            }
            byte[] bytes = pdfStream.getBytes();
            PdfArray asArray = pdfStream.getAsArray(PdfName.Matrix);
            new PushGraphicsStateOperator().invoke(pdfCanvasProcessor, null, null);
            if (asArray != null) {
                pdfCanvasProcessor.getGraphicsState().updateCtm(new Matrix(asArray.getAsNumber(0).floatValue(), asArray.getAsNumber(1).floatValue(), asArray.getAsNumber(2).floatValue(), asArray.getAsNumber(3).floatValue(), asArray.getAsNumber(4).floatValue(), asArray.getAsNumber(5).floatValue()));
            }
            pdfCanvasProcessor.processContent(bytes, pdfResources);
            new PopGraphicsStateOperator().invoke(pdfCanvasProcessor, null, null);
        }
    }

    private static class ImageXObjectDoHandler implements IXObjectDoHandler {
        private ImageXObjectDoHandler() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IXObjectDoHandler
        public void handleXObject(PdfCanvasProcessor pdfCanvasProcessor, Stack<CanvasTag> stack, PdfStream pdfStream, PdfName pdfName) {
            pdfCanvasProcessor.displayImage(stack, pdfStream, pdfName, false);
        }
    }

    private static class IgnoreXObjectDoHandler implements IXObjectDoHandler {
        @Override // com.itextpdf.kernel.pdf.canvas.parser.IXObjectDoHandler
        public void handleXObject(PdfCanvasProcessor pdfCanvasProcessor, Stack<CanvasTag> stack, PdfStream pdfStream, PdfName pdfName) {
        }

        private IgnoreXObjectDoHandler() {
        }
    }

    private static class MoveToOperator implements IContentOperator {
        private MoveToOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            pdfCanvasProcessor.currentPath.moveTo(((PdfNumber) list.get(0)).floatValue(), ((PdfNumber) list.get(1)).floatValue());
        }
    }

    private static class LineToOperator implements IContentOperator {
        private LineToOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            pdfCanvasProcessor.currentPath.lineTo(((PdfNumber) list.get(0)).floatValue(), ((PdfNumber) list.get(1)).floatValue());
        }
    }

    private static class CurveOperator implements IContentOperator {
        private CurveOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            pdfCanvasProcessor.currentPath.curveTo(((PdfNumber) list.get(0)).floatValue(), ((PdfNumber) list.get(1)).floatValue(), ((PdfNumber) list.get(2)).floatValue(), ((PdfNumber) list.get(3)).floatValue(), ((PdfNumber) list.get(4)).floatValue(), ((PdfNumber) list.get(5)).floatValue());
        }
    }

    private static class CurveFirstPointDuplicatedOperator implements IContentOperator {
        private CurveFirstPointDuplicatedOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            pdfCanvasProcessor.currentPath.curveTo(((PdfNumber) list.get(0)).floatValue(), ((PdfNumber) list.get(1)).floatValue(), ((PdfNumber) list.get(2)).floatValue(), ((PdfNumber) list.get(3)).floatValue());
        }
    }

    private static class CurveFourhPointDuplicatedOperator implements IContentOperator {
        private CurveFourhPointDuplicatedOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            pdfCanvasProcessor.currentPath.curveFromTo(((PdfNumber) list.get(0)).floatValue(), ((PdfNumber) list.get(1)).floatValue(), ((PdfNumber) list.get(2)).floatValue(), ((PdfNumber) list.get(3)).floatValue());
        }
    }

    private static class CloseSubpathOperator implements IContentOperator {
        private CloseSubpathOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            pdfCanvasProcessor.currentPath.closeSubpath();
        }
    }

    private static class RectangleOperator implements IContentOperator {
        private RectangleOperator() {
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            pdfCanvasProcessor.currentPath.rectangle(((PdfNumber) list.get(0)).floatValue(), ((PdfNumber) list.get(1)).floatValue(), ((PdfNumber) list.get(2)).floatValue(), ((PdfNumber) list.get(3)).floatValue());
        }
    }

    private static class PaintPathOperator implements IContentOperator {
        private boolean close;
        private int operation;
        private int rule;

        public PaintPathOperator(int i, int i2, boolean z) {
            this.operation = i;
            this.rule = i2;
            this.close = z;
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            if (this.close) {
                pdfCanvasProcessor.currentPath.closeSubpath();
            }
            pdfCanvasProcessor.paintPath(this.operation, this.rule);
        }
    }

    private static class ClipPathOperator implements IContentOperator {
        private int rule;

        public ClipPathOperator(int i) {
            this.rule = i;
        }

        @Override // com.itextpdf.kernel.pdf.canvas.parser.IContentOperator
        public void invoke(PdfCanvasProcessor pdfCanvasProcessor, PdfLiteral pdfLiteral, List<PdfObject> list) {
            pdfCanvasProcessor.isClip = true;
            pdfCanvasProcessor.clippingRule = this.rule;
        }
    }
}
