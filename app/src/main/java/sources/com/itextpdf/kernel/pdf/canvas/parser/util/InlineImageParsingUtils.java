package com.itextpdf.kernel.pdf.canvas.parser.util;

import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.ads.RequestConfiguration;
import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfReader;
import com.itextpdf.kernel.pdf.PdfStream;
import com.itextpdf.kernel.pdf.filters.DoNothingFilter;
import com.itextpdf.kernel.pdf.filters.FilterHandlers;
import com.itextpdf.kernel.pdf.filters.FlateDecodeStrictFilter;
import com.itextpdf.p017io.source.PdfTokenizer;
import com.itextpdf.pdfa.checker.PdfAChecker;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class InlineImageParsingUtils {

    /* JADX INFO: renamed from: EI */
    private static final byte[] f3176EI = {69, 73};
    private static final Map<PdfName, PdfName> inlineImageColorSpaceAbbreviationMap;
    private static final Map<PdfName, PdfName> inlineImageEntryAbbreviationMap;
    private static final Map<PdfName, PdfName> inlineImageFilterAbbreviationMap;

    static {
        HashMap map = new HashMap();
        inlineImageEntryAbbreviationMap = map;
        map.put(PdfName.BitsPerComponent, PdfName.BitsPerComponent);
        map.put(PdfName.ColorSpace, PdfName.ColorSpace);
        map.put(PdfName.Decode, PdfName.Decode);
        map.put(PdfName.DecodeParms, PdfName.DecodeParms);
        map.put(PdfName.Filter, PdfName.Filter);
        map.put(PdfName.Height, PdfName.Height);
        map.put(PdfName.ImageMask, PdfName.ImageMask);
        map.put(PdfName.Intent, PdfName.Intent);
        map.put(PdfName.Interpolate, PdfName.Interpolate);
        map.put(PdfName.Width, PdfName.Width);
        map.put(new PdfName("BPC"), PdfName.BitsPerComponent);
        map.put(new PdfName("CS"), PdfName.ColorSpace);
        map.put(new PdfName("D"), PdfName.Decode);
        map.put(new PdfName("DP"), PdfName.DecodeParms);
        map.put(new PdfName("F"), PdfName.Filter);
        map.put(new PdfName("H"), PdfName.Height);
        map.put(new PdfName("IM"), PdfName.ImageMask);
        map.put(new PdfName("I"), PdfName.Interpolate);
        map.put(new PdfName(ExifInterface.LONGITUDE_WEST), PdfName.Width);
        HashMap map2 = new HashMap();
        inlineImageColorSpaceAbbreviationMap = map2;
        map2.put(new PdfName(RequestConfiguration.MAX_AD_CONTENT_RATING_G), PdfName.DeviceGray);
        map2.put(new PdfName("RGB"), PdfName.DeviceRGB);
        map2.put(new PdfName(PdfAChecker.ICC_COLOR_SPACE_CMYK), PdfName.DeviceCMYK);
        map2.put(new PdfName("I"), PdfName.Indexed);
        HashMap map3 = new HashMap();
        inlineImageFilterAbbreviationMap = map3;
        map3.put(new PdfName("AHx"), PdfName.ASCIIHexDecode);
        map3.put(new PdfName("A85"), PdfName.ASCII85Decode);
        map3.put(new PdfName("LZW"), PdfName.LZWDecode);
        map3.put(new PdfName("Fl"), PdfName.FlateDecode);
        map3.put(new PdfName("RL"), PdfName.RunLengthDecode);
        map3.put(new PdfName("CCF"), PdfName.CCITTFaxDecode);
        map3.put(new PdfName("DCT"), PdfName.DCTDecode);
    }

    private InlineImageParsingUtils() {
    }

    public static class InlineImageParseException extends PdfException {
        public InlineImageParseException(String str) {
            super(str);
        }
    }

    public static PdfStream parse(PdfCanvasParser pdfCanvasParser, PdfDictionary pdfDictionary) throws IOException {
        PdfDictionary dictionary = parseDictionary(pdfCanvasParser);
        PdfStream pdfStream = new PdfStream(parseSamples(dictionary, pdfDictionary, pdfCanvasParser));
        pdfStream.putAll(dictionary);
        return pdfStream;
    }

    static int getComponentsPerPixel(PdfName pdfName, PdfDictionary pdfDictionary) {
        if (pdfName == null || pdfName.equals(PdfName.DeviceGray)) {
            return 1;
        }
        if (pdfName.equals(PdfName.DeviceRGB)) {
            return 3;
        }
        if (pdfName.equals(PdfName.DeviceCMYK)) {
            return 4;
        }
        if (pdfDictionary != null) {
            PdfArray asArray = pdfDictionary.getAsArray(pdfName);
            if (asArray == null) {
                PdfName asName = pdfDictionary.getAsName(pdfName);
                if (asName != null) {
                    return getComponentsPerPixel(asName, pdfDictionary);
                }
            } else {
                if (PdfName.Indexed.equals(asArray.getAsName(0))) {
                    return 1;
                }
                if (PdfName.ICCBased.equals(asArray.getAsName(0))) {
                    return asArray.getAsStream(1).getAsNumber(PdfName.f3037N).intValue();
                }
            }
        }
        throw new InlineImageParseException(KernelExceptionMessageConstant.UNEXPECTED_COLOR_SPACE).setMessageParams(pdfName);
    }

    private static PdfDictionary parseDictionary(PdfCanvasParser pdfCanvasParser) throws IOException {
        PdfDictionary pdfDictionary = new PdfDictionary();
        while (true) {
            PdfObject object = pdfCanvasParser.readObject();
            if (object == null || "ID".equals(object.toString())) {
                break;
            }
            PdfObject object2 = pdfCanvasParser.readObject();
            PdfName pdfName = (PdfName) object;
            PdfName pdfName2 = inlineImageEntryAbbreviationMap.get(pdfName);
            if (pdfName2 != null) {
                pdfName = pdfName2;
            }
            pdfDictionary.put(pdfName, getAlternateValue(pdfName, object2));
        }
        int i = pdfCanvasParser.getTokeniser().read();
        if (PdfTokenizer.isWhitespace(i)) {
            return pdfDictionary;
        }
        throw new InlineImageParseException(KernelExceptionMessageConstant.UNEXPECTED_CHARACTER_FOUND_AFTER_ID_IN_INLINE_IMAGE).setMessageParams(Integer.valueOf(i));
    }

    private static PdfObject getAlternateValue(PdfName pdfName, PdfObject pdfObject) {
        PdfName pdfName2;
        if (pdfName == PdfName.Filter) {
            if (pdfObject instanceof PdfName) {
                PdfName pdfName3 = inlineImageFilterAbbreviationMap.get((PdfName) pdfObject);
                if (pdfName3 != null) {
                    return pdfName3;
                }
            } else if (pdfObject instanceof PdfArray) {
                PdfArray pdfArray = (PdfArray) pdfObject;
                PdfArray pdfArray2 = new PdfArray();
                int size = pdfArray.size();
                for (int i = 0; i < size; i++) {
                    pdfArray2.add(getAlternateValue(pdfName, pdfArray.get(i)));
                }
                return pdfArray2;
            }
        } else if (pdfName == PdfName.ColorSpace && (pdfObject instanceof PdfName) && (pdfName2 = inlineImageColorSpaceAbbreviationMap.get((PdfName) pdfObject)) != null) {
            return pdfName2;
        }
        return pdfObject;
    }

    private static int computeBytesPerRow(PdfDictionary pdfDictionary, PdfDictionary pdfDictionary2) {
        PdfNumber asNumber = pdfDictionary.getAsNumber(PdfName.Width);
        PdfNumber asNumber2 = pdfDictionary.getAsNumber(PdfName.BitsPerComponent);
        return (((asNumber.intValue() * (asNumber2 != null ? asNumber2.intValue() : 1)) * getComponentsPerPixel(pdfDictionary.getAsName(PdfName.ColorSpace), pdfDictionary2)) + 7) / 8;
    }

    private static byte[] parseUnfilteredSamples(PdfDictionary pdfDictionary, PdfDictionary pdfDictionary2, PdfCanvasParser pdfCanvasParser) throws IOException {
        if (pdfDictionary.containsKey(PdfName.Filter)) {
            throw new IllegalArgumentException("Dictionary contains filters");
        }
        int iComputeBytesPerRow = computeBytesPerRow(pdfDictionary, pdfDictionary2) * pdfDictionary.getAsNumber(PdfName.Height).intValue();
        byte[] bArr = new byte[iComputeBytesPerRow];
        PdfTokenizer tokeniser = pdfCanvasParser.getTokeniser();
        int i = tokeniser.read();
        int i2 = 0;
        if (!PdfTokenizer.isWhitespace(i) || i == 0) {
            bArr[0] = (byte) i;
            i2 = 1;
        }
        while (i2 < iComputeBytesPerRow) {
            int i3 = tokeniser.read();
            if (i3 == -1) {
                throw new InlineImageParseException(KernelExceptionMessageConstant.END_OF_CONTENT_STREAM_REACHED_BEFORE_END_OF_IMAGE_DATA);
            }
            bArr[i2] = (byte) i3;
            i2++;
        }
        if ("EI".equals(pdfCanvasParser.readObject().toString()) || "EI".equals(pdfCanvasParser.readObject().toString())) {
            return bArr;
        }
        throw new InlineImageParseException(KernelExceptionMessageConstant.OPERATOR_EI_NOT_FOUND_AFTER_END_OF_IMAGE_DATA);
    }

    private static byte[] parseSamples(PdfDictionary pdfDictionary, PdfDictionary pdfDictionary2, PdfCanvasParser pdfCanvasParser) throws IOException {
        int i;
        if (!pdfDictionary.containsKey(PdfName.Filter) && imageColorSpaceIsKnown(pdfDictionary, pdfDictionary2)) {
            return parseUnfilteredSamples(pdfDictionary, pdfDictionary2, pdfCanvasParser);
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        PdfTokenizer tokeniser = pdfCanvasParser.getTokeniser();
        while (true) {
            int i2 = 0;
            while (true) {
                i = tokeniser.read();
                if (i == -1) {
                    throw new InlineImageParseException(KernelExceptionMessageConstant.CANNOT_FIND_IMAGE_DATA_OR_EI);
                }
                if (i == 69) {
                    byteArrayOutputStream.write(f3176EI, 0, i2);
                    i2 = 1;
                } else {
                    if (i2 != 1 || i != 73) {
                        break;
                    }
                    i2 = 2;
                }
            }
            if (i2 == 2 && PdfTokenizer.isWhitespace(i)) {
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                if (inlineImageStreamBytesAreComplete(byteArray, pdfDictionary)) {
                    return byteArray;
                }
            }
            byteArrayOutputStream.write(f3176EI, 0, i2);
            byteArrayOutputStream.write(i);
        }
    }

    private static boolean imageColorSpaceIsKnown(PdfDictionary pdfDictionary, PdfDictionary pdfDictionary2) {
        PdfName asName = pdfDictionary.getAsName(PdfName.ColorSpace);
        if (asName == null || asName.equals(PdfName.DeviceGray) || asName.equals(PdfName.DeviceRGB) || asName.equals(PdfName.DeviceCMYK)) {
            return true;
        }
        return pdfDictionary2 != null && pdfDictionary2.containsKey(asName);
    }

    private static boolean inlineImageStreamBytesAreComplete(byte[] bArr, PdfDictionary pdfDictionary) {
        try {
            HashMap map = new HashMap(FilterHandlers.getDefaultFilterHandlers());
            map.put(PdfName.JBIG2Decode, new DoNothingFilter());
            map.put(PdfName.FlateDecode, new FlateDecodeStrictFilter());
            PdfReader.decodeBytes(bArr, pdfDictionary, map);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }
}
