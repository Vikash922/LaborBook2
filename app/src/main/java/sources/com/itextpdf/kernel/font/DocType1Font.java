package com.itextpdf.kernel.font;

import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfStream;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.p017io.font.FontEncoding;
import com.itextpdf.p017io.font.FontProgramFactory;
import com.itextpdf.p017io.font.Type1Font;
import com.itextpdf.p017io.font.cmap.CMapToUnicode;
import com.itextpdf.p017io.font.otf.Glyph;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
class DocType1Font extends Type1Font implements IDocFontProgram {
    private PdfStream fontFile;
    private PdfName fontFileName;
    private int missingWidth;
    private PdfName subtype;

    @Override // com.itextpdf.p017io.font.Type1Font, com.itextpdf.p017io.font.FontProgram
    public boolean isBuiltWith(String str) {
        return false;
    }

    private DocType1Font(String str) {
        super(str);
        this.missingWidth = 0;
    }

    static Type1Font createFontProgram(PdfDictionary pdfDictionary, FontEncoding fontEncoding, CMapToUnicode cMapToUnicode) {
        String strCreateRandomFontName;
        Type1Font type1Font;
        PdfName asName = pdfDictionary.getAsName(PdfName.BaseFont);
        if (asName != null) {
            strCreateRandomFontName = asName.getValue();
        } else {
            strCreateRandomFontName = FontUtil.createRandomFontName();
        }
        if (!pdfDictionary.containsKey(PdfName.FontDescriptor)) {
            try {
                type1Font = (Type1Font) FontProgramFactory.createFont(strCreateRandomFontName, true);
            } catch (Exception unused) {
                type1Font = null;
            }
            if (type1Font != null) {
                return type1Font;
            }
        }
        DocType1Font docType1Font = new DocType1Font(strCreateRandomFontName);
        PdfDictionary asDictionary = pdfDictionary.getAsDictionary(PdfName.FontDescriptor);
        docType1Font.subtype = asDictionary != null ? asDictionary.getAsName(PdfName.Subtype) : null;
        fillFontDescriptor(docType1Font, asDictionary);
        PdfNumber asNumber = pdfDictionary.getAsNumber(PdfName.FirstChar);
        int[] iArrConvertSimpleWidthsArray = FontUtil.convertSimpleWidthsArray(pdfDictionary.getAsArray(PdfName.Widths), asNumber != null ? Math.max(asNumber.intValue(), 0) : 0, docType1Font.getMissingWidth());
        docType1Font.avgWidth = 0;
        int i = 0;
        for (int i2 = 0; i2 < 256; i2++) {
            Glyph glyph = new Glyph(i2, iArrConvertSimpleWidthsArray[i2], fontEncoding.getUnicode(i2));
            docType1Font.codeToGlyph.put(Integer.valueOf(i2), glyph);
            if (glyph.hasValidUnicode()) {
                if (fontEncoding.convertToByte(glyph.getUnicode()) == i2) {
                    docType1Font.unicodeToGlyph.put(Integer.valueOf(glyph.getUnicode()), glyph);
                }
            } else if (cMapToUnicode != null) {
                glyph.setChars(cMapToUnicode.lookup(i2));
            }
            if (iArrConvertSimpleWidthsArray[i2] > 0) {
                i++;
                docType1Font.avgWidth += iArrConvertSimpleWidthsArray[i2];
            }
        }
        if (i != 0) {
            docType1Font.avgWidth /= i;
        }
        return docType1Font;
    }

    @Override // com.itextpdf.kernel.font.IDocFontProgram
    public PdfStream getFontFile() {
        return this.fontFile;
    }

    @Override // com.itextpdf.kernel.font.IDocFontProgram
    public PdfName getFontFileName() {
        return this.fontFileName;
    }

    @Override // com.itextpdf.kernel.font.IDocFontProgram
    public PdfName getSubtype() {
        return this.subtype;
    }

    public int getMissingWidth() {
        return this.missingWidth;
    }

