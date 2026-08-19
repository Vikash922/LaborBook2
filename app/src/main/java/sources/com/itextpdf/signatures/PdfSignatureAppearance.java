package com.itextpdf.signatures;

import androidx.exifinterface.media.ExifInterface;
import com.itextpdf.forms.PdfAcroForm;
import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.font.PdfFont;
import com.itextpdf.kernel.font.PdfFontFactory;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfStream;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.kernel.pdf.xobject.PdfFormXObject;
import com.itextpdf.layout.Canvas;
import com.itextpdf.layout.element.Paragraph;
import com.itextpdf.layout.layout.LayoutArea;
import com.itextpdf.layout.layout.LayoutContext;
import com.itextpdf.layout.renderer.IRenderer;
import com.itextpdf.p017io.image.ImageData;
import com.itextpdf.signatures.CertificateInfo;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.Calendar;

/* JADX INFO: loaded from: classes6.dex */
public class PdfSignatureAppearance {
    private static final float MARGIN = 2.0f;
    private static final float TOP_SECTION = 0.3f;
    private PdfDocument document;
    private String fieldName;
    private ImageData image;
    private float imageScale;
    private PdfFont layer2Font;
    private Color layer2FontColor;
    private String layer2Text;

    /* JADX INFO: renamed from: n0 */
    private PdfFormXObject f3289n0;

    /* JADX INFO: renamed from: n2 */
    private PdfFormXObject f3290n2;
    private int page;
    private Rectangle pageRect;
    private Rectangle rect;
    private Certificate signCertificate;
    private Calendar signDate;
    private PdfFormXObject topLayer;
    private RenderingMode renderingMode = RenderingMode.DESCRIPTION;
    private String reason = "";
    private String reasonCaption = "Reason: ";
    private String location = "";
    private String locationCaption = "Location: ";
    private String signatureCreator = "";
    private String contact = "";
    private ImageData signatureGraphic = null;
    private float layer2FontSize = 0.0f;
    private boolean reuseAppearance = false;

    public enum RenderingMode {
        DESCRIPTION,
        NAME_AND_DESCRIPTION,
        GRAPHIC_AND_DESCRIPTION,
        GRAPHIC
    }

    protected PdfSignatureAppearance(PdfDocument pdfDocument, Rectangle rectangle, int i) {
        this.page = 1;
        this.document = pdfDocument;
        this.pageRect = new Rectangle(rectangle);
        this.rect = new Rectangle(rectangle.getWidth(), rectangle.getHeight());
        this.page = i;
    }

    public int getPageNumber() {
        return this.page;
    }

    public PdfSignatureAppearance setPageNumber(int i) {
        this.page = i;
        setPageRect(this.pageRect);
        return this;
    }

    public Rectangle getPageRect() {
        return this.pageRect;
    }

    public PdfSignatureAppearance setPageRect(Rectangle rectangle) {
        this.pageRect = new Rectangle(rectangle);
        this.rect = new Rectangle(rectangle.getWidth(), rectangle.getHeight());
        return this;
    }

    public PdfFormXObject getLayer0() {
        if (this.f3289n0 == null) {
            PdfFormXObject pdfFormXObject = new PdfFormXObject(this.rect);
            this.f3289n0 = pdfFormXObject;
            pdfFormXObject.makeIndirect(this.document);
        }
        return this.f3289n0;
    }

    public PdfFormXObject getLayer2() {
        if (this.f3290n2 == null) {
            PdfFormXObject pdfFormXObject = new PdfFormXObject(this.rect);
            this.f3290n2 = pdfFormXObject;
            pdfFormXObject.makeIndirect(this.document);
        }
        return this.f3290n2;
    }

    public RenderingMode getRenderingMode() {
        return this.renderingMode;
    }

    public PdfSignatureAppearance setRenderingMode(RenderingMode renderingMode) {
        this.renderingMode = renderingMode;
        return this;
    }

    public String getReason() {
        return this.reason;
    }

    public PdfSignatureAppearance setReason(String str) {
        this.reason = str;
        return this;
    }

