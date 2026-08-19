package com.itextpdf.kernel.font;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.p017io.font.AdobeGlyphList;
import com.itextpdf.p017io.font.FontEncoding;
import com.itextpdf.p017io.font.FontMetrics;
import com.itextpdf.p017io.font.FontNames;
import com.itextpdf.p017io.font.constants.FontDescriptorFlags;
import com.itextpdf.p017io.font.otf.Glyph;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import java.util.Map;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class PdfType3Font extends PdfSimpleFont<Type3Font> {
    private static final double[] DEFAULT_FONT_MATRIX = {0.001d, 0.0d, 0.0d, 0.001d, 0.0d, 0.0d};
    private static final int FONT_BBOX_LLX = 0;
    private static final int FONT_BBOX_LLY = 1;
    private static final int FONT_BBOX_URX = 2;
    private static final int FONT_BBOX_URY = 3;
    private double[] fontMatrix;
    private double glyphSpaceNormalizationFactor;

    @Override // com.itextpdf.kernel.font.PdfSimpleFont
    protected void addFontStream(PdfDictionary pdfDictionary) {
    }

    @Override // com.itextpdf.kernel.font.PdfFont
    public boolean isEmbedded() {
        return true;
    }

    @Override // com.itextpdf.kernel.font.PdfFont
    public boolean isSubset() {
        return true;
    }

    private double[] getFontMatrix() {
        return this.fontMatrix;
    }

    PdfType3Font(PdfDocument pdfDocument, boolean z) {
        this.fontMatrix = DEFAULT_FONT_MATRIX;
        makeIndirect(pdfDocument);
        this.subset = true;
        this.embedded = true;
        this.fontProgram = new Type3Font(z);
        this.fontEncoding = FontEncoding.createEmptyFontEncoding();
        setGlyphSpaceNormalizationFactor(1.0d);
    }

    PdfType3Font(PdfDocument pdfDocument, String str, String str2, boolean z) {
        this(pdfDocument, z);
        ((Type3Font) this.fontProgram).setFontName(str);
        ((Type3Font) this.fontProgram).setFontFamily(str2);
        setGlyphSpaceNormalizationFactor(1.0d);
    }

    PdfType3Font(PdfDictionary pdfDictionary) {
        int i;
        super(pdfDictionary);
        this.fontMatrix = DEFAULT_FONT_MATRIX;
        this.subset = true;
        this.embedded = true;
        this.fontProgram = new Type3Font(false);
        this.fontEncoding = DocFontEncoding.createDocFontEncoding(pdfDictionary.get(PdfName.Encoding), this.toUnicode);
        double[] fontMatrix = readFontMatrix();
        double[] fontBBox = readFontBBox();
        double[] widths = readWidths(pdfDictionary);
        setGlyphSpaceNormalizationFactor(fontMatrix[0] * 1000.0d);
        PdfDictionary asDictionary = pdfDictionary.getAsDictionary(PdfName.CharProcs);
        PdfDictionary asDictionary2 = pdfDictionary.getAsDictionary(PdfName.Encoding);
        PdfArray asArray = asDictionary2 != null ? asDictionary2.getAsArray(PdfName.Differences) : null;
        if (asDictionary == null || asArray == null) {
            LoggerFactory.getLogger(getClass()).warn(IoLogMessageConstant.TYPE3_FONT_INITIALIZATION_ISSUE);
        }
        fillFontDescriptor(pdfDictionary.getAsDictionary(PdfName.FontDescriptor));
        normalize1000UnitsToGlyphSpaceUnits(fontMatrix);
        normalizeGlyphSpaceUnitsTo1000Units(fontBBox);
        normalizeGlyphSpaceUnitsTo1000Units(widths);
        int iInitializeUsedGlyphs = initializeUsedGlyphs(pdfDictionary);
        this.fontMatrix = fontMatrix;
        initializeFontBBox(fontBBox);
        initializeTypoAscenderDescender(fontBBox);
        int[] iArr = new int[256];
        for (int i2 = 0; i2 < widths.length && (i = iInitializeUsedGlyphs + i2) < 256; i2++) {
            iArr[i] = (int) widths[i2];
        }
        addGlyphsFromDifferences(asArray, asDictionary, iArr);
        addGlyphsFromCharProcs(asDictionary, iArr);
    }

    public void setFontName(String str) {
        ((Type3Font) this.fontProgram).setFontName(str);
    }

    public void setFontFamily(String str) {
        ((Type3Font) this.fontProgram).setFontFamily(str);
    }

    public void setFontWeight(int i) {
        ((Type3Font) this.fontProgram).setFontWeight(i);
    }

    public void setCapHeight(int i) {
        ((Type3Font) this.fontProgram).setCapHeight(i);
    }

    public void setItalicAngle(int i) {
        ((Type3Font) this.fontProgram).setItalicAngle(i);
    }

    public void setFontStretch(String str) {
        ((Type3Font) this.fontProgram).setFontStretch(str);
    }

    public void setPdfFontFlags(int i) {
        ((Type3Font) this.fontProgram).setPdfFontFlags(i);
    }

    public Type3Glyph getType3Glyph(int i) {
        return ((Type3Font) getFontProgram()).getType3Glyph(i);
    }

    public int getNumberOfGlyphs() {
        return ((Type3Font) getFontProgram()).getNumberOfGlyphs();
    }

    public Type3Glyph addGlyph(char c, int i, int i2, int i3, int i4, int i5) {
        Type3Glyph type3Glyph = getType3Glyph(c);
        if (type3Glyph != null) {
            return type3Glyph;
        }
        int firstEmptyCode = getFirstEmptyCode();
        Type3Glyph type3Glyph2 = new Type3Glyph(getDocument(), i, i2, i3, i4, i5, ((Type3Font) getFontProgram()).isColorized());
        ((Type3Font) getFontProgram()).addGlyph(firstEmptyCode, c, i, new int[]{i2, i3, i4, i5}, type3Glyph2);
        this.fontEncoding.addSymbol(firstEmptyCode, c);
        if (!((Type3Font) getFontProgram()).isColorized()) {
            if (this.fontProgram.countOfGlyphs() == 0) {
                this.fontProgram.getFontMetrics().setBbox(i2, i3, i4, i5);
            } else {
                int[] bbox = this.fontProgram.getFontMetrics().getBbox();
                this.fontProgram.getFontMetrics().setBbox(Math.min(bbox[0], i2), Math.min(bbox[1], i3), Math.max(bbox[2], i4), Math.max(bbox[3], i5));
            }
        }
        return type3Glyph2;
    }

    @Override // com.itextpdf.kernel.font.PdfFont
    public Glyph getGlyph(int i) {
        if (!this.fontEncoding.canEncode(i) && i >= 33) {
            return null;
        }
        Glyph glyph = getFontProgram().getGlyph(this.fontEncoding.getUnicodeDifference(i));
        if (glyph != null) {
            return glyph;
        }
        Glyph glyph2 = this.notdefGlyphs.get(Integer.valueOf(i));
        if (glyph2 != null) {
            return glyph2;
        }
        Glyph glyph3 = new Glyph(-1, 0, i);
        this.notdefGlyphs.put(Integer.valueOf(i), glyph3);
        return glyph3;
    }

    @Override // com.itextpdf.kernel.font.PdfFont
    public boolean containsGlyph(int i) {
        return (this.fontEncoding.canEncode(i) || i < 33) && getFontProgram().getGlyph(this.fontEncoding.getUnicodeDifference(i)) != null;
    }

    @Override // com.itextpdf.kernel.font.PdfFont, com.itextpdf.kernel.pdf.PdfObjectWrapper
    public void flush() {
        if (isFlushed()) {
            return;
        }
        ensureUnderlyingObjectHasIndirectReference();
        flushFontData();
        super.flush();
    }

    @Override // com.itextpdf.kernel.font.PdfSimpleFont, com.itextpdf.kernel.font.PdfFont
    protected PdfDictionary getFontDescriptor(String str) {
        if (str != null && str.length() > 0) {
            PdfDictionary pdfDictionary = new PdfDictionary();
            makeObjectIndirect(pdfDictionary);
            pdfDictionary.put(PdfName.Type, PdfName.FontDescriptor);
            FontMetrics fontMetrics = this.fontProgram.getFontMetrics();
            pdfDictionary.put(PdfName.CapHeight, new PdfNumber(normalize1000UnitsToGlyphSpaceUnits(fontMetrics.getCapHeight())));
            pdfDictionary.put(PdfName.ItalicAngle, new PdfNumber(fontMetrics.getItalicAngle()));
            FontNames fontNames = this.fontProgram.getFontNames();
            pdfDictionary.put(PdfName.FontWeight, new PdfNumber(fontNames.getFontWeight()));
            pdfDictionary.put(PdfName.FontName, new PdfName(str));
            if (fontNames.getFamilyName() != null && fontNames.getFamilyName().length > 0 && fontNames.getFamilyName()[0].length >= 4) {
                pdfDictionary.put(PdfName.FontFamily, new PdfString(fontNames.getFamilyName()[0][3]));
            }
            pdfDictionary.put(PdfName.Flags, new PdfNumber((this.fontProgram.getPdfFontFlags() & (~(FontDescriptorFlags.Symbolic | FontDescriptorFlags.Nonsymbolic))) | (this.fontEncoding.isFontSpecific() ? FontDescriptorFlags.Symbolic : FontDescriptorFlags.Nonsymbolic)));
            return pdfDictionary;
        }
        if (((PdfDictionary) getPdfObject()).getIndirectReference() == null || !((PdfDictionary) getPdfObject()).getIndirectReference().getDocument().isTagged()) {
            return null;
        }
        LoggerFactory.getLogger((Class<?>) PdfType3Font.class).warn(IoLogMessageConstant.TYPE3_FONT_ISSUE_TAGGED_PDF);
        return null;
    }

    @Override // com.itextpdf.kernel.font.PdfSimpleFont
    protected PdfArray buildWidthsArray(int i, int i2) {
        double[] dArr = new double[(i2 - i) + 1];
        for (int i3 = i; i3 <= i2; i3++) {
            int i4 = i3 - i;
            if (this.usedGlyphs[i3] == 0) {
                dArr[i4] = 0.0d;
            } else {
                int unicode = getFontEncoding().getUnicode(i3);
                dArr[i4] = (unicode > -1 ? getGlyph(unicode) : getFontProgram().getGlyphByCode(i3)) != null ? r3.getWidth() : 0.0d;
            }
        }
        normalize1000UnitsToGlyphSpaceUnits(dArr);
        return new PdfArray(dArr);
    }

    protected PdfDocument getDocument() {
        return getPdfObject().getIndirectReference().getDocument();
    }

    final double getGlyphSpaceNormalizationFactor() {
        return this.glyphSpaceNormalizationFactor;
    }

    final void setGlyphSpaceNormalizationFactor(double d) {
        this.glyphSpaceNormalizationFactor = d;
    }

    private void addGlyphsFromDifferences(PdfArray pdfArray, PdfDictionary pdfDictionary, int[] iArr) {
        if (pdfArray == null || pdfDictionary == null) {
            return;
        }
        int iIntValue = 0;
        for (int i = 0; i < pdfArray.size(); i++) {
            PdfObject pdfObject = pdfArray.get(i);
            if (pdfObject.isNumber()) {
                iIntValue = ((PdfNumber) pdfObject).intValue();
            } else if (iIntValue <= 255) {
                String value = ((PdfName) pdfObject).getValue();
                int unicode = this.fontEncoding.getUnicode(iIntValue);
                if (getFontProgram().getGlyphByCode(iIntValue) == null && pdfDictionary.containsKey(new PdfName(value))) {
                    this.fontEncoding.setDifference(iIntValue, value);
                    ((Type3Font) getFontProgram()).addGlyph(iIntValue, unicode, iArr[iIntValue], null, new Type3Glyph(pdfDictionary.getAsStream(new PdfName(value)), getDocument()));
                }
                iIntValue++;
            }
        }
    }

    private int getFirstEmptyCode() {
        for (int i = 1; i <= 255; i++) {
            if (!this.fontEncoding.canDecode(i) && this.fontProgram.getGlyphByCode(i) == null) {
                return i;
            }
        }
        return -1;
    }

    private void addGlyphsFromCharProcs(PdfDictionary pdfDictionary, int[] iArr) {
        Map<Integer, Integer> mapCreateReverseMapping;
        int i;
        int iIntValue;
        if (pdfDictionary == null) {
            return;
        }
        if (getToUnicode() != null) {
            try {
                mapCreateReverseMapping = getToUnicode().createReverseMapping();
            } catch (Exception unused) {
                mapCreateReverseMapping = null;
            }
        } else {
            mapCreateReverseMapping = null;
        }
        for (PdfName pdfName : pdfDictionary.keySet()) {
            int iNameToUnicode = AdobeGlyphList.nameToUnicode(pdfName.getValue());
            if (this.fontEncoding.canEncode(iNameToUnicode)) {
                iIntValue = this.fontEncoding.convertToByte(iNameToUnicode);
            } else if (mapCreateReverseMapping != null && mapCreateReverseMapping.containsKey(Integer.valueOf(iNameToUnicode))) {
                iIntValue = mapCreateReverseMapping.get(Integer.valueOf(iNameToUnicode)).intValue();
            } else {
                i = -1;
                if (i == -1 && getFontProgram().getGlyphByCode(i) == null) {
                    ((Type3Font) getFontProgram()).addGlyph(i, iNameToUnicode, iArr[i], null, new Type3Glyph(pdfDictionary.getAsStream(pdfName), getDocument()));
                }
            }
            i = iIntValue;
            if (i == -1) {
            }
        }
    }

    private void flushFontData() {
        if (((Type3Font) getFontProgram()).getNumberOfGlyphs() < 1) {
            throw new PdfException(KernelExceptionMessageConstant.NO_GLYPHS_DEFINED_FOR_TYPE_3_FONT);
        }
        PdfDictionary pdfDictionary = new PdfDictionary();
        for (int i = 0; i <= 255; i++) {
            Type3Glyph type3Glyph = this.fontEncoding.canDecode(i) ? getType3Glyph(this.fontEncoding.getUnicode(i)) : null;
            if (type3Glyph == null) {
                type3Glyph = ((Type3Font) getFontProgram()).getType3GlyphByCode(i);
            }
            if (type3Glyph != null) {
                pdfDictionary.put(new PdfName(this.fontEncoding.getDifference(i)), type3Glyph.getContentStream());
                type3Glyph.getContentStream().flush();
            }
        }
        getPdfObject().put(PdfName.CharProcs, pdfDictionary);
        double[] fontMatrix = getFontMatrix();
        int[] bbox = getFontProgram().getFontMetrics().getBbox();
        double[] dArr = {bbox[0], bbox[1], bbox[2], bbox[3]};
        normalizeGlyphSpaceUnitsTo1000Units(fontMatrix);
        normalize1000UnitsToGlyphSpaceUnits(dArr);
        getPdfObject().put(PdfName.FontMatrix, new PdfArray(fontMatrix));
        getPdfObject().put(PdfName.FontBBox, new PdfArray(dArr));
        super.flushFontData(this.fontProgram.getFontNames().getFontName(), PdfName.Type3);
        makeObjectIndirect(getPdfObject().get(PdfName.Widths));
        getPdfObject().remove(PdfName.BaseFont);
    }

    private double[] readWidths(PdfDictionary pdfDictionary) {
        PdfArray asArray = pdfDictionary.getAsArray(PdfName.Widths);
        if (asArray == null) {
            throw new PdfException(KernelExceptionMessageConstant.MISSING_REQUIRED_FIELD_IN_FONT_DICTIONARY).setMessageParams(PdfName.Widths);
        }
        double[] dArr = new double[asArray.size()];
        for (int i = 0; i < asArray.size(); i++) {
            PdfNumber asNumber = asArray.getAsNumber(i);
            dArr[i] = asNumber != null ? asNumber.doubleValue() : 0.0d;
        }
        return dArr;
    }

    private int initializeUsedGlyphs(PdfDictionary pdfDictionary) {
        int iNormalizeFirstLastChar = normalizeFirstLastChar(pdfDictionary.getAsNumber(PdfName.FirstChar), 0);
        int iNormalizeFirstLastChar2 = normalizeFirstLastChar(pdfDictionary.getAsNumber(PdfName.LastChar), 255);
        for (int i = iNormalizeFirstLastChar; i <= iNormalizeFirstLastChar2; i++) {
            this.usedGlyphs[i] = 1;
        }
        return iNormalizeFirstLastChar;
    }

    private double[] readFontBBox() {
        PdfArray asArray = getPdfObject().getAsArray(PdfName.FontBBox);
        if (asArray != null) {
            return new double[]{asArray.getAsNumber(0).doubleValue(), asArray.getAsNumber(1).doubleValue(), asArray.getAsNumber(2).doubleValue(), asArray.getAsNumber(3).doubleValue()};
        }
        return new double[]{0.0d, 0.0d, 0.0d, 0.0d};
    }

    private double[] readFontMatrix() {
        PdfArray asArray = getPdfObject().getAsArray(PdfName.FontMatrix);
        if (asArray == null) {
            throw new PdfException(KernelExceptionMessageConstant.MISSING_REQUIRED_FIELD_IN_FONT_DICTIONARY).setMessageParams(PdfName.FontMatrix);
        }
        double[] dArr = new double[6];
        for (int i = 0; i < asArray.size(); i++) {
            dArr[i] = ((PdfNumber) asArray.get(i)).getValue();
        }
        return dArr;
    }

    private void initializeTypoAscenderDescender(double[] dArr) {
        ((Type3Font) this.fontProgram).setTypoAscender((int) dArr[3]);
        ((Type3Font) this.fontProgram).setTypoDescender((int) dArr[1]);
    }

    private void initializeFontBBox(double[] dArr) {
        this.fontProgram.getFontMetrics().setBbox((int) dArr[0], (int) dArr[1], (int) dArr[2], (int) dArr[3]);
    }

    private void normalizeGlyphSpaceUnitsTo1000Units(double[] dArr) {
        for (int i = 0; i < dArr.length; i++) {
            dArr[i] = normalizeGlyphSpaceUnitsTo1000Units(dArr[i]);
        }
    }

    private double normalizeGlyphSpaceUnitsTo1000Units(double d) {
        return d * getGlyphSpaceNormalizationFactor();
    }

    private void normalize1000UnitsToGlyphSpaceUnits(double[] dArr) {
        for (int i = 0; i < dArr.length; i++) {
            dArr[i] = normalize1000UnitsToGlyphSpaceUnits(dArr[i]);
        }
    }

    private double normalize1000UnitsToGlyphSpaceUnits(double d) {
        return d / getGlyphSpaceNormalizationFactor();
    }

    private void fillFontDescriptor(PdfDictionary pdfDictionary) {
        if (pdfDictionary == null) {
            return;
        }
        PdfNumber asNumber = pdfDictionary.getAsNumber(PdfName.CapHeight);
        if (asNumber != null) {
            setCapHeight((int) normalizeGlyphSpaceUnitsTo1000Units(asNumber.doubleValue()));
        }
        PdfNumber asNumber2 = pdfDictionary.getAsNumber(PdfName.ItalicAngle);
        if (asNumber2 != null) {
            setItalicAngle(asNumber2.intValue());
        }
        PdfNumber asNumber3 = pdfDictionary.getAsNumber(PdfName.FontWeight);
        if (asNumber3 != null) {
            setFontWeight(asNumber3.intValue());
        }
        PdfName asName = pdfDictionary.getAsName(PdfName.FontStretch);
        if (asName != null) {
            setFontStretch(asName.getValue());
        }
        PdfName asName2 = pdfDictionary.getAsName(PdfName.FontName);
        if (asName2 != null) {
            setFontName(asName2.getValue());
        }
        PdfString asString = pdfDictionary.getAsString(PdfName.FontFamily);
        if (asString != null) {
            setFontFamily(asString.getValue());
        }
    }

    private int normalizeFirstLastChar(PdfNumber pdfNumber, int i) {
        int iIntValue;
        return (pdfNumber != null && (iIntValue = pdfNumber.intValue()) >= 0 && iIntValue <= 255) ? iIntValue : i;
    }
}
