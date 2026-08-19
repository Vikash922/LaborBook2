package com.itextpdf.kernel.font;

import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfStream;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.p017io.font.FontEncoding;
import com.itextpdf.p017io.font.TrueTypeFont;
import com.itextpdf.p017io.font.cmap.CMapToUnicode;
import com.itextpdf.p017io.font.otf.Glyph;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import com.itextpdf.p017io.util.IntHashtable;
import java.util.Iterator;
import java.util.Map;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class DocTrueTypeFont extends TrueTypeFont implements IDocFontProgram {
    private PdfStream fontFile;
    private PdfName fontFileName;
    private int missingWidth = 0;
    private PdfName subtype;

    @Override // com.itextpdf.p017io.font.TrueTypeFont, com.itextpdf.p017io.font.FontProgram
    public boolean isBuiltWith(String str) {
        return false;
    }

    private DocTrueTypeFont(PdfDictionary pdfDictionary) {
        PdfName asName = pdfDictionary.getAsName(PdfName.BaseFont);
        if (asName != null) {
            setFontName(asName.getValue());
        } else {
            setFontName(FontUtil.createRandomFontName());
        }
        this.subtype = pdfDictionary.getAsName(PdfName.Subtype);
    }

    static TrueTypeFont createFontProgram(PdfDictionary pdfDictionary, FontEncoding fontEncoding, CMapToUnicode cMapToUnicode) {
        DocTrueTypeFont docTrueTypeFont = new DocTrueTypeFont(pdfDictionary);
        fillFontDescriptor(docTrueTypeFont, pdfDictionary.getAsDictionary(PdfName.FontDescriptor));
        PdfNumber asNumber = pdfDictionary.getAsNumber(PdfName.FirstChar);
        int[] iArrConvertSimpleWidthsArray = FontUtil.convertSimpleWidthsArray(pdfDictionary.getAsArray(PdfName.Widths), asNumber != null ? Math.max(asNumber.intValue(), 0) : 0, docTrueTypeFont.getMissingWidth());
        docTrueTypeFont.avgWidth = 0;
        int i = 0;
        for (int i2 = 0; i2 < 256; i2++) {
            Glyph glyph = new Glyph(i2, iArrConvertSimpleWidthsArray[i2], fontEncoding.getUnicode(i2));
            docTrueTypeFont.codeToGlyph.put(Integer.valueOf(i2), glyph);
            if (glyph.hasValidUnicode() && fontEncoding.convertToByte(glyph.getUnicode()) == i2) {
                docTrueTypeFont.unicodeToGlyph.put(Integer.valueOf(glyph.getUnicode()), glyph);
            } else if (cMapToUnicode != null) {
                glyph.setChars(cMapToUnicode.lookup(i2));
            }
            if (iArrConvertSimpleWidthsArray[i2] > 0) {
                i++;
                docTrueTypeFont.avgWidth += iArrConvertSimpleWidthsArray[i2];
            }
        }
        if (i != 0) {
            docTrueTypeFont.avgWidth /= i;
        }
        return docTrueTypeFont;
    }

    static TrueTypeFont createFontProgram(PdfDictionary pdfDictionary, CMapToUnicode cMapToUnicode) {
        int iIntValue;
        IntHashtable intHashtableConvertCompositeWidthsArray;
        DocTrueTypeFont docTrueTypeFont = new DocTrueTypeFont(pdfDictionary);
        PdfDictionary asDictionary = pdfDictionary.getAsDictionary(PdfName.FontDescriptor);
        fillFontDescriptor(docTrueTypeFont, asDictionary);
        if (asDictionary != null && asDictionary.containsKey(PdfName.f2998DW)) {
            iIntValue = asDictionary.getAsInt(PdfName.f2998DW).intValue();
        } else {
            iIntValue = pdfDictionary.containsKey(PdfName.f2998DW) ? pdfDictionary.getAsInt(PdfName.f2998DW).intValue() : 1000;
        }
        if (cMapToUnicode != null) {
            intHashtableConvertCompositeWidthsArray = FontUtil.convertCompositeWidthsArray(pdfDictionary.getAsArray(PdfName.f3089W));
            docTrueTypeFont.avgWidth = 0;
            Iterator<Integer> it = cMapToUnicode.getCodes().iterator();
            while (it.hasNext()) {
                int iIntValue2 = it.next().intValue();
                int i = intHashtableConvertCompositeWidthsArray.containsKey(iIntValue2) ? intHashtableConvertCompositeWidthsArray.get(iIntValue2) : iIntValue;
                Glyph glyph = new Glyph(iIntValue2, i, cMapToUnicode.lookup(iIntValue2));
                if (glyph.hasValidUnicode()) {
                    docTrueTypeFont.unicodeToGlyph.put(Integer.valueOf(glyph.getUnicode()), glyph);
                }
                docTrueTypeFont.codeToGlyph.put(Integer.valueOf(iIntValue2), glyph);
                docTrueTypeFont.avgWidth += i;
            }
            if (docTrueTypeFont.codeToGlyph.size() != 0) {
                docTrueTypeFont.avgWidth /= docTrueTypeFont.codeToGlyph.size();
            }
        } else {
            intHashtableConvertCompositeWidthsArray = null;
        }
        if (docTrueTypeFont.codeToGlyph.get(0) == null) {
            Map<Integer, Glyph> map = docTrueTypeFont.codeToGlyph;
            if (intHashtableConvertCompositeWidthsArray != null && intHashtableConvertCompositeWidthsArray.containsKey(0)) {
                iIntValue = intHashtableConvertCompositeWidthsArray.get(0);
            }
            map.put(0, new Glyph(0, iIntValue, -1));
        }
        return docTrueTypeFont;
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

    static void fillFontDescriptor(DocTrueTypeFont docTrueTypeFont, PdfDictionary pdfDictionary) {
        if (pdfDictionary == null) {
            LoggerFactory.getLogger((Class<?>) FontUtil.class).warn(IoLogMessageConstant.FONT_DICTIONARY_WITH_NO_FONT_DESCRIPTOR);
            return;
        }
        PdfNumber asNumber = pdfDictionary.getAsNumber(PdfName.Ascent);
        if (asNumber != null) {
            docTrueTypeFont.setTypoAscender(asNumber.intValue());
        }
        PdfNumber asNumber2 = pdfDictionary.getAsNumber(PdfName.Descent);
        if (asNumber2 != null) {
            docTrueTypeFont.setTypoDescender(asNumber2.intValue());
        }
        PdfNumber asNumber3 = pdfDictionary.getAsNumber(PdfName.CapHeight);
        if (asNumber3 != null) {
            docTrueTypeFont.setCapHeight(asNumber3.intValue());
        }
        PdfNumber asNumber4 = pdfDictionary.getAsNumber(PdfName.XHeight);
        if (asNumber4 != null) {
            docTrueTypeFont.setXHeight(asNumber4.intValue());
        }
        PdfNumber asNumber5 = pdfDictionary.getAsNumber(PdfName.ItalicAngle);
        if (asNumber5 != null) {
            docTrueTypeFont.setItalicAngle(asNumber5.intValue());
        }
        PdfNumber asNumber6 = pdfDictionary.getAsNumber(PdfName.StemV);
        if (asNumber6 != null) {
            docTrueTypeFont.setStemV(asNumber6.intValue());
        }
        PdfNumber asNumber7 = pdfDictionary.getAsNumber(PdfName.StemH);
        if (asNumber7 != null) {
            docTrueTypeFont.setStemH(asNumber7.intValue());
        }
        PdfNumber asNumber8 = pdfDictionary.getAsNumber(PdfName.FontWeight);
        if (asNumber8 != null) {
            docTrueTypeFont.setFontWeight(asNumber8.intValue());
        }
        PdfNumber asNumber9 = pdfDictionary.getAsNumber(PdfName.MissingWidth);
        if (asNumber9 != null) {
            docTrueTypeFont.missingWidth = asNumber9.intValue();
        }
        PdfName asName = pdfDictionary.getAsName(PdfName.FontStretch);
        if (asName != null) {
            docTrueTypeFont.setFontStretch(asName.getValue());
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
            docTrueTypeFont.setBbox(iArr);
            if (docTrueTypeFont.getFontMetrics().getTypoAscender() == 0 && docTrueTypeFont.getFontMetrics().getTypoDescender() == 0) {
                float fMax = Math.max(iArr[3], docTrueTypeFont.getFontMetrics().getTypoAscender());
                float fMin = Math.min(iArr[1], docTrueTypeFont.getFontMetrics().getTypoDescender());
                float f = fMax * 1000.0f;
                float f2 = fMax - fMin;
                docTrueTypeFont.setTypoAscender((int) (f / f2));
                docTrueTypeFont.setTypoDescender((int) ((fMin * 1000.0f) / f2));
            }
        }
        PdfString asString = pdfDictionary.getAsString(PdfName.FontFamily);
        if (asString != null) {
            docTrueTypeFont.setFontFamily(asString.getValue());
        }
        PdfNumber asNumber10 = pdfDictionary.getAsNumber(PdfName.Flags);
        if (asNumber10 != null) {
            int iIntValue2 = asNumber10.intValue();
            if ((iIntValue2 & 1) != 0) {
                docTrueTypeFont.setFixedPitch(true);
            }
            if ((iIntValue2 & 262144) != 0) {
                docTrueTypeFont.setBold(true);
            }
        }
        PdfName[] pdfNameArr = {PdfName.FontFile, PdfName.FontFile2, PdfName.FontFile3};
        for (int i4 = 0; i4 < 3; i4++) {
            PdfName pdfName = pdfNameArr[i4];
            if (pdfDictionary.containsKey(pdfName)) {
                docTrueTypeFont.fontFileName = pdfName;
                docTrueTypeFont.fontFile = pdfDictionary.getAsStream(pdfName);
                return;
            }
        }
    }
}