    public PdfSignatureAppearance setReasonCaption(String str) {
        this.reasonCaption = str;
        return this;
    }

    public String getLocation() {
        return this.location;
    }

    public PdfSignatureAppearance setLocation(String str) {
        this.location = str;
        return this;
    }

    public PdfSignatureAppearance setLocationCaption(String str) {
        this.locationCaption = str;
        return this;
    }

    public String getSignatureCreator() {
        return this.signatureCreator;
    }

    public PdfSignatureAppearance setSignatureCreator(String str) {
        this.signatureCreator = str;
        return this;
    }

    public String getContact() {
        return this.contact;
    }

    public PdfSignatureAppearance setContact(String str) {
        this.contact = str;
        return this;
    }

    public PdfSignatureAppearance setCertificate(Certificate certificate) {
        this.signCertificate = certificate;
        return this;
    }

    public Certificate getCertificate() {
        return this.signCertificate;
    }

    public ImageData getSignatureGraphic() {
        return this.signatureGraphic;
    }

    public PdfSignatureAppearance setSignatureGraphic(ImageData imageData) {
        this.signatureGraphic = imageData;
        return this;
    }

    public PdfSignatureAppearance setReuseAppearance(boolean z) {
        this.reuseAppearance = z;
        return this;
    }

    public ImageData getImage() {
        return this.image;
    }

    public PdfSignatureAppearance setImage(ImageData imageData) {
        this.image = imageData;
        return this;
    }

    public float getImageScale() {
        return this.imageScale;
    }

    public PdfSignatureAppearance setImageScale(float f) {
        this.imageScale = f;
        return this;
    }

    public PdfSignatureAppearance setLayer2Text(String str) {
        this.layer2Text = str;
        return this;
    }

    public String getLayer2Text() {
        return this.layer2Text;
    }

    public PdfFont getLayer2Font() {
        return this.layer2Font;
    }

    public PdfSignatureAppearance setLayer2Font(PdfFont pdfFont) {
        this.layer2Font = pdfFont;
        return this;
    }

    public PdfSignatureAppearance setLayer2FontSize(float f) {
        this.layer2FontSize = f;
        return this;
    }

    public float getLayer2FontSize() {
        return this.layer2FontSize;
    }

    public PdfSignatureAppearance setLayer2FontColor(Color color) {
        this.layer2FontColor = color;
        return this;
    }

    public Color getLayer2FontColor() {
        return this.layer2FontColor;
    }

    public boolean isInvisible() {
        Rectangle rectangle = this.rect;
        return rectangle == null || rectangle.getWidth() == 0.0f || this.rect.getHeight() == 0.0f;
    }

