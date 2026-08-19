package com.itextpdf.pdfa.checker;

import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.colors.PatternColor;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.font.PdfFont;
import com.itextpdf.kernel.font.PdfTrueTypeFont;
import com.itextpdf.kernel.font.PdfType3Font;
import com.itextpdf.kernel.pdf.PdfAConformanceLevel;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfBoolean;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfStream;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.kernel.pdf.PdfXrefTable;
import com.itextpdf.kernel.pdf.canvas.CanvasGraphicsState;
import com.itextpdf.kernel.pdf.canvas.parser.util.PdfCanvasParser;
import com.itextpdf.kernel.pdf.colorspace.PdfColorSpace;
import com.itextpdf.kernel.pdf.colorspace.PdfDeviceCs;
import com.itextpdf.kernel.pdf.colorspace.PdfPattern;
import com.itextpdf.kernel.pdf.colorspace.PdfSpecialCs;
import com.itextpdf.p017io.font.PdfEncodings;
import com.itextpdf.p017io.source.PdfTokenizer;
import com.itextpdf.p017io.source.RandomAccessFileOrArray;
import com.itextpdf.p017io.source.RandomAccessSourceFactory;
import com.itextpdf.pdfa.exceptions.PdfAConformanceException;
import com.itextpdf.pdfa.logs.PdfAConformanceLogMessageConstant;
import com.laborbook.keep.screen.calendar.utils.Constants;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class PdfA1Checker extends PdfAChecker {
    private static final int MAX_NUMBER_OF_DEVICEN_COLOR_COMPONENTS = 8;
    protected static final Set<PdfName> forbiddenAnnotations = Collections.unmodifiableSet(new HashSet(Arrays.asList(PdfName.Sound, PdfName.Movie, PdfName.FileAttachment)));
    protected static final Set<PdfName> contentAnnotations = Collections.unmodifiableSet(new HashSet(Arrays.asList(PdfName.Text, PdfName.FreeText, PdfName.Line, PdfName.Square, PdfName.Circle, PdfName.Stamp, PdfName.Ink, PdfName.Popup)));
    protected static final Set<PdfName> forbiddenActions = Collections.unmodifiableSet(new HashSet(Arrays.asList(PdfName.Launch, PdfName.Sound, PdfName.Movie, PdfName.ResetForm, PdfName.ImportData, PdfName.JavaScript, PdfName.Hide)));
    protected static final Set<PdfName> allowedNamedActions = Collections.unmodifiableSet(new HashSet(Arrays.asList(PdfName.NextPage, PdfName.PrevPage, PdfName.FirstPage, PdfName.LastPage)));
    protected static final Set<PdfName> allowedRenderingIntents = Collections.unmodifiableSet(new HashSet(Arrays.asList(PdfName.RelativeColorimetric, PdfName.AbsoluteColorimetric, PdfName.Perceptual, PdfName.Saturation)));

    private int getMaxArrayCapacity() {
        return 8191;
    }

    private int getMaxDictionaryCapacity() {
        return 4095;
    }

    @Override // com.itextpdf.pdfa.checker.PdfAChecker
    public void checkFontGlyphs(PdfFont pdfFont, PdfStream pdfStream) {
    }

    @Override // com.itextpdf.pdfa.checker.PdfAChecker
    protected void checkPageSize(PdfDictionary pdfDictionary) {
    }

    @Override // com.itextpdf.pdfa.checker.PdfAChecker
    protected void checkPageTransparency(PdfDictionary pdfDictionary, PdfDictionary pdfDictionary2) {
    }

    protected long getMaxIntegerValue() {
        return 2147483647L;
    }

    protected int getMaxNameLength() {
        return 127;
    }

    @Override // com.itextpdf.pdfa.checker.PdfAChecker
    protected long getMaxNumberOfIndirectObjects() {
        return 8388607L;
    }

    protected double getMaxRealValue() {
        return 32767.0d;
    }

    protected int getMaxStringLength() {
        return 65535;
    }

    protected long getMinIntegerValue() {
        return -2147483648L;
    }

    public PdfA1Checker(PdfAConformanceLevel pdfAConformanceLevel) {
        super(pdfAConformanceLevel);
    }

    @Override // com.itextpdf.pdfa.checker.PdfAChecker
    public void checkCanvasStack(char c) {
        if ('q' != c) {
            if ('Q' == c) {
                this.gsStackDepth--;
            }
        } else {
            int i = this.gsStackDepth + 1;
            this.gsStackDepth = i;
            if (i > 28) {
                throw new PdfAConformanceException(PdfAConformanceException.GRAPHICS_STATE_STACK_DEPTH_IS_GREATER_THAN_28);
            }
        }
    }

    @Override // com.itextpdf.pdfa.checker.PdfAChecker
    public void checkInlineImage(PdfStream pdfStream, PdfDictionary pdfDictionary) {
        PdfObject pdfObject = pdfStream.get(PdfName.Filter);
        if (pdfObject instanceof PdfName) {
            if (pdfObject.equals(PdfName.LZWDecode)) {
                throw new PdfAConformanceException(PdfAConformanceException.LZWDECODE_FILTER_IS_NOT_PERMITTED);
            }
        } else if (pdfObject instanceof PdfArray) {
            int i = 0;
            while (true) {
                PdfArray pdfArray = (PdfArray) pdfObject;
                if (i >= pdfArray.size()) {
                    break;
                } else {
                    if (pdfArray.getAsName(i).equals(PdfName.LZWDecode)) {
                        throw new PdfAConformanceException(PdfAConformanceException.LZWDECODE_FILTER_IS_NOT_PERMITTED);
                    }
                    i++;
                }
            }
        }
        checkImage(pdfStream, pdfDictionary);
    }

    @Override // com.itextpdf.pdfa.checker.PdfAChecker
    public void checkColor(Color color, PdfDictionary pdfDictionary, Boolean bool, PdfStream pdfStream) {
        checkColorSpace(color.getColorSpace(), pdfDictionary, true, bool);
        if (color instanceof PatternColor) {
            PdfPattern pattern = ((PatternColor) color).getPattern();
            if (pattern instanceof PdfPattern.Tiling) {
                checkContentStream((PdfStream) pattern.getPdfObject());
            }
        }
    }

    @Override // com.itextpdf.pdfa.checker.PdfAChecker
    public void checkColorSpace(PdfColorSpace pdfColorSpace, PdfDictionary pdfDictionary, boolean z, Boolean bool) {
        if (pdfColorSpace instanceof PdfSpecialCs.Separation) {
            pdfColorSpace = ((PdfSpecialCs.Separation) pdfColorSpace).getBaseCs();
        } else if (pdfColorSpace instanceof PdfSpecialCs.DeviceN) {
            PdfSpecialCs.DeviceN deviceN = (PdfSpecialCs.DeviceN) pdfColorSpace;
            if (deviceN.getNumberOfComponents() > 8) {
                throw new PdfAConformanceException(PdfAConformanceException.f3271x736cbd, 8);
            }
            pdfColorSpace = deviceN.getBaseCs();
        }
        if (pdfColorSpace instanceof PdfDeviceCs.Rgb) {
            if (this.cmykIsUsed) {
                throw new PdfAConformanceException(PdfAConformanceException.f3246xfe2f81a7);
            }
            this.rgbIsUsed = true;
        } else if (pdfColorSpace instanceof PdfDeviceCs.Cmyk) {
            if (this.rgbIsUsed) {
                throw new PdfAConformanceException(PdfAConformanceException.f3246xfe2f81a7);
            }
            this.cmykIsUsed = true;
        } else if (pdfColorSpace instanceof PdfDeviceCs.Gray) {
            this.grayIsUsed = true;
        }
    }

    @Override // com.itextpdf.pdfa.checker.PdfAChecker
    public void checkXrefTable(PdfXrefTable pdfXrefTable) {
        if (pdfXrefTable.getCountOfIndirectObjects() > getMaxNumberOfIndirectObjects()) {
            throw new PdfAConformanceException(PdfAConformanceException.MAXIMUM_NUMBER_OF_INDIRECT_OBJECTS_EXCEEDED);
        }
    }

    @Override // com.itextpdf.pdfa.checker.PdfAChecker
    protected Set<PdfName> getForbiddenActions() {
        return forbiddenActions;
    }

    @Override // com.itextpdf.pdfa.checker.PdfAChecker
    protected Set<PdfName> getAllowedNamedActions() {
        return allowedNamedActions;
    }

    @Override // com.itextpdf.pdfa.checker.PdfAChecker
    protected void checkColorsUsages() {
        if ((this.rgbIsUsed || this.cmykIsUsed || this.grayIsUsed) && this.pdfAOutputIntentColorSpace == null) {
            throw new PdfAConformanceException(PdfAConformanceException.f3253x59840b6b);
        }
        if (this.rgbIsUsed && !PdfAChecker.ICC_COLOR_SPACE_RGB.equals(this.pdfAOutputIntentColorSpace)) {
            throw new PdfAConformanceException(PdfAConformanceException.f3247x729bf01d);
        }
        if (this.cmykIsUsed && !PdfAChecker.ICC_COLOR_SPACE_CMYK.equals(this.pdfAOutputIntentColorSpace)) {
            throw new PdfAConformanceException(PdfAConformanceException.f3244x91de4871);
        }
    }

    @Override // com.itextpdf.pdfa.checker.PdfAChecker
    public void checkExtGState(CanvasGraphicsState canvasGraphicsState, PdfStream pdfStream) {
        if (canvasGraphicsState.getTransferFunction() != null) {
            throw new PdfAConformanceException(PdfAConformanceException.AN_EXTGSTATE_DICTIONARY_SHALL_NOT_CONTAIN_THE_TR_KEY);
        }
        PdfObject transferFunction2 = canvasGraphicsState.getTransferFunction2();
        if (transferFunction2 != null && !PdfName.Default.equals(transferFunction2)) {
            throw new PdfAConformanceException(PdfAConformanceException.f3235x46add6e4);
        }
        checkRenderingIntent(canvasGraphicsState.getRenderingIntent());
        PdfObject softMask = canvasGraphicsState.getSoftMask();
        if (softMask != null && !PdfName.None.equals(softMask)) {
            throw new PdfAConformanceException(PdfAConformanceException.THE_SMASK_KEY_IS_NOT_ALLOWED_IN_EXTGSTATE);
        }
        PdfObject blendMode = canvasGraphicsState.getBlendMode();
        if (blendMode != null && !PdfName.Normal.equals(blendMode) && !PdfName.Compatible.equals(blendMode)) {
            throw new PdfAConformanceException(PdfAConformanceException.BLEND_MODE_SHALL_HAVE_VALUE_NORMAL_OR_COMPATIBLE);
        }
        Float fValueOf = Float.valueOf(canvasGraphicsState.getStrokeOpacity());
        if (fValueOf != null && fValueOf.floatValue() != 1.0f) {
            throw new PdfAConformanceException(PdfAConformanceException.TRANSPARENCY_IS_NOT_ALLOWED_CA_SHALL_BE_EQUAL_TO_1);
        }
        Float fValueOf2 = Float.valueOf(canvasGraphicsState.getFillOpacity());
        if (fValueOf2 != null && fValueOf2.floatValue() != 1.0f) {
            throw new PdfAConformanceException(PdfAConformanceException.TRANSPARENCY_IS_NOT_ALLOWED_AND_CA_SHALL_BE_EQUAL_TO_1);
        }
    }

    @Override // com.itextpdf.pdfa.checker.PdfAChecker
    public void checkRenderingIntent(PdfName pdfName) {
        if (pdfName != null && !allowedRenderingIntents.contains(pdfName)) {
            throw new PdfAConformanceException(PdfAConformanceException.f3256x75174367);
        }
    }

    @Override // com.itextpdf.pdfa.checker.PdfAChecker
    public void checkFont(PdfFont pdfFont) {
        if (!pdfFont.isEmbedded()) {
            throw new PdfAConformanceException(PdfAConformanceException.ALL_THE_FONTS_MUST_BE_EMBEDDED_THIS_ONE_IS_NOT_0).setMessageParams(pdfFont.getFontProgram().getFontNames().getFontName());
        }
        if (pdfFont instanceof PdfTrueTypeFont) {
            PdfTrueTypeFont pdfTrueTypeFont = (PdfTrueTypeFont) pdfFont;
            if (pdfTrueTypeFont.getFontEncoding().isFontSpecific()) {
                checkSymbolicTrueTypeFont(pdfTrueTypeFont);
            } else {
                checkNonSymbolicTrueTypeFont(pdfTrueTypeFont);
            }
        }
        if (pdfFont instanceof PdfType3Font) {
            PdfDictionary asDictionary = pdfFont.getPdfObject().getAsDictionary(PdfName.CharProcs);
            Iterator<PdfName> it = asDictionary.keySet().iterator();
            while (it.hasNext()) {
                checkContentStream(asDictionary.getAsStream(it.next()));
            }
        }
    }

    @Override // com.itextpdf.pdfa.checker.PdfAChecker
    protected void checkContentStream(PdfStream pdfStream) {
        if (isFullCheckMode() || pdfStream.isModified()) {
            PdfCanvasParser pdfCanvasParser = new PdfCanvasParser(new PdfTokenizer(new RandomAccessFileOrArray(new RandomAccessSourceFactory().createSource(pdfStream.getBytes()))));
            ArrayList arrayList = new ArrayList();
            while (pdfCanvasParser.parse(arrayList).size() > 0) {
                try {
                    Iterator<PdfObject> it = arrayList.iterator();
                    while (it.hasNext()) {
                        checkContentStreamObject(it.next());
                    }
                } catch (IOException e) {
                    throw new PdfException("Cannot parse content stream.", (Throwable) e);
                }
            }
        }
    }

    @Override // com.itextpdf.pdfa.checker.PdfAChecker
    protected void checkContentStreamObject(PdfObject pdfObject) {
        byte type = pdfObject.getType();
        if (type == 1) {
            PdfArray pdfArray = (PdfArray) pdfObject;
            checkPdfArray(pdfArray);
            Iterator<PdfObject> it = pdfArray.iterator();
            while (it.hasNext()) {
                checkContentStreamObject(it.next());
            }
            return;
        }
        if (type != 3) {
            if (type == 6) {
                checkPdfName((PdfName) pdfObject);
                return;
            } else {
                if (type != 8) {
                    if (type != 10) {
                        return;
                    }
                    checkPdfString((PdfString) pdfObject);
                    return;
                }
                checkPdfNumber((PdfNumber) pdfObject);
                return;
            }
        }
        PdfDictionary pdfDictionary = (PdfDictionary) pdfObject;
        checkPdfDictionary(pdfDictionary);
        for (PdfName pdfName : pdfDictionary.keySet()) {
            checkPdfName(pdfName);
            checkPdfObject(pdfDictionary.get(pdfName, false));
        }
        Iterator<PdfObject> it2 = pdfDictionary.values().iterator();
        while (it2.hasNext()) {
            checkContentStreamObject(it2.next());
        }
    }

    @Override // com.itextpdf.pdfa.checker.PdfAChecker
    protected void checkNonSymbolicTrueTypeFont(PdfTrueTypeFont pdfTrueTypeFont) {
        String baseEncoding = pdfTrueTypeFont.getFontEncoding().getBaseEncoding();
        if ((!"Cp1252".equals(baseEncoding) && !PdfEncodings.MACROMAN.equals(baseEncoding)) || pdfTrueTypeFont.getFontEncoding().hasDifferences()) {
            throw new PdfAConformanceException(PdfAConformanceException.f3233xc9ab85b4, pdfTrueTypeFont);
        }
    }

    @Override // com.itextpdf.pdfa.checker.PdfAChecker
    protected void checkSymbolicTrueTypeFont(PdfTrueTypeFont pdfTrueTypeFont) {
        if (pdfTrueTypeFont.getFontEncoding().hasDifferences()) {
            throw new PdfAConformanceException(PdfAConformanceException.ALL_SYMBOLIC_TRUE_TYPE_FONTS_SHALL_NOT_SPECIFY_ENCODING);
        }
    }

    @Override // com.itextpdf.pdfa.checker.PdfAChecker
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
        if (pdfStream.containsKey(PdfName.SMask) && !PdfName.None.equals(pdfStream.getAsName(PdfName.SMask))) {
            throw new PdfAConformanceException(PdfAConformanceException.THE_SMASK_KEY_IS_NOT_ALLOWED_IN_XOBJECTS);
        }
    }

    @Override // com.itextpdf.pdfa.checker.PdfAChecker
    protected void checkFormXObject(PdfStream pdfStream) {
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
        if (pdfStream.containsKey(PdfName.SMask) && !PdfName.None.equals(pdfStream.getAsName(PdfName.SMask))) {
            throw new PdfAConformanceException(PdfAConformanceException.THE_SMASK_KEY_IS_NOT_ALLOWED_IN_XOBJECTS);
        }
        if (isContainsTransparencyGroup(pdfStream)) {
            throw new PdfAConformanceException(PdfAConformanceException.f3241x1337f931);
        }
        checkResources(pdfStream.getAsDictionary(PdfName.Resources));
        checkContentStream(pdfStream);
    }

    @Override // com.itextpdf.pdfa.checker.PdfAChecker
    protected void checkLogicalStructure(PdfDictionary pdfDictionary) {
        if (checkStructure(this.conformanceLevel)) {
            PdfDictionary asDictionary = pdfDictionary.getAsDictionary(PdfName.MarkInfo);
            if (asDictionary == null || asDictionary.getAsBoolean(PdfName.Marked) == null || !asDictionary.getAsBoolean(PdfName.Marked).getValue()) {
                throw new PdfAConformanceException(PdfAConformanceException.f3239xe4fc9e16);
            }
            if (pdfDictionary.containsKey(PdfName.Lang)) {
                return;
            }
            LoggerFactory.getLogger((Class<?>) PdfAChecker.class).warn(PdfAConformanceLogMessageConstant.CATALOG_SHOULD_CONTAIN_LANG_ENTRY);
        }
    }

    @Override // com.itextpdf.pdfa.checker.PdfAChecker
    protected void checkMetaData(PdfDictionary pdfDictionary) {
        if (!pdfDictionary.containsKey(PdfName.Metadata)) {
            throw new PdfAConformanceException(PdfAConformanceException.A_CATALOG_DICTIONARY_SHALL_CONTAIN_METADATA_ENTRY);
        }
    }

    @Override // com.itextpdf.pdfa.checker.PdfAChecker
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
    }

    @Override // com.itextpdf.pdfa.checker.PdfAChecker
    protected void checkPdfNumber(PdfNumber pdfNumber) {
        if (pdfNumber.hasDecimalPoint()) {
            if (Math.abs(pdfNumber.longValue()) > getMaxRealValue()) {
                throw new PdfAConformanceException(PdfAConformanceException.REAL_NUMBER_IS_OUT_OF_RANGE);
            }
        } else if (pdfNumber.longValue() > getMaxIntegerValue() || pdfNumber.longValue() < getMinIntegerValue()) {
            throw new PdfAConformanceException(PdfAConformanceException.INTEGER_NUMBER_IS_OUT_OF_RANGE);
        }
    }

    @Override // com.itextpdf.pdfa.checker.PdfAChecker
    protected void checkPdfArray(PdfArray pdfArray) {
        if (pdfArray.size() > getMaxArrayCapacity()) {
            throw new PdfAConformanceException(PdfAConformanceException.MAXIMUM_ARRAY_CAPACITY_IS_EXCEEDED);
        }
    }

    @Override // com.itextpdf.pdfa.checker.PdfAChecker
    protected void checkPdfDictionary(PdfDictionary pdfDictionary) {
        if (pdfDictionary.size() > getMaxDictionaryCapacity()) {
            throw new PdfAConformanceException(PdfAConformanceException.MAXIMUM_DICTIONARY_CAPACITY_IS_EXCEEDED);
        }
    }

    @Override // com.itextpdf.pdfa.checker.PdfAChecker
    protected void checkPdfStream(PdfStream pdfStream) {
        checkPdfDictionary(pdfStream);
        if (pdfStream.containsKey(PdfName.f3004F) || pdfStream.containsKey(PdfName.FFilter) || pdfStream.containsKey(PdfName.FDecodeParams)) {
            throw new PdfAConformanceException(PdfAConformanceException.f3265x774c9db);
        }
        PdfObject pdfObject = pdfStream.get(PdfName.Filter);
        if (pdfObject instanceof PdfName) {
            if (pdfObject.equals(PdfName.LZWDecode)) {
                throw new PdfAConformanceException(PdfAConformanceException.LZWDECODE_FILTER_IS_NOT_PERMITTED);
            }
        } else if (pdfObject instanceof PdfArray) {
            Iterator<PdfObject> it = ((PdfArray) pdfObject).iterator();
            while (it.hasNext()) {
                if (it.next().equals(PdfName.LZWDecode)) {
                    throw new PdfAConformanceException(PdfAConformanceException.LZWDECODE_FILTER_IS_NOT_PERMITTED);
                }
            }
        }
    }

    @Override // com.itextpdf.pdfa.checker.PdfAChecker
    protected void checkPdfName(PdfName pdfName) {
        if (pdfName.getValue().length() > getMaxNameLength()) {
            throw new PdfAConformanceException(PdfAConformanceException.PDF_NAME_IS_TOO_LONG);
        }
    }

    @Override // com.itextpdf.pdfa.checker.PdfAChecker
    protected void checkPdfString(PdfString pdfString) {
        if (pdfString.getValueBytes().length > getMaxStringLength()) {
            throw new PdfAConformanceException(PdfAConformanceException.PDF_STRING_IS_TOO_LONG);
        }
    }

    @Override // com.itextpdf.pdfa.checker.PdfAChecker
    protected void checkFileSpec(PdfDictionary pdfDictionary) {
        if (pdfDictionary.containsKey(PdfName.f3001EF)) {
            throw new PdfAConformanceException(PdfAConformanceException.FILE_SPECIFICATION_DICTIONARY_SHALL_NOT_CONTAIN_THE_EF_KEY);
        }
    }

    @Override // com.itextpdf.pdfa.checker.PdfAChecker
    protected void checkAnnotation(PdfDictionary pdfDictionary) {
        PdfName asName = pdfDictionary.getAsName(PdfName.Subtype);
        if (asName == null) {
            throw new PdfAConformanceException(PdfAConformanceException.ANNOTATION_TYPE_0_IS_NOT_PERMITTED).setMessageParams(Constants.ATTENDANCE_STATUS_NULL);
        }
        if (forbiddenAnnotations.contains(asName)) {
            throw new PdfAConformanceException(PdfAConformanceException.ANNOTATION_TYPE_0_IS_NOT_PERMITTED).setMessageParams(asName.getValue());
        }
        if (pdfDictionary.getAsNumber(PdfName.f2983CA) != null && r1.floatValue() != 1.0d) {
            throw new PdfAConformanceException(PdfAConformanceException.f3234x1362ef29);
        }
        if (!pdfDictionary.containsKey(PdfName.f3004F)) {
            throw new PdfAConformanceException(PdfAConformanceException.AN_ANNOTATION_DICTIONARY_SHALL_CONTAIN_THE_F_KEY);
        }
        int iIntValue = pdfDictionary.getAsInt(PdfName.f3004F).intValue();
        if (!checkFlag(iIntValue, 4) || checkFlag(iIntValue, 2) || checkFlag(iIntValue, 1) || checkFlag(iIntValue, 32)) {
            throw new PdfAConformanceException(PdfAConformanceException.f3269x4ce094c8);
        }
        if (asName.equals(PdfName.Text) && (!checkFlag(iIntValue, 8) || !checkFlag(iIntValue, 16))) {
            throw new PdfAConformanceException(PdfAConformanceLogMessageConstant.f3276xba373e7c);
        }
        if ((pdfDictionary.containsKey(PdfName.f2980C) || pdfDictionary.containsKey(PdfName.f3020IC)) && !PdfAChecker.ICC_COLOR_SPACE_RGB.equals(this.pdfAOutputIntentColorSpace)) {
            throw new PdfAConformanceException(PdfAConformanceException.f3243x93667b7);
        }
        PdfDictionary asDictionary = pdfDictionary.getAsDictionary(PdfName.f2971AP);
        if (asDictionary != null) {
            if (asDictionary.containsKey(PdfName.f2992D) || asDictionary.containsKey(PdfName.f3056R)) {
                throw new PdfAConformanceException(PdfAConformanceException.f3237x5f64bc25);
            }
            if (PdfName.Widget.equals(pdfDictionary.getAsName(PdfName.Subtype)) && PdfName.Btn.equals(pdfDictionary.getAsName(PdfName.f3007FT))) {
                if (asDictionary.getAsDictionary(PdfName.f3037N) == null) {
                    throw new PdfAConformanceException(PdfAConformanceException.N_KEY_SHALL_BE_APPEARANCE_SUBDICTIONARY);
                }
            } else if (asDictionary.getAsStream(PdfName.f3037N) == null) {
                throw new PdfAConformanceException(PdfAConformanceException.f3237x5f64bc25);
            }
            checkResourcesOfAppearanceStreams(asDictionary);
        }
        if (PdfName.Widget.equals(asName) && (pdfDictionary.containsKey(PdfName.f2968AA) || pdfDictionary.containsKey(PdfName.f2967A))) {
            throw new PdfAConformanceException(PdfAConformanceException.f3275x1eeb393f);
        }
        if (pdfDictionary.containsKey(PdfName.f2968AA)) {
            throw new PdfAConformanceException(PdfAConformanceException.AN_ANNOTATION_DICTIONARY_SHALL_NOT_CONTAIN_AA_KEY);
        }
        if (checkStructure(this.conformanceLevel) && contentAnnotations.contains(asName) && !pdfDictionary.containsKey(PdfName.Contents)) {
            throw new PdfAConformanceException(PdfAConformanceException.ANNOTATION_OF_TYPE_0_SHOULD_HAVE_CONTENTS_KEY).setMessageParams(asName.getValue());
        }
    }

    @Override // com.itextpdf.pdfa.checker.PdfAChecker
    protected void checkForm(PdfDictionary pdfDictionary) {
        if (pdfDictionary == null) {
            return;
        }
        PdfBoolean asBoolean = pdfDictionary.getAsBoolean(PdfName.NeedAppearances);
        if (asBoolean != null && asBoolean.getValue()) {
            throw new PdfAConformanceException(PdfAConformanceException.f3258x9609c9f4);
        }
        checkResources(pdfDictionary.getAsDictionary(PdfName.f2995DR));
        PdfArray asArray = pdfDictionary.getAsArray(PdfName.Fields);
        if (asArray != null) {
            for (PdfDictionary pdfDictionary2 : getFormFields(asArray)) {
                if (pdfDictionary2.containsKey(PdfName.f2967A) || pdfDictionary2.containsKey(PdfName.f2968AA)) {
                    throw new PdfAConformanceException(PdfAConformanceException.f3275x1eeb393f);
                }
                checkResources(pdfDictionary2.getAsDictionary(PdfName.f2995DR));
            }
        }
    }

    @Override // com.itextpdf.pdfa.checker.PdfAChecker
    protected void checkAction(PdfDictionary pdfDictionary) {
        PdfName asName;
        if (isAlreadyChecked(pdfDictionary)) {
            return;
        }
        PdfName asName2 = pdfDictionary.getAsName(PdfName.f3065S);
        if (getForbiddenActions().contains(asName2)) {
            throw new PdfAConformanceException(PdfAConformanceException._0_ACTIONS_ARE_NOT_ALLOWED).setMessageParams(asName2.getValue());
        }
        if (asName2.equals(PdfName.Named) && (asName = pdfDictionary.getAsName(PdfName.f3037N)) != null && !getAllowedNamedActions().contains(asName)) {
            throw new PdfAConformanceException(PdfAConformanceException.NAMED_ACTION_TYPE_0_IS_NOT_ALLOWED).setMessageParams(asName.getValue());
        }
        if (asName2.equals(PdfName.SetState) || asName2.equals(PdfName.NoOp)) {
            throw new PdfAConformanceException(PdfAConformanceException.DEPRECATED_SETSTATE_AND_NOOP_ACTIONS_ARE_NOT_ALLOWED);
        }
    }

    @Override // com.itextpdf.pdfa.checker.PdfAChecker
    protected void checkCatalogValidEntries(PdfDictionary pdfDictionary) {
        if (pdfDictionary.containsKey(PdfName.f2968AA)) {
            throw new PdfAConformanceException(PdfAConformanceException.A_CATALOG_DICTIONARY_SHALL_NOT_CONTAIN_AA_ENTRY);
        }
        if (pdfDictionary.containsKey(PdfName.OCProperties)) {
            throw new PdfAConformanceException(PdfAConformanceException.A_CATALOG_DICTIONARY_SHALL_NOT_CONTAIN_OCPROPERTIES_KEY);
        }
        if (pdfDictionary.containsKey(PdfName.Names) && pdfDictionary.getAsDictionary(PdfName.Names).containsKey(PdfName.EmbeddedFiles)) {
            throw new PdfAConformanceException(PdfAConformanceException.A_NAME_DICTIONARY_SHALL_NOT_CONTAIN_THE_EMBEDDED_FILES_KEY);
        }
    }

    @Override // com.itextpdf.pdfa.checker.PdfAChecker
    protected void checkPageObject(PdfDictionary pdfDictionary, PdfDictionary pdfDictionary2) {
        PdfDictionary asDictionary = pdfDictionary.getAsDictionary(PdfName.f2968AA);
        if (asDictionary != null) {
            Iterator<PdfName> it = asDictionary.keySet().iterator();
            while (it.hasNext()) {
                checkAction(asDictionary.getAsDictionary(it.next()));
            }
        }
        if (isContainsTransparencyGroup(pdfDictionary)) {
            throw new PdfAConformanceException(PdfAConformanceException.f3242x1a5b53fc);
        }
    }

    @Override // com.itextpdf.pdfa.checker.PdfAChecker
    protected void checkTrailer(PdfDictionary pdfDictionary) {
        if (pdfDictionary.containsKey(PdfName.Encrypt)) {
            throw new PdfAConformanceException(PdfAConformanceException.KEYWORD_ENCRYPT_SHALL_NOT_BE_USED_IN_THE_TRAILER_DICTIONARY);
        }
    }

    protected PdfArray getFormFields(PdfArray pdfArray) {
        PdfArray pdfArray2 = new PdfArray();
        for (PdfObject pdfObject : pdfArray) {
            PdfArray asArray = ((PdfDictionary) pdfObject).getAsArray(PdfName.Kids);
            pdfArray2.add(pdfObject);
            if (asArray != null) {
                pdfArray2.addAll(getFormFields(asArray));
            }
        }
        return pdfArray2;
    }
}