    static void fillFontDescriptor(DocType1Font docType1Font, PdfDictionary pdfDictionary) {
        if (pdfDictionary == null) {
            LoggerFactory.getLogger((Class<?>) FontUtil.class).warn(IoLogMessageConstant.FONT_DICTIONARY_WITH_NO_FONT_DESCRIPTOR);
            return;
        }
        PdfNumber asNumber = pdfDictionary.getAsNumber(PdfName.Ascent);
        if (asNumber != null) {
            docType1Font.setTypoAscender(asNumber.intValue());
        }
        PdfNumber asNumber2 = pdfDictionary.getAsNumber(PdfName.Descent);
        if (asNumber2 != null) {
            docType1Font.setTypoDescender(asNumber2.intValue());
        }
        PdfNumber asNumber3 = pdfDictionary.getAsNumber(PdfName.CapHeight);
        if (asNumber3 != null) {
            docType1Font.setCapHeight(asNumber3.intValue());
        }
        PdfNumber asNumber4 = pdfDictionary.getAsNumber(PdfName.XHeight);
        if (asNumber4 != null) {
            docType1Font.setXHeight(asNumber4.intValue());
        }
        PdfNumber asNumber5 = pdfDictionary.getAsNumber(PdfName.ItalicAngle);
        if (asNumber5 != null) {
            docType1Font.setItalicAngle(asNumber5.intValue());
        }
        PdfNumber asNumber6 = pdfDictionary.getAsNumber(PdfName.StemV);
        if (asNumber6 != null) {
            docType1Font.setStemV(asNumber6.intValue());
        }
        PdfNumber asNumber7 = pdfDictionary.getAsNumber(PdfName.StemH);
        if (asNumber7 != null) {
            docType1Font.setStemH(asNumber7.intValue());
        }
        PdfNumber asNumber8 = pdfDictionary.getAsNumber(PdfName.FontWeight);
        if (asNumber8 != null) {
            docType1Font.setFontWeight(asNumber8.intValue());
        }
        PdfNumber asNumber9 = pdfDictionary.getAsNumber(PdfName.MissingWidth);
        if (asNumber9 != null) {
            docType1Font.missingWidth = asNumber9.intValue();
        }
        PdfName asName = pdfDictionary.getAsName(PdfName.FontStretch);
        if (asName != null) {
            docType1Font.setFontStretch(asName.getValue());
        }
        PdfArray asArray = pdfDictionary.getAsArray(PdfName.FontBBox);
        if (asArray != null) {
            int iIntValue = asArray.getAsNumber(3).intValue();
            int[] iArr = {asArray.getAsNumber(0).intValue(), asArray.getAsNumber(1).intValue(), asArray.getAsNumber(2).intValue(), iIntValue};
            int i = iArr[0];
            int i2 = iArr[2];
            if (i > i2) {
                iArr[0] = i2;
                iArr[2] = i;
            }
            int i3 = iArr[1];
            if (i3 > iIntValue) {
                iArr[1] = iIntValue;
                iArr[3] = i3;
            }
            docType1Font.setBbox(iArr);
            if (docType1Font.getFontMetrics().getTypoAscender() == 0 && docType1Font.getFontMetrics().getTypoDescender() == 0) {
                float fMax = Math.max(iArr[3], docType1Font.getFontMetrics().getTypoAscender());
                float fMin = Math.min(iArr[1], docType1Font.getFontMetrics().getTypoDescender());
                float f = fMax * 1000.0f;
                float f2 = fMax - fMin;
                docType1Font.setTypoAscender((int) (f / f2));
                docType1Font.setTypoDescender((int) ((fMin * 1000.0f) / f2));
            }
        }
        PdfString asString = pdfDictionary.getAsString(PdfName.FontFamily);
        if (asString != null) {
            docType1Font.setFontFamily(asString.getValue());
        }
        PdfNumber asNumber10 = pdfDictionary.getAsNumber(PdfName.Flags);
        if (asNumber10 != null) {
            int iIntValue2 = asNumber10.intValue();
            if ((iIntValue2 & 1) != 0) {
                docType1Font.setFixedPitch(true);
            }
            if ((iIntValue2 & 262144) != 0) {
                docType1Font.setBold(true);
            }
        }
        PdfName[] pdfNameArr = {PdfName.FontFile, PdfName.FontFile2, PdfName.FontFile3};
        for (int i4 = 0; i4 < 3; i4++) {
            PdfName pdfName = pdfNameArr[i4];
            if (pdfDictionary.containsKey(pdfName)) {
                docType1Font.fontFileName = pdfName;
                docType1Font.fontFile = pdfDictionary.getAsStream(pdfName);
                return;
            }
        }
    }
}
