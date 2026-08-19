package com.itextpdf.svg.renderers.impl;

import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.colors.ColorConstants;
import com.itextpdf.kernel.colors.DeviceRgb;
import com.itextpdf.kernel.geom.AffineTransform;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.kernel.pdf.extgstate.PdfExtGState;
import com.itextpdf.layout.properties.TransparentColor;
import com.itextpdf.layout.properties.UnitValue;
import com.itextpdf.styledxmlparser.css.CssDeclaration;
import com.itextpdf.styledxmlparser.css.parse.CssDeclarationValueTokenizer;
import com.itextpdf.styledxmlparser.css.util.CssDimensionParsingUtils;
import com.itextpdf.styledxmlparser.css.util.CssTypesValidationUtils;
import com.itextpdf.styledxmlparser.css.util.CssUtils;
import com.itextpdf.styledxmlparser.css.validate.CssDeclarationValidationMaster;
import com.itextpdf.svg.MarkerVertexType;
import com.itextpdf.svg.SvgConstants;
import com.itextpdf.svg.css.impl.SvgNodeRendererInheritanceResolver;
import com.itextpdf.svg.renderers.IMarkerCapable;
import com.itextpdf.svg.renderers.ISvgNodeRenderer;
import com.itextpdf.svg.renderers.ISvgPaintServer;
import com.itextpdf.svg.renderers.SvgDrawContext;
import com.itextpdf.svg.utils.TransformUtils;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractSvgNodeRenderer implements ISvgNodeRenderer {
    private static final MarkerVertexType[] MARKER_VERTEX_TYPES = {MarkerVertexType.MARKER_START, MarkerVertexType.MARKER_END};
    protected Map<String, String> attributesAndStyles;
    boolean doFill = false;
    boolean doStroke = false;
    private ISvgNodeRenderer parent;
    boolean partOfClipPath;

    public boolean canConstructViewPort() {
        return false;
    }

    protected boolean canElementFill() {
        return true;
    }

    protected abstract void doDraw(SvgDrawContext svgDrawContext);

    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public void setParent(ISvgNodeRenderer iSvgNodeRenderer) {
        this.parent = iSvgNodeRenderer;
    }

    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public ISvgNodeRenderer getParent() {
        return this.parent;
    }

    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public void setAttributesAndStyles(Map<String, String> map) {
        this.attributesAndStyles = map;
    }

    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public String getAttribute(String str) {
        return this.attributesAndStyles.get(str);
    }

    public String getAttributeOrDefault(String str, String str2) {
        String attribute = getAttribute(str);
        return attribute != null ? attribute : str2;
    }

    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public void setAttribute(String str, String str2) {
        if (this.attributesAndStyles == null) {
            this.attributesAndStyles = new HashMap();
        }
        this.attributesAndStyles.put(str, str2);
    }

    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public Map<String, String> getAttributeMapCopy() {
        HashMap map = new HashMap();
        Map<String, String> map2 = this.attributesAndStyles;
        if (map2 == null) {
            return map;
        }
        map.putAll(map2);
        return map;
    }

    @Override // com.itextpdf.svg.renderers.ISvgNodeRenderer
    public final void draw(SvgDrawContext svgDrawContext) {
        PdfCanvas currentCanvas = svgDrawContext.getCurrentCanvas();
        Map<String, String> map = this.attributesAndStyles;
        if (map != null) {
            String str = map.get("transform");
            if (str != null && !str.isEmpty()) {
                AffineTransform transform = TransformUtils.parseTransform(str);
                if (!transform.isIdentity()) {
                    currentCanvas.concatMatrix(transform);
                }
            }
            if (this.attributesAndStyles.containsKey("id")) {
                svgDrawContext.addUsedId(this.attributesAndStyles.get("id"));
            }
        }
        if (!drawInClipPath(svgDrawContext)) {
            preDraw(svgDrawContext);
            doDraw(svgDrawContext);
            postDraw(svgDrawContext);
        }
        if (this.attributesAndStyles.containsKey("id")) {
            svgDrawContext.removeUsedId(this.attributesAndStyles.get("id"));
        }
    }

    public float getCurrentFontSize() {
        return CssDimensionParsingUtils.parseAbsoluteFontSize(getAttribute("font-size"));
    }

    protected void deepCopyAttributesAndStyles(ISvgNodeRenderer iSvgNodeRenderer) {
        HashMap map = new HashMap();
        Map<String, String> map2 = this.attributesAndStyles;
        if (map2 != null) {
            map.putAll(map2);
            iSvgNodeRenderer.setAttributesAndStyles(map);
        }
    }

    AffineTransform calculateViewPortTranslation(SvgDrawContext svgDrawContext) {
        Rectangle currentViewPort = svgDrawContext.getCurrentViewPort();
        return AffineTransform.getTranslateInstance(currentViewPort.getX(), currentViewPort.getY());
    }

    /* JADX WARN: Multi-variable type inference failed */
    void postDraw(SvgDrawContext svgDrawContext) {
        if (this.attributesAndStyles != null) {
            PdfCanvas currentCanvas = svgDrawContext.getCurrentCanvas();
            if (this.partOfClipPath) {
                if (SvgConstants.Values.FILL_RULE_EVEN_ODD.equalsIgnoreCase(getAttribute(SvgConstants.Attributes.CLIP_RULE))) {
                    currentCanvas.eoClip();
                } else {
                    currentCanvas.clip();
                }
                currentCanvas.endPath();
            } else if (!(this instanceof ISvgTextNodeRenderer)) {
                if (this.doFill && canElementFill()) {
                    if (SvgConstants.Values.FILL_RULE_EVEN_ODD.equalsIgnoreCase(getAttribute(SvgConstants.Attributes.FILL_RULE))) {
                        if (this.doStroke) {
                            currentCanvas.eoFillStroke();
                        } else {
                            currentCanvas.eoFill();
                        }
                    } else if (this.doStroke) {
                        currentCanvas.fillStroke();
                    } else {
                        currentCanvas.fill();
                    }
                } else if (this.doStroke) {
                    currentCanvas.stroke();
                } else {
                    currentCanvas.endPath();
                }
            }
            if (this instanceof IMarkerCapable) {
                for (MarkerVertexType markerVertexType : MARKER_VERTEX_TYPES) {
                    if (this.attributesAndStyles.containsKey(markerVertexType.toString())) {
                        currentCanvas.saveState();
                        ((IMarkerCapable) this).drawMarker(svgDrawContext, markerVertexType);
                        currentCanvas.restoreState();
                    }
                }
            }
        }
    }

    void setPartOfClipPath(boolean z) {
        this.partOfClipPath = z;
    }

    void preDraw(SvgDrawContext svgDrawContext) {
        Color color;
        if (this.attributesAndStyles != null) {
            PdfCanvas currentCanvas = svgDrawContext.getCurrentCanvas();
            PdfExtGState pdfExtGState = new PdfExtGState();
            if (this.partOfClipPath) {
                return;
            }
            float opacity = getOpacity();
            String attributeOrDefault = getAttributeOrDefault(SvgConstants.Attributes.FILL, "black");
            boolean zEqualsIgnoreCase = "none".equalsIgnoreCase(attributeOrDefault);
            this.doFill = !zEqualsIgnoreCase;
            Color color2 = null;
            if (!zEqualsIgnoreCase && canElementFill()) {
                float opacityByAttributeName = getOpacityByAttributeName(SvgConstants.Attributes.FILL_OPACITY, opacity);
                TransparentColor colorFromAttributeValue = getColorFromAttributeValue(svgDrawContext, attributeOrDefault, 0.0f, opacityByAttributeName);
                if (colorFromAttributeValue != null) {
                    Color color3 = colorFromAttributeValue.getColor();
                    opacityByAttributeName = colorFromAttributeValue.getOpacity();
                    color = color3;
                } else {
                    color = null;
                }
                if (!CssUtils.compareFloats(opacityByAttributeName, 1.0f)) {
                    pdfExtGState.setFillOpacity(opacityByAttributeName);
                }
                if (color == null) {
                    color = ColorConstants.BLACK;
                }
                currentCanvas.setFillColor(color);
            }
            String attributeOrDefault2 = getAttributeOrDefault(SvgConstants.Attributes.STROKE, "none");
            if (!"none".equalsIgnoreCase(attributeOrDefault2)) {
                String attribute = getAttribute(SvgConstants.Attributes.STROKE_WIDTH);
                float absoluteLength = attribute != null ? CssDimensionParsingUtils.parseAbsoluteLength(attribute) : 0.75f;
                float opacityByAttributeName2 = getOpacityByAttributeName(SvgConstants.Attributes.STROKE_OPACITY, opacity);
                TransparentColor colorFromAttributeValue2 = getColorFromAttributeValue(svgDrawContext, attributeOrDefault2, (float) (((double) absoluteLength) / 2.0d), opacityByAttributeName2);
                if (colorFromAttributeValue2 != null) {
                    color2 = colorFromAttributeValue2.getColor();
                    opacityByAttributeName2 = colorFromAttributeValue2.getOpacity();
                }
                if (!CssUtils.compareFloats(opacityByAttributeName2, 1.0f)) {
                    pdfExtGState.setStrokeOpacity(opacityByAttributeName2);
                }
                if (color2 != null) {
                    currentCanvas.setStrokeColor(color2);
                }
                currentCanvas.setLineWidth(absoluteLength);
                this.doStroke = true;
            }
            if (pdfExtGState.getPdfObject().isEmpty()) {
                return;
            }
            currentCanvas.setExtGState(pdfExtGState);
        }
    }

    protected float parseAbsoluteLength(String str, float f, float f2, SvgDrawContext svgDrawContext) {
        if (CssTypesValidationUtils.isPercentageValue(str)) {
            return CssDimensionParsingUtils.parseRelativeValue(str, f);
        }
        UnitValue lengthValueToPt = CssDimensionParsingUtils.parseLengthValueToPt(str, getCurrentFontSize(), svgDrawContext.getCssContext().getRootFontSize());
        return (lengthValueToPt == null || !lengthValueToPt.isPointValue()) ? f2 : lengthValueToPt.getValue();
    }

    private TransparentColor getColorFromAttributeValue(SvgDrawContext svgDrawContext, String str, float f, float f2) {
        CssDeclarationValueTokenizer cssDeclarationValueTokenizer;
        CssDeclarationValueTokenizer.Token nextValidToken;
        if (str == null || (nextValidToken = (cssDeclarationValueTokenizer = new CssDeclarationValueTokenizer(str)).getNextValidToken()) == null) {
            return null;
        }
        String value = nextValidToken.getValue();
        if (value.startsWith("url(#") && value.endsWith(")")) {
            ISvgNodeRenderer namedObject = svgDrawContext.getNamedObject(value.substring(5, value.length() - 1).trim());
            Color colorCreateColor = namedObject instanceof ISvgPaintServer ? ((ISvgPaintServer) namedObject).createColor(svgDrawContext, getObjectBoundingBox(svgDrawContext), f, f2) : null;
            if (colorCreateColor != null) {
                return new TransparentColor(colorCreateColor, 1.0f);
            }
            nextValidToken = cssDeclarationValueTokenizer.getNextValidToken();
        }
        if (nextValidToken != null) {
            String value2 = nextValidToken.getValue();
            if (!"none".equalsIgnoreCase(value2)) {
                if (!CssDeclarationValidationMaster.checkDeclaration(new CssDeclaration("color", value2))) {
                    return new TransparentColor(new DeviceRgb(0.0f, 0.0f, 0.0f), 1.0f);
                }
                TransparentColor color = CssDimensionParsingUtils.parseColor(value2);
                return new TransparentColor(color.getColor(), color.getOpacity() * f2);
            }
        }
        return null;
    }

    private float getOpacityByAttributeName(String str, float f) {
        String attribute = getAttribute(str);
        return (attribute == null || "none".equalsIgnoreCase(attribute)) ? f : f * Float.valueOf(attribute).floatValue();
    }

    private boolean drawInClipPath(SvgDrawContext svgDrawContext) {
        if (!this.attributesAndStyles.containsKey(SvgConstants.Attributes.CLIP_PATH)) {
            return false;
        }
        ISvgNodeRenderer namedObject = svgDrawContext.getNamedObject(normalizeLocalUrlName(this.attributesAndStyles.get(SvgConstants.Attributes.CLIP_PATH)));
        if (!(namedObject instanceof ClipPathSvgNodeRenderer)) {
            return false;
        }
        ClipPathSvgNodeRenderer clipPathSvgNodeRenderer = (ClipPathSvgNodeRenderer) namedObject.createDeepCopy();
        SvgNodeRendererInheritanceResolver.applyInheritanceToSubTree(this, clipPathSvgNodeRenderer, svgDrawContext.getCssContext());
        clipPathSvgNodeRenderer.setClippedRenderer(this);
        clipPathSvgNodeRenderer.draw(svgDrawContext);
        return !clipPathSvgNodeRenderer.getChildren().isEmpty();
    }

    private String normalizeLocalUrlName(String str) {
        return str.replace("url(#", "").replace(")", "").trim();
    }

    private float getOpacity() {
        String attribute = getAttribute("opacity");
        float fFloatValue = (attribute == null || "none".equalsIgnoreCase(attribute)) ? 1.0f : Float.valueOf(attribute).floatValue();
        ISvgNodeRenderer iSvgNodeRenderer = this.parent;
        return (iSvgNodeRenderer == null || !(iSvgNodeRenderer instanceof AbstractSvgNodeRenderer)) ? fFloatValue : fFloatValue * ((AbstractSvgNodeRenderer) iSvgNodeRenderer).getOpacity();
    }
}
