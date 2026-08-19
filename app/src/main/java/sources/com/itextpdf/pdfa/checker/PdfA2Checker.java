package com.itextpdf.pdfa.checker;

import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.colors.PatternColor;
import com.itextpdf.kernel.font.PdfFont;
import com.itextpdf.kernel.font.PdfTrueTypeFont;
import com.itextpdf.kernel.font.PdfType3Font;
import com.itextpdf.kernel.font.Type3Glyph;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfAConformanceLevel;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfBoolean;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfStream;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.kernel.pdf.canvas.CanvasGraphicsState;
import com.itextpdf.kernel.pdf.colorspace.PdfCieBasedCs;
import com.itextpdf.kernel.pdf.colorspace.PdfColorSpace;
import com.itextpdf.kernel.pdf.colorspace.PdfDeviceCs;
import com.itextpdf.kernel.pdf.colorspace.PdfPattern;
import com.itextpdf.kernel.pdf.colorspace.PdfSpecialCs;
import com.itextpdf.kernel.pdf.extgstate.PdfExtGState;
import com.itextpdf.p017io.colors.IccProfile;
import com.itextpdf.p017io.font.FontEncoding;
import com.itextpdf.p017io.font.PdfEncodings;
import com.itextpdf.p017io.image.ImageDataFactory;
import com.itextpdf.p017io.image.Jpeg2000ImageData;
import com.itextpdf.pdfa.exceptions.PdfAConformanceException;
import com.itextpdf.pdfa.logs.PdfAConformanceLogMessageConstant;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class PdfA2Checker extends PdfA1Checker {
    private static final int MAX_NUMBER_OF_DEVICEN_COLOR_COMPONENTS = 32;
    static final int MAX_PAGE_SIZE = 14400;
    static final int MIN_PAGE_SIZE = 3;
    private boolean currentFillCsIsIccBasedCMYK;
    private boolean currentStrokeCsIsIccBasedCMYK;
    private Map<PdfName, PdfArray> separationColorSpaces;
    private Set<PdfObject> transparencyObjects;
    protected static final Set<PdfName> forbiddenAnnotations = Collections.unmodifiableSet(new HashSet(Arrays.asList(PdfName._3D, PdfName.Sound, PdfName.Screen, PdfName.Movie)));
    protected static final Set<PdfName> forbiddenActions = Collections.unmodifiableSet(new HashSet(Arrays.asList(PdfName.Launch, PdfName.Sound, PdfName.Movie, PdfName.ResetForm, PdfName.ImportData, PdfName.JavaScript, PdfName.Hide, PdfName.SetOCGState, PdfName.Rendition, PdfName.Trans, PdfName.GoTo3DView)));
    protected static final Set<PdfName> allowedBlendModes = Collections.unmodifiableSet(new HashSet(Arrays.asList(PdfName.Normal, PdfName.Compatible, PdfName.Multiply, PdfName.Screen, PdfName.Overlay, PdfName.Darken, PdfName.Lighten, PdfName.ColorDodge, PdfName.ColorBurn, PdfName.HardLight, PdfName.SoftLight, PdfName.Difference, PdfName.Exclusion, PdfName.Hue, PdfName.Saturation, PdfName.Color, PdfName.Luminosity)));

    @Override // com.itextpdf.pdfa.checker.PdfA1Checker, com.itextpdf.pdfa.checker.PdfAChecker
    protected void checkPdfArray(PdfArray pdfArray) {
    }

    @Override // com.itextpdf.pdfa.checker.PdfA1Checker, com.itextpdf.pdfa.checker.PdfAChecker
    protected void checkPdfDictionary(PdfDictionary pdfDictionary) {
    }

    @Override // com.itextpdf.pdfa.checker.PdfA1Checker
    protected double getMaxRealValue() {
        return 3.4028234663852886E38d;
    }

    @Override // com.itextpdf.pdfa.checker.PdfA1Checker
    protected int getMaxStringLength() {
        return 32767;
    }

    public PdfA2Checker(PdfAConformanceLevel pdfAConformanceLevel) {
        super(pdfAConformanceLevel);
        this.currentFillCsIsIccBasedCMYK = false;
        this.currentStrokeCsIsIccBasedCMYK = false;
        this.separationColorSpaces = new HashMap();
        this.transparencyObjects = new HashSet();
    }

    @Override // com.itextpdf.pdfa.checker.PdfA1Checker, com.itextpdf.pdfa.checker.PdfAChecker
    public void checkInlineImage(PdfStream pdfStream, PdfDictionary pdfDictionary) {
        PdfObject pdfObject = pdfStream.get(PdfName.Filter);
        if (pdfObject instanceof PdfName) {
            if (pdfObject.equals(PdfName.LZWDecode)) {
                throw new PdfAConformanceException(PdfAConformanceException.LZWDECODE_FILTER_IS_NOT_PERMITTED);
            }
            if (pdfObject.equals(PdfName.Crypt)) {
                throw new PdfAConformanceException(PdfAConformanceException.CRYPT_FILTER_IS_NOT_PERMITTED_INLINE_IMAGE);
            }
        } else if (pdfObject instanceof PdfArray) {
            int i = 0;
            while (true) {
                PdfArray pdfArray = (PdfArray) pdfObject;
                if (i >= pdfArray.size()) {
                    break;
                }
                PdfName asName = pdfArray.getAsName(i);
                if (asName.equals(PdfName.LZWDecode)) {
                    throw new PdfAConformanceException(PdfAConformanceException.LZWDECODE_FILTER_IS_NOT_PERMITTED);
                }
                if (asName.equals(PdfName.Crypt)) {
                    throw new PdfAConformanceException(PdfAConformanceException.CRYPT_FILTER_IS_NOT_PERMITTED_INLINE_IMAGE);
                }
                i++;
            }
        }
        checkImage(pdfStream, pdfDictionary);
    }

    @Override // com.itextpdf.pdfa.checker.PdfA1Checker, com.itextpdf.pdfa.checker.PdfAChecker
    public void checkColor(Color color, PdfDictionary pdfDictionary, Boolean bool, PdfStream pdfStream) {
        if (color instanceof PatternColor) {
            PdfPattern pattern = ((PatternColor) color).getPattern();
            if (pattern instanceof PdfPattern.Shading) {
                checkColorSpace(PdfColorSpace.makeColorSpace(((PdfPattern.Shading) pattern).getShading().get(PdfName.ColorSpace)), pdfDictionary, true, true);
                checkExtGState(new UpdateCanvasGraphicsState(pattern.getPdfObject().getAsDictionary(PdfName.ExtGState)), pdfStream);
            } else if (pattern instanceof PdfPattern.Tiling) {
                checkContentStream((PdfStream) pattern.getPdfObject());
            }
        }
        super.checkColor(color, pdfDictionary, bool, pdfStream);
    }

    @Override // com.itextpdf.pdfa.checker.PdfA1Checker, com.itextpdf.pdfa.checker.PdfAChecker
    public void checkColorSpace(PdfColorSpace pdfColorSpace, PdfDictionary pdfDictionary, boolean z, Boolean bool) {
        if (bool != null) {
            if (bool.booleanValue()) {
                this.currentFillCsIsIccBasedCMYK = false;
            } else {
                this.currentStrokeCsIsIccBasedCMYK = false;
            }
        }
        if (pdfColorSpace instanceof PdfSpecialCs.Separation) {
            PdfSpecialCs.Separation separation = (PdfSpecialCs.Separation) pdfColorSpace;
            checkSeparationCS((PdfArray) separation.getPdfObject());
            if (z) {
                checkColorSpace(separation.getBaseCs(), pdfDictionary, false, bool);
            }
        } else if (pdfColorSpace instanceof PdfSpecialCs.DeviceN) {
            PdfSpecialCs.DeviceN deviceN = (PdfSpecialCs.DeviceN) pdfColorSpace;
            if (deviceN.getNumberOfComponents() > 32) {
                throw new PdfAConformanceException(PdfAConformanceException.f3271x736cbd, 32);
            }
            PdfDictionary asDictionary = ((PdfArray) deviceN.getPdfObject()).getAsDictionary(4).getAsDictionary(PdfName.Colorants);
            if (asDictionary != null) {
                Iterator<Map.Entry<PdfName, PdfObject>> it = asDictionary.entrySet().iterator();
                while (it.hasNext()) {
                    checkSeparationInsideDeviceN((PdfArray) it.next().getValue(), ((PdfArray) deviceN.getPdfObject()).get(2), ((PdfArray) deviceN.getPdfObject()).get(3));
                }
            }
            if (z) {
                checkColorSpace(deviceN.getBaseCs(), pdfDictionary, false, bool);
            }
        } else if (pdfColorSpace instanceof PdfSpecialCs.Indexed) {
            if (z) {
                checkColorSpace(((PdfSpecialCs.Indexed) pdfColorSpace).getBaseCs(), pdfDictionary, true, bool);
            }
        } else if (pdfColorSpace instanceof PdfSpecialCs.UncoloredTilingPattern) {
            if (z) {
                checkColorSpace(((PdfSpecialCs.UncoloredTilingPattern) pdfColorSpace).getUnderlyingColorSpace(), pdfDictionary, true, bool);
            }
        } else if (pdfColorSpace instanceof PdfDeviceCs.Rgb) {
            if (!checkDefaultCS(pdfDictionary, bool, PdfName.DefaultRGB, 3)) {
                this.rgbIsUsed = true;
            }
        } else if (pdfColorSpace instanceof PdfDeviceCs.Cmyk) {
            if (!checkDefaultCS(pdfDictionary, bool, PdfName.DefaultCMYK, 4)) {
                this.cmykIsUsed = true;
            }
        } else if ((pdfColorSpace instanceof PdfDeviceCs.Gray) && !checkDefaultCS(pdfDictionary, bool, PdfName.DefaultGray, 1)) {
            this.grayIsUsed = true;
        }
        if (bool != null && (pdfColorSpace instanceof PdfCieBasedCs.IccBased) && PdfAChecker.ICC_COLOR_SPACE_CMYK.equals(IccProfile.getIccColorSpaceName(((PdfArray) pdfColorSpace.getPdfObject()).getAsStream(1).getBytes()))) {
            if (bool.booleanValue()) {
                this.currentFillCsIsIccBasedCMYK = true;
            } else {
                this.currentStrokeCsIsIccBasedCMYK = true;
            }
        }
    }

    @Override // com.itextpdf.pdfa.checker.PdfA1Checker, com.itextpdf.pdfa.checker.PdfAChecker
    public void checkExtGState(CanvasGraphicsState canvasGraphicsState, PdfStream pdfStream) {
        Integer num = 1;
        if (num.equals(Integer.valueOf(canvasGraphicsState.getOverprintMode()))) {
            if (canvasGraphicsState.getFillOverprint() && this.currentFillCsIsIccBasedCMYK) {
                throw new PdfAConformanceException(PdfAConformanceException.f3262xb09c8137);
            }
            if (canvasGraphicsState.getStrokeOverprint() && this.currentStrokeCsIsIccBasedCMYK) {
                throw new PdfAConformanceException(PdfAConformanceException.f3262xb09c8137);
            }
        }
        if (canvasGraphicsState.getTransferFunction() != null) {
            throw new PdfAConformanceException(PdfAConformanceException.AN_EXTGSTATE_DICTIONARY_SHALL_NOT_CONTAIN_THE_TR_KEY);
        }
        if (canvasGraphicsState.getHTP() != null) {
            throw new PdfAConformanceException(PdfAConformanceException.AN_EXTGSTATE_DICTIONARY_SHALL_NOT_CONTAIN_THE_HTP_KEY);
        }
        PdfObject transferFunction2 = canvasGraphicsState.getTransferFunction2();
        if (transferFunction2 != null && !PdfName.Default.equals(transferFunction2)) {
            throw new PdfAConformanceException(PdfAConformanceException.f3235x46add6e4);
        }
        if (canvasGraphicsState.getHalftone() instanceof PdfDictionary) {
            PdfDictionary pdfDictionary = (PdfDictionary) canvasGraphicsState.getHalftone();
            Integer asInt = pdfDictionary.getAsInt(PdfName.HalftoneType);
            if (asInt.intValue() != 1 && asInt.intValue() != 5) {
                throw new PdfAConformanceException(PdfAConformanceException.ALL_HALFTONES_SHALL_HAVE_HALFTONETYPE_1_OR_5);
            }
            if (pdfDictionary.containsKey(PdfName.HalftoneName)) {
                throw new PdfAConformanceException(PdfAConformanceException.HALFTONES_SHALL_NOT_CONTAIN_HALFTONENAME);
            }
        }
        checkRenderingIntent(canvasGraphicsState.getRenderingIntent());
        if (canvasGraphicsState.getSoftMask() != null && (canvasGraphicsState.getSoftMask() instanceof PdfDictionary)) {
            this.transparencyObjects.add(pdfStream);
        }
        if (canvasGraphicsState.getStrokeOpacity() < 1.0f) {
            this.transparencyObjects.add(pdfStream);
        }
        if (canvasGraphicsState.getFillOpacity() < 1.0f) {
            this.transparencyObjects.add(pdfStream);
        }
        PdfObject blendMode = canvasGraphicsState.getBlendMode();
        if (blendMode != null) {
            if (!PdfName.Normal.equals(blendMode)) {
                this.transparencyObjects.add(pdfStream);
            }
            if (blendMode instanceof PdfArray) {
                Iterator<PdfObject> it = ((PdfArray) blendMode).iterator();
                while (it.hasNext()) {
                    checkBlendMode((PdfName) it.next());
                }
            } else if (blendMode instanceof PdfName) {
                checkBlendMode((PdfName) blendMode);
            }
        }
    }

    @Override // com.itextpdf.pdfa.checker.PdfAChecker
    public void checkSignature(PdfDictionary pdfDictionary) {
        PdfArray asArray;
        if (isAlreadyChecked(pdfDictionary) || (asArray = pdfDictionary.getAsArray(PdfName.Reference)) == null) {
            return;
        }
        for (int i = 0; i < asArray.size(); i++) {
            PdfDictionary asDictionary = asArray.getAsDictionary(i);
            if (asDictionary.containsKey(PdfName.DigestLocation) || asDictionary.containsKey(PdfName.DigestMethod) || asDictionary.containsKey(PdfName.DigestValue)) {
                throw new PdfAConformanceException(PdfAConformanceException.f3264x4e54c3f6);
            }
        }
    }

    @Override // com.itextpdf.pdfa.checker.PdfA1Checker, com.itextpdf.pdfa.checker.PdfAChecker
    protected void checkNonSymbolicTrueTypeFont(PdfTrueTypeFont pdfTrueTypeFont) {
        String baseEncoding = pdfTrueTypeFont.getFontEncoding().getBaseEncoding();
        if (!"Cp1252".equals(baseEncoding) && !PdfEncodings.MACROMAN.equals(baseEncoding)) {
            throw new PdfAConformanceException(PdfAConformanceException.f3232x6222251a, pdfTrueTypeFont);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:91:0x0172  */
    @Override // com.itextpdf.pdfa.checker.PdfA1Checker, com.itextpdf.pdfa.checker.PdfAChecker
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void checkAnnotation(com.itextpdf.kernel.pdf.PdfDictionary r8) {
        /*
            Method dump skipped, instruction units count: 441
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.pdfa.checker.PdfA2Checker.checkAnnotation(com.itextpdf.kernel.pdf.PdfDictionary):void");
    }

    @Override // com.itextpdf.pdfa.checker.PdfAChecker
    protected void checkAppearanceStream(PdfStream pdfStream) {
        if (isAlreadyChecked(pdfStream)) {
            return;
        }
        if (isContainsTransparencyGroup(pdfStream)) {
            this.transparencyObjects.add(pdfStream);
        }
        checkResources(pdfStream.getAsDictionary(PdfName.Resources));
    }

    @Override // com.itextpdf.pdfa.checker.PdfA1Checker, com.itextpdf.pdfa.checker.PdfAChecker
    protected void checkForm(PdfDictionary pdfDictionary) {
        if (pdfDictionary != null) {
            PdfBoolean asBoolean = pdfDictionary.getAsBoolean(PdfName.NeedAppearances);
            if (asBoolean != null && asBoolean.getValue()) {
                throw new PdfAConformanceException(PdfAConformanceException.f3258x9609c9f4);
            }
            if (pdfDictionary.containsKey(PdfName.XFA)) {
                throw new PdfAConformanceException(PdfAConformanceException.THE_INTERACTIVE_FORM_DICTIONARY_SHALL_NOT_CONTAIN_THE_XFA_KEY);
            }
            checkResources(pdfDictionary.getAsDictionary(PdfName.f2995DR));
            PdfArray asArray = pdfDictionary.getAsArray(PdfName.Fields);
            if (asArray != null) {
                Iterator<PdfObject> it = getFormFields(asArray).iterator();
                while (it.hasNext()) {
                    checkResources(((PdfDictionary) it.next()).getAsDictionary(PdfName.f2995DR));
                }
            }
        }
    }

    @Override // com.itextpdf.pdfa.checker.PdfA1Checker, com.itextpdf.pdfa.checker.PdfAChecker
    protected void checkCatalogValidEntries(PdfDictionary pdfDictionary) {
        if (pdfDictionary.containsKey(PdfName.NeedsRendering)) {
            throw new PdfAConformanceException(PdfAConformanceException.THE_CATALOG_DICTIONARY_SHALL_NOT_CONTAIN_THE_NEEDSRENDERING_KEY);
        }
        if (pdfDictionary.containsKey(PdfName.f2968AA)) {
            throw new PdfAConformanceException(PdfAConformanceException.A_CATALOG_DICTIONARY_SHALL_NOT_CONTAIN_AA_ENTRY);
        }
        if (pdfDictionary.containsKey(PdfName.Requirements)) {
            throw new PdfAConformanceException(PdfAConformanceException.A_CATALOG_DICTIONARY_SHALL_NOT_CONTAIN_REQUIREMENTS_ENTRY);
        }
        PdfDictionary asDictionary = pdfDictionary.getAsDictionary(PdfName.Perms);
        if (asDictionary != null) {
            for (PdfName pdfName : asDictionary.keySet()) {
                if (PdfName.DocMDP.equals(pdfName)) {
                    PdfDictionary asDictionary2 = asDictionary.getAsDictionary(PdfName.DocMDP);
                    if (asDictionary2 != null) {
                        checkSignature(asDictionary2);
                    }
                } else if (!PdfName.UR3.equals(pdfName)) {
                    throw new PdfAConformanceException(PdfAConformanceException.f3259x2aa6303c);
                }
            }
        }
        PdfDictionary asDictionary3 = pdfDictionary.getAsDictionary(PdfName.Names);
        if (asDictionary3 != null && asDictionary3.containsKey(PdfName.AlternatePresentations)) {
            throw new PdfAConformanceException(PdfAConformanceException.f3238x3b843e6a);
        }
        PdfDictionary asDictionary4 = pdfDictionary.getAsDictionary(PdfName.OCProperties);
        if (asDictionary4 != null) {
            ArrayList arrayList = new ArrayList();
            PdfDictionary asDictionary5 = asDictionary4.getAsDictionary(PdfName.f2992D);
            if (asDictionary5 != null) {
                arrayList.add(asDictionary5);
            }
            PdfArray asArray = asDictionary4.getAsArray(PdfName.Configs);
            if (asArray != null) {
                Iterator<PdfObject> it = asArray.iterator();
                while (it.hasNext()) {
                    arrayList.add((PdfDictionary) it.next());
                }
            }
            HashSet<PdfObject> hashSet = new HashSet<>();
            PdfArray asArray2 = asDictionary4.getAsArray(PdfName.OCGs);
            if (asArray2 != null) {
                Iterator<PdfObject> it2 = asArray2.iterator();
                while (it2.hasNext()) {
                    hashSet.add(it2.next());
                }
            }
            HashSet<String> hashSet2 = new HashSet<>();
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                checkCatalogConfig((PdfDictionary) it3.next(), hashSet, hashSet2);
            }
        }
    }

    @Override // com.itextpdf.pdfa.checker.PdfA1Checker, com.itextpdf.pdfa.checker.PdfAChecker
    protected void checkPageSize(PdfDictionary pdfDictionary) {
        PdfName[] pdfNameArr = {PdfName.MediaBox, PdfName.CropBox, PdfName.TrimBox, PdfName.ArtBox, PdfName.BleedBox};
        for (int i = 0; i < 5; i++) {
            Rectangle asRectangle = pdfDictionary.getAsRectangle(pdfNameArr[i]);
            if (asRectangle != null) {
                float width = asRectangle.getWidth();
                float height = asRectangle.getHeight();
                if (width < 3.0f || width > 14400.0f || height < 3.0f || height > 14400.0f) {
                    throw new PdfAConformanceException(PdfAConformanceException.THE_PAGE_LESS_3_UNITS_NO_GREATER_14400_IN_EITHER_DIRECTION);
                }
            }
        }
    }

    @Override // com.itextpdf.pdfa.checker.PdfA1Checker, com.itextpdf.pdfa.checker.PdfAChecker
    protected void checkFileSpec(PdfDictionary pdfDictionary) {
        if (pdfDictionary.containsKey(PdfName.f3001EF)) {
            if (!pdfDictionary.containsKey(PdfName.f3004F) || !pdfDictionary.containsKey(PdfName.f3085UF)) {
                throw new PdfAConformanceException(PdfAConformanceException.FILE_SPECIFICATION_DICTIONARY_SHALL_CONTAIN_F_KEY_AND_UF_KEY);
            }
            if (!pdfDictionary.containsKey(PdfName.Desc)) {
                LoggerFactory.getLogger((Class<?>) PdfAChecker.class).warn(PdfAConformanceLogMessageConstant.FILE_SPECIFICATION_DICTIONARY_SHOULD_CONTAIN_DESC_KEY);
            }
            if (pdfDictionary.getAsDictionary(PdfName.f3001EF).getAsStream(PdfName.f3004F) == null) {
                throw new PdfAConformanceException(PdfAConformanceException.f3250x7f5ec81);
            }
            LoggerFactory.getLogger((Class<?>) PdfAChecker.class).warn(PdfAConformanceLogMessageConstant.EMBEDDED_FILE_SHALL_BE_COMPLIANT_WITH_SPEC);
        }
    }

    @Override // com.itextpdf.pdfa.checker.PdfA1Checker, com.itextpdf.pdfa.checker.PdfAChecker
    protected void checkPdfStream(PdfStream pdfStream) {
        PdfArray asArray;
        PdfName asName;
        PdfDictionary asDictionary;
        PdfName asName2;
        checkPdfDictionary(pdfStream);
        if (pdfStream.containsKey(PdfName.f3004F) || pdfStream.containsKey(PdfName.FFilter) || pdfStream.containsKey(PdfName.FDecodeParams)) {
            throw new PdfAConformanceException(PdfAConformanceException.f3265x774c9db);
        }
        PdfObject pdfObject = pdfStream.get(PdfName.Filter);
        if (pdfObject instanceof PdfName) {
            if (pdfObject.equals(PdfName.LZWDecode)) {
                throw new PdfAConformanceException(PdfAConformanceException.LZWDECODE_FILTER_IS_NOT_PERMITTED);
            }
            if (pdfObject.equals(PdfName.Crypt) && (asDictionary = pdfStream.getAsDictionary(PdfName.DecodeParms)) != null && (asName2 = asDictionary.getAsName(PdfName.Name)) != null && !asName2.equals(PdfName.Identity)) {
                throw new PdfAConformanceException(PdfAConformanceException.NOT_IDENTITY_CRYPT_FILTER_IS_NOT_PERMITTED);
            }
            return;
        }
        if (!(pdfObject instanceof PdfArray)) {
            return;
        }
        int i = 0;
        while (true) {
            PdfArray pdfArray = (PdfArray) pdfObject;
            if (i >= pdfArray.size()) {
                return;
            }
            PdfName asName3 = pdfArray.getAsName(i);
            if (asName3.equals(PdfName.LZWDecode)) {
                throw new PdfAConformanceException(PdfAConformanceException.LZWDECODE_FILTER_IS_NOT_PERMITTED);
            }
            if (asName3.equals(PdfName.Crypt) && (asArray = pdfStream.getAsArray(PdfName.DecodeParms)) != null && i < asArray.size() && (asName = asArray.getAsDictionary(i).getAsName(PdfName.Name)) != null && !asName.equals(PdfName.Identity)) {
                throw new PdfAConformanceException(PdfAConformanceException.NOT_IDENTITY_CRYPT_FILTER_IS_NOT_PERMITTED);
            }
            i++;
        }
    }

    @Override // com.itextpdf.pdfa.checker.PdfA1Checker, com.itextpdf.pdfa.checker.PdfAChecker
    protected void checkPageObject(PdfDictionary pdfDictionary, PdfDictionary pdfDictionary2) {
        PdfObject pdfObject;
        if (pdfDictionary.containsKey(PdfName.f2968AA)) {
            throw new PdfAConformanceException(PdfAConformanceException.THE_PAGE_DICTIONARY_SHALL_NOT_CONTAIN_AA_ENTRY);
        }
        if (pdfDictionary.containsKey(PdfName.PresSteps)) {
            throw new PdfAConformanceException(PdfAConformanceException.THE_PAGE_DICTIONARY_SHALL_NOT_CONTAIN_PRESSTEPS_ENTRY);
        }
        if (!isContainsTransparencyGroup(pdfDictionary) || (pdfObject = pdfDictionary.getAsDictionary(PdfName.Group).get(PdfName.f2989CS)) == null) {
            return;
        }
        checkColorSpace(PdfColorSpace.makeColorSpace(pdfObject), pdfDictionary2.getAsDictionary(PdfName.ColorSpace), true, null);
    }

    @Override // com.itextpdf.pdfa.checker.PdfA1Checker, com.itextpdf.pdfa.checker.PdfAChecker
    protected void checkPageTransparency(PdfDictionary pdfDictionary, PdfDictionary pdfDictionary2) {
        if (this.pdfAOutputIntentColorSpace != null || this.transparencyObjects.size() <= 0) {
            return;
        }
        if (pdfDictionary.getAsDictionary(PdfName.Group) == null || pdfDictionary.getAsDictionary(PdfName.Group).get(PdfName.f2989CS) == null) {
            if (this.transparencyObjects.contains(pdfDictionary)) {
                throw new PdfAConformanceException(PdfAConformanceException.f3268x323d23cf);
            }
            checkContentsForTransparency(pdfDictionary);
            checkAnnotationsForTransparency(pdfDictionary.getAsArray(PdfName.Annots));
            checkResourcesForTransparency(pdfDictionary2, new HashSet());
        }
    }

    @Override // com.itextpdf.pdfa.checker.PdfA1Checker, com.itextpdf.pdfa.checker.PdfAChecker
    protected void checkOutputIntents(PdfDictionary pdfDictionary) {
        PdfArray asArray = pdfDictionary.getAsArray(PdfName.OutputIntents);
        if (asArray == null) {
            return;
        }
        PdfObject pdfObject = null;
        int i = 0;
        while (i < asArray.size() && pdfObject == null) {
            pdfObject = asArray.getAsDictionary(i).get(PdfName.DestOutputProfile);
            i++;
        }
        while (i < asArray.size()) {
            PdfObject pdfObject2 = asArray.getAsDictionary(i).get(PdfName.DestOutputProfile);
            if (pdfObject2 != null && pdfObject != pdfObject2) {
                throw new PdfAConformanceException(PdfAConformanceException.f3255x58110a7);
            }
            i++;
        }
        if (pdfObject != null) {
            PdfStream pdfStream = (PdfStream) pdfObject;
            String iccDeviceClass = IccProfile.getIccDeviceClass(pdfStream.getBytes());
            if (!PdfAChecker.ICC_DEVICE_CLASS_OUTPUT_PROFILE.equals(iccDeviceClass) && !PdfAChecker.ICC_DEVICE_CLASS_MONITOR_PROFILE.equals(iccDeviceClass)) {
                throw new PdfAConformanceException(PdfAConformanceException.f3263x647ed7c5);
            }
            String iccColorSpaceName = IccProfile.getIccColorSpaceName(pdfStream.getBytes());
            if (!PdfAChecker.ICC_COLOR_SPACE_RGB.equals(iccColorSpaceName) && !PdfAChecker.ICC_COLOR_SPACE_CMYK.equals(iccColorSpaceName) && !PdfAChecker.ICC_COLOR_SPACE_GRAY.equals(iccColorSpaceName)) {
                throw new PdfAConformanceException(PdfAConformanceException.OUTPUT_INTENT_COLOR_SPACE_SHALL_BE_EITHER_GRAY_RGB_OR_CMYK);
            }
        }
    }

    @Override // com.itextpdf.pdfa.checker.PdfA1Checker, com.itextpdf.pdfa.checker.PdfAChecker
    protected Set<PdfName> getForbiddenActions() {
        return forbiddenActions;
    }

    @Override // com.itextpdf.pdfa.checker.PdfA1Checker, com.itextpdf.pdfa.checker.PdfAChecker
    protected Set<PdfName> getAllowedNamedActions() {
        return allowedNamedActions;
    }

    @Override // com.itextpdf.pdfa.checker.PdfA1Checker, com.itextpdf.pdfa.checker.PdfAChecker
    protected void checkColorsUsages() {
        if ((this.rgbIsUsed || this.cmykIsUsed || this.grayIsUsed) && this.pdfAOutputIntentColorSpace == null) {
            throw new PdfAConformanceException(PdfAConformanceException.f3254x27d7d48);
        }
        if (this.rgbIsUsed && !PdfAChecker.ICC_COLOR_SPACE_RGB.equals(this.pdfAOutputIntentColorSpace)) {
            throw new PdfAConformanceException(PdfAConformanceException.f3248x45cf5030);
        }
        if (this.cmykIsUsed && !PdfAChecker.ICC_COLOR_SPACE_CMYK.equals(this.pdfAOutputIntentColorSpace)) {
            throw new PdfAConformanceException(PdfAConformanceException.f3245x576021a7);
        }
    }

    @Override // com.itextpdf.pdfa.checker.PdfA1Checker, com.itextpdf.pdfa.checker.PdfAChecker
    protected void checkImage(PdfStream pdfStream, PdfDictionary pdfDictionary) {
        if (isAlreadyChecked(pdfStream)) {
            checkColorSpace(this.checkedObjectsColorspace.get(pdfStream), pdfDictionary, true, null);
            return;
        }
        PdfObject pdfObject = pdfStream.get(PdfName.ColorSpace);
        if (pdfObject != null) {
            PdfColorSpace pdfColorSpaceMakeColorSpace = PdfColorSpace.makeColorSpace(pdfObject);
            checkColorSpace(pdfColorSpaceMakeColorSpace, pdfDictionary, true, null);
            this.checkedObjectsColorspace.put(pdfStream, pdfColorSpaceMakeColorSpace);
        }
        if (pdfStream.containsKey(PdfName.Alternates)) {
            throw new PdfAConformanceException(PdfAConformanceException.AN_IMAGE_DICTIONARY_SHALL_NOT_CONTAIN_ALTERNATES_KEY);
        }
        if (pdfStream.containsKey(PdfName.OPI)) {
            throw new PdfAConformanceException(PdfAConformanceException.AN_IMAGE_DICTIONARY_SHALL_NOT_CONTAIN_OPI_KEY);
        }
        if (pdfStream.containsKey(PdfName.Interpolate) && pdfStream.getAsBool(PdfName.Interpolate).booleanValue()) {
            throw new PdfAConformanceException(PdfAConformanceException.THE_VALUE_OF_INTERPOLATE_KEY_SHALL_BE_FALSE);
        }
        checkRenderingIntent(pdfStream.getAsName(PdfName.Intent));
        if (pdfStream.getAsStream(PdfName.SMask) != null) {
            this.transparencyObjects.add(pdfStream);
        }
        if (pdfStream.containsKey(PdfName.SMaskInData) && pdfStream.getAsInt(PdfName.SMaskInData).intValue() > 0) {
            this.transparencyObjects.add(pdfStream);
        }
        if (PdfName.JPXDecode.equals(pdfStream.get(PdfName.Filter))) {
            int i = 0;
            Jpeg2000ImageData jpeg2000ImageData = (Jpeg2000ImageData) ImageDataFactory.createJpeg2000(pdfStream.getBytes(false));
            Jpeg2000ImageData.Parameters parameters = jpeg2000ImageData.getParameters();
            if (!parameters.isJp2) {
                throw new PdfAConformanceException(PdfAConformanceException.ONLY_JPX_BASELINE_SET_OF_FEATURES_SHALL_BE_USED);
            }
            if (parameters.numOfComps != 1 && parameters.numOfComps != 3 && parameters.numOfComps != 4) {
                throw new PdfAConformanceException(PdfAConformanceException.f3272x7df2e3d3);
            }
            if (parameters.colorSpecBoxes != null && parameters.colorSpecBoxes.size() > 1) {
                for (Jpeg2000ImageData.ColorSpecBox colorSpecBox : parameters.colorSpecBoxes) {
                    if (colorSpecBox.getApprox() == 1) {
                        i++;
                        if (i == 1 && colorSpecBox.getMeth() != 1 && colorSpecBox.getMeth() != 2 && colorSpecBox.getMeth() != 3) {
                            throw new PdfAConformanceException(PdfAConformanceException.THE_VALUE_OF_THE_METH_ENTRY_IN_COLR_BOX_SHALL_BE_1_2_OR_3);
                        }
                        if (pdfStream.get(PdfName.ColorSpace) == null) {
                            int enumCs = colorSpecBox.getEnumCs();
                            if (enumCs == 1) {
                                PdfDeviceCs.Gray gray = new PdfDeviceCs.Gray();
                                checkColorSpace(gray, pdfDictionary, true, null);
                                this.checkedObjectsColorspace.put(pdfStream, gray);
                            } else if (enumCs == 3) {
                                PdfDeviceCs.Rgb rgb = new PdfDeviceCs.Rgb();
                                checkColorSpace(rgb, pdfDictionary, true, null);
                                this.checkedObjectsColorspace.put(pdfStream, rgb);
                            } else if (enumCs == 12) {
                                PdfDeviceCs.Cmyk cmyk = new PdfDeviceCs.Cmyk();
                                checkColorSpace(cmyk, pdfDictionary, true, null);
                                this.checkedObjectsColorspace.put(pdfStream, cmyk);
                            }
                        }
                    }
                    if (colorSpecBox.getEnumCs() == 19) {
                        throw new PdfAConformanceException(PdfAConformanceException.JPEG2000_ENUMERATED_COLOUR_SPACE_19_CIEJAB_SHALL_NOT_BE_USED);
                    }
                }
                if (i != 1) {
                    throw new PdfAConformanceException(PdfAConformanceException.f3251xd65ad1eb);
                }
            }
            if (jpeg2000ImageData.getBpc() < 1 || jpeg2000ImageData.getBpc() > 38) {
                throw new PdfAConformanceException(PdfAConformanceException.f3267xfbbcd14b);
            }
            if (parameters.bpcBoxData != null) {
                throw new PdfAConformanceException(PdfAConformanceException.f3231x5be78c20);
            }
        }
    }

    @Override // com.itextpdf.pdfa.checker.PdfA1Checker, com.itextpdf.pdfa.checker.PdfAChecker
    public void checkFontGlyphs(PdfFont pdfFont, PdfStream pdfStream) {
        if (pdfFont instanceof PdfType3Font) {
            checkType3FontGlyphs((PdfType3Font) pdfFont, pdfStream);
        }
    }

    @Override // com.itextpdf.pdfa.checker.PdfA1Checker, com.itextpdf.pdfa.checker.PdfAChecker
    protected void checkFormXObject(PdfStream pdfStream) {
        checkFormXObject(pdfStream, null);
    }

    protected void checkFormXObject(PdfStream pdfStream, PdfStream pdfStream2) {
        if (isAlreadyChecked(pdfStream)) {
            return;
        }
        if (pdfStream.containsKey(PdfName.OPI)) {
            throw new PdfAConformanceException(PdfAConformanceException.A_FORM_XOBJECT_DICTIONARY_SHALL_NOT_CONTAIN_OPI_KEY);
        }
        if (pdfStream.containsKey(PdfName.f3052PS)) {
            throw new PdfAConformanceException(PdfAConformanceException.A_FORM_XOBJECT_DICTIONARY_SHALL_NOT_CONTAIN_PS_KEY);
        }
        if (PdfName.f3052PS.equals(pdfStream.getAsName(PdfName.Subtype2))) {
            throw new PdfAConformanceException(PdfAConformanceException.f3240x71e4aedf);
        }
        if (isContainsTransparencyGroup(pdfStream)) {
            if (pdfStream2 != null) {
                this.transparencyObjects.add(pdfStream2);
            } else {
                this.transparencyObjects.add(pdfStream);
            }
            PdfObject pdfObject = pdfStream.getAsDictionary(PdfName.Group).get(PdfName.f2989CS);
            PdfDictionary asDictionary = pdfStream.getAsDictionary(PdfName.Resources);
            if (pdfObject != null && asDictionary != null) {
                checkColorSpace(PdfColorSpace.makeColorSpace(pdfObject), asDictionary.getAsDictionary(PdfName.ColorSpace), true, null);
            }
        }
        checkResources(pdfStream.getAsDictionary(PdfName.Resources));
        checkContentStream(pdfStream);
    }

    private void checkContentsForTransparency(PdfDictionary pdfDictionary) {
        PdfStream asStream = pdfDictionary.getAsStream(PdfName.Contents);
        if (asStream != null && this.transparencyObjects.contains(asStream)) {
            throw new PdfAConformanceException(PdfAConformanceException.f3268x323d23cf);
        }
        PdfArray asArray = pdfDictionary.getAsArray(PdfName.Contents);
        if (asArray != null) {
            for (int i = 0; i < asArray.size(); i++) {
                if (this.transparencyObjects.contains(asArray.get(i))) {
                    throw new PdfAConformanceException(PdfAConformanceException.f3268x323d23cf);
                }
            }
        }
    }

    private void checkAnnotationsForTransparency(PdfArray pdfArray) {
        if (pdfArray == null) {
            return;
        }
        for (int i = 0; i < pdfArray.size(); i++) {
            PdfDictionary asDictionary = pdfArray.getAsDictionary(i).getAsDictionary(PdfName.f2971AP);
            if (asDictionary != null) {
                checkAppearanceStreamForTransparency(asDictionary, new HashSet());
            }
        }
    }

    private void checkAppearanceStreamForTransparency(PdfDictionary pdfDictionary, Set<PdfObject> set) {
        if (set.contains(pdfDictionary)) {
            return;
        }
        set.add(pdfDictionary);
        for (PdfObject pdfObject : pdfDictionary.values()) {
            if (this.transparencyObjects.contains(pdfObject)) {
                throw new PdfAConformanceException(PdfAConformanceException.f3268x323d23cf);
            }
            if (pdfObject.isDictionary()) {
                checkAppearanceStreamForTransparency((PdfDictionary) pdfObject, set);
            } else if (pdfObject.isStream()) {
                checkObjectWithResourcesForTransparency(pdfObject, set);
            }
        }
    }

    private void checkObjectWithResourcesForTransparency(PdfObject pdfObject, Set<PdfObject> set) {
        if (set.contains(pdfObject)) {
            return;
        }
        set.add(pdfObject);
        if (this.transparencyObjects.contains(pdfObject)) {
            throw new PdfAConformanceException(PdfAConformanceException.f3268x323d23cf);
        }
        if (pdfObject instanceof PdfDictionary) {
            checkResourcesForTransparency(((PdfDictionary) pdfObject).getAsDictionary(PdfName.Resources), set);
        }
    }

    private void checkResourcesForTransparency(PdfDictionary pdfDictionary, Set<PdfObject> set) {
        if (pdfDictionary != null) {
            checkSingleResourceTypeForTransparency(pdfDictionary.getAsDictionary(PdfName.XObject), set);
            checkSingleResourceTypeForTransparency(pdfDictionary.getAsDictionary(PdfName.Pattern), set);
        }
    }

    private void checkSingleResourceTypeForTransparency(PdfDictionary pdfDictionary, Set<PdfObject> set) {
        if (pdfDictionary != null) {
            Iterator<PdfObject> it = pdfDictionary.values().iterator();
            while (it.hasNext()) {
                checkObjectWithResourcesForTransparency(it.next(), set);
            }
        }
    }

    private void checkBlendMode(PdfName pdfName) {
        if (!allowedBlendModes.contains(pdfName)) {
            throw new PdfAConformanceException(PdfAConformanceException.f3260xffb2bc34);
        }
    }

    private void checkSeparationInsideDeviceN(PdfArray pdfArray, PdfObject pdfObject, PdfObject pdfObject2) {
        if (!isAltCSIsTheSame(pdfArray.get(2), pdfObject) || !pdfObject2.equals(pdfArray.get(3))) {
            LoggerFactory.getLogger((Class<?>) PdfAChecker.class).warn(PdfAConformanceLogMessageConstant.f3277x93fa878f);
        }
        checkSeparationCS(pdfArray);
    }

    private void checkSeparationCS(PdfArray pdfArray) {
        boolean z = false;
        if (this.separationColorSpaces.containsKey(pdfArray.getAsName(0))) {
            PdfArray pdfArray2 = this.separationColorSpaces.get(pdfArray.getAsName(0));
            boolean zIsAltCSIsTheSame = isAltCSIsTheSame(pdfArray.get(2), pdfArray2.get(2));
            PdfObject pdfObject = pdfArray.get(3);
            PdfObject pdfObject2 = pdfArray2.get(3);
            if (pdfObject.getType() == pdfObject2.getType() && ((pdfObject.isDictionary() || pdfObject.isStream()) && pdfObject.equals(pdfObject2))) {
                z = true;
            }
            if (!zIsAltCSIsTheSame || !z) {
                throw new PdfAConformanceException(PdfAConformanceException.f3273xc1097c94);
            }
            return;
        }
        this.separationColorSpaces.put(pdfArray.getAsName(0), pdfArray);
    }

    private boolean isAltCSIsTheSame(PdfObject pdfObject, PdfObject pdfObject2) {
        if (pdfObject instanceof PdfName) {
            return pdfObject.equals(pdfObject2);
        }
        if (!(pdfObject instanceof PdfArray) || !(pdfObject2 instanceof PdfArray)) {
            return false;
        }
        PdfArray pdfArray = (PdfArray) pdfObject;
        return pdfArray.get(0).equals(pdfArray.get(0));
    }

    private void checkCatalogConfig(PdfDictionary pdfDictionary, HashSet<PdfObject> hashSet, HashSet<String> hashSet2) {
        PdfString asString = pdfDictionary.getAsString(PdfName.Name);
        if (asString == null) {
            throw new PdfAConformanceException(PdfAConformanceException.f3261xd4a16037);
        }
        if (!hashSet2.add(asString.toUnicodeString())) {
            throw new PdfAConformanceException(PdfAConformanceException.f3274x73565af5);
        }
        if (pdfDictionary.containsKey(PdfName.f2972AS)) {
            throw new PdfAConformanceException(PdfAConformanceException.f3266xb7d3b283);
        }
        PdfArray asArray = pdfDictionary.getAsArray(PdfName.Order);
        if (asArray != null) {
            HashSet hashSet3 = new HashSet();
            fillOrderRecursively(asArray, hashSet3);
            if (!hashSet3.equals(hashSet)) {
                throw new PdfAConformanceException(PdfAConformanceException.ORDER_ARRAY_SHALL_CONTAIN_REFERENCES_TO_ALL_OCGS);
            }
        }
    }

    private void fillOrderRecursively(PdfArray pdfArray, Set<PdfObject> set) {
        for (PdfObject pdfObject : pdfArray) {
            if (!pdfObject.isArray()) {
                set.add(pdfObject);
            } else {
                fillOrderRecursively((PdfArray) pdfObject, set);
            }
        }
    }

    private boolean checkDefaultCS(PdfDictionary pdfDictionary, Boolean bool, PdfName pdfName, int i) {
        if (pdfDictionary == null || !pdfDictionary.containsKey(pdfName)) {
            return false;
        }
        PdfColorSpace pdfColorSpaceMakeColorSpace = PdfColorSpace.makeColorSpace(pdfDictionary.get(pdfName));
        if (pdfColorSpaceMakeColorSpace instanceof PdfDeviceCs) {
            throw new PdfAConformanceException(PdfAConformanceException.COLOR_SPACE_0_SHALL_BE_DEVICE_INDEPENDENT).setMessageParams(pdfName.toString());
        }
        if (pdfColorSpaceMakeColorSpace.getNumberOfComponents() != i) {
            throw new PdfAConformanceException(PdfAConformanceException.COLOR_SPACE_0_SHALL_HAVE_1_COMPONENTS).setMessageParams(pdfName.getValue(), Integer.valueOf(i));
        }
        checkColorSpace(pdfColorSpaceMakeColorSpace, pdfDictionary, false, bool);
        return true;
    }

    private void checkType3FontGlyphs(PdfType3Font pdfType3Font, PdfStream pdfStream) {
        Type3Glyph type3Glyph;
        for (int i = 0; i <= 255; i++) {
            FontEncoding fontEncoding = pdfType3Font.getFontEncoding();
            if (fontEncoding.canDecode(i) && (type3Glyph = pdfType3Font.getType3Glyph(fontEncoding.getUnicode(i))) != null) {
                checkFormXObject(type3Glyph.getContentStream(), pdfStream);
            }
        }
    }

    private static final class UpdateCanvasGraphicsState extends CanvasGraphicsState {
        public UpdateCanvasGraphicsState(PdfDictionary pdfDictionary) {
            updateFromExtGState(new PdfExtGState(pdfDictionary));
        }
    }
}
