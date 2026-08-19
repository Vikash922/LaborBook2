package com.itextpdf.svg.renderers;

import com.itextpdf.kernel.geom.AffineTransform;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.layout.font.FontProvider;
import com.itextpdf.layout.font.FontSet;
import com.itextpdf.styledxmlparser.resolver.font.BasicFontProvider;
import com.itextpdf.styledxmlparser.resolver.resource.ResourceResolver;
import com.itextpdf.svg.css.SvgCssContext;
import com.itextpdf.svg.exceptions.SvgExceptionMessageConstant;
import com.itextpdf.svg.exceptions.SvgProcessingException;
import java.util.Deque;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.Stack;

/* JADX INFO: loaded from: classes6.dex */
public class SvgDrawContext {
    private SvgCssContext cssContext;
    private final FontProvider fontProvider;
    private float[] previousElementTextMove;
    private final ResourceResolver resourceResolver;
    private FontSet tempFonts;
    private final Map<String, ISvgNodeRenderer> namedObjects = new HashMap();
    private final Deque<PdfCanvas> canvases = new LinkedList();
    private final Deque<Rectangle> viewports = new LinkedList();
    private final Stack<String> useIds = new Stack<>();
    private final Stack<String> patternIds = new Stack<>();
    private AffineTransform lastTextTransform = new AffineTransform();
    private float[] textMove = {0.0f, 0.0f};

    public SvgDrawContext(ResourceResolver resourceResolver, FontProvider fontProvider) {
        this.resourceResolver = resourceResolver == null ? new ResourceResolver(null) : resourceResolver;
        this.fontProvider = fontProvider == null ? new BasicFontProvider() : fontProvider;
        this.cssContext = new SvgCssContext();
    }

    public PdfCanvas getCurrentCanvas() {
        return this.canvases.getFirst();
    }

    public PdfCanvas popCanvas() {
        PdfCanvas first = this.canvases.getFirst();
        this.canvases.removeFirst();
        return first;
    }

    public void pushCanvas(PdfCanvas pdfCanvas) {
        this.canvases.addFirst(pdfCanvas);
    }

    public int size() {
        return this.canvases.size();
    }

    public void addViewPort(Rectangle rectangle) {
        this.viewports.addFirst(rectangle);
    }

    public Rectangle getCurrentViewPort() {
        return this.viewports.getFirst();
    }

    public Rectangle getRootViewPort() {
        return this.viewports.getLast();
    }

    public void removeCurrentViewPort() {
        if (this.viewports.size() > 0) {
            this.viewports.removeFirst();
        }
    }

    public void addNamedObject(String str, ISvgNodeRenderer iSvgNodeRenderer) {
        if (iSvgNodeRenderer == null) {
            throw new SvgProcessingException(SvgExceptionMessageConstant.NAMED_OBJECT_NULL);
        }
        if (str == null || str.isEmpty()) {
            throw new SvgProcessingException(SvgExceptionMessageConstant.NAMED_OBJECT_NAME_NULL_OR_EMPTY);
        }
        if (this.namedObjects.containsKey(str)) {
            return;
        }
        this.namedObjects.put(str, iSvgNodeRenderer);
    }

    public ISvgNodeRenderer getNamedObject(String str) {
        return this.namedObjects.get(str);
    }

    public ResourceResolver getResourceResolver() {
        return this.resourceResolver;
    }

    public void addNamedObjects(Map<String, ISvgNodeRenderer> map) {
        this.namedObjects.putAll(map);
    }

    public FontProvider getFontProvider() {
        return this.fontProvider;
    }

    public FontSet getTempFonts() {
        return this.tempFonts;
    }

    public void setTempFonts(FontSet fontSet) {
        this.tempFonts = fontSet;
    }

    public boolean isIdUsedByUseTagBefore(String str) {
        return this.useIds.contains(str);
    }

    public void addUsedId(String str) {
        this.useIds.push(str);
    }

    public void removeUsedId(String str) {
        this.useIds.pop();
    }

    public AffineTransform getLastTextTransform() {
        if (this.lastTextTransform == null) {
            this.lastTextTransform = new AffineTransform();
        }
        return this.lastTextTransform;
    }

    public void setLastTextTransform(AffineTransform affineTransform) {
        this.lastTextTransform = affineTransform;
    }

    public float[] getTextMove() {
        return this.textMove;
    }

    public void resetTextMove() {
        this.textMove = new float[]{0.0f, 0.0f};
    }

    public void addTextMove(float f, float f2) {
        float[] fArr = this.textMove;
        fArr[0] = fArr[0] + f;
        fArr[1] = fArr[1] + f2;
    }

    public AffineTransform getCurrentCanvasTransform() {
        if (getCurrentCanvas().getGraphicsState().getCtm() != null) {
            return new AffineTransform(r0.get(0), r0.get(1), r0.get(3), r0.get(4), r0.get(6), r0.get(7));
        }
        return new AffineTransform();
    }

    public SvgCssContext getCssContext() {
        return this.cssContext;
    }

    public void setCssContext(SvgCssContext svgCssContext) {
        this.cssContext = svgCssContext;
    }

    public boolean pushPatternId(String str) {
        if (this.patternIds.contains(str)) {
            return false;
        }
        this.patternIds.push(str);
        return true;
    }

    public void popPatternId() {
        this.patternIds.pop();
    }

    public void setPreviousElementTextMove(float[] fArr) {
        this.previousElementTextMove = fArr;
    }

    public float[] getPreviousElementTextMove() {
        return this.previousElementTextMove;
    }
}
