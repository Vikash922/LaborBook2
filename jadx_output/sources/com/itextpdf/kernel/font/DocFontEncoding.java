package com.itextpdf.kernel.font;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.p017io.font.AdobeGlyphList;
import com.itextpdf.p017io.font.FontEncoding;
import com.itextpdf.p017io.font.PdfEncodings;
import com.itextpdf.p017io.font.cmap.CMapToUnicode;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import com.itextpdf.p017io.util.IntHashtable;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
class DocFontEncoding extends FontEncoding {
    protected DocFontEncoding() {
    }

    public static FontEncoding createDocFontEncoding(PdfObject pdfObject, CMapToUnicode cMapToUnicode) {
        if (pdfObject != null) {
            if (pdfObject.isName()) {
                return FontEncoding.createFontEncoding(((PdfName) pdfObject).getValue());
            }
            if (pdfObject.isDictionary()) {
                DocFontEncoding docFontEncoding = new DocFontEncoding();
                docFontEncoding.differences = new String[256];
                PdfDictionary pdfDictionary = (PdfDictionary) pdfObject;
                fillBaseEncoding(docFontEncoding, pdfDictionary.getAsName(PdfName.BaseEncoding));
                fillDifferences(docFontEncoding, pdfDictionary.getAsArray(PdfName.Differences), cMapToUnicode);
                return docFontEncoding;
            }
        }
        if (cMapToUnicode != null) {
            DocFontEncoding docFontEncoding2 = new DocFontEncoding();
            docFontEncoding2.differences = new String[256];
            fillDifferences(docFontEncoding2, cMapToUnicode);
            return docFontEncoding2;
        }
        return FontEncoding.createFontSpecificEncoding();
    }

    private static void fillBaseEncoding(DocFontEncoding docFontEncoding, PdfName pdfName) {
        String str;
        if (pdfName != null) {
            docFontEncoding.baseEncoding = pdfName.getValue();
        }
        if (PdfName.MacRomanEncoding.equals(pdfName) || PdfName.WinAnsiEncoding.equals(pdfName) || PdfName.Symbol.equals(pdfName) || PdfName.ZapfDingbats.equals(pdfName)) {
            if (PdfName.MacRomanEncoding.equals(pdfName)) {
                str = PdfEncodings.MACROMAN;
            } else if (PdfName.Symbol.equals(pdfName)) {
                str = "Symbol";
            } else if (!PdfName.ZapfDingbats.equals(pdfName)) {
                str = "Cp1252";
            } else {
                str = "ZapfDingbats";
            }
            docFontEncoding.baseEncoding = str;
            docFontEncoding.fillNamedEncoding();
            return;
        }
        docFontEncoding.fillStandardEncoding();
    }

    private static void fillDifferences(DocFontEncoding docFontEncoding, PdfArray pdfArray, CMapToUnicode cMapToUnicode) {
        IntHashtable intHashtableCreateDirectMapping = cMapToUnicode != null ? cMapToUnicode.createDirectMapping() : new IntHashtable();
        if (pdfArray != null) {
            int iIntValue = 0;
            for (int i = 0; i < pdfArray.size(); i++) {
                PdfObject pdfObject = pdfArray.get(i);
                if (pdfObject.isNumber()) {
                    iIntValue = ((PdfNumber) pdfObject).intValue();
                } else if (iIntValue > 255) {
                    LoggerFactory.getLogger((Class<?>) DocFontEncoding.class).warn(MessageFormatUtil.format(IoLogMessageConstant.DOCFONT_HAS_ILLEGAL_DIFFERENCES, ((PdfName) pdfObject).getValue()));
                } else {
                    String value = ((PdfName) pdfObject).getValue();
                    int iNameToUnicode = AdobeGlyphList.nameToUnicode(value);
                    if (iNameToUnicode != -1) {
                        docFontEncoding.codeToUnicode[iIntValue] = iNameToUnicode;
                        docFontEncoding.unicodeToCode.put(iNameToUnicode, iIntValue);
                        docFontEncoding.differences[iIntValue] = value;
                        docFontEncoding.unicodeDifferences.put(iNameToUnicode, iNameToUnicode);
                    } else if (intHashtableCreateDirectMapping.containsKey(iIntValue)) {
                        int i2 = intHashtableCreateDirectMapping.get(iIntValue);
                        docFontEncoding.codeToUnicode[iIntValue] = i2;
                        docFontEncoding.unicodeToCode.put(i2, iIntValue);
                        docFontEncoding.differences[iIntValue] = value;
                        docFontEncoding.unicodeDifferences.put(i2, i2);
                    }
                    iIntValue++;
                }
            }
        }
    }

    private static void fillDifferences(DocFontEncoding docFontEncoding, CMapToUnicode cMapToUnicode) {
        IntHashtable intHashtableCreateDirectMapping = cMapToUnicode.createDirectMapping();
        for (int i : intHashtableCreateDirectMapping.getKeys()) {
            Integer numValueOf = Integer.valueOf(i);
            int i2 = intHashtableCreateDirectMapping.get(numValueOf.intValue());
            String strUnicodeToName = AdobeGlyphList.unicodeToName(i2);
            docFontEncoding.codeToUnicode[numValueOf.intValue()] = i2;
            docFontEncoding.unicodeToCode.put(i2, numValueOf.intValue());
            docFontEncoding.differences[numValueOf.intValue()] = strUnicodeToName;
            docFontEncoding.unicodeDifferences.put(i2, i2);
        }
    }
}
