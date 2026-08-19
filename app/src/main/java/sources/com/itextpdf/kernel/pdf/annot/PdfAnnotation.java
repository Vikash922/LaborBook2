package com.itextpdf.kernel.pdf.annot;

import com.facebook.internal.AnalyticsEvents;
import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfAnnotationBorder;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfIndirectReference;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfObjectWrapper;
import com.itextpdf.kernel.pdf.PdfPage;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.kernel.pdf.filespec.PdfFileSpec;
import com.itextpdf.kernel.pdf.layer.IPdfOCG;
import com.itextpdf.p017io.font.PdfEncodings;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import java.util.Iterator;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public abstract class PdfAnnotation extends PdfObjectWrapper<PdfDictionary> {
    public static final int HIDDEN = 2;
    public static final int INVISIBLE = 1;
    public static final int LOCKED = 128;
    public static final int LOCKED_CONTENTS = 512;
    public static final int NO_ROTATE = 16;
    public static final int NO_VIEW = 32;
    public static final int NO_ZOOM = 8;
    public static final int PRINT = 4;
    public static final int READ_ONLY = 64;
    public static final int TOGGLE_NO_VIEW = 256;
    protected PdfPage page;
    public static final PdfName HIGHLIGHT_NONE = PdfName.f3037N;
    public static final PdfName HIGHLIGHT_INVERT = PdfName.f3019I;
    public static final PdfName HIGHLIGHT_OUTLINE = PdfName.f3041O;
    public static final PdfName HIGHLIGHT_PUSH = PdfName.f3047P;
    public static final PdfName HIGHLIGHT_TOGGLE = PdfName.f3071T;
    public static final PdfName STYLE_SOLID = PdfName.f3065S;
    public static final PdfName STYLE_DASHED = PdfName.f2992D;
    public static final PdfName STYLE_BEVELED = PdfName.f2973B;
    public static final PdfName STYLE_INSET = PdfName.f3019I;
    public static final PdfName STYLE_UNDERLINE = PdfName.f3083U;
    public static final PdfString Marked = new PdfString("Marked");
    public static final PdfString Unmarked = new PdfString("Unmarked");
    public static final PdfString Accepted = new PdfString("Accepted");
    public static final PdfString Rejected = new PdfString("Rejected");
    public static final PdfString Canceled = new PdfString(AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_CANCELLED);
    public static final PdfString Completed = new PdfString(AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_COMPLETED);
    public static final PdfString None = new PdfString("None");
    public static final PdfString MarkedModel = new PdfString("Marked");
    public static final PdfString ReviewModel = new PdfString("Review");

    public abstract PdfName getSubtype();

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return true;
    }

    public static PdfAnnotation makeAnnotation(PdfObject pdfObject) {
        if (pdfObject.isIndirectReference()) {
            pdfObject = ((PdfIndirectReference) pdfObject).getRefersTo();
        }
        if (!pdfObject.isDictionary()) {
            return null;
        }
        PdfDictionary pdfDictionary = (PdfDictionary) pdfObject;
        PdfName asName = pdfDictionary.getAsName(PdfName.Subtype);
        if (PdfName.Link.equals(asName)) {
            return new PdfLinkAnnotation(pdfDictionary);
        }
        if (PdfName.Popup.equals(asName)) {
            return new PdfPopupAnnotation(pdfDictionary);
        }
        if (PdfName.Widget.equals(asName)) {
            return new PdfWidgetAnnotation(pdfDictionary);
        }
        if (PdfName.Screen.equals(asName)) {
            return new PdfScreenAnnotation(pdfDictionary);
        }
        if (PdfName._3D.equals(asName)) {
            return new Pdf3DAnnotation(pdfDictionary);
        }
        if (PdfName.Highlight.equals(asName) || PdfName.Underline.equals(asName) || PdfName.Squiggly.equals(asName) || PdfName.StrikeOut.equals(asName)) {
            return new PdfTextMarkupAnnotation(pdfDictionary);
        }
        if (PdfName.Caret.equals(asName)) {
            return new PdfCaretAnnotation(pdfDictionary);
        }
        if (PdfName.Text.equals(asName)) {
            return new PdfTextAnnotation(pdfDictionary);
        }
        if (PdfName.Sound.equals(asName)) {
            return new PdfSoundAnnotation(pdfDictionary);
        }
        if (PdfName.Stamp.equals(asName)) {
            return new PdfStampAnnotation(pdfDictionary);
        }
        if (PdfName.FileAttachment.equals(asName)) {
            return new PdfFileAttachmentAnnotation(pdfDictionary);
        }
        if (PdfName.Ink.equals(asName)) {
            return new PdfInkAnnotation(pdfDictionary);
        }
        if (PdfName.PrinterMark.equals(asName)) {
            return new PdfPrinterMarkAnnotation(pdfDictionary);
        }
        if (PdfName.TrapNet.equals(asName)) {
            return new PdfTrapNetworkAnnotation(pdfDictionary);
        }
        if (PdfName.FreeText.equals(asName)) {
            return new PdfFreeTextAnnotation(pdfDictionary);
        }
        if (PdfName.Square.equals(asName)) {
            return new PdfSquareAnnotation(pdfDictionary);
        }
        if (PdfName.Circle.equals(asName)) {
            return new PdfCircleAnnotation(pdfDictionary);
        }
        if (PdfName.Line.equals(asName)) {
            return new PdfLineAnnotation(pdfDictionary);
        }
        if (PdfName.Polygon.equals(asName)) {
            return new PdfPolygonAnnotation(pdfDictionary);
        }
        if (PdfName.PolyLine.equals(asName)) {
            return new PdfPolylineAnnotation(pdfDictionary);
        }
        if (PdfName.Redact.equals(asName)) {
            return new PdfRedactAnnotation(pdfDictionary);
        }
        if (PdfName.Watermark.equals(asName)) {
            return new PdfWatermarkAnnotation(pdfDictionary);
        }
        return new PdfUnknownAnnotation(pdfDictionary);
    }

    protected PdfAnnotation(Rectangle rectangle) {
        this(new PdfDictionary());
        put(PdfName.Rect, new PdfArray(rectangle));
        put(PdfName.Subtype, getSubtype());
    }

    protected PdfAnnotation(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
        markObjectAsIndirect(getPdfObject());
    }

    public void setLayer(IPdfOCG iPdfOCG) {
        getPdfObject().put(PdfName.f3042OC, iPdfOCG.getIndirectReference());
    }

    public PdfString getContents() {
        return getPdfObject().getAsString(PdfName.Contents);
    }

    public PdfAnnotation setContents(PdfString pdfString) {
        return put(PdfName.Contents, pdfString);
    }

    public PdfAnnotation setContents(String str) {
        return setContents(new PdfString(str, PdfEncodings.UNICODE_BIG));
    }

    public PdfDictionary getPageObject() {
        return getPdfObject().getAsDictionary(PdfName.f3047P);
    }

    public PdfPage getPage() {
        PdfIndirectReference indirectReference;
        if (this.page == null && (indirectReference = getPdfObject().getIndirectReference()) != null) {
            PdfDocument document = indirectReference.getDocument();
            PdfDictionary pageObject = getPageObject();
            if (pageObject != null) {
                this.page = document.getPage(pageObject);
            } else {
                for (int i = 1; i <= document.getNumberOfPages(); i++) {
                    PdfPage page = document.getPage(i);
                    if (!page.isFlushed()) {
                        Iterator<PdfAnnotation> it = page.getAnnotations().iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            if (indirectReference.equals(it.next().getPdfObject().getIndirectReference())) {
                                this.page = page;
                                break;
                            }
                        }
                    }
                }
            }
        }
        return this.page;
    }

    public PdfAnnotation setPage(PdfPage pdfPage) {
        this.page = pdfPage;
        return put(PdfName.f3047P, pdfPage.getPdfObject().getIndirectReference());
    }

    public PdfString getName() {
        return getPdfObject().getAsString(PdfName.f3039NM);
    }

    public PdfAnnotation setName(PdfString pdfString) {
        return put(PdfName.f3039NM, pdfString);
    }

    public PdfString getDate() {
        return getPdfObject().getAsString(PdfName.f3032M);
    }

    public PdfAnnotation setDate(PdfString pdfString) {
        return put(PdfName.f3032M, pdfString);
    }

    public int getFlags() {
        PdfNumber asNumber = getPdfObject().getAsNumber(PdfName.f3004F);
        if (asNumber != null) {
            return asNumber.intValue();
        }
        return 0;
    }

    public PdfAnnotation setFlags(int i) {
        return put(PdfName.f3004F, new PdfNumber(i));
    }

    public PdfAnnotation setFlag(int i) {
        return setFlags(i | getFlags());
    }

    public PdfAnnotation resetFlag(int i) {
        return setFlags((~i) & getFlags());
    }

    public boolean hasFlag(int i) {
        if (i == 0) {
            return false;
        }
        if (((i - 1) & i) == 0) {
            return (i & getFlags()) != 0;
        }
        throw new IllegalArgumentException("Only one flag must be checked at once.");
    }

    public PdfDictionary getAppearanceDictionary() {
        return getPdfObject().getAsDictionary(PdfName.f2971AP);
    }

    public PdfDictionary getAppearanceObject(PdfName pdfName) {
        PdfDictionary appearanceDictionary = getAppearanceDictionary();
        if (appearanceDictionary == null) {
            return null;
        }
        PdfObject pdfObject = appearanceDictionary.get(pdfName);
        if (pdfObject instanceof PdfDictionary) {
            return (PdfDictionary) pdfObject;
        }
        return null;
    }

    public PdfDictionary getNormalAppearanceObject() {
        return getAppearanceObject(PdfName.f3037N);
    }

    public PdfDictionary getRolloverAppearanceObject() {
        return getAppearanceObject(PdfName.f3056R);
    }

    public PdfDictionary getDownAppearanceObject() {
        return getAppearanceObject(PdfName.f2992D);
    }

    public PdfAnnotation setAppearance(PdfName pdfName, PdfDictionary pdfDictionary) {
        PdfDictionary appearanceDictionary = getAppearanceDictionary();
        if (appearanceDictionary == null) {
            appearanceDictionary = new PdfDictionary();
            getPdfObject().put(PdfName.f2971AP, appearanceDictionary);
        }
        appearanceDictionary.put(pdfName, pdfDictionary);
        return this;
    }

    public PdfAnnotation setNormalAppearance(PdfDictionary pdfDictionary) {
        return setAppearance(PdfName.f3037N, pdfDictionary);
    }

    public PdfAnnotation setRolloverAppearance(PdfDictionary pdfDictionary) {
        return setAppearance(PdfName.f3056R, pdfDictionary);
    }

    public PdfAnnotation setDownAppearance(PdfDictionary pdfDictionary) {
        return setAppearance(PdfName.f2992D, pdfDictionary);
    }

    public PdfAnnotation setAppearance(PdfName pdfName, PdfAnnotationAppearance pdfAnnotationAppearance) {
        return setAppearance(pdfName, pdfAnnotationAppearance.getPdfObject());
    }

    public PdfAnnotation setNormalAppearance(PdfAnnotationAppearance pdfAnnotationAppearance) {
        return setAppearance(PdfName.f3037N, pdfAnnotationAppearance);
    }

    public PdfAnnotation setRolloverAppearance(PdfAnnotationAppearance pdfAnnotationAppearance) {
        return setAppearance(PdfName.f3056R, pdfAnnotationAppearance);
    }

    public PdfAnnotation setDownAppearance(PdfAnnotationAppearance pdfAnnotationAppearance) {
        return setAppearance(PdfName.f2992D, pdfAnnotationAppearance);
    }

    public PdfName getAppearanceState() {
        return getPdfObject().getAsName(PdfName.f2972AS);
    }

    public PdfAnnotation setAppearanceState(PdfName pdfName) {
        return put(PdfName.f2972AS, pdfName);
    }

    public PdfArray getBorder() {
        return getPdfObject().getAsArray(PdfName.Border);
    }

    public PdfAnnotation setBorder(PdfAnnotationBorder pdfAnnotationBorder) {
        return put(PdfName.Border, pdfAnnotationBorder.getPdfObject());
    }

    public PdfAnnotation setBorder(PdfArray pdfArray) {
        return put(PdfName.Border, pdfArray);
    }

    public PdfArray getColorObject() {
        return getPdfObject().getAsArray(PdfName.f2980C);
    }

    public PdfAnnotation setColor(PdfArray pdfArray) {
        return put(PdfName.f2980C, pdfArray);
    }

    public PdfAnnotation setColor(float[] fArr) {
        return setColor(new PdfArray(fArr));
    }

    public PdfAnnotation setColor(Color color) {
        return setColor(new PdfArray(color.getColorValue()));
    }

    public int getStructParentIndex() {
        PdfNumber asNumber = getPdfObject().getAsNumber(PdfName.StructParent);
        if (asNumber == null) {
            return -1;
        }
        return asNumber.intValue();
    }

    public PdfAnnotation setStructParentIndex(int i) {
        return put(PdfName.StructParent, new PdfNumber(i));
    }

    public PdfAnnotation setTitle(PdfString pdfString) {
        return put(PdfName.f3071T, pdfString);
    }

    public PdfString getTitle() {
        return getPdfObject().getAsString(PdfName.f3071T);
    }

    public PdfAnnotation setRectangle(PdfArray pdfArray) {
        return put(PdfName.Rect, pdfArray);
    }

    public PdfArray getRectangle() {
        return getPdfObject().getAsArray(PdfName.Rect);
    }

    public String getLang() {
        PdfString asString = getPdfObject().getAsString(PdfName.Lang);
        if (asString != null) {
            return asString.toUnicodeString();
        }
        return null;
    }

    public PdfAnnotation setLang(String str) {
        return put(PdfName.Lang, new PdfString(str, PdfEncodings.UNICODE_BIG));
    }

    public PdfName getBlendMode() {
        return getPdfObject().getAsName(PdfName.f2977BM);
    }

    public PdfAnnotation setBlendMode(PdfName pdfName) {
        return put(PdfName.f2977BM, pdfName);
    }

    public float getNonStrokingOpacity() {
        PdfNumber asNumber = getPdfObject().getAsNumber(PdfName.f3097ca);
        if (asNumber != null) {
            return asNumber.floatValue();
        }
        return 1.0f;
    }

    public PdfAnnotation setNonStrokingOpacity(float f) {
        return put(PdfName.f3097ca, new PdfNumber(f));
    }

    public float getStrokingOpacity() {
        PdfNumber asNumber = getPdfObject().getAsNumber(PdfName.f2983CA);
        if (asNumber != null) {
            return asNumber.floatValue();
        }
        return 1.0f;
    }

    public PdfAnnotation setStrokingOpacity(float f) {
        return put(PdfName.f2983CA, new PdfNumber(f));
    }

    public PdfAnnotation put(PdfName pdfName, PdfObject pdfObject) {
        getPdfObject().put(pdfName, pdfObject);
        setModified();
        return this;
    }

    public PdfAnnotation remove(PdfName pdfName) {
        getPdfObject().remove(pdfName);
        return this;
    }

    public void addAssociatedFile(PdfFileSpec pdfFileSpec) {
        if (((PdfDictionary) pdfFileSpec.getPdfObject()).get(PdfName.AFRelationship) == null) {
            LoggerFactory.getLogger((Class<?>) PdfAnnotation.class).error(IoLogMessageConstant.ASSOCIATED_FILE_SPEC_SHALL_INCLUDE_AFRELATIONSHIP);
        }
        PdfArray asArray = ((PdfDictionary) getPdfObject()).getAsArray(PdfName.f2969AF);
        if (asArray == null) {
            asArray = new PdfArray();
            put(PdfName.f2969AF, asArray);
        }
        asArray.add(pdfFileSpec.getPdfObject());
    }

    public PdfArray getAssociatedFiles(boolean z) {
        PdfArray asArray = ((PdfDictionary) getPdfObject()).getAsArray(PdfName.f2969AF);
        if (asArray != null || !z) {
            return asArray;
        }
        PdfArray pdfArray = new PdfArray();
        put(PdfName.f2969AF, pdfArray);
        return pdfArray;
    }

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    public void flush() {
        super.flush();
    }

    static class PdfUnknownAnnotation extends PdfAnnotation {
        protected PdfUnknownAnnotation(PdfDictionary pdfDictionary) {
            super(pdfDictionary);
        }

        @Override // com.itextpdf.kernel.pdf.annot.PdfAnnotation
        public PdfName getSubtype() {
            return getPdfObject().getAsName(PdfName.Subtype);
        }
    }
}