    protected PdfFormXObject getAppearance() throws IOException {
        Rectangle rectangle;
        Rectangle rectangle2;
        if (isInvisible()) {
            PdfFormXObject pdfFormXObject = new PdfFormXObject(new Rectangle(0.0f, 0.0f));
            pdfFormXObject.makeIndirect(this.document);
            return pdfFormXObject;
        }
        if (this.f3289n0 == null && !this.reuseAppearance) {
            createBlankN0();
        }
        if (this.f3290n2 == null) {
            PdfFormXObject pdfFormXObject2 = new PdfFormXObject(this.rect);
            this.f3290n2 = pdfFormXObject2;
            pdfFormXObject2.makeIndirect(this.document);
            PdfCanvas pdfCanvas = new PdfCanvas(this.f3290n2, this.document);
            int rotation = this.document.getPage(this.page).getRotation();
            if (rotation == 90) {
                pdfCanvas.concatMatrix(0.0d, 1.0d, -1.0d, 0.0d, this.rect.getWidth(), 0.0d);
            } else if (rotation == 180) {
                pdfCanvas.concatMatrix(-1.0d, 0.0d, 0.0d, -1.0d, this.rect.getWidth(), this.rect.getHeight());
            } else if (rotation == 270) {
                pdfCanvas.concatMatrix(0.0d, -1.0d, 1.0d, 0.0d, 0.0d, this.rect.getHeight());
            }
            Rectangle rectangleRotateRectangle = rotateRectangle(this.rect, this.document.getPage(this.page).getRotation());
            String strGenerateLayer2Text = this.layer2Text;
            if (strGenerateLayer2Text == null) {
                strGenerateLayer2Text = generateLayer2Text();
            }
            if (this.image != null) {
                float fMin = this.imageScale;
                if (fMin == 0.0f) {
                    new PdfCanvas(this.f3290n2, this.document).addImageWithTransformationMatrix(this.image, rectangleRotateRectangle.getWidth(), 0.0f, 0.0f, rectangleRotateRectangle.getHeight(), 0.0f, 0.0f);
                } else {
                    if (fMin < 0.0f) {
                        fMin = Math.min(rectangleRotateRectangle.getWidth() / this.image.getWidth(), rectangleRotateRectangle.getHeight() / this.image.getHeight());
                    }
                    float width = this.image.getWidth() * fMin;
                    float height = this.image.getHeight() * fMin;
                    new PdfCanvas(this.f3290n2, this.document).addImageWithTransformationMatrix(this.image, width, 0.0f, 0.0f, height, (rectangleRotateRectangle.getWidth() - width) / MARGIN, (rectangleRotateRectangle.getHeight() - height) / MARGIN);
                }
            }
            PdfFont pdfFontCreateFont = this.layer2Font;
            if (pdfFontCreateFont == null) {
                pdfFontCreateFont = PdfFontFactory.createFont();
            }
            if (this.renderingMode != RenderingMode.NAME_AND_DESCRIPTION && (this.renderingMode != RenderingMode.GRAPHIC_AND_DESCRIPTION || this.signatureGraphic == null)) {
                rectangle = null;
                if (this.renderingMode == RenderingMode.GRAPHIC) {
                    if (this.signatureGraphic == null) {
                        throw new IllegalStateException("A signature image must be present when rendering mode is graphic. Use setSignatureGraphic()");
                    }
                    rectangle = new Rectangle(MARGIN, MARGIN, rectangleRotateRectangle.getWidth() - 4.0f, rectangleRotateRectangle.getHeight() - 4.0f);
                    rectangle2 = null;
                } else {
                    rectangle2 = new Rectangle(MARGIN, MARGIN, rectangleRotateRectangle.getWidth() - 4.0f, (rectangleRotateRectangle.getHeight() * 0.7f) - 4.0f);
                }
            } else if (rectangleRotateRectangle.getHeight() > rectangleRotateRectangle.getWidth()) {
                rectangle = new Rectangle(MARGIN, rectangleRotateRectangle.getHeight() / MARGIN, rectangleRotateRectangle.getWidth() - 4.0f, rectangleRotateRectangle.getHeight() / MARGIN);
                rectangle2 = new Rectangle(MARGIN, MARGIN, rectangleRotateRectangle.getWidth() - 4.0f, (rectangleRotateRectangle.getHeight() / MARGIN) - 4.0f);
            } else {
                rectangle = new Rectangle(MARGIN, MARGIN, (rectangleRotateRectangle.getWidth() / MARGIN) - 4.0f, rectangleRotateRectangle.getHeight() - 4.0f);
                rectangle2 = new Rectangle((rectangleRotateRectangle.getWidth() / MARGIN) + 1.0f, MARGIN, (rectangleRotateRectangle.getWidth() / MARGIN) - MARGIN, rectangleRotateRectangle.getHeight() - 4.0f);
            }
            int i = C35241.f3291xdf7d1079[this.renderingMode.ordinal()];
            if (i == 1) {
                String field = CertificateInfo.getSubjectFields((X509Certificate) this.signCertificate).getField("CN");
                if (field == null) {
                    field = CertificateInfo.getSubjectFields((X509Certificate) this.signCertificate).getField(ExifInterface.LONGITUDE_EAST);
                }
                if (field == null) {
                    field = "";
                }
                addTextToCanvas(field, pdfFontCreateFont, rectangle);
            } else if (i == 2) {
                ImageData imageData = this.signatureGraphic;
                if (imageData == null) {
                    throw new IllegalStateException("A signature image must be present when rendering mode is graphic and description. Use setSignatureGraphic()");
                }
                float width2 = imageData.getWidth();
                if (width2 == 0.0f) {
                    width2 = rectangle.getWidth();
                }
                float height2 = this.signatureGraphic.getHeight();
                if (height2 == 0.0f) {
                    height2 = rectangle.getHeight();
                }
                float fMin2 = Math.min(rectangle.getWidth() / this.signatureGraphic.getWidth(), rectangle.getHeight() / this.signatureGraphic.getHeight());
                float f = width2 * fMin2;
                float f2 = height2 * fMin2;
                new PdfCanvas(this.f3290n2, this.document).addImageWithTransformationMatrix(this.signatureGraphic, f, 0.0f, 0.0f, f2, rectangle.getRight() - f, rectangle.getBottom() + ((rectangle.getHeight() - f2) / MARGIN));
            } else if (i == 3) {
                float width3 = this.signatureGraphic.getWidth();
                if (width3 == 0.0f) {
                    width3 = rectangle.getWidth();
                }
                float height3 = this.signatureGraphic.getHeight();
                if (height3 == 0.0f) {
                    height3 = rectangle.getHeight();
                }
                float fMin3 = Math.min(rectangle.getWidth() / this.signatureGraphic.getWidth(), rectangle.getHeight() / this.signatureGraphic.getHeight());
                float f3 = width3 * fMin3;
                float f4 = height3 * fMin3;
                new PdfCanvas(this.f3290n2, this.document).addImageWithTransformationMatrix(this.signatureGraphic, f3, 0.0f, 0.0f, f4, rectangle.getLeft() + ((rectangle.getWidth() - f3) / MARGIN), rectangle.getBottom() + ((rectangle.getHeight() - f4) / MARGIN));
            }
            if (this.renderingMode != RenderingMode.GRAPHIC) {
                addTextToCanvas(strGenerateLayer2Text, pdfFontCreateFont, rectangle2);
            }
        }
        Rectangle rectangle3 = new Rectangle(this.rect);
        if (this.topLayer == null) {
            PdfFormXObject pdfFormXObject3 = new PdfFormXObject(rectangle3);
            this.topLayer = pdfFormXObject3;
            pdfFormXObject3.makeIndirect(this.document);
            if (this.reuseAppearance) {
                PdfStream asStream = PdfAcroForm.getAcroForm(this.document, true).getField(this.fieldName).getWidgets().get(0).getAppearanceDictionary().getAsStream(PdfName.f3037N);
                PdfFormXObject pdfFormXObject4 = new PdfFormXObject(asStream);
                if (asStream != null) {
                    this.topLayer.getResources().addForm(pdfFormXObject4, new PdfName("n0"));
                    new PdfCanvas(this.topLayer, this.document).addXObjectWithTransformationMatrix(pdfFormXObject4, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f);
                } else {
                    this.reuseAppearance = false;
                    if (this.f3289n0 == null) {
                        createBlankN0();
                    }
                }
            }
            if (!this.reuseAppearance) {
                this.topLayer.getResources().addForm(this.f3289n0, new PdfName("n0"));
                new PdfCanvas(this.topLayer, this.document).addXObjectWithTransformationMatrix(this.f3289n0, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f);
            }
            this.topLayer.getResources().addForm(this.f3290n2, new PdfName("n2"));
            new PdfCanvas(this.topLayer, this.document).addXObjectWithTransformationMatrix(this.f3290n2, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f);
        }
        PdfFormXObject pdfFormXObject5 = new PdfFormXObject(rectangle3);
        pdfFormXObject5.makeIndirect(this.document);
        pdfFormXObject5.getResources().addForm(this.topLayer, new PdfName("FRM"));
        PdfCanvas pdfCanvas2 = new PdfCanvas(pdfFormXObject5, this.document);
        PdfFormXObject pdfFormXObject6 = this.topLayer;
        pdfCanvas2.addXObjectAt(pdfFormXObject6, pdfFormXObject6.getBBox().getAsNumber(0).floatValue(), this.topLayer.getBBox().getAsNumber(1).floatValue());
        return pdfFormXObject5;
    }

