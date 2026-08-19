package com.itextpdf.pdfa.checker;

import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.font.PdfFont;
import com.itextpdf.kernel.font.PdfTrueTypeFont;
import com.itextpdf.kernel.pdf.PdfAConformanceLevel;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfCatalog;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfPage;
import com.itextpdf.kernel.pdf.PdfStream;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.kernel.pdf.PdfXrefTable;
import com.itextpdf.kernel.pdf.canvas.CanvasGraphicsState;
import com.itextpdf.kernel.pdf.colorspace.PdfColorSpace;
import com.itextpdf.p017io.colors.IccProfile;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public abstract class PdfAChecker {
    public static final String ICC_COLOR_SPACE_CMYK = "CMYK";
    public static final String ICC_COLOR_SPACE_GRAY = "GRAY";
    public static final String ICC_COLOR_SPACE_RGB = "RGB ";
    public static final String ICC_DEVICE_CLASS_MONITOR_PROFILE = "mntr";
    public static final String ICC_DEVICE_CLASS_OUTPUT_PROFILE = "prtr";
    public static final int maxGsStackDepth = 28;
    protected PdfAConformanceLevel conformanceLevel;
    protected String pdfAOutputIntentColorSpace;
    protected int gsStackDepth = 0;
    protected boolean rgbIsUsed = false;
    protected boolean cmykIsUsed = false;
    protected boolean grayIsUsed = false;
    protected Set<PdfObject> checkedObjects = new HashSet();
    protected Map<PdfObject, PdfColorSpace> checkedObjectsColorspace = new HashMap();
    private boolean fullCheckMode = false;

    protected static boolean checkFlag(int i, int i2) {
        return (i & i2) != 0;
    }

    protected abstract void checkAction(PdfDictionary pdfDictionary);

    protected abstract void checkAnnotation(PdfDictionary pdfDictionary);

    public abstract void checkCanvasStack(char c);

    protected abstract void checkCatalogValidEntries(PdfDictionary pdfDictionary);

    public abstract void checkColor(Color color, PdfDictionary pdfDictionary, Boolean bool, PdfStream pdfStream);

    public abstract void checkColorSpace(PdfColorSpace pdfColorSpace, PdfDictionary pdfDictionary, boolean z, Boolean bool);

    protected abstract void checkColorsUsages();

    protected abstract void checkContentStream(PdfStream pdfStream);

    protected abstract void checkContentStreamObject(PdfObject pdfObject);

    public abstract void checkExtGState(CanvasGraphicsState canvasGraphicsState, PdfStream pdfStream);

    protected abstract void checkFileSpec(PdfDictionary pdfDictionary);

    public abstract void checkFont(PdfFont pdfFont);

    public abstract void checkFontGlyphs(PdfFont pdfFont, PdfStream pdfStream);

    protected abstract void checkForm(PdfDictionary pdfDictionary);

    protected abstract void checkFormXObject(PdfStream pdfStream);

    protected abstract void checkImage(PdfStream pdfStream, PdfDictionary pdfDictionary);

    public abstract void checkInlineImage(PdfStream pdfStream, PdfDictionary pdfDictionary);

    protected abstract void checkLogicalStructure(PdfDictionary pdfDictionary);

    protected abstract void checkMetaData(PdfDictionary pdfDictionary);

    protected abstract void checkNonSymbolicTrueTypeFont(PdfTrueTypeFont pdfTrueTypeFont);

    protected abstract void checkOutputIntents(PdfDictionary pdfDictionary);

    protected abstract void checkPageObject(PdfDictionary pdfDictionary, PdfDictionary pdfDictionary2);

    protected abstract void checkPageSize(PdfDictionary pdfDictionary);

    protected abstract void checkPageTransparency(PdfDictionary pdfDictionary, PdfDictionary pdfDictionary2);

    protected abstract void checkPdfArray(PdfArray pdfArray);

    protected abstract void checkPdfDictionary(PdfDictionary pdfDictionary);

    protected abstract void checkPdfName(PdfName pdfName);

    protected abstract void checkPdfNumber(PdfNumber pdfNumber);

    protected abstract void checkPdfStream(PdfStream pdfStream);

    protected abstract void checkPdfString(PdfString pdfString);

    public abstract void checkRenderingIntent(PdfName pdfName);

    protected abstract void checkSymbolicTrueTypeFont(PdfTrueTypeFont pdfTrueTypeFont);

    protected abstract void checkTrailer(PdfDictionary pdfDictionary);

    public abstract void checkXrefTable(PdfXrefTable pdfXrefTable);

    protected abstract Set<PdfName> getAllowedNamedActions();

    protected abstract Set<PdfName> getForbiddenActions();

    protected abstract long getMaxNumberOfIndirectObjects();

    protected PdfAChecker(PdfAConformanceLevel pdfAConformanceLevel) {
        this.conformanceLevel = pdfAConformanceLevel;
    }

    public void checkDocument(PdfCatalog pdfCatalog) {
        PdfDictionary pdfObject = pdfCatalog.getPdfObject();
        setPdfAOutputIntentColorSpace(pdfObject);
        checkOutputIntents(pdfObject);
        checkMetaData(pdfObject);
        checkCatalogValidEntries(pdfObject);
        checkTrailer(pdfCatalog.getDocument().getTrailer());
        checkLogicalStructure(pdfObject);
        checkForm(pdfObject.getAsDictionary(PdfName.AcroForm));
        checkOutlines(pdfObject);
        checkPages(pdfCatalog.getDocument());
        checkOpenAction(pdfObject.get(PdfName.OpenAction));
        checkColorsUsages();
    }

    public void checkSinglePage(PdfPage pdfPage) {
        checkPage(pdfPage);
    }

    public void checkPdfObject(PdfObject pdfObject) {
        byte type = pdfObject.getType();
        if (type == 1) {
            PdfArray pdfArray = (PdfArray) pdfObject;
            checkPdfArray(pdfArray);
            checkArrayRecursively(pdfArray);
        }
        if (type == 3) {
            PdfDictionary pdfDictionary = (PdfDictionary) pdfObject;
            if (PdfName.Filespec.equals(pdfDictionary.getAsName(PdfName.Type))) {
                checkFileSpec(pdfDictionary);
            }
            checkPdfDictionary(pdfDictionary);
            checkDictionaryRecursively(pdfDictionary);
            return;
        }
        if (type == 6) {
            checkPdfName((PdfName) pdfObject);
            return;
        }
        switch (type) {
            case 8:
                checkPdfNumber((PdfNumber) pdfObject);
                break;
            case 9:
                PdfStream pdfStream = (PdfStream) pdfObject;
                checkPdfStream(pdfStream);
                checkDictionaryRecursively(pdfStream);
                break;
            case 10:
                checkPdfString((PdfString) pdfObject);
                break;
        }
    }

    public PdfAConformanceLevel getConformanceLevel() {
        return this.conformanceLevel;
    }

    public boolean isFullCheckMode() {
        return this.fullCheckMode;
    }

    public void setFullCheckMode(boolean z) {
        this.fullCheckMode = z;
    }

    public boolean objectIsChecked(PdfObject pdfObject) {
        return this.checkedObjects.contains(pdfObject);
    }

    public void checkTagStructureElement(PdfObject pdfObject) {
        this.checkedObjects.add(pdfObject);
    }

    public void checkSignature(PdfDictionary pdfDictionary) {
        this.checkedObjects.add(pdfDictionary);
    }

    protected void checkResources(PdfDictionary pdfDictionary) {
        if (pdfDictionary == null) {
            return;
        }
        PdfDictionary asDictionary = pdfDictionary.getAsDictionary(PdfName.XObject);
        PdfDictionary asDictionary2 = pdfDictionary.getAsDictionary(PdfName.Shading);
        PdfDictionary asDictionary3 = pdfDictionary.getAsDictionary(PdfName.Pattern);
        if (asDictionary != null) {
            Iterator<PdfObject> it = asDictionary.values().iterator();
            while (it.hasNext()) {
                PdfStream pdfStream = (PdfStream) it.next();
                boolean zIsFlushed = pdfStream.isFlushed();
                PdfObject pdfObject = !zIsFlushed ? pdfStream.get(PdfName.Subtype) : null;
                if (PdfName.Image.equals(pdfObject) || zIsFlushed) {
                    checkImage(pdfStream, pdfDictionary.getAsDictionary(PdfName.ColorSpace));
                } else if (PdfName.Form.equals(pdfObject)) {
                    checkFormXObject(pdfStream);
                }
            }
        }
        if (asDictionary2 != null) {
            Iterator<PdfObject> it2 = asDictionary2.values().iterator();
            while (it2.hasNext()) {
                PdfDictionary pdfDictionary2 = (PdfDictionary) it2.next();
                if (!isAlreadyChecked(pdfDictionary2)) {
                    checkColorSpace(PdfColorSpace.makeColorSpace(pdfDictionary2.get(PdfName.ColorSpace)), pdfDictionary.getAsDictionary(PdfName.ColorSpace), true, null);
                }
            }
        }
        if (asDictionary3 != null) {
            for (PdfObject pdfObject2 : asDictionary3.values()) {
                if (pdfObject2.isStream()) {
                    PdfStream pdfStream2 = (PdfStream) pdfObject2;
                    if (!isAlreadyChecked(pdfStream2)) {
                        checkResources(pdfStream2.getAsDictionary(PdfName.Resources));
                    }
                }
            }
        }
    }

    protected static boolean checkStructure(PdfAConformanceLevel pdfAConformanceLevel) {
        return pdfAConformanceLevel == PdfAConformanceLevel.PDF_A_1A || pdfAConformanceLevel == PdfAConformanceLevel.PDF_A_2A || pdfAConformanceLevel == PdfAConformanceLevel.PDF_A_3A;
    }

    protected static boolean isContainsTransparencyGroup(PdfDictionary pdfDictionary) {
        return pdfDictionary.containsKey(PdfName.Group) && PdfName.Transparency.equals(pdfDictionary.getAsDictionary(PdfName.Group).getAsName(PdfName.f3065S));
    }

    protected boolean isAlreadyChecked(PdfDictionary pdfDictionary) {
        if (this.checkedObjects.contains(pdfDictionary)) {
            return true;
        }
        this.checkedObjects.add(pdfDictionary);
        return false;
    }

    protected void checkResourcesOfAppearanceStreams(PdfDictionary pdfDictionary) {
        checkResourcesOfAppearanceStreams(pdfDictionary, new HashSet());
    }

    protected void checkAppearanceStream(PdfStream pdfStream) {
        if (isAlreadyChecked(pdfStream)) {
            return;
        }
        checkResources(pdfStream.getAsDictionary(PdfName.Resources));
    }

    private void checkResourcesOfAppearanceStreams(PdfDictionary pdfDictionary, Set<PdfObject> set) {
        if (set.contains(pdfDictionary)) {
            return;
        }
        set.add(pdfDictionary);
        for (PdfObject pdfObject : pdfDictionary.values()) {
            if (pdfObject instanceof PdfDictionary) {
                PdfDictionary pdfDictionary2 = (PdfDictionary) pdfObject;
                if (pdfDictionary2.isDictionary()) {
                    checkResourcesOfAppearanceStreams(pdfDictionary2, set);
                } else if (pdfDictionary2.isStream()) {
                    checkAppearanceStream((PdfStream) pdfDictionary2);
                }
            }
        }
    }

    private void checkArrayRecursively(PdfArray pdfArray) {
        for (int i = 0; i < pdfArray.size(); i++) {
            PdfObject pdfObject = pdfArray.get(i, false);
            if (pdfObject != null && !pdfObject.isIndirect()) {
                checkPdfObject(pdfObject);
            }
        }
    }

    private void checkDictionaryRecursively(PdfDictionary pdfDictionary) {
        for (PdfName pdfName : pdfDictionary.keySet()) {
            checkPdfName(pdfName);
            PdfObject pdfObject = pdfDictionary.get(pdfName, false);
            if (pdfObject != null && !pdfObject.isIndirect()) {
                checkPdfObject(pdfObject);
            }
        }
    }

    private void checkPages(PdfDocument pdfDocument) {
        for (int i = 1; i <= pdfDocument.getNumberOfPages(); i++) {
            checkPage(pdfDocument.getPage(i));
        }
    }

    private void checkPage(PdfPage pdfPage) {
        PdfDictionary pdfObject = pdfPage.getPdfObject();
        if (isAlreadyChecked(pdfObject)) {
            return;
        }
        checkPageObject(pdfObject, pdfPage.getResources().getPdfObject());
        checkResources(pdfPage.getResources().getPdfObject());
        checkAnnotations(pdfObject);
        checkPageSize(pdfObject);
        checkPageTransparency(pdfObject, pdfPage.getResources().getPdfObject());
        int contentStreamCount = pdfPage.getContentStreamCount();
        for (int i = 0; i < contentStreamCount; i++) {
            PdfStream contentStream = pdfPage.getContentStream(i);
            checkContentStream(contentStream);
            this.checkedObjects.add(contentStream);
        }
    }

    private void checkOpenAction(PdfObject pdfObject) {
        if (pdfObject == null || !pdfObject.isDictionary()) {
            return;
        }
        checkAction((PdfDictionary) pdfObject);
    }

    private void checkAnnotations(PdfDictionary pdfDictionary) {
        PdfArray asArray = pdfDictionary.getAsArray(PdfName.Annots);
        if (asArray != null) {
            for (int i = 0; i < asArray.size(); i++) {
                PdfDictionary asDictionary = asArray.getAsDictionary(i);
                checkAnnotation(asDictionary);
                PdfDictionary asDictionary2 = asDictionary.getAsDictionary(PdfName.f2967A);
                if (asDictionary2 != null) {
                    checkAction(asDictionary2);
                }
            }
        }
    }

    private void checkOutlines(PdfDictionary pdfDictionary) {
        PdfDictionary asDictionary = pdfDictionary.getAsDictionary(PdfName.Outlines);
        if (asDictionary != null) {
            Iterator<PdfDictionary> it = getOutlines(asDictionary).iterator();
            while (it.hasNext()) {
                PdfDictionary asDictionary2 = it.next().getAsDictionary(PdfName.f2967A);
                if (asDictionary2 != null) {
                    checkAction(asDictionary2);
                }
            }
        }
    }

    private List<PdfDictionary> getOutlines(PdfDictionary pdfDictionary) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(pdfDictionary);
        PdfDictionary asDictionary = pdfDictionary.getAsDictionary(PdfName.First);
        if (asDictionary != null) {
            arrayList.addAll(getOutlines(asDictionary));
        }
        PdfDictionary asDictionary2 = pdfDictionary.getAsDictionary(PdfName.Next);
        if (asDictionary2 != null) {
            arrayList.addAll(getOutlines(asDictionary2));
        }
        return arrayList;
    }

    private void setPdfAOutputIntentColorSpace(PdfDictionary pdfDictionary) {
        PdfArray asArray = pdfDictionary.getAsArray(PdfName.OutputIntents);
        if (asArray == null) {
            return;
        }
        setCheckerOutputIntent(getPdfAOutputIntent(asArray));
    }

    private PdfDictionary getPdfAOutputIntent(PdfArray pdfArray) {
        for (int i = 0; i < pdfArray.size(); i++) {
            if (PdfName.GTS_PDFA1.equals(pdfArray.getAsDictionary(i).getAsName(PdfName.f3065S))) {
                return pdfArray.getAsDictionary(i);
            }
        }
        return null;
    }

    private void setCheckerOutputIntent(PdfDictionary pdfDictionary) {
        PdfStream asStream;
        if (pdfDictionary == null || (asStream = pdfDictionary.getAsStream(PdfName.DestOutputProfile)) == null) {
            return;
        }
        this.pdfAOutputIntentColorSpace = IccProfile.getIccColorSpaceName(asStream.getBytes());
    }
}
