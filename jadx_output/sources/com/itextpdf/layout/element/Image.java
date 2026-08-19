package com.itextpdf.layout.element;

import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.canvas.wmf.WmfImageData;
import com.itextpdf.kernel.pdf.tagging.StandardRoles;
import com.itextpdf.kernel.pdf.tagutils.AccessibilityProperties;
import com.itextpdf.kernel.pdf.tagutils.DefaultAccessibilityProperties;
import com.itextpdf.kernel.pdf.xobject.PdfFormXObject;
import com.itextpdf.kernel.pdf.xobject.PdfImageXObject;
import com.itextpdf.kernel.pdf.xobject.PdfXObject;
import com.itextpdf.layout.exceptions.LayoutExceptionMessageConstant;
import com.itextpdf.layout.properties.ObjectFit;
import com.itextpdf.layout.properties.UnitValue;
import com.itextpdf.layout.renderer.IRenderer;
import com.itextpdf.layout.renderer.ImageRenderer;
import com.itextpdf.layout.tagging.IAccessibleElement;
import com.itextpdf.p017io.image.ImageData;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class Image extends AbstractElement<Image> implements ILeafElement, IAccessibleElement {
    protected DefaultAccessibilityProperties tagProperties;
    protected PdfXObject xObject;

    public Image(PdfImageXObject pdfImageXObject) {
        this.xObject = pdfImageXObject;
    }

    public Image(PdfFormXObject pdfFormXObject) {
        this.xObject = pdfFormXObject;
    }

    public Image(PdfImageXObject pdfImageXObject, float f) {
        this.xObject = pdfImageXObject;
        setWidth(f);
    }

    public Image(PdfImageXObject pdfImageXObject, float f, float f2, float f3) {
        this.xObject = pdfImageXObject;
        setProperty(34, Float.valueOf(f));
        setProperty(14, Float.valueOf(f2));
        setWidth(f3);
        setProperty(52, 4);
    }

    public Image(PdfImageXObject pdfImageXObject, float f, float f2) {
        this.xObject = pdfImageXObject;
        setProperty(34, Float.valueOf(f));
        setProperty(14, Float.valueOf(f2));
        setProperty(52, 4);
    }

    public Image(PdfFormXObject pdfFormXObject, float f, float f2) {
        this.xObject = pdfFormXObject;
        setProperty(34, Float.valueOf(f));
        setProperty(14, Float.valueOf(f2));
        setProperty(52, 4);
    }

    public Image(ImageData imageData) {
        this(new PdfImageXObject(checkImageType(imageData)));
        setProperty(19, true);
    }

    public Image(ImageData imageData, float f, float f2) {
        this(new PdfImageXObject(checkImageType(imageData)), f, f2);
        setProperty(19, true);
    }

    public Image(ImageData imageData, float f, float f2, float f3) {
        this(new PdfImageXObject(checkImageType(imageData)), f, f2, f3);
        setProperty(19, true);
    }

    public PdfXObject getXObject() {
        return this.xObject;
    }

    public Image setRotationAngle(double d) {
        setProperty(55, Double.valueOf(d));
        return this;
    }

    public UnitValue getMarginLeft() {
        return (UnitValue) getProperty(44);
    }

    public Image setMarginLeft(float f) {
        setProperty(44, UnitValue.createPointValue(f));
        return this;
    }

    public UnitValue getMarginRight() {
        return (UnitValue) getProperty(45);
    }

    public Image setMarginRight(float f) {
        setProperty(45, UnitValue.createPointValue(f));
        return this;
    }

    public UnitValue getMarginTop() {
        return (UnitValue) getProperty(46);
    }

    public Image setMarginTop(float f) {
        setProperty(46, UnitValue.createPointValue(f));
        return this;
    }

    public UnitValue getMarginBottom() {
        return (UnitValue) getProperty(43);
    }

    public Image setMarginBottom(float f) {
        setProperty(43, UnitValue.createPointValue(f));
        return this;
    }

    public Image setMargins(float f, float f2, float f3, float f4) {
        return setMarginTop(f).setMarginRight(f2).setMarginBottom(f3).setMarginLeft(f4);
    }

    public UnitValue getPaddingLeft() {
        return (UnitValue) getProperty(48);
    }

    public Image setPaddingLeft(float f) {
        setProperty(48, UnitValue.createPointValue(f));
        return this;
    }

    public UnitValue getPaddingRight() {
        return (UnitValue) getProperty(49);
    }

    public Image setPaddingRight(float f) {
        setProperty(49, UnitValue.createPointValue(f));
        return this;
    }

    public UnitValue getPaddingTop() {
        return (UnitValue) getProperty(50);
    }

    public Image setPaddingTop(float f) {
        setProperty(50, UnitValue.createPointValue(f));
        return this;
    }

    public UnitValue getPaddingBottom() {
        return (UnitValue) getProperty(47);
    }

    public Image setPaddingBottom(float f) {
        setProperty(47, UnitValue.createPointValue(f));
        return this;
    }

    public Image setPadding(float f) {
        return setPaddings(f, f, f, f);
    }

    public Image setPaddings(float f, float f2, float f3, float f4) {
        setPaddingTop(f);
        setPaddingRight(f2);
        setPaddingBottom(f3);
        setPaddingLeft(f4);
        return this;
    }

    public Image scale(float f, float f2) {
        setProperty(29, Float.valueOf(f));
        setProperty(76, Float.valueOf(f2));
        return this;
    }

    public Image scaleToFit(float f, float f2) {
        float width = f / this.xObject.getWidth();
        float height = f2 / this.xObject.getHeight();
        return scale(Math.min(width, height), Math.min(width, height));
    }

    public Image scaleAbsolute(float f, float f2) {
        return scale(f / this.xObject.getWidth(), f2 / this.xObject.getHeight());
    }

    public Image setAutoScale(boolean z) {
        if (hasProperty(5) && hasProperty(4) && z && (((Boolean) getProperty(5)).booleanValue() || ((Boolean) getProperty(4)).booleanValue())) {
            LoggerFactory.getLogger((Class<?>) Image.class).warn(IoLogMessageConstant.IMAGE_HAS_AMBIGUOUS_SCALE);
        }
        setProperty(3, Boolean.valueOf(z));
        return this;
    }

    public Image setAutoScaleHeight(boolean z) {
        if (hasProperty(5) && z && ((Boolean) getProperty(5)).booleanValue()) {
            setProperty(5, false);
            setProperty(4, false);
            setProperty(3, true);
        } else {
            setProperty(5, Boolean.valueOf(z));
        }
        return this;
    }

    public Image setAutoScaleWidth(boolean z) {
        if (hasProperty(4) && z && ((Boolean) getProperty(4)).booleanValue()) {
            setProperty(5, false);
            setProperty(4, false);
            setProperty(3, true);
        } else {
            setProperty(5, Boolean.valueOf(z));
        }
        return this;
    }

    public Image setFixedPosition(float f, float f2) {
        setFixedPosition(f, f2, getWidth());
        return this;
    }

    public Image setFixedPosition(int i, float f, float f2) {
        setFixedPosition(i, f, f2, getWidth());
        return this;
    }

    public float getImageWidth() {
        return this.xObject.getWidth();
    }

    public float getImageHeight() {
        return this.xObject.getHeight();
    }

    public Image setHeight(float f) {
        setProperty(27, UnitValue.createPointValue(f));
        return this;
    }

    public Image setHeight(UnitValue unitValue) {
        setProperty(27, unitValue);
        return this;
    }

    public Image setMaxHeight(float f) {
        setProperty(84, UnitValue.createPointValue(f));
        return this;
    }

    public Image setMaxHeight(UnitValue unitValue) {
        setProperty(84, unitValue);
        return this;
    }

    public Image setMinHeight(float f) {
        setProperty(85, UnitValue.createPointValue(f));
        return this;
    }

    public Image setMinHeight(UnitValue unitValue) {
        setProperty(85, unitValue);
        return this;
    }

    public Image setMaxWidth(float f) {
        setProperty(79, UnitValue.createPointValue(f));
        return this;
    }

    public Image setMaxWidth(UnitValue unitValue) {
        setProperty(79, unitValue);
        return this;
    }

    public Image setMinWidth(float f) {
        setProperty(80, UnitValue.createPointValue(f));
        return this;
    }

    public Image setMinWidth(UnitValue unitValue) {
        setProperty(80, unitValue);
        return this;
    }

    public Image setWidth(float f) {
        setProperty(77, UnitValue.createPointValue(f));
        return this;
    }

    public Image setWidth(UnitValue unitValue) {
        setProperty(77, unitValue);
        return this;
    }

    public UnitValue getWidth() {
        return (UnitValue) getProperty(77);
    }

    public float getImageScaledWidth() {
        if (getProperty(29) == null) {
            return this.xObject.getWidth();
        }
        return ((Float) getProperty(29)).floatValue() * this.xObject.getWidth();
    }

    public float getImageScaledHeight() {
        if (getProperty(76) == null) {
            return this.xObject.getHeight();
        }
        return ((Float) getProperty(76)).floatValue() * this.xObject.getHeight();
    }

    public Image setObjectFit(ObjectFit objectFit) {
        setProperty(125, objectFit);
        return this;
    }

    public ObjectFit getObjectFit() {
        if (hasProperty(125)) {
            return (ObjectFit) getProperty(125);
        }
        return ObjectFit.FILL;
    }

    @Override // com.itextpdf.layout.tagging.IAccessibleElement
    public AccessibilityProperties getAccessibilityProperties() {
        if (this.tagProperties == null) {
            this.tagProperties = new DefaultAccessibilityProperties(StandardRoles.FIGURE);
        }
        return this.tagProperties;
    }

    public Image setNeutralRole() {
        getAccessibilityProperties().setRole(null);
        return this;
    }

    @Override // com.itextpdf.layout.element.AbstractElement
    protected IRenderer makeNewRenderer() {
        return new ImageRenderer(this);
    }

    private static ImageData checkImageType(ImageData imageData) {
        if (imageData instanceof WmfImageData) {
            throw new PdfException(LayoutExceptionMessageConstant.CANNOT_CREATE_LAYOUT_IMAGE_BY_WMF_IMAGE);
        }
        return imageData;
    }
}