    /* JADX INFO: renamed from: com.itextpdf.signatures.PdfSignatureAppearance$1 */
    static /* synthetic */ class C35241 {

        /* JADX INFO: renamed from: $SwitchMap$com$itextpdf$signatures$PdfSignatureAppearance$RenderingMode */
        static final /* synthetic */ int[] f3291xdf7d1079;

        static {
            int[] iArr = new int[RenderingMode.values().length];
            f3291xdf7d1079 = iArr;
            try {
                iArr[RenderingMode.NAME_AND_DESCRIPTION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3291xdf7d1079[RenderingMode.GRAPHIC_AND_DESCRIPTION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3291xdf7d1079[RenderingMode.GRAPHIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    protected Calendar getSignDate() {
        return this.signDate;
    }

    protected PdfSignatureAppearance setSignDate(Calendar calendar) {
        this.signDate = calendar;
        return this;
    }

    protected PdfSignatureAppearance setFieldName(String str) {
        this.fieldName = str;
        return this;
    }

    private static Rectangle rotateRectangle(Rectangle rectangle, int i) {
        if ((i / 90) % 2 == 0) {
            return new Rectangle(rectangle.getWidth(), rectangle.getHeight());
        }
        return new Rectangle(rectangle.getHeight(), rectangle.getWidth());
    }

    private void createBlankN0() {
        PdfFormXObject pdfFormXObject = new PdfFormXObject(new Rectangle(100.0f, 100.0f));
        this.f3289n0 = pdfFormXObject;
        pdfFormXObject.makeIndirect(this.document);
        new PdfCanvas(this.f3289n0, this.document).writeLiteral("% DSBlank\n");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void addTextToCanvas(String str, PdfFont pdfFont, Rectangle rectangle) {
        PdfCanvas pdfCanvas = new PdfCanvas(this.f3290n2, this.document);
        Paragraph multipliedLeading = ((Paragraph) new Paragraph(str).setFont(pdfFont)).setMargin(0.0f).setMultipliedLeading(0.9f);
        Canvas canvas = new Canvas(pdfCanvas, rectangle);
        multipliedLeading.setFontColor(this.layer2FontColor);
        float f = this.layer2FontSize;
        if (f == 0.0f) {
            applyCopyFittingFontSize(multipliedLeading, rectangle, canvas.getRenderer());
        } else {
            multipliedLeading.setFontSize(f);
        }
        canvas.add(multipliedLeading);
    }

    private void applyCopyFittingFontSize(Paragraph paragraph, Rectangle rectangle, IRenderer iRenderer) {
        IRenderer parent = paragraph.createRendererSubTree().setParent(iRenderer);
        LayoutContext layoutContext = new LayoutContext(new LayoutArea(1, rectangle));
        float f = 0.1f;
        float f2 = 100.0f;
        for (int i = 0; i < 15; i++) {
            float f3 = (f + f2) / MARGIN;
            paragraph.setFontSize(f3);
            if (parent.layout(layoutContext).getStatus() == 1) {
                f = f3;
            } else {
                f2 = f3;
            }
        }
        paragraph.setFontSize(f);
    }

    String generateLayer2Text() {
        String field;
        StringBuilder sb = new StringBuilder("Digitally signed by ");
        CertificateInfo.X500Name subjectFields = CertificateInfo.getSubjectFields((X509Certificate) this.signCertificate);
        if (subjectFields != null) {
            field = subjectFields.getField("CN");
            if (field == null) {
                field = subjectFields.getField(ExifInterface.LONGITUDE_EAST);
            }
        } else {
            field = null;
        }
        if (field == null) {
            field = "";
        }
        sb.append(field).append("\nDate: ");
        sb.append(SignUtils.dateToString(this.signDate));
        if (this.reason != null) {
            sb.append('\n').append(this.reasonCaption).append(this.reason);
        }
        if (this.location != null) {
            sb.append('\n').append(this.locationCaption).append(this.location);
        }
        return sb.toString();
    }
}
