package com.itextpdf.forms.fields;

import androidx.exifinterface.media.ExifInterface;
import com.itextpdf.commons.utils.Base64;
import com.itextpdf.forms.exceptions.FormsExceptionMessageConstant;
import com.itextpdf.forms.fields.borders.FormBorderFactory;
import com.itextpdf.forms.util.DrawingUtil;
import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.colors.ColorConstants;
import com.itextpdf.kernel.colors.DeviceCmyk;
import com.itextpdf.kernel.colors.DeviceGray;
import com.itextpdf.kernel.colors.DeviceRgb;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.font.PdfFont;
import com.itextpdf.kernel.font.PdfFontFactory;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfAConformanceLevel;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfObjectWrapper;
import com.itextpdf.kernel.pdf.PdfOutputStream;
import com.itextpdf.kernel.pdf.PdfResources;
import com.itextpdf.kernel.pdf.PdfStream;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.kernel.pdf.action.PdfAction;
import com.itextpdf.kernel.pdf.annot.PdfAnnotation;
import com.itextpdf.kernel.pdf.annot.PdfWidgetAnnotation;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.kernel.pdf.xobject.PdfFormXObject;
import com.itextpdf.kernel.pdf.xobject.PdfImageXObject;
import com.itextpdf.kernel.pdf.xobject.PdfXObject;
import com.itextpdf.layout.Canvas;
import com.itextpdf.layout.borders.Border;
import com.itextpdf.layout.element.Div;
import com.itextpdf.layout.element.Paragraph;
import com.itextpdf.layout.element.Text;
import com.itextpdf.layout.layout.LayoutArea;
import com.itextpdf.layout.layout.LayoutContext;
import com.itextpdf.layout.properties.BoxSizingPropertyValue;
import com.itextpdf.layout.properties.OverflowPropertyValue;
import com.itextpdf.layout.properties.TextAlignment;
import com.itextpdf.layout.properties.VerticalAlignment;
import com.itextpdf.layout.renderer.IRenderer;
import com.itextpdf.layout.renderer.MetaInfoContainer;
import com.itextpdf.p017io.font.PdfEncodings;
import com.itextpdf.p017io.image.ImageData;
import com.itextpdf.p017io.image.ImageDataFactory;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import com.itextpdf.p017io.source.OutputStream;
import com.itextpdf.svg.SvgConstants;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class PdfFormField extends PdfObjectWrapper<PdfDictionary> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int ALIGN_CENTER = 1;
    public static final int ALIGN_LEFT = 0;
    public static final int ALIGN_RIGHT = 2;
    static final int DA_COLOR = 2;
    static final int DA_FONT = 0;
    static final int DA_SIZE = 1;
    static final int DEFAULT_FONT_SIZE = 12;
    public static final int HIDDEN = 1;
    public static final int HIDDEN_BUT_PRINTABLE = 3;
    static final int MIN_FONT_SIZE = 4;
    public static final int TYPE_CHECK = 1;
    public static final int TYPE_CIRCLE = 2;
    public static final int TYPE_CROSS = 3;
    public static final int TYPE_DIAMOND = 4;
    public static final int TYPE_SQUARE = 5;
    public static final int TYPE_STAR = 6;
    public static final int VISIBLE = 4;
    public static final int VISIBLE_BUT_DOES_NOT_PRINT = 2;
    static final float X_OFFSET = 2.0f;
    protected Color backgroundColor;
    protected Color borderColor;
    protected float borderWidth;
    protected int checkType;
    protected Color color;
    protected PdfFont font;
    protected float fontSize;
    protected PdfFormXObject form;
    protected ImageData img;
    protected PdfAConformanceLevel pdfAConformanceLevel;
    protected int rotation;
    protected String text;
    public static final int FF_MULTILINE = makeFieldFlag(13);
    public static final int FF_PASSWORD = makeFieldFlag(14);
    public static final int FF_READ_ONLY = makeFieldFlag(1);
    public static final int FF_REQUIRED = makeFieldFlag(2);
    public static final int FF_NO_EXPORT = makeFieldFlag(3);
    private static final String[] CHECKBOX_TYPE_ZAPFDINGBATS_CODE = {"4", SvgConstants.Attributes.PATH_DATA_REL_LINE_TO, "8", "u", "n", "H"};

    private static double degreeToRadians(double d) {
        return (d * 3.141592653589793d) / 180.0d;
    }

    public static int makeFieldFlag(int i) {
        return 1 << (i - 1);
    }

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return true;
    }

    public PdfFormField(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
        this.fontSize = -1.0f;
        this.borderWidth = 1.0f;
        this.rotation = 0;
        ensureObjectIsAddedToDocument(pdfDictionary);
        setForbidRelease();
        retrieveStyles();
    }

    protected PdfFormField(PdfDocument pdfDocument) {
        this((PdfDictionary) new PdfDictionary().makeIndirect(pdfDocument));
        PdfName formType = getFormType();
        if (formType != null) {
            put(PdfName.f3007FT, formType);
        }
    }

    protected PdfFormField(PdfWidgetAnnotation pdfWidgetAnnotation, PdfDocument pdfDocument) {
        this((PdfDictionary) new PdfDictionary().makeIndirect(pdfDocument));
        pdfWidgetAnnotation.makeIndirect(pdfDocument);
        addKid(pdfWidgetAnnotation);
        put(PdfName.f3007FT, getFormType());
    }

    public static PdfFormField createEmptyField(PdfDocument pdfDocument) {
        return createEmptyField(pdfDocument, null);
    }

    public static PdfFormField createEmptyField(PdfDocument pdfDocument, PdfAConformanceLevel pdfAConformanceLevel) {
        PdfFormField pdfFormField = new PdfFormField(pdfDocument);
        pdfFormField.pdfAConformanceLevel = pdfAConformanceLevel;
        return pdfFormField;
    }

    public static PdfButtonFormField createButton(PdfDocument pdfDocument, Rectangle rectangle, int i) {
        return createButton(pdfDocument, rectangle, i, null);
    }

    public static PdfButtonFormField createButton(PdfDocument pdfDocument, Rectangle rectangle, int i, PdfAConformanceLevel pdfAConformanceLevel) {
        PdfWidgetAnnotation pdfWidgetAnnotation = new PdfWidgetAnnotation(rectangle);
        PdfButtonFormField pdfButtonFormField = new PdfButtonFormField(pdfWidgetAnnotation, pdfDocument);
        pdfButtonFormField.pdfAConformanceLevel = pdfAConformanceLevel;
        if (pdfAConformanceLevel != null) {
            pdfWidgetAnnotation.setFlag(4);
        }
        pdfButtonFormField.setFieldFlags(i);
        return pdfButtonFormField;
    }

    public static PdfButtonFormField createButton(PdfDocument pdfDocument, int i) {
        return createButton(pdfDocument, i, (PdfAConformanceLevel) null);
    }

    public static PdfButtonFormField createButton(PdfDocument pdfDocument, int i, PdfAConformanceLevel pdfAConformanceLevel) {
        PdfButtonFormField pdfButtonFormField = new PdfButtonFormField(pdfDocument);
        pdfButtonFormField.pdfAConformanceLevel = pdfAConformanceLevel;
        pdfButtonFormField.setFieldFlags(i);
        return pdfButtonFormField;
    }

    public static PdfTextFormField createText(PdfDocument pdfDocument) {
        return createText(pdfDocument, (PdfAConformanceLevel) null);
    }

    public static PdfTextFormField createText(PdfDocument pdfDocument, PdfAConformanceLevel pdfAConformanceLevel) {
        PdfTextFormField pdfTextFormField = new PdfTextFormField(pdfDocument);
        pdfTextFormField.pdfAConformanceLevel = pdfAConformanceLevel;
        return pdfTextFormField;
    }

    public static PdfTextFormField createText(PdfDocument pdfDocument, Rectangle rectangle) {
        return new PdfTextFormField(new PdfWidgetAnnotation(rectangle), pdfDocument);
    }

    public static PdfTextFormField createText(PdfDocument pdfDocument, Rectangle rectangle, String str) {
        return createText(pdfDocument, rectangle, str, "");
    }

    public static PdfTextFormField createText(PdfDocument pdfDocument, Rectangle rectangle, String str, String str2) {
        return createText(pdfDocument, rectangle, str, str2, null, -1.0f);
    }

    public static PdfTextFormField createText(PdfDocument pdfDocument, Rectangle rectangle, String str, String str2, PdfFont pdfFont, float f) {
        return createText(pdfDocument, rectangle, str, str2, pdfFont, f, false);
    }

    public static PdfTextFormField createText(PdfDocument pdfDocument, Rectangle rectangle, String str, String str2, PdfFont pdfFont, float f, boolean z) {
        return createText(pdfDocument, rectangle, str, str2, pdfFont, f, z, null);
    }

    public static PdfTextFormField createText(PdfDocument pdfDocument, Rectangle rectangle, String str, String str2, PdfFont pdfFont, float f, boolean z, PdfAConformanceLevel pdfAConformanceLevel) {
        PdfWidgetAnnotation pdfWidgetAnnotation = new PdfWidgetAnnotation(rectangle);
        PdfTextFormField pdfTextFormField = new PdfTextFormField(pdfWidgetAnnotation, pdfDocument);
        pdfTextFormField.pdfAConformanceLevel = pdfAConformanceLevel;
        if (pdfAConformanceLevel != null) {
            pdfWidgetAnnotation.setFlag(4);
        }
        pdfTextFormField.updateFontAndFontSize(pdfFont, f);
        pdfTextFormField.setMultiline(z);
        pdfTextFormField.setFieldName(str);
        pdfTextFormField.setValue(str2);
        return pdfTextFormField;
    }

    public static PdfTextFormField createMultilineText(PdfDocument pdfDocument, Rectangle rectangle, String str, String str2, PdfFont pdfFont, float f) {
        return createText(pdfDocument, rectangle, str, str2, pdfFont, f, true);
    }

    public static PdfTextFormField createMultilineText(PdfDocument pdfDocument, Rectangle rectangle, String str, String str2) {
        return createText(pdfDocument, rectangle, str, str2, null, -1.0f, true);
    }

    public static PdfChoiceFormField createChoice(PdfDocument pdfDocument, int i) {
        return createChoice(pdfDocument, i, (PdfAConformanceLevel) null);
    }

    public static PdfChoiceFormField createChoice(PdfDocument pdfDocument, int i, PdfAConformanceLevel pdfAConformanceLevel) {
        PdfChoiceFormField pdfChoiceFormField = new PdfChoiceFormField(pdfDocument);
        pdfChoiceFormField.pdfAConformanceLevel = pdfAConformanceLevel;
        pdfChoiceFormField.setFieldFlags(i);
        return pdfChoiceFormField;
    }

    public static PdfChoiceFormField createChoice(PdfDocument pdfDocument, Rectangle rectangle, int i) {
        PdfChoiceFormField pdfChoiceFormField = new PdfChoiceFormField(new PdfWidgetAnnotation(rectangle), pdfDocument);
        pdfChoiceFormField.setFieldFlags(i);
        return pdfChoiceFormField;
    }

    public static PdfChoiceFormField createChoice(PdfDocument pdfDocument, Rectangle rectangle, String str, String str2, PdfArray pdfArray, int i) {
        return createChoice(pdfDocument, rectangle, str, str2, (PdfFont) null, -1.0f, pdfArray, i);
    }

    public static PdfChoiceFormField createChoice(PdfDocument pdfDocument, Rectangle rectangle, String str, String str2, PdfArray pdfArray, int i, PdfFont pdfFont, PdfAConformanceLevel pdfAConformanceLevel) {
        return createChoice(pdfDocument, rectangle, str, str2, pdfFont, 12.0f, pdfArray, i, pdfAConformanceLevel);
    }

    public static PdfChoiceFormField createChoice(PdfDocument pdfDocument, Rectangle rectangle, String str, String str2, PdfFont pdfFont, float f, PdfArray pdfArray, int i) {
        return createChoice(pdfDocument, rectangle, str, str2, pdfFont, f, pdfArray, i, null);
    }

    public static PdfChoiceFormField createChoice(PdfDocument pdfDocument, Rectangle rectangle, String str, String str2, PdfFont pdfFont, float f, PdfArray pdfArray, int i, PdfAConformanceLevel pdfAConformanceLevel) {
        PdfWidgetAnnotation pdfWidgetAnnotation = new PdfWidgetAnnotation(rectangle);
        PdfChoiceFormField pdfChoiceFormField = new PdfChoiceFormField(pdfWidgetAnnotation, pdfDocument);
        pdfChoiceFormField.pdfAConformanceLevel = pdfAConformanceLevel;
        if (pdfAConformanceLevel != null) {
            pdfWidgetAnnotation.setFlag(4);
        }
        pdfChoiceFormField.updateFontAndFontSize(pdfFont, f);
        pdfChoiceFormField.put(PdfName.Opt, pdfArray);
        pdfChoiceFormField.setFieldFlags(i);
        pdfChoiceFormField.setFieldName(str);
        pdfChoiceFormField.setListSelected(new String[]{str2}, false);
        if ((PdfChoiceFormField.FF_COMBO & i) == 0) {
            str2 = optionsArrayToString(pdfArray);
        }
        PdfFormXObject pdfFormXObject = new PdfFormXObject(new Rectangle(0.0f, 0.0f, rectangle.getWidth(), rectangle.getHeight()));
        pdfChoiceFormField.drawChoiceAppearance(rectangle, pdfChoiceFormField.fontSize, str2, pdfFormXObject, 0);
        pdfWidgetAnnotation.setNormalAppearance(pdfFormXObject.getPdfObject());
        return pdfChoiceFormField;
    }

    public static PdfSignatureFormField createSignature(PdfDocument pdfDocument) {
        return createSignature(pdfDocument, (PdfAConformanceLevel) null);
    }

    public static PdfSignatureFormField createSignature(PdfDocument pdfDocument, PdfAConformanceLevel pdfAConformanceLevel) {
        PdfSignatureFormField pdfSignatureFormField = new PdfSignatureFormField(pdfDocument);
        pdfSignatureFormField.pdfAConformanceLevel = pdfAConformanceLevel;
        return pdfSignatureFormField;
    }

    public static PdfSignatureFormField createSignature(PdfDocument pdfDocument, Rectangle rectangle) {
        return createSignature(pdfDocument, rectangle, null);
    }

    public static PdfSignatureFormField createSignature(PdfDocument pdfDocument, Rectangle rectangle, PdfAConformanceLevel pdfAConformanceLevel) {
        PdfWidgetAnnotation pdfWidgetAnnotation = new PdfWidgetAnnotation(rectangle);
        PdfSignatureFormField pdfSignatureFormField = new PdfSignatureFormField(pdfWidgetAnnotation, pdfDocument);
        pdfSignatureFormField.pdfAConformanceLevel = pdfAConformanceLevel;
        if (pdfAConformanceLevel != null) {
            pdfWidgetAnnotation.setFlag(4);
        }
        return pdfSignatureFormField;
    }

    public static PdfButtonFormField createRadioGroup(PdfDocument pdfDocument, String str, String str2) {
        return createRadioGroup(pdfDocument, str, str2, null);
    }

    public static PdfButtonFormField createRadioGroup(PdfDocument pdfDocument, String str, String str2, PdfAConformanceLevel pdfAConformanceLevel) {
        PdfButtonFormField pdfButtonFormFieldCreateButton = createButton(pdfDocument, PdfButtonFormField.FF_RADIO);
        pdfButtonFormFieldCreateButton.setFieldName(str);
        pdfButtonFormFieldCreateButton.put(PdfName.f3086V, new PdfName(str2));
        pdfButtonFormFieldCreateButton.pdfAConformanceLevel = pdfAConformanceLevel;
        return pdfButtonFormFieldCreateButton;
    }

    public static PdfFormField createRadioButton(PdfDocument pdfDocument, Rectangle rectangle, PdfButtonFormField pdfButtonFormField, String str) {
        PdfWidgetAnnotation pdfWidgetAnnotation = new PdfWidgetAnnotation(rectangle);
        PdfButtonFormField pdfButtonFormField2 = new PdfButtonFormField(pdfWidgetAnnotation, pdfDocument);
        if (pdfButtonFormField.getValue().toString().substring(1).equals(str)) {
            pdfWidgetAnnotation.setAppearanceState(new PdfName(str));
        } else {
            pdfWidgetAnnotation.setAppearanceState(new PdfName("Off"));
        }
        pdfButtonFormField2.drawRadioAppearance(rectangle.getWidth(), rectangle.getHeight(), str);
        pdfButtonFormField.addKid(pdfButtonFormField2);
        return pdfButtonFormField2;
    }

    public static PdfFormField createRadioButton(PdfDocument pdfDocument, Rectangle rectangle, PdfButtonFormField pdfButtonFormField, String str, PdfAConformanceLevel pdfAConformanceLevel) {
        PdfWidgetAnnotation pdfWidgetAnnotation = new PdfWidgetAnnotation(rectangle);
        PdfButtonFormField pdfButtonFormField2 = new PdfButtonFormField(pdfWidgetAnnotation, pdfDocument);
        pdfButtonFormField2.pdfAConformanceLevel = pdfAConformanceLevel;
        if (pdfAConformanceLevel != null) {
            pdfWidgetAnnotation.setFlag(4);
        }
        if (pdfButtonFormField.getValue().toString().substring(1).equals(str)) {
            pdfWidgetAnnotation.setAppearanceState(new PdfName(str));
        } else {
            pdfWidgetAnnotation.setAppearanceState(new PdfName("Off"));
        }
        pdfButtonFormField2.drawRadioAppearance(rectangle.getWidth(), rectangle.getHeight(), str);
        pdfButtonFormField.addKid(pdfButtonFormField2);
        return pdfButtonFormField2;
    }

    public static PdfButtonFormField createPushButton(PdfDocument pdfDocument, Rectangle rectangle, String str, String str2) {
        try {
            return createPushButton(pdfDocument, rectangle, str, str2, PdfFontFactory.createFont(), 12.0f);
        } catch (IOException e) {
            throw new PdfException(e);
        }
    }

    public static PdfButtonFormField createPushButton(PdfDocument pdfDocument, Rectangle rectangle, String str, String str2, PdfFont pdfFont, float f) {
        return createPushButton(pdfDocument, rectangle, str, str2, pdfFont, f, null);
    }

    public static PdfButtonFormField createPushButton(PdfDocument pdfDocument, Rectangle rectangle, String str, String str2, PdfFont pdfFont, float f, PdfAConformanceLevel pdfAConformanceLevel) {
        PdfWidgetAnnotation pdfWidgetAnnotation = new PdfWidgetAnnotation(rectangle);
        PdfButtonFormField pdfButtonFormField = new PdfButtonFormField(pdfWidgetAnnotation, pdfDocument);
        pdfButtonFormField.pdfAConformanceLevel = pdfAConformanceLevel;
        if (pdfAConformanceLevel != null) {
            pdfWidgetAnnotation.setFlag(4);
        }
        pdfButtonFormField.setPushButton(true);
        pdfButtonFormField.setFieldName(str);
        pdfButtonFormField.text = str2;
        pdfButtonFormField.updateFontAndFontSize(pdfFont, f);
        pdfButtonFormField.backgroundColor = ColorConstants.LIGHT_GRAY;
        pdfWidgetAnnotation.setNormalAppearance(pdfButtonFormField.drawPushButtonAppearance(rectangle.getWidth(), rectangle.getHeight(), str2, pdfFont, f).getPdfObject());
        PdfDictionary pdfDictionary = new PdfDictionary();
        pdfDictionary.put(PdfName.f2983CA, new PdfString(str2));
        pdfDictionary.put(PdfName.f2976BG, new PdfArray(pdfButtonFormField.backgroundColor.getColorValue()));
        pdfWidgetAnnotation.setAppearanceCharacteristics(pdfDictionary);
        if (pdfAConformanceLevel != null) {
            createPushButtonAppearanceState(pdfWidgetAnnotation.getPdfObject());
        }
        return pdfButtonFormField;
    }

    public static PdfButtonFormField createCheckBox(PdfDocument pdfDocument, Rectangle rectangle, String str, String str2) {
        return createCheckBox(pdfDocument, rectangle, str, str2, 3);
    }

    public static PdfButtonFormField createCheckBox(PdfDocument pdfDocument, Rectangle rectangle, String str, String str2, int i) {
        return createCheckBox(pdfDocument, rectangle, str, str2, i, null);
    }

    public static PdfButtonFormField createCheckBox(PdfDocument pdfDocument, Rectangle rectangle, String str, String str2, int i, PdfAConformanceLevel pdfAConformanceLevel) {
        PdfWidgetAnnotation pdfWidgetAnnotation = new PdfWidgetAnnotation(rectangle);
        PdfButtonFormField pdfButtonFormField = new PdfButtonFormField(pdfWidgetAnnotation, pdfDocument);
        pdfButtonFormField.pdfAConformanceLevel = pdfAConformanceLevel;
        pdfButtonFormField.setFontSize(0);
        pdfButtonFormField.setCheckType(i);
        pdfButtonFormField.setFieldName(str);
        pdfButtonFormField.put(PdfName.f3086V, new PdfName(str2));
        pdfWidgetAnnotation.setAppearanceState(new PdfName(str2));
        if (pdfAConformanceLevel != null) {
            float width = rectangle.getWidth();
            float height = rectangle.getHeight();
            if ("Off".equals(str2)) {
                str2 = "Yes";
            }
            pdfButtonFormField.drawPdfA2CheckAppearance(width, height, str2, i);
            pdfWidgetAnnotation.setFlag(4);
        } else {
            float width2 = rectangle.getWidth();
            float height2 = rectangle.getHeight();
            if ("Off".equals(str2)) {
                str2 = "Yes";
            }
            pdfButtonFormField.drawCheckAppearance(width2, height2, str2);
        }
        return pdfButtonFormField;
    }

    public static PdfChoiceFormField createComboBox(PdfDocument pdfDocument, Rectangle rectangle, String str, String str2, String[][] strArr) {
        try {
            return createComboBox(pdfDocument, rectangle, str, str2, strArr, PdfFontFactory.createFont(), (PdfAConformanceLevel) null);
        } catch (IOException e) {
            throw new PdfException(e);
        }
    }

    public static PdfChoiceFormField createComboBox(PdfDocument pdfDocument, Rectangle rectangle, String str, String str2, String[][] strArr, PdfFont pdfFont, PdfAConformanceLevel pdfAConformanceLevel) {
        return createChoice(pdfDocument, rectangle, str, str2, processOptions(strArr), PdfChoiceFormField.FF_COMBO, pdfFont, pdfAConformanceLevel);
    }

    public static PdfChoiceFormField createComboBox(PdfDocument pdfDocument, Rectangle rectangle, String str, String str2, String[] strArr) {
        return createComboBox(pdfDocument, rectangle, str, str2, strArr, (PdfFont) null, (PdfAConformanceLevel) null);
    }

    public static PdfChoiceFormField createComboBox(PdfDocument pdfDocument, Rectangle rectangle, String str, String str2, String[] strArr, PdfFont pdfFont, PdfAConformanceLevel pdfAConformanceLevel) {
        return createChoice(pdfDocument, rectangle, str, str2, processOptions(strArr), PdfChoiceFormField.FF_COMBO, pdfFont, pdfAConformanceLevel);
    }

    public static PdfChoiceFormField createList(PdfDocument pdfDocument, Rectangle rectangle, String str, String str2, String[][] strArr) {
        return createList(pdfDocument, rectangle, str, str2, strArr, (PdfFont) null, (PdfAConformanceLevel) null);
    }

    public static PdfChoiceFormField createList(PdfDocument pdfDocument, Rectangle rectangle, String str, String str2, String[][] strArr, PdfFont pdfFont, PdfAConformanceLevel pdfAConformanceLevel) {
        return createChoice(pdfDocument, rectangle, str, str2, processOptions(strArr), 0, pdfFont, pdfAConformanceLevel);
    }

    public static PdfChoiceFormField createList(PdfDocument pdfDocument, Rectangle rectangle, String str, String str2, String[] strArr) {
        return createList(pdfDocument, rectangle, str, str2, strArr, (PdfFont) null, (PdfAConformanceLevel) null);
    }

    public static PdfChoiceFormField createList(PdfDocument pdfDocument, Rectangle rectangle, String str, String str2, String[] strArr, PdfFont pdfFont, PdfAConformanceLevel pdfAConformanceLevel) {
        return createChoice(pdfDocument, rectangle, str, str2, processOptions(strArr), 0, pdfFont, pdfAConformanceLevel);
    }

    public static PdfFormField makeFormField(PdfObject pdfObject, PdfDocument pdfDocument) {
        PdfFormField pdfFormField;
        if (!pdfObject.isDictionary()) {
            return null;
        }
        PdfDictionary pdfDictionary = (PdfDictionary) pdfObject;
        PdfName asName = pdfDictionary.getAsName(PdfName.f3007FT);
        if (PdfName.f3082Tx.equals(asName)) {
            pdfFormField = new PdfTextFormField(pdfDictionary);
        } else if (PdfName.Btn.equals(asName)) {
            pdfFormField = new PdfButtonFormField(pdfDictionary);
        } else if (PdfName.f2991Ch.equals(asName)) {
            pdfFormField = new PdfChoiceFormField(pdfDictionary);
        } else if (PdfName.Sig.equals(asName)) {
            pdfFormField = new PdfSignatureFormField(pdfDictionary);
        } else {
            pdfFormField = new PdfFormField(pdfDictionary);
        }
        pdfFormField.makeIndirect(pdfDocument);
        if (pdfDocument != null && pdfDocument.getReader() != null && pdfDocument.getReader().getPdfAConformanceLevel() != null) {
            pdfFormField.pdfAConformanceLevel = pdfDocument.getReader().getPdfAConformanceLevel();
        }
        return pdfFormField;
    }

    public PdfName getFormType() {
        PdfName asName = getPdfObject().getAsName(PdfName.f3007FT);
        return asName == null ? getTypeFromParent(getPdfObject()) : asName;
    }

    public PdfFormField setValue(String str) {
        return setValue(str, (PdfName.Btn.equals(getFormType()) && getFieldFlag(PdfButtonFormField.FF_RADIO)) ? false : true);
    }

    public PdfFormField setValue(String str, boolean z) {
        PdfName formType = getFormType();
        if (formType == null || !PdfName.Btn.equals(formType)) {
            PdfArray kids = getKids();
            if (kids != null) {
                for (PdfObject pdfObject : kids) {
                    if (pdfObject.isDictionary()) {
                        PdfDictionary pdfDictionary = (PdfDictionary) pdfObject;
                        if (pdfDictionary.getAsString(PdfName.f3071T) != null) {
                            PdfFormField pdfFormField = new PdfFormField(pdfDictionary);
                            pdfFormField.setValue(str);
                            if (pdfFormField.getDefaultAppearance() == null) {
                                pdfFormField.font = this.font;
                                pdfFormField.fontSize = this.fontSize;
                                pdfFormField.color = this.color;
                            }
                        }
                    }
                }
            }
            if (PdfName.f2991Ch.equals(formType)) {
                if (this instanceof PdfChoiceFormField) {
                    ((PdfChoiceFormField) this).setListSelected(new String[]{str}, false);
                } else {
                    new PdfChoiceFormField(getPdfObject()).setListSelected(new String[]{str}, false);
                }
            } else {
                put(PdfName.f3086V, new PdfString(str, PdfEncodings.UNICODE_BIG));
            }
        } else if (PdfName.Btn.equals(formType)) {
            if (getFieldFlag(PdfButtonFormField.FF_PUSH_BUTTON)) {
                try {
                    this.img = ImageDataFactory.create(Base64.decode(str));
                } catch (Exception unused) {
                    this.text = str;
                }
            } else {
                put(PdfName.f3086V, new PdfName(str));
                for (PdfWidgetAnnotation pdfWidgetAnnotation : getWidgets()) {
                    if (Arrays.asList(new PdfFormField(pdfWidgetAnnotation.getPdfObject()).getAppearanceStates()).contains(str)) {
                        pdfWidgetAnnotation.setAppearanceState(new PdfName(str));
                    } else {
                        pdfWidgetAnnotation.setAppearanceState(new PdfName("Off"));
                    }
                }
            }
        }
        if (z) {
            regenerateField();
        }
        setModified();
        return this;
    }

    public PdfFormField setValue(String str, PdfFont pdfFont, float f) {
        updateFontAndFontSize(pdfFont, f);
        return setValue(str);
    }

    private void updateFontAndFontSize(PdfFont pdfFont, float f) {
        if (pdfFont == null) {
            pdfFont = getDocument().getDefaultFont();
        }
        this.font = pdfFont;
        if (f < 0.0f) {
            f = 12.0f;
        }
        this.fontSize = f;
    }

    public PdfFormField setValue(String str, String str2) {
        if (str2 == null) {
            return setValue(str);
        }
        setValue(str2, true);
        if (PdfName.Btn.equals(getFormType())) {
            if ((getFieldFlags() & PdfButtonFormField.FF_PUSH_BUTTON) != 0) {
                this.text = str;
            } else {
                put(PdfName.f3086V, new PdfName(str));
            }
        } else {
            put(PdfName.f3086V, new PdfString(str, PdfEncodings.UNICODE_BIG));
        }
        return this;
    }

    public PdfFormField setParent(PdfFormField pdfFormField) {
        return put(PdfName.Parent, pdfFormField.getPdfObject());
    }

    public PdfDictionary getParent() {
        return getPdfObject().getAsDictionary(PdfName.Parent);
    }

    public PdfArray getKids() {
        return getPdfObject().getAsArray(PdfName.Kids);
    }

    public PdfFormField addKid(PdfFormField pdfFormField) {
        pdfFormField.setParent(this);
        PdfArray kids = getKids();
        if (kids == null) {
            kids = new PdfArray();
        }
        kids.add(pdfFormField.getPdfObject());
        return put(PdfName.Kids, kids);
    }

    public PdfFormField addKid(PdfWidgetAnnotation pdfWidgetAnnotation) {
        pdfWidgetAnnotation.setParent(getPdfObject());
        PdfArray kids = getKids();
        if (kids == null) {
            kids = new PdfArray();
        }
        kids.add(pdfWidgetAnnotation.getPdfObject());
        return put(PdfName.Kids, kids);
    }

    public PdfFormField setFieldName(String str) {
        return put(PdfName.f3071T, new PdfString(str));
    }

    public PdfString getFieldName() {
        String str;
        PdfString fieldName;
        if (getParent() != null && (fieldName = makeFormField(getParent(), getDocument()).getFieldName()) != null) {
            str = fieldName.toUnicodeString() + ".";
        } else {
            str = "";
        }
        PdfString asString = getPdfObject().getAsString(PdfName.f3071T);
        return asString != null ? new PdfString(str + asString.toUnicodeString(), PdfEncodings.UNICODE_BIG) : asString;
    }

    public PdfFormField setAlternativeName(String str) {
        return put(PdfName.f3081TU, new PdfString(str));
    }

    public PdfString getAlternativeName() {
        return getPdfObject().getAsString(PdfName.f3081TU);
    }

    public PdfFormField setMappingName(String str) {
        return put(PdfName.f3078TM, new PdfString(str));
    }

    public PdfString getMappingName() {
        return getPdfObject().getAsString(PdfName.f3078TM);
    }

    public boolean getFieldFlag(int i) {
        return (i & getFieldFlags()) != 0;
    }

    public PdfFormField setFieldFlag(int i) {
        return setFieldFlag(i, true);
    }

    public PdfFormField setFieldFlag(int i, boolean z) {
        int fieldFlags = getFieldFlags();
        return setFieldFlags(z ? i | fieldFlags : (~i) & fieldFlags);
    }

    public boolean isMultiline() {
        return getFieldFlag(FF_MULTILINE);
    }

    public boolean isPassword() {
        return getFieldFlag(FF_PASSWORD);
    }

    public PdfFormField setFieldFlags(int i) {
        int fieldFlags = getFieldFlags();
        put(PdfName.f3008Ff, new PdfNumber(i));
        if (((i ^ fieldFlags) & PdfTextFormField.FF_COMB) != 0 && PdfName.f3082Tx.equals(getFormType()) && new PdfTextFormField(getPdfObject()).getMaxLen() != 0) {
            regenerateField();
        }
        return this;
    }

    public int getFieldFlags() {
        PdfNumber asNumber = getPdfObject().getAsNumber(PdfName.f3008Ff);
        if (asNumber != null) {
            return asNumber.intValue();
        }
        PdfDictionary parent = getParent();
        if (parent != null) {
            return new PdfFormField(parent).getFieldFlags();
        }
        return 0;
    }

    public PdfObject getValue() {
        if (getPdfObject().get(PdfName.f3071T) == null && getParent() != null) {
            return getParent().get(PdfName.f3086V);
        }
        return getPdfObject().get(PdfName.f3086V);
    }

    public String getValueAsString() {
        PdfObject value = getValue();
        if (value == null) {
            return "";
        }
        if (value instanceof PdfStream) {
            return new String(((PdfStream) value).getBytes(), StandardCharsets.UTF_8);
        }
        if (value instanceof PdfName) {
            return ((PdfName) value).getValue();
        }
        if (!(value instanceof PdfString)) {
            return "";
        }
        return ((PdfString) value).toUnicodeString();
    }

    public PdfFormField setDefaultValue(PdfObject pdfObject) {
        return put(PdfName.f2997DV, pdfObject);
    }

    public PdfObject getDefaultValue() {
        return getPdfObject().get(PdfName.f2997DV);
    }

    public PdfFormField setAdditionalAction(PdfName pdfName, PdfAction pdfAction) {
        PdfAction.setAdditionalAction(this, pdfName, pdfAction);
        return this;
    }

    public PdfDictionary getAdditionalAction() {
        return getPdfObject().getAsDictionary(PdfName.f2968AA);
    }

    public PdfFormField setOptions(PdfArray pdfArray) {
        return put(PdfName.Opt, pdfArray);
    }

    public PdfArray getOptions() {
        return getPdfObject().getAsArray(PdfName.Opt);
    }

    public List<PdfWidgetAnnotation> getWidgets() {
        ArrayList arrayList = new ArrayList();
        PdfName asName = getPdfObject().getAsName(PdfName.Subtype);
        if (asName != null && asName.equals(PdfName.Widget)) {
            arrayList.add((PdfWidgetAnnotation) PdfAnnotation.makeAnnotation(getPdfObject()));
        }
        PdfArray kids = getKids();
        if (kids != null) {
            for (int i = 0; i < kids.size(); i++) {
                PdfObject pdfObject = kids.get(i);
                PdfName asName2 = ((PdfDictionary) pdfObject).getAsName(PdfName.Subtype);
                if (asName2 != null && asName2.equals(PdfName.Widget)) {
                    arrayList.add((PdfWidgetAnnotation) PdfAnnotation.makeAnnotation(pdfObject));
                }
            }
        }
        return arrayList;
    }

    public PdfString getDefaultAppearance() {
        PdfDictionary parent;
        PdfString asString = getPdfObject().getAsString(PdfName.f2993DA);
        if (asString == null && (parent = getParent()) != null && parent.containsKey(PdfName.f3007FT)) {
            asString = parent.getAsString(PdfName.f2993DA);
        }
        return asString == null ? (PdfString) getAcroFormKey(PdfName.f2993DA, 10) : asString;
    }

    public void updateDefaultAppearance() {
        if (hasDefaultAppearance()) {
            PdfDictionary pdfDictionary = (PdfDictionary) getAcroFormObject(PdfName.f2995DR, 3);
            if (pdfDictionary == null) {
                addAcroFormToCatalog();
                pdfDictionary = new PdfDictionary();
                putAcroFormObject(PdfName.f2995DR, pdfDictionary);
            }
            PdfDictionary asDictionary = pdfDictionary.getAsDictionary(PdfName.Font);
            if (asDictionary == null) {
                asDictionary = new PdfDictionary();
                pdfDictionary.put(PdfName.Font, asDictionary);
            }
            PdfName fontNameFromDR = getFontNameFromDR(asDictionary, this.font.getPdfObject());
            if (fontNameFromDR == null) {
                fontNameFromDR = getUniqueFontNameForDR(asDictionary);
                asDictionary.put(fontNameFromDR, this.font.getPdfObject());
                asDictionary.setModified();
            }
            put(PdfName.f2993DA, generateDefaultAppearance(fontNameFromDR, this.fontSize, this.color));
            getDocument().addFont(this.font);
            return;
        }
        ((PdfDictionary) getPdfObject()).remove(PdfName.f2993DA);
        setModified();
    }

    public Integer getJustification() {
        Integer asInt = getPdfObject().getAsInt(PdfName.f3055Q);
        return (asInt != null || getParent() == null) ? asInt : getParent().getAsInt(PdfName.f3055Q);
    }

    public PdfFormField setJustification(int i) {
        put(PdfName.f3055Q, new PdfNumber(i));
        regenerateField();
        return this;
    }

    public PdfString getDefaultStyle() {
        return getPdfObject().getAsString(PdfName.f2996DS);
    }

    public PdfFormField setDefaultStyle(PdfString pdfString) {
        put(PdfName.f2996DS, pdfString);
        return this;
    }

    public PdfObject getRichText() {
        return getPdfObject().get(PdfName.f3064RV);
    }

    public PdfFormField setRichText(PdfObject pdfObject) {
        put(PdfName.f3064RV, pdfObject);
        return this;
    }

    public float getFontSize() {
        return this.fontSize;
    }

    public PdfFont getFont() {
        return this.font;
    }

    public Color getColor() {
        return this.color;
    }

    public PdfFormField setFont(PdfFont pdfFont) {
        updateFontAndFontSize(pdfFont, this.fontSize);
        regenerateField();
        return this;
    }

    public PdfFormField setFontSize(float f) {
        updateFontAndFontSize(this.font, f);
        regenerateField();
        return this;
    }

    public PdfFormField setFontSize(int i) {
        setFontSize(i);
        return this;
    }

    public PdfFormField setFontAndSize(PdfFont pdfFont, float f) {
        updateFontAndFontSize(pdfFont, f);
        regenerateField();
        return this;
    }

    public PdfFormField setBackgroundColor(Color color) {
        this.backgroundColor = color;
        for (PdfWidgetAnnotation pdfWidgetAnnotation : getWidgets()) {
            PdfDictionary appearanceCharacteristics = pdfWidgetAnnotation.getAppearanceCharacteristics();
            if (appearanceCharacteristics == null) {
                appearanceCharacteristics = new PdfDictionary();
            }
            if (color == null) {
                appearanceCharacteristics.remove(PdfName.f2976BG);
            } else {
                appearanceCharacteristics.put(PdfName.f2976BG, new PdfArray(color.getColorValue()));
            }
            pdfWidgetAnnotation.setAppearanceCharacteristics(appearanceCharacteristics);
        }
        regenerateField();
        return this;
    }

    public PdfFormField setRotation(int i) {
        if (i % 90 != 0) {
            throw new IllegalArgumentException("degRotation.must.be.a.multiple.of.90");
        }
        int i2 = i % 360;
        if (i2 < 0) {
            i2 += 360;
        }
        this.rotation = i2;
        PdfDictionary appearanceCharacteristics = getWidgets().get(0).getAppearanceCharacteristics();
        if (appearanceCharacteristics == null) {
            appearanceCharacteristics = new PdfDictionary();
            put(PdfName.f3033MK, appearanceCharacteristics);
        }
        appearanceCharacteristics.put(PdfName.f3056R, new PdfNumber(i2));
        this.rotation = i2;
        regenerateField();
        return this;
    }

    public PdfFormField setAction(PdfAction pdfAction) {
        List<PdfWidgetAnnotation> widgets = getWidgets();
        if (widgets != null) {
            Iterator<PdfWidgetAnnotation> it = widgets.iterator();
            while (it.hasNext()) {
                it.next().setAction(pdfAction);
            }
        }
        return this;
    }

    public PdfFormField setCheckType(int i) {
        if (i < 1 || i > 6) {
            i = 3;
        }
        this.checkType = i;
        this.text = CHECKBOX_TYPE_ZAPFDINGBATS_CODE[i - 1];
        if (this.pdfAConformanceLevel != null) {
            return this;
        }
        try {
            this.font = PdfFontFactory.createFont("ZapfDingbats");
            return this;
        } catch (IOException e) {
            throw new PdfException(e);
        }
    }

    public PdfFormField setVisibility(int i) {
        if (i == 1) {
            put(PdfName.f3004F, new PdfNumber(6));
        } else if (i != 2) {
            if (i == 3) {
                put(PdfName.f3004F, new PdfNumber(36));
            } else {
                put(PdfName.f3004F, new PdfNumber(4));
            }
        }
        return this;
    }

    public boolean regenerateField() {
        updateDefaultAppearance();
        Iterator<PdfWidgetAnnotation> it = getWidgets().iterator();
        boolean zRegenerateWidget = true;
        while (it.hasNext()) {
            PdfFormField pdfFormField = new PdfFormField(it.next().getPdfObject());
            copyParamsToKids(pdfFormField);
            zRegenerateWidget &= pdfFormField.regenerateWidget(getValueAsString());
        }
        return zRegenerateWidget;
    }

    public float getBorderWidth() {
        PdfNumber asNumber;
        PdfDictionary borderStyle = getWidgets().get(0).getBorderStyle();
        if (borderStyle != null && (asNumber = borderStyle.getAsNumber(PdfName.f3089W)) != null) {
            this.borderWidth = asNumber.floatValue();
        }
        return this.borderWidth;
    }

    public PdfFormField setBorderWidth(float f) {
        PdfDictionary borderStyle = getWidgets().get(0).getBorderStyle();
        if (borderStyle == null) {
            borderStyle = new PdfDictionary();
            put(PdfName.f2978BS, borderStyle);
        }
        borderStyle.put(PdfName.f3089W, new PdfNumber(f));
        this.borderWidth = f;
        regenerateField();
        return this;
    }

    public PdfFormField setBorderStyle(PdfDictionary pdfDictionary) {
        getWidgets().get(0).setBorderStyle(pdfDictionary);
        regenerateField();
        return this;
    }

    public PdfFormField setBorderColor(Color color) {
        this.borderColor = color;
        for (PdfWidgetAnnotation pdfWidgetAnnotation : getWidgets()) {
            PdfDictionary appearanceCharacteristics = pdfWidgetAnnotation.getAppearanceCharacteristics();
            if (appearanceCharacteristics == null) {
                appearanceCharacteristics = new PdfDictionary();
            }
            if (this.borderColor == null) {
                appearanceCharacteristics.remove(PdfName.f2974BC);
            } else {
                appearanceCharacteristics.put(PdfName.f2974BC, new PdfArray(this.borderColor.getColorValue()));
            }
            pdfWidgetAnnotation.setAppearanceCharacteristics(appearanceCharacteristics);
        }
        regenerateField();
        return this;
    }

    public PdfFormField setColor(Color color) {
        this.color = color;
        regenerateField();
        return this;
    }

    public PdfFormField setReadOnly(boolean z) {
        return setFieldFlag(FF_READ_ONLY, z);
    }

    public boolean isReadOnly() {
        return getFieldFlag(FF_READ_ONLY);
    }

    public PdfFormField setRequired(boolean z) {
        return setFieldFlag(FF_REQUIRED, z);
    }

    public boolean isRequired() {
        return getFieldFlag(FF_REQUIRED);
    }

    public PdfFormField setNoExport(boolean z) {
        return setFieldFlag(FF_NO_EXPORT, z);
    }

    public boolean isNoExport() {
        return getFieldFlag(FF_NO_EXPORT);
    }

    public PdfFormField setPage(int i) {
        PdfWidgetAnnotation pdfWidgetAnnotation;
        List<PdfWidgetAnnotation> widgets = getWidgets();
        if (widgets.size() > 0 && (pdfWidgetAnnotation = widgets.get(0)) != null) {
            pdfWidgetAnnotation.setPage(getDocument().getPage(i));
        }
        return this;
    }

    public String[] getAppearanceStates() {
        PdfString asString;
        PdfDictionary asDictionary;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        PdfString asString2 = getPdfObject().getAsString(PdfName.Opt);
        if (asString2 != null) {
            linkedHashSet.add(asString2.toUnicodeString());
        } else {
            PdfArray asArray = getPdfObject().getAsArray(PdfName.Opt);
            if (asArray != null) {
                for (PdfObject pdfObject : asArray) {
                    if (pdfObject.isArray()) {
                        asString = ((PdfArray) pdfObject).getAsString(1);
                    } else {
                        asString = pdfObject.isString() ? (PdfString) pdfObject : null;
                    }
                    if (asString != null) {
                        linkedHashSet.add(asString.toUnicodeString());
                    }
                }
            }
        }
        PdfDictionary asDictionary2 = getPdfObject().getAsDictionary(PdfName.f2971AP);
        if (asDictionary2 != null && (asDictionary = asDictionary2.getAsDictionary(PdfName.f3037N)) != null) {
            Iterator<PdfName> it = asDictionary.keySet().iterator();
            while (it.hasNext()) {
                linkedHashSet.add(it.next().getValue());
            }
        }
        PdfArray kids = getKids();
        if (kids != null) {
            Iterator<PdfObject> it2 = kids.iterator();
            while (it2.hasNext()) {
                Collections.addAll(linkedHashSet, new PdfFormField((PdfDictionary) it2.next()).getAppearanceStates());
            }
        }
        return (String[]) linkedHashSet.toArray(new String[linkedHashSet.size()]);
    }

    public PdfFormField setAppearance(PdfName pdfName, String str, PdfStream pdfStream) {
        PdfDictionary pdfObject;
        PdfWidgetAnnotation pdfWidgetAnnotation = getWidgets().get(0);
        if (pdfWidgetAnnotation != null) {
            pdfObject = pdfWidgetAnnotation.getPdfObject();
        } else {
            pdfObject = getPdfObject();
        }
        PdfDictionary asDictionary = pdfObject.getAsDictionary(PdfName.f2971AP);
        if (asDictionary != null) {
            PdfDictionary asDictionary2 = asDictionary.getAsDictionary(pdfName);
            if (asDictionary2 == null) {
                asDictionary.put(pdfName, pdfStream);
            } else {
                asDictionary2.put(new PdfName(str), pdfStream);
            }
        }
        return this;
    }

    public PdfFormField setFontSizeAutoScale() {
        this.fontSize = 0.0f;
        regenerateField();
        return this;
    }

    public PdfFormField put(PdfName pdfName, PdfObject pdfObject) {
        getPdfObject().put(pdfName, pdfObject);
        setModified();
        return this;
    }

    public PdfFormField remove(PdfName pdfName) {
        getPdfObject().remove(pdfName);
        setModified();
        return this;
    }

    public void release() {
        unsetForbidRelease();
        getPdfObject().release();
    }

    protected PdfDocument getDocument() {
        return getPdfObject().getIndirectReference().getDocument();
    }

    protected Rectangle getRect(PdfDictionary pdfDictionary) {
        PdfArray asArray = pdfDictionary.getAsArray(PdfName.Rect);
        if (asArray == null) {
            PdfArray asArray2 = pdfDictionary.getAsArray(PdfName.Kids);
            if (asArray2 == null) {
                throw new PdfException(FormsExceptionMessageConstant.WRONG_FORM_FIELD_ADD_ANNOTATION_TO_THE_FIELD);
            }
            asArray = ((PdfDictionary) asArray2.get(0)).getAsArray(PdfName.Rect);
        }
        if (asArray != null) {
            return asArray.toRectangle();
        }
        return null;
    }

    protected static PdfArray processOptions(String[][] strArr) {
        PdfArray pdfArray = new PdfArray();
        for (String[] strArr2 : strArr) {
            PdfArray pdfArray2 = new PdfArray(new PdfString(strArr2[0], PdfEncodings.UNICODE_BIG));
            pdfArray2.add(new PdfString(strArr2[1], PdfEncodings.UNICODE_BIG));
            pdfArray.add(pdfArray2);
        }
        return pdfArray;
    }

    protected static PdfArray processOptions(String[] strArr) {
        PdfArray pdfArray = new PdfArray();
        for (String str : strArr) {
            pdfArray.add(new PdfString(str, PdfEncodings.UNICODE_BIG));
        }
        return pdfArray;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x015b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x007e A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected static java.lang.Object[] splitDAelements(java.lang.String r10) {
        /*
            Method dump skipped, instruction units count: 394
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.forms.fields.PdfFormField.splitDAelements(java.lang.String):java.lang.Object[]");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x011f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void drawTextAppearance(com.itextpdf.kernel.geom.Rectangle r20, com.itextpdf.kernel.font.PdfFont r21, float r22, java.lang.String r23, com.itextpdf.kernel.pdf.xobject.PdfFormXObject r24) {
        /*
            Method dump skipped, instruction units count: 354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.forms.fields.PdfFormField.drawTextAppearance(com.itextpdf.kernel.geom.Rectangle, com.itextpdf.kernel.font.PdfFont, float, java.lang.String, com.itextpdf.kernel.pdf.xobject.PdfFormXObject):void");
    }

    /* JADX INFO: renamed from: com.itextpdf.forms.fields.PdfFormField$1 */
    static /* synthetic */ class C34611 {
        static final /* synthetic */ int[] $SwitchMap$com$itextpdf$layout$properties$TextAlignment;

        static {
            int[] iArr = new int[TextAlignment.values().length];
            $SwitchMap$com$itextpdf$layout$properties$TextAlignment = iArr;
            try {
                iArr[TextAlignment.RIGHT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$properties$TextAlignment[TextAlignment.CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected void drawMultiLineTextAppearance(Rectangle rectangle, PdfFont pdfFont, String str, PdfFormXObject pdfFormXObject) {
        PdfStream pdfStream = (PdfStream) new PdfStream().makeIndirect(getDocument());
        PdfCanvas pdfCanvas = new PdfCanvas(pdfStream, pdfFormXObject.getResources(), getDocument());
        float width = rectangle.getWidth();
        float height = rectangle.getHeight();
        drawBorder(pdfCanvas, pdfFormXObject, width, height);
        pdfCanvas.beginVariableText();
        Rectangle rectangle2 = new Rectangle(0.0f, 0.0f, width, height);
        Canvas canvas = new Canvas(pdfCanvas, rectangle2);
        canvas.setProperty(82, true);
        setMetaInfoToCanvas(canvas);
        Paragraph multipliedLeading = ((Paragraph) createParagraphForTextFieldValue(str).setFont(pdfFont)).setMargin(0.0f).setPadding(3.0f).setMultipliedLeading(1.0f);
        float f = this.fontSize;
        if (f == 0.0f) {
            multipliedLeading.setFontSize(approximateFontSizeToFitMultiLine(multipliedLeading, rectangle2, canvas.getRenderer()));
        } else {
            multipliedLeading.setFontSize(f);
        }
        multipliedLeading.setProperty(26, true);
        multipliedLeading.setTextAlignment(convertJustificationToTextAlignment());
        Color color = this.color;
        if (color != null) {
            multipliedLeading.setFontColor(color);
        }
        multipliedLeading.setHeight(height - 1.0E-5f);
        multipliedLeading.setProperty(105, BoxSizingPropertyValue.BORDER_BOX);
        multipliedLeading.setProperty(103, OverflowPropertyValue.FIT);
        multipliedLeading.setProperty(104, OverflowPropertyValue.HIDDEN);
        canvas.add(multipliedLeading);
        pdfCanvas.endVariableText();
        pdfFormXObject.getPdfObject().setData(pdfStream.getBytes());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void drawChoiceAppearance(Rectangle rectangle, float f, String str, PdfFormXObject pdfFormXObject, int i) {
        PdfStream pdfStream = (PdfStream) new PdfStream().makeIndirect(getDocument());
        PdfCanvas pdfCanvas = new PdfCanvas(pdfStream, pdfFormXObject.getResources(), getDocument());
        float width = rectangle.getWidth();
        float height = rectangle.getHeight();
        float f2 = width - 6.0f;
        List<String> listSplitString = this.font.splitString(str, f, f2);
        drawBorder(pdfCanvas, pdfFormXObject, width, height);
        float f3 = height - X_OFFSET;
        pdfCanvas.beginVariableText().saveState().rectangle(3.0d, 3.0d, f2, f3).clip().endPath();
        float f4 = 0.0f;
        Canvas canvas = new Canvas(pdfCanvas, new Rectangle(3.0f, 0.0f, Math.max(0.0f, f2), Math.max(0.0f, f3)));
        canvas.setProperty(82, true);
        setMetaInfoToCanvas(canvas);
        Div div = new Div();
        if (getFieldFlag(PdfChoiceFormField.FF_COMBO)) {
            div.setVerticalAlignment(VerticalAlignment.MIDDLE);
        }
        div.setHeight(Math.max(0.0f, f3));
        int i2 = 0;
        while (i2 < listSplitString.size()) {
            if (Boolean.TRUE.equals(canvas.getRenderer().getPropertyAsBoolean(25))) {
                break;
            }
            Paragraph multipliedLeading = ((Paragraph) ((Paragraph) new Paragraph(listSplitString.get(i2)).setFont(this.font)).setFontSize(f)).setMargins(f4, f4, f4, f4).setMultipliedLeading(1.0f);
            multipliedLeading.setProperty(26, true);
            multipliedLeading.setTextAlignment(convertJustificationToTextAlignment());
            Color color = this.color;
            if (color != null) {
                multipliedLeading.setFontColor(color);
            }
            if (!getFieldFlag(PdfChoiceFormField.FF_COMBO)) {
                PdfArray asArray = getPdfObject().getAsArray(PdfName.f3019I);
                if (asArray == null && getKids() == null && getParent() != null) {
                    asArray = getParent().getAsArray(PdfName.f3019I);
                }
                if (asArray != null && asArray.size() > 0) {
                    for (PdfObject pdfObject : asArray) {
                        if (pdfObject.isNumber()) {
                            Paragraph paragraph = multipliedLeading;
                            if (((PdfNumber) pdfObject).getValue() == i2 + i) {
                                multipliedLeading = paragraph;
                                multipliedLeading.setBackgroundColor(new DeviceRgb(10, 36, 106));
                                multipliedLeading.setFontColor(ColorConstants.LIGHT_GRAY);
                            } else {
                                multipliedLeading = paragraph;
                            }
                        }
                    }
                }
            }
            div.add(multipliedLeading);
            i2++;
            f4 = 0.0f;
        }
        canvas.add(div);
        pdfCanvas.restoreState().endVariableText();
        pdfFormXObject.getPdfObject().setData(pdfStream.getBytes());
    }

    protected void drawBorder(PdfCanvas pdfCanvas, PdfFormXObject pdfFormXObject, float f, float f2) {
        pdfCanvas.saveState();
        float borderWidth = getBorderWidth();
        PdfDictionary borderStyle = getWidgets().get(0).getBorderStyle();
        if (borderWidth < 0.0f) {
            borderWidth = 0.0f;
        }
        Color color = this.backgroundColor;
        if (color != null) {
            pdfCanvas.setFillColor(color).rectangle(0.0d, 0.0d, f, f2).fill();
        }
        if (borderWidth > 0.0f && this.borderColor != null) {
            float fMax = Math.max(1.0f, borderWidth);
            pdfCanvas.setStrokeColor(this.borderColor).setLineWidth(fMax);
            Border border = FormBorderFactory.getBorder(borderStyle, fMax, this.borderColor, this.backgroundColor);
            if (border != null) {
                float f3 = fMax + fMax;
                border.draw(pdfCanvas, new Rectangle(fMax, fMax, f - f3, f2 - f3));
            } else {
                pdfCanvas.rectangle(0.0d, 0.0d, f, f2).stroke();
            }
        }
        applyRotation(pdfFormXObject, f2, f);
        pdfCanvas.restoreState();
    }

    protected void drawRadioBorder(PdfCanvas pdfCanvas, PdfFormXObject pdfFormXObject, float f, float f2) {
        float f3;
        float f4;
        pdfCanvas.saveState();
        float borderWidth = getBorderWidth();
        float f5 = f / X_OFFSET;
        float f6 = f2 / X_OFFSET;
        if (borderWidth < 0.0f) {
            borderWidth = 0.0f;
        }
        float fMin = (Math.min(f, f2) - borderWidth) / X_OFFSET;
        Color color = this.backgroundColor;
        if (color != null) {
            f3 = fMin;
            pdfCanvas.setFillColor(color).circle(f5, f6, (borderWidth / X_OFFSET) + fMin).fill();
            f4 = 0.0f;
        } else {
            f3 = fMin;
            f4 = 0.0f;
        }
        if (borderWidth > f4 && this.borderColor != null) {
            pdfCanvas.setStrokeColor(this.borderColor).setLineWidth(Math.max(1.0f, borderWidth)).circle(f5, f6, f3).stroke();
        }
        applyRotation(pdfFormXObject, f2, f);
        pdfCanvas.restoreState();
    }

    protected void drawRadioAppearance(float f, float f2, String str) {
        Rectangle rectangle = new Rectangle(0.0f, 0.0f, f, f2);
        PdfWidgetAnnotation pdfWidgetAnnotation = getWidgets().get(0);
        pdfWidgetAnnotation.setNormalAppearance(new PdfDictionary());
        PdfFormXObject pdfFormXObject = new PdfFormXObject(rectangle);
        if (str != null) {
            PdfStream pdfStream = (PdfStream) new PdfStream().makeIndirect(getDocument());
            PdfCanvas pdfCanvas = new PdfCanvas(pdfStream, new PdfResources(), getDocument());
            drawRadioBorder(pdfCanvas, pdfFormXObject, f, f2);
            drawRadioField(pdfCanvas, f, f2, true);
            pdfFormXObject.getPdfObject().getOutputStream().writeBytes(pdfStream.getBytes());
            pdfWidgetAnnotation.getNormalAppearanceObject().put(new PdfName(str), pdfFormXObject.getPdfObject());
        }
        PdfStream pdfStream2 = (PdfStream) new PdfStream().makeIndirect(getDocument());
        PdfCanvas pdfCanvas2 = new PdfCanvas(pdfStream2, new PdfResources(), getDocument());
        PdfFormXObject pdfFormXObject2 = new PdfFormXObject(rectangle);
        drawRadioBorder(pdfCanvas2, pdfFormXObject2, f, f2);
        pdfFormXObject2.getPdfObject().getOutputStream().writeBytes(pdfStream2.getBytes());
        pdfWidgetAnnotation.getNormalAppearanceObject().put(new PdfName("Off"), pdfFormXObject2.getPdfObject());
        PdfAConformanceLevel pdfAConformanceLevel = this.pdfAConformanceLevel;
        if (pdfAConformanceLevel != null) {
            if (ExifInterface.GPS_MEASUREMENT_2D.equals(pdfAConformanceLevel.getPart()) || ExifInterface.GPS_MEASUREMENT_3D.equals(this.pdfAConformanceLevel.getPart())) {
                pdfFormXObject.getResources();
                pdfFormXObject2.getResources();
            }
        }
    }

    protected void drawRadioField(PdfCanvas pdfCanvas, float f, float f2, boolean z) {
        pdfCanvas.saveState();
        if (z) {
            pdfCanvas.resetFillColorRgb();
            DrawingUtil.drawCircle(pdfCanvas, f / X_OFFSET, f2 / X_OFFSET, Math.min(f, f2) / 4.0f);
        }
        pdfCanvas.restoreState();
    }

    protected void drawCheckAppearance(float f, float f2, String str) {
        Rectangle rectangle = new Rectangle(0.0f, 0.0f, f, f2);
        PdfStream pdfStream = (PdfStream) new PdfStream().makeIndirect(getDocument());
        PdfCanvas pdfCanvas = new PdfCanvas(pdfStream, new PdfResources(), getDocument());
        PdfFormXObject pdfFormXObject = new PdfFormXObject(rectangle);
        drawBorder(pdfCanvas, pdfFormXObject, f, f2);
        drawCheckBox(pdfCanvas, f, f2, this.fontSize);
        pdfFormXObject.getPdfObject().getOutputStream().writeBytes(pdfStream.getBytes());
        pdfFormXObject.getResources().addFont(getDocument(), getFont());
        PdfStream pdfStream2 = (PdfStream) new PdfStream().makeIndirect(getDocument());
        PdfCanvas pdfCanvas2 = new PdfCanvas(pdfStream2, new PdfResources(), getDocument());
        PdfFormXObject pdfFormXObject2 = new PdfFormXObject(rectangle);
        drawBorder(pdfCanvas2, pdfFormXObject2, f, f2);
        pdfFormXObject2.getPdfObject().getOutputStream().writeBytes(pdfStream2.getBytes());
        pdfFormXObject2.getResources().addFont(getDocument(), getFont());
        PdfDictionary pdfDictionary = new PdfDictionary();
        pdfDictionary.put(new PdfName(str), pdfFormXObject.getPdfObject());
        pdfDictionary.put(new PdfName("Off"), pdfFormXObject2.getPdfObject());
        PdfDictionary pdfDictionary2 = new PdfDictionary();
        pdfDictionary2.put(PdfName.f2983CA, new PdfString(this.text));
        PdfWidgetAnnotation pdfWidgetAnnotation = getWidgets().get(0);
        pdfWidgetAnnotation.put(PdfName.f3033MK, pdfDictionary2);
        pdfWidgetAnnotation.setNormalAppearance(pdfDictionary);
    }

    protected void drawPdfA2CheckAppearance(float f, float f2, String str, int i) {
        this.checkType = i;
        Rectangle rectangle = new Rectangle(0.0f, 0.0f, f, f2);
        PdfStream pdfStream = (PdfStream) new PdfStream().makeIndirect(getDocument());
        PdfCanvas pdfCanvas = new PdfCanvas(pdfStream, new PdfResources(), getDocument());
        PdfFormXObject pdfFormXObject = new PdfFormXObject(rectangle);
        pdfFormXObject.getResources();
        drawBorder(pdfCanvas, pdfFormXObject, f, f2);
        drawPdfACheckBox(pdfCanvas, f, f2, true);
        pdfFormXObject.getPdfObject().getOutputStream().writeBytes(pdfStream.getBytes());
        PdfStream pdfStream2 = (PdfStream) new PdfStream().makeIndirect(getDocument());
        PdfCanvas pdfCanvas2 = new PdfCanvas(pdfStream2, new PdfResources(), getDocument());
        PdfFormXObject pdfFormXObject2 = new PdfFormXObject(rectangle);
        pdfFormXObject2.getResources();
        drawBorder(pdfCanvas2, pdfFormXObject2, f, f2);
        pdfFormXObject2.getPdfObject().getOutputStream().writeBytes(pdfStream2.getBytes());
        PdfDictionary pdfDictionary = new PdfDictionary();
        pdfDictionary.put(new PdfName(str), pdfFormXObject.getPdfObject());
        pdfDictionary.put(new PdfName("Off"), pdfFormXObject2.getPdfObject());
        PdfDictionary pdfDictionary2 = new PdfDictionary();
        pdfDictionary2.put(PdfName.f2983CA, new PdfString(this.text));
        PdfWidgetAnnotation pdfWidgetAnnotation = getWidgets().get(0);
        pdfWidgetAnnotation.put(PdfName.f3033MK, pdfDictionary2);
        pdfWidgetAnnotation.setNormalAppearance(pdfDictionary);
    }

    protected PdfFormXObject drawPushButtonAppearance(float f, float f2, String str, PdfFont pdfFont, float f3) {
        PdfStream pdfStream = (PdfStream) new PdfStream().makeIndirect(getDocument());
        PdfCanvas pdfCanvas = new PdfCanvas(pdfStream, new PdfResources(), getDocument());
        PdfFormXObject pdfFormXObject = new PdfFormXObject(new Rectangle(0.0f, 0.0f, f, f2));
        drawBorder(pdfCanvas, pdfFormXObject, f, f2);
        if (this.img != null) {
            PdfImageXObject pdfImageXObject = new PdfImageXObject(this.img);
            float f4 = this.borderWidth;
            pdfCanvas.addXObjectWithTransformationMatrix(pdfImageXObject, f - f4, 0.0f, 0.0f, f2 - f4, f4 / X_OFFSET, f4 / X_OFFSET);
            pdfFormXObject.getResources().addImage(pdfImageXObject);
        } else {
            PdfXObject pdfXObject = this.form;
            if (pdfXObject != null) {
                float height = (f2 - this.borderWidth) / pdfXObject.getHeight();
                float height2 = (f2 - this.borderWidth) / this.form.getHeight();
                float f5 = this.borderWidth;
                pdfCanvas.addXObjectWithTransformationMatrix(pdfXObject, height, 0.0f, 0.0f, height2, f5 / X_OFFSET, f5 / X_OFFSET);
                pdfFormXObject.getResources().addForm(this.form);
            } else {
                drawButton(pdfCanvas, 0.0f, 0.0f, f, f2, str, pdfFont, f3);
                pdfFormXObject.getResources().addFont(getDocument(), pdfFont);
            }
        }
        pdfFormXObject.getPdfObject().getOutputStream().writeBytes(pdfStream.getBytes());
        return pdfFormXObject;
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected void drawButton(PdfCanvas pdfCanvas, float f, float f2, float f3, float f4, String str, PdfFont pdfFont, float f5) {
        if (this.color == null) {
            this.color = ColorConstants.BLACK;
        }
        if (str == null) {
            str = "";
        }
        Paragraph verticalAlignment = ((Paragraph) ((Paragraph) new Paragraph(str).setFont(pdfFont)).setFontSize(f5)).setMargin(0.0f).setMultipliedLeading(1.0f).setVerticalAlignment(VerticalAlignment.MIDDLE);
        Canvas canvas = new Canvas(pdfCanvas, new Rectangle(0.0f, -f4, f3, f4 * X_OFFSET));
        canvas.setProperty(82, true);
        setMetaInfoToCanvas(canvas);
        canvas.showTextAligned(verticalAlignment, f3 / X_OFFSET, f4 / X_OFFSET, TextAlignment.CENTER, VerticalAlignment.MIDDLE);
    }

    protected void drawCheckBox(PdfCanvas pdfCanvas, float f, float f2, float f3) {
        if (this.checkType == 3) {
            DrawingUtil.drawCross(pdfCanvas, f, f2, this.borderWidth);
            return;
        }
        PdfFont font = getFont();
        if (f3 <= 0.0f) {
            f3 = approximateFontSizeToFitSingleLine(font, new Rectangle(f, f2), this.text, 0.1f);
        }
        pdfCanvas.beginText().setFontAndSize(font, f3).resetFillColorRgb().setTextMatrix((f - font.getWidth(this.text, f3)) / X_OFFSET, (f2 - font.getAscent(this.text, f3)) / X_OFFSET).showText(this.text).endText();
    }

    protected void drawPdfACheckBox(PdfCanvas pdfCanvas, float f, float f2, boolean z) {
        if (z) {
            switch (this.checkType) {
                case 1:
                    DrawingUtil.drawPdfACheck(pdfCanvas, f, f2);
                    break;
                case 2:
                    DrawingUtil.drawPdfACircle(pdfCanvas, f, f2);
                    break;
                case 3:
                    DrawingUtil.drawPdfACross(pdfCanvas, f, f2);
                    break;
                case 4:
                    DrawingUtil.drawPdfADiamond(pdfCanvas, f, f2);
                    break;
                case 5:
                    DrawingUtil.drawPdfASquare(pdfCanvas, f, f2);
                    break;
                case 6:
                    DrawingUtil.drawPdfAStar(pdfCanvas, f, f2);
                    break;
            }
        }
    }

    static void setMetaInfoToCanvas(Canvas canvas) {
        MetaInfoContainer metaInfoForLayout = FormsMetaInfoStaticContainer.getMetaInfoForLayout();
        if (metaInfoForLayout != null) {
            canvas.setProperty(135, metaInfoForLayout);
        }
    }

    private String getRadioButtonValue() {
        for (String str : getAppearanceStates()) {
            if (!"Off".equals(str)) {
                return str;
            }
        }
        return null;
    }

    private float getFontSize(PdfArray pdfArray, String str) {
        float f = this.fontSize;
        if (f != 0.0f) {
            return f;
        }
        if (pdfArray == null || str == null || str.isEmpty()) {
            return 12.0f;
        }
        return approximateFontSizeToFitSingleLine(this.font, pdfArray.toRectangle(), str, 4.0f);
    }

    private float approximateFontSizeToFitMultiLine(Paragraph paragraph, Rectangle rectangle, IRenderer iRenderer) {
        IRenderer parent = paragraph.createRendererSubTree().setParent(iRenderer);
        LayoutContext layoutContext = new LayoutContext(new LayoutArea(1, rectangle));
        float f = 12.0f;
        paragraph.setFontSize(12.0f);
        if (parent.layout(layoutContext).getStatus() != 1) {
            float f2 = 12.0f;
            f = 4.0f;
            for (int i = 0; i < 6; i++) {
                float f3 = (f + f2) / X_OFFSET;
                paragraph.setFontSize(f3);
                if (parent.layout(layoutContext).getStatus() == 1) {
                    f = f3;
                } else {
                    f2 = f3;
                }
            }
        }
        return f;
    }

    private float approximateFontSizeToFitSingleLine(PdfFont pdfFont, Rectangle rectangle, String str, float f) {
        float height = rectangle.getHeight() - (this.borderWidth * X_OFFSET);
        int[] bbox = pdfFont.getFontProgram().getFontMetrics().getBbox();
        float fMin = (height / (bbox[2] - bbox[1])) * 1000.0f;
        float width = pdfFont.getWidth(str, 1.0f);
        if (width != 0.0f) {
            float fMax = Math.max(rectangle.getWidth() - (this.borderWidth * X_OFFSET), 0.0f);
            float f2 = 0.15f * fMax;
            fMin = Math.min(fMin, (fMax - (f2 < 4.0f ? f2 * X_OFFSET : 8.0f)) / width);
        }
        return Math.max(fMin, f);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0082  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private float calculateTranslationHeightAfterFieldRot(com.itextpdf.kernel.geom.Rectangle r9, double r10, double r12) {
        /*
            r8 = this;
            r0 = 0
            int r2 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            r3 = 0
            if (r2 != 0) goto L8
            return r3
        L8:
            int r0 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            r1 = 4614256656552045848(0x400921fb54442d18, double:3.141592653589793)
            r4 = 4609753056924675352(0x3ff921fb54442d18, double:1.5707963267948966)
            if (r0 != 0) goto L28
            int r0 = (r12 > r4 ? 1 : (r12 == r4 ? 0 : -1))
            if (r0 != 0) goto L1f
            float r9 = r9.getHeight()
            return r9
        L1f:
            int r0 = (r12 > r1 ? 1 : (r12 == r1 ? 0 : -1))
            if (r0 != 0) goto L28
            float r9 = r9.getHeight()
            return r9
        L28:
            r6 = -4613618979930100456(0xbff921fb54442d18, double:-1.5707963267948966)
            int r0 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
            if (r0 != 0) goto L51
            int r0 = (r12 > r6 ? 1 : (r12 == r6 ? 0 : -1))
            if (r0 != 0) goto L3f
            float r10 = r9.getWidth()
            float r9 = r9.getHeight()
        L3d:
            float r10 = r10 - r9
            return r10
        L3f:
            int r0 = (r12 > r4 ? 1 : (r12 == r4 ? 0 : -1))
            if (r0 != 0) goto L48
            float r9 = r9.getHeight()
            return r9
        L48:
            int r0 = (r12 > r1 ? 1 : (r12 == r1 ? 0 : -1))
            if (r0 != 0) goto L51
            float r9 = r9.getWidth()
            return r9
        L51:
            r0 = -4609115380302729960(0xc00921fb54442d18, double:-3.141592653589793)
            int r2 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r2 != 0) goto L79
            int r2 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            if (r2 != 0) goto L63
            float r9 = r9.getHeight()
            return r9
        L63:
            int r2 = (r12 > r6 ? 1 : (r12 == r6 ? 0 : -1))
            if (r2 != 0) goto L70
            float r10 = r9.getHeight()
            float r9 = r9.getWidth()
            goto L3d
        L70:
            int r2 = (r12 > r4 ? 1 : (r12 == r4 ? 0 : -1))
            if (r2 != 0) goto L79
            float r9 = r9.getWidth()
            return r9
        L79:
            r4 = -4606380340113366574(0xc012d97c7f3321d2, double:-4.71238898038469)
            int r10 = (r10 > r4 ? 1 : (r10 == r4 ? 0 : -1))
            if (r10 != 0) goto L94
            int r10 = (r12 > r4 ? 1 : (r12 == r4 ? 0 : -1))
            if (r10 != 0) goto L8b
            float r9 = r9.getWidth()
            return r9
        L8b:
            int r10 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            if (r10 != 0) goto L94
            float r9 = r9.getWidth()
            return r9
        L94:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.forms.fields.PdfFormField.calculateTranslationHeightAfterFieldRot(com.itextpdf.kernel.geom.Rectangle, double, double):float");
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x006a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private float calculateTranslationWidthAfterFieldRot(com.itextpdf.kernel.geom.Rectangle r10, double r11, double r13) {
        /*
            r9 = this;
            r0 = 0
            int r2 = (r13 > r0 ? 1 : (r13 == r0 ? 0 : -1))
            r3 = 0
            if (r2 != 0) goto L8
            return r3
        L8:
            int r0 = (r11 > r0 ? 1 : (r11 == r0 ? 0 : -1))
            r1 = 4614256656552045848(0x400921fb54442d18, double:3.141592653589793)
            if (r0 != 0) goto L23
            int r0 = (r13 > r1 ? 1 : (r13 == r1 ? 0 : -1))
            if (r0 == 0) goto L1e
            r4 = 4616991696741409234(0x4012d97c7f3321d2, double:4.71238898038469)
            int r0 = (r13 > r4 ? 1 : (r13 == r4 ? 0 : -1))
            if (r0 != 0) goto L23
        L1e:
            float r10 = r10.getWidth()
            return r10
        L23:
            r4 = -4613618979930100456(0xbff921fb54442d18, double:-1.5707963267948966)
            int r0 = (r11 > r4 ? 1 : (r11 == r4 ? 0 : -1))
            if (r0 != 0) goto L39
            int r0 = (r13 > r4 ? 1 : (r13 == r4 ? 0 : -1))
            if (r0 == 0) goto L34
            int r0 = (r13 > r1 ? 1 : (r13 == r1 ? 0 : -1))
            if (r0 != 0) goto L39
        L34:
            float r10 = r10.getHeight()
            return r10
        L39:
            r0 = -4609115380302729960(0xc00921fb54442d18, double:-3.141592653589793)
            int r2 = (r11 > r0 ? 1 : (r11 == r0 ? 0 : -1))
            r6 = -1082130432(0xffffffffbf800000, float:-1.0)
            if (r2 != 0) goto L6a
            int r2 = (r13 > r0 ? 1 : (r13 == r0 ? 0 : -1))
            if (r2 != 0) goto L4d
            float r10 = r10.getWidth()
            return r10
        L4d:
            int r2 = (r13 > r4 ? 1 : (r13 == r4 ? 0 : -1))
            if (r2 != 0) goto L56
            float r10 = r10.getHeight()
            return r10
        L56:
            r7 = 4609753056924675352(0x3ff921fb54442d18, double:1.5707963267948966)
            int r2 = (r13 > r7 ? 1 : (r13 == r7 ? 0 : -1))
            if (r2 != 0) goto L6a
            float r11 = r10.getHeight()
            float r10 = r10.getWidth()
        L67:
            float r11 = r11 - r10
            float r11 = r11 * r6
            return r11
        L6a:
            r7 = -4606380340113366574(0xc012d97c7f3321d2, double:-4.71238898038469)
            int r11 = (r11 > r7 ? 1 : (r11 == r7 ? 0 : -1))
            if (r11 != 0) goto L92
            int r11 = (r13 > r7 ? 1 : (r13 == r7 ? 0 : -1))
            if (r11 != 0) goto L80
            float r11 = r10.getWidth()
            float r10 = r10.getHeight()
            goto L67
        L80:
            int r11 = (r13 > r0 ? 1 : (r13 == r0 ? 0 : -1))
            if (r11 != 0) goto L89
            float r10 = r10.getHeight()
            return r10
        L89:
            int r11 = (r13 > r4 ? 1 : (r13 == r4 ? 0 : -1))
            if (r11 != 0) goto L92
            float r10 = r10.getWidth()
            return r10
        L92:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.forms.fields.PdfFormField.calculateTranslationWidthAfterFieldRot(com.itextpdf.kernel.geom.Rectangle, double, double):float");
    }

    private boolean hasDefaultAppearance() {
        PdfName formType = getFormType();
        return formType == PdfName.f3082Tx || formType == PdfName.f2991Ch || (formType == PdfName.Btn && (getFieldFlags() & PdfButtonFormField.FF_PUSH_BUTTON) != 0);
    }

    private PdfName getUniqueFontNameForDR(PdfDictionary pdfDictionary) {
        Set<PdfName> setKeySet = pdfDictionary.keySet();
        int i = 1;
        while (true) {
            int i2 = i + 1;
            PdfName pdfName = new PdfName("F" + i);
            if (!setKeySet.contains(pdfName)) {
                return pdfName;
            }
            i = i2;
        }
    }

    private PdfName getFontNameFromDR(PdfDictionary pdfDictionary, PdfObject pdfObject) {
        for (Map.Entry<PdfName, PdfObject> entry : pdfDictionary.entrySet()) {
            if (entry.getValue() == pdfObject) {
                return entry.getKey();
            }
        }
        return null;
    }

    private PdfObject getAcroFormObject(PdfName pdfName, int i) {
        PdfDictionary asDictionary = getDocument().getCatalog().getPdfObject().getAsDictionary(PdfName.AcroForm);
        PdfObject pdfObject = asDictionary != null ? asDictionary.get(pdfName) : null;
        if (pdfObject == null || pdfObject.getType() != i) {
            return null;
        }
        return pdfObject;
    }

    private void putAcroFormObject(PdfName pdfName, PdfObject pdfObject) {
        getDocument().getCatalog().getPdfObject().getAsDictionary(PdfName.AcroForm).put(pdfName, pdfObject);
    }

    private void addAcroFormToCatalog() {
        if (getDocument().getCatalog().getPdfObject().getAsDictionary(PdfName.AcroForm) == null) {
            PdfDictionary pdfDictionary = new PdfDictionary();
            pdfDictionary.makeIndirect(getDocument());
            pdfDictionary.put(PdfName.Fields, new PdfArray());
            getDocument().getCatalog().put(PdfName.AcroForm, pdfDictionary);
        }
    }

    private PdfObject getAcroFormKey(PdfName pdfName, int i) {
        PdfDictionary asDictionary;
        PdfDocument document = getDocument();
        PdfObject pdfObject = (document == null || (asDictionary = document.getCatalog().getPdfObject().getAsDictionary(PdfName.AcroForm)) == null) ? null : asDictionary.get(pdfName);
        if (pdfObject == null || pdfObject.getType() != i) {
            return null;
        }
        return pdfObject;
    }

    private TextAlignment convertJustificationToTextAlignment() {
        Integer justification = getJustification();
        if (justification == null) {
            justification = 0;
        }
        TextAlignment textAlignment = TextAlignment.LEFT;
        if (justification.intValue() == 2) {
            return TextAlignment.RIGHT;
        }
        return justification.intValue() == 1 ? TextAlignment.CENTER : textAlignment;
    }

    private PdfName getTypeFromParent(PdfDictionary pdfDictionary) {
        PdfDictionary asDictionary = pdfDictionary.getAsDictionary(PdfName.Parent);
        PdfName asName = pdfDictionary.getAsName(PdfName.f3007FT);
        if (asDictionary == null) {
            return asName;
        }
        PdfName asName2 = asDictionary.getAsName(PdfName.f3007FT);
        return asName2 == null ? getTypeFromParent(asDictionary) : asName2;
    }

    private String obfuscatePassword(String str) {
        char[] cArr = new char[str.length()];
        for (int i = 0; i < str.length(); i++) {
            cArr[i] = '*';
        }
        return new String(cArr);
    }

    private void applyRotation(PdfFormXObject pdfFormXObject, float f, float f2) {
        int i = this.rotation;
        if (i == 90) {
            pdfFormXObject.put(PdfName.Matrix, new PdfArray(new float[]{0.0f, 1.0f, -1.0f, 0.0f, f, 0.0f}));
        } else if (i == 180) {
            pdfFormXObject.put(PdfName.Matrix, new PdfArray(new float[]{-1.0f, 0.0f, 0.0f, -1.0f, f2, f}));
        } else {
            if (i != 270) {
                return;
            }
            pdfFormXObject.put(PdfName.Matrix, new PdfArray(new float[]{0.0f, -1.0f, 1.0f, 0.0f, 0.0f, f2}));
        }
    }

    private PdfObject getValueFromAppearance(PdfObject pdfObject, PdfName pdfName) {
        if (pdfObject instanceof PdfDictionary) {
            return ((PdfDictionary) pdfObject).get(pdfName);
        }
        return null;
    }

    private void retrieveStyles() {
        Object[] objArrSplitDAelements;
        Object obj;
        PdfDictionary asDictionary;
        PdfName asName = getPdfObject().getAsName(PdfName.Subtype);
        if (asName != null && asName.equals(PdfName.Widget) && (asDictionary = getPdfObject().getAsDictionary(PdfName.f3033MK)) != null) {
            this.backgroundColor = appearancePropToColor(asDictionary, PdfName.f2976BG);
            Color colorAppearancePropToColor = appearancePropToColor(asDictionary, PdfName.f2974BC);
            if (colorAppearancePropToColor != null) {
                this.borderColor = colorAppearancePropToColor;
            }
        }
        PdfString defaultAppearance = getDefaultAppearance();
        if (defaultAppearance != null && (obj = (objArrSplitDAelements = splitDAelements(defaultAppearance.getValue()))[1]) != null && objArrSplitDAelements[0] != null) {
            this.color = (Color) objArrSplitDAelements[2];
            this.fontSize = ((Float) obj).floatValue();
            this.font = resolveFontName((String) objArrSplitDAelements[0]);
        }
        updateFontAndFontSize(this.font, this.fontSize);
    }

    private PdfFont resolveFontName(String str) {
        PdfDictionary asDictionary;
        PdfDictionary pdfDictionary = (PdfDictionary) getAcroFormObject(PdfName.f2995DR, 3);
        PdfDictionary asDictionary2 = pdfDictionary != null ? pdfDictionary.getAsDictionary(PdfName.Font) : null;
        if (str == null || asDictionary2 == null || (asDictionary = asDictionary2.getAsDictionary(new PdfName(str))) == null) {
            return null;
        }
        return getDocument().getFont(asDictionary);
    }

    private Color appearancePropToColor(PdfDictionary pdfDictionary, PdfName pdfName) {
        PdfArray asArray = pdfDictionary.getAsArray(pdfName);
        if (asArray == null) {
            return null;
        }
        float[] fArr = new float[asArray.size()];
        for (int i = 0; i < asArray.size(); i++) {
            fArr[i] = asArray.getAsNumber(i).floatValue();
        }
        int size = asArray.size();
        if (size == 1) {
            return new DeviceGray(fArr[0]);
        }
        if (size == 3) {
            return new DeviceRgb(fArr[0], fArr[1], fArr[2]);
        }
        if (size != 4) {
            return null;
        }
        return new DeviceCmyk(fArr[0], fArr[1], fArr[2], fArr[3]);
    }

    private void regeneratePushButtonField() {
        PdfDictionary pdfObject = getPdfObject();
        Rectangle rect = getRect(pdfObject);
        PdfDictionary asDictionary = pdfObject.getAsDictionary(PdfName.f2971AP);
        if (asDictionary == null) {
            PdfName pdfName = PdfName.f2971AP;
            PdfDictionary pdfDictionary = new PdfDictionary();
            put(pdfName, pdfDictionary);
            asDictionary = pdfDictionary;
        }
        asDictionary.put(PdfName.f3037N, drawPushButtonAppearance(rect.getWidth(), rect.getHeight(), this.text, this.font, getFontSize(pdfObject.getAsArray(PdfName.Rect), this.text)).getPdfObject());
        if (this.pdfAConformanceLevel != null) {
            createPushButtonAppearanceState(pdfObject);
        }
    }

    private void regenerateRadioButtonField() {
        Rectangle rect = getRect(getPdfObject());
        String radioButtonValue = getRadioButtonValue();
        if (rect == null || "".equals(radioButtonValue)) {
            return;
        }
        drawRadioAppearance(rect.getWidth(), rect.getHeight(), radioButtonValue);
    }

    private void regenerateCheckboxField(String str) {
        Rectangle rect = getRect(getPdfObject());
        setCheckType(this.checkType);
        PdfWidgetAnnotation pdfWidgetAnnotation = (PdfWidgetAnnotation) PdfAnnotation.makeAnnotation(getPdfObject());
        if (this.pdfAConformanceLevel != null) {
            drawPdfA2CheckAppearance(rect.getWidth(), rect.getHeight(), "Off".equals(str) ? "Yes" : str, this.checkType);
            pdfWidgetAnnotation.setFlag(4);
        } else {
            drawCheckAppearance(rect.getWidth(), rect.getHeight(), "Off".equals(str) ? "Yes" : str);
        }
        if (pdfWidgetAnnotation.getNormalAppearanceObject() != null && pdfWidgetAnnotation.getNormalAppearanceObject().containsKey(new PdfName(str))) {
            pdfWidgetAnnotation.setAppearanceState(new PdfName(str));
        } else {
            pdfWidgetAnnotation.setAppearanceState(new PdfName("Off"));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:66:0x02d8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean regenerateTextAndChoiceField(java.lang.String r40, com.itextpdf.kernel.pdf.PdfName r41) {
        /*
            Method dump skipped, instruction units count: 794
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.forms.fields.PdfFormField.regenerateTextAndChoiceField(java.lang.String, com.itextpdf.kernel.pdf.PdfName):boolean");
    }

    private void copyParamsToKids(PdfFormField pdfFormField) {
        int i = pdfFormField.checkType;
        if (i <= 0 || i > 5) {
            pdfFormField.checkType = this.checkType;
        }
        if (pdfFormField.getDefaultAppearance() == null) {
            pdfFormField.font = this.font;
            pdfFormField.fontSize = this.fontSize;
        }
        if (pdfFormField.color == null) {
            pdfFormField.color = this.color;
        }
        if (pdfFormField.text == null) {
            pdfFormField.text = this.text;
        }
        if (pdfFormField.img == null) {
            pdfFormField.img = this.img;
        }
        if (pdfFormField.borderWidth == 1.0f) {
            pdfFormField.borderWidth = this.borderWidth;
        }
        if (pdfFormField.backgroundColor == null) {
            pdfFormField.backgroundColor = this.backgroundColor;
        }
        if (pdfFormField.borderColor == null) {
            pdfFormField.borderColor = this.borderColor;
        }
        if (pdfFormField.rotation == 0) {
            pdfFormField.rotation = this.rotation;
        }
        if (pdfFormField.pdfAConformanceLevel == null) {
            pdfFormField.pdfAConformanceLevel = this.pdfAConformanceLevel;
        }
        if (pdfFormField.form == null) {
            pdfFormField.form = this.form;
        }
    }

    private boolean regenerateWidget(String str) {
        PdfName formType = getFormType();
        if (PdfName.f3082Tx.equals(formType) || PdfName.f2991Ch.equals(formType)) {
            return regenerateTextAndChoiceField(str, formType);
        }
        if (!PdfName.Btn.equals(formType)) {
            return false;
        }
        if (getFieldFlag(PdfButtonFormField.FF_PUSH_BUTTON)) {
            regeneratePushButtonField();
            return true;
        }
        if (getFieldFlag(PdfButtonFormField.FF_RADIO)) {
            regenerateRadioButtonField();
            return true;
        }
        regenerateCheckboxField(str);
        return true;
    }

    private static String optionsArrayToString(PdfArray pdfArray) {
        StringBuilder sb = new StringBuilder();
        for (PdfObject pdfObject : pdfArray) {
            if (pdfObject.isString()) {
                sb.append(((PdfString) pdfObject).toUnicodeString()).append('\n');
            } else if (pdfObject.isArray()) {
                PdfObject pdfObject2 = ((PdfArray) pdfObject).get(1);
                if (pdfObject2.isString()) {
                    sb.append(((PdfString) pdfObject2).toUnicodeString()).append('\n');
                }
            } else {
                sb.append('\n');
            }
        }
        sb.deleteCharAt(sb.length() - 1);
        return sb.toString();
    }

    private static PdfString generateDefaultAppearance(PdfName pdfName, float f, Color color) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        PdfOutputStream pdfOutputStream = new PdfOutputStream(new OutputStream(byteArrayOutputStream));
        byte[] bArr = {103};
        byte[] bArr2 = {114, 103};
        byte[] bArr3 = {107};
        pdfOutputStream.write((PdfObject) pdfName).writeSpace().writeFloat(f).writeSpace().writeBytes(new byte[]{84, 102});
        if (color != null) {
            if (color instanceof DeviceGray) {
                pdfOutputStream.writeSpace().writeFloats(color.getColorValue()).writeSpace().writeBytes(bArr);
            } else if (color instanceof DeviceRgb) {
                pdfOutputStream.writeSpace().writeFloats(color.getColorValue()).writeSpace().writeBytes(bArr2);
            } else if (color instanceof DeviceCmyk) {
                pdfOutputStream.writeSpace().writeFloats(color.getColorValue()).writeSpace().writeBytes(bArr3);
            } else {
                LoggerFactory.getLogger((Class<?>) PdfFormField.class).error(IoLogMessageConstant.UNSUPPORTED_COLOR_IN_DA);
            }
        }
        return new PdfString(byteArrayOutputStream.toByteArray());
    }

    private static boolean isWidgetAnnotation(PdfDictionary pdfDictionary) {
        return pdfDictionary != null && PdfName.Widget.equals(pdfDictionary.getAsName(PdfName.Subtype));
    }

    private static void createPushButtonAppearanceState(PdfDictionary pdfDictionary) {
        PdfDictionary asDictionary = pdfDictionary.getAsDictionary(PdfName.f2971AP);
        PdfStream asStream = asDictionary.getAsStream(PdfName.f3037N);
        if (asStream != null) {
            PdfName asName = pdfDictionary.getAsName(PdfName.f2972AS);
            if (asName == null) {
                asName = new PdfName("push");
            }
            pdfDictionary.put(PdfName.f2972AS, asName);
            PdfDictionary pdfDictionary2 = new PdfDictionary();
            pdfDictionary2.put(asName, asStream);
            asDictionary.put(PdfName.f3037N, pdfDictionary2);
        }
    }

    private static Paragraph createParagraphForTextFieldValue(String str) {
        Text text = new Text(str);
        text.setNextRenderer(new FormFieldValueNonTrimmingTextRenderer(text));
        return new Paragraph(text);
    }
}
