package com.itextpdf.barcodes;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.wallet.WalletConstants;
import com.itextpdf.barcodes.exceptions.BarcodeExceptionMessageConstant;
import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.font.PdfFont;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.kernel.xmp.XMPError;
import com.itextpdf.svg.SvgConstants;
import java.awt.Canvas;
import java.awt.Image;
import java.awt.image.MemoryImageSource;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class Barcode128 extends Barcode1D {
    private static final byte[][] BARS;
    private static final byte[] BARS_STOP = {2, 3, 3, 1, 1, 1, 2};
    public static final int CODE128 = 1;
    public static final int CODE128_RAW = 3;
    public static final int CODE128_UCC = 2;
    public static final char CODE_A = 200;
    public static final char CODE_AB_TO_C = 'c';
    public static final char CODE_AC_TO_B = 'd';
    public static final char CODE_BC_TO_A = 'e';
    public static final char CODE_C = 199;
    public static final char DEL = 195;
    public static final char FNC1 = 202;
    public static final char FNC1_INDEX = 'f';
    public static final char FNC2 = 197;
    public static final char FNC3 = 196;
    public static final char FNC4 = 200;
    public static final char SHIFT = 198;
    public static final char STARTA = 203;
    public static final char STARTB = 204;
    public static final char STARTC = 205;
    public static final char START_A = 'g';
    public static final char START_B = 'h';
    public static final char START_C = 'i';
    private static Map<Integer, Integer> ais;
    private Barcode128CodeSet codeSet;

    public enum Barcode128CodeSet {
        A,
        B,
        C,
        AUTO
    }

    public Barcode128(PdfDocument pdfDocument) {
        this(pdfDocument, pdfDocument.getDefaultFont());
    }

    public Barcode128(PdfDocument pdfDocument, PdfFont pdfFont) {
        super(pdfDocument);
        this.codeSet = Barcode128CodeSet.AUTO;
        this.f2834x = 0.8f;
        this.font = pdfFont;
        this.size = 8.0f;
        this.baseline = this.size;
        this.barHeight = this.size * 3.0f;
        this.textAlignment = 3;
        this.codeType = 1;
    }

    public void setCodeSet(Barcode128CodeSet barcode128CodeSet) {
        this.codeSet = barcode128CodeSet;
    }

    public Barcode128CodeSet getCodeSet() {
        return this.codeSet;
    }

    public static String removeFNC1(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder(length);
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt >= ' ' && cCharAt <= '~') {
                sb.append(cCharAt);
            }
        }
        return sb.toString();
    }

    public static String getHumanReadableUCCEAN(String str) {
        StringBuilder sb = new StringBuilder();
        String str2 = new String(new char[]{FNC1});
        while (true) {
            if (str.startsWith(str2)) {
                str = str.substring(1);
            } else {
                int i = 2;
                int iIntValue = 0;
                while (i < 5 && str.length() >= i) {
                    int i2 = Integer.parseInt(str.substring(0, i));
                    iIntValue = ais.containsKey(Integer.valueOf(i2)) ? ais.get(Integer.valueOf(i2)).intValue() : 0;
                    if (iIntValue != 0) {
                        break;
                    }
                    i++;
                }
                i = 0;
                if (i == 0) {
                    break;
                }
                sb.append('(').append(str.substring(0, i)).append(')');
                str = str.substring(i);
                if (iIntValue > 0) {
                    int i3 = iIntValue - i;
                    if (str.length() <= i3) {
                        break;
                    }
                    sb.append(removeFNC1(str.substring(0, i3)));
                    str = str.substring(i3);
                } else {
                    int iIndexOf = str.indexOf(XMPError.BADRDF);
                    if (iIndexOf < 0) {
                        break;
                    }
                    sb.append(str.substring(0, iIndexOf));
                    str = str.substring(iIndexOf + 1);
                }
            }
        }
        sb.append(removeFNC1(str));
        return sb.toString();
    }

    public static String getRawText(String str, boolean z, Barcode128CodeSet barcode128CodeSet) {
        String str2;
        String str3;
        int iCharAt;
        String str4;
        int length = str.length();
        if (length == 0) {
            String str5 = "" + getStartSymbol(barcode128CodeSet);
            return z ? str5 + FNC1_INDEX : str5;
        }
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt > 127 && cCharAt != 202) {
                throw new PdfException(BarcodeExceptionMessageConstant.THERE_ARE_ILLEGAL_CHARACTERS_FOR_BARCODE_128);
            }
        }
        char cCharAt2 = str.charAt(0);
        char startSymbol = getStartSymbol(barcode128CodeSet);
        if ((barcode128CodeSet == Barcode128CodeSet.AUTO || barcode128CodeSet == Barcode128CodeSet.C) && isNextDigits(str, 0, 2)) {
            if (!z) {
                str2 = "i";
            } else {
                str2 = "if";
            }
            String packedRawDigits = getPackedRawDigits(str, 0, 2);
            char cCharAt3 = packedRawDigits.charAt(0);
            str3 = str2 + packedRawDigits.substring(1);
            iCharAt = cCharAt3;
            startSymbol = START_C;
        } else if (cCharAt2 < ' ') {
            if (!z) {
                str4 = SvgConstants.Tags.f3337G;
            } else {
                str4 = "gf";
            }
            str3 = str4 + ((char) (cCharAt2 + '@'));
            iCharAt = 1;
            startSymbol = START_A;
        } else {
            String str6 = "" + startSymbol;
            if (z) {
                str6 = str6 + FNC1_INDEX;
            }
            if (cCharAt2 == 202) {
                str3 = str6 + FNC1_INDEX;
            } else {
                str3 = str6 + ((char) (cCharAt2 - ' '));
            }
            iCharAt = 1;
        }
        if (barcode128CodeSet != Barcode128CodeSet.AUTO && startSymbol != getStartSymbol(barcode128CodeSet)) {
            throw new PdfException(BarcodeExceptionMessageConstant.THERE_ARE_ILLEGAL_CHARACTERS_FOR_BARCODE_128);
        }
        while (iCharAt < length) {
            switch (startSymbol) {
                case 'g':
                    if (barcode128CodeSet == Barcode128CodeSet.AUTO && isNextDigits(str, iCharAt, 4)) {
                        String str7 = str3 + CODE_AB_TO_C;
                        String packedRawDigits2 = getPackedRawDigits(str, iCharAt, 4);
                        iCharAt += packedRawDigits2.charAt(0);
                        str3 = str7 + packedRawDigits2.substring(1);
                        startSymbol = START_C;
                    } else {
                        int i2 = iCharAt + 1;
                        char cCharAt4 = str.charAt(iCharAt);
                        if (cCharAt4 == 202) {
                            str3 = str3 + FNC1_INDEX;
                        } else if (cCharAt4 > '_') {
                            str3 = (str3 + CODE_AC_TO_B) + ((char) (cCharAt4 - ' '));
                            iCharAt = i2;
                            startSymbol = 'h';
                            break;
                        } else if (cCharAt4 < ' ') {
                            str3 = str3 + ((char) (cCharAt4 + '@'));
                        } else {
                            str3 = str3 + ((char) (cCharAt4 - ' '));
                        }
                        iCharAt = i2;
                    }
                    break;
                case 'h':
                    if (barcode128CodeSet == Barcode128CodeSet.AUTO && isNextDigits(str, iCharAt, 4)) {
                        String str8 = str3 + CODE_AB_TO_C;
                        String packedRawDigits3 = getPackedRawDigits(str, iCharAt, 4);
                        iCharAt += packedRawDigits3.charAt(0);
                        str3 = str8 + packedRawDigits3.substring(1);
                        startSymbol = START_C;
                    } else {
                        int i3 = iCharAt + 1;
                        char cCharAt5 = str.charAt(iCharAt);
                        if (cCharAt5 == 202) {
                            str3 = str3 + FNC1_INDEX;
                        } else if (cCharAt5 < ' ') {
                            str3 = (str3 + CODE_BC_TO_A) + ((char) (cCharAt5 + '@'));
                            iCharAt = i3;
                            startSymbol = START_A;
                        } else {
                            str3 = str3 + ((char) (cCharAt5 - ' '));
                        }
                        iCharAt = i3;
                    }
                    break;
                case 'i':
                    if (isNextDigits(str, iCharAt, 2)) {
                        String packedRawDigits4 = getPackedRawDigits(str, iCharAt, 2);
                        iCharAt += packedRawDigits4.charAt(0);
                        str3 = str3 + packedRawDigits4.substring(1);
                    } else {
                        int i4 = iCharAt + 1;
                        char cCharAt6 = str.charAt(iCharAt);
                        if (cCharAt6 == 202) {
                            str3 = str3 + FNC1_INDEX;
                            iCharAt = i4;
                        } else if (cCharAt6 < ' ') {
                            str3 = (str3 + CODE_BC_TO_A) + ((char) (cCharAt6 + '@'));
                            iCharAt = i4;
                            startSymbol = START_A;
                        } else {
                            str3 = (str3 + CODE_AC_TO_B) + ((char) (cCharAt6 - ' '));
                            iCharAt = i4;
                            startSymbol = 'h';
                        }
                    }
                    break;
            }
            if (barcode128CodeSet != Barcode128CodeSet.AUTO && startSymbol != getStartSymbol(barcode128CodeSet)) {
                throw new PdfException(BarcodeExceptionMessageConstant.THERE_ARE_ILLEGAL_CHARACTERS_FOR_BARCODE_128);
            }
        }
        return str3;
    }

    public static String getRawText(String str, boolean z) {
        return getRawText(str, z, Barcode128CodeSet.AUTO);
    }

    public static byte[] getBarsCode128Raw(String str) {
        int iIndexOf = str.indexOf(65535);
        if (iIndexOf >= 0) {
            str = str.substring(0, iIndexOf);
        }
        int iCharAt = str.charAt(0);
        for (int i = 1; i < str.length(); i++) {
            iCharAt += str.charAt(i) * i;
        }
        String str2 = str + ((char) (iCharAt % 103));
        byte[] bArr = new byte[((str2.length() + 1) * 6) + 7];
        int i2 = 0;
        while (i2 < str2.length()) {
            System.arraycopy(BARS[str2.charAt(i2)], 0, bArr, i2 * 6, 6);
            i2++;
        }
        System.arraycopy(BARS_STOP, 0, bArr, i2 * 6, 7);
        return bArr;
    }

    @Override // com.itextpdf.barcodes.Barcode1D
    public Rectangle getBarcodeSize() {
        float f;
        String rawText;
        float descender;
        String strRemoveFNC1;
        float width = 0.0f;
        if (this.font != null) {
            if (this.baseline > 0.0f) {
                descender = this.baseline - getDescender();
            } else {
                descender = (-this.baseline) + this.size;
            }
            float f2 = descender;
            if (this.codeType == 3) {
                int iIndexOf = this.code.indexOf(65535);
                if (iIndexOf < 0) {
                    strRemoveFNC1 = "";
                } else {
                    strRemoveFNC1 = this.code.substring(iIndexOf + 1);
                }
            } else if (this.codeType == 2) {
                strRemoveFNC1 = getHumanReadableUCCEAN(this.code);
            } else {
                strRemoveFNC1 = removeFNC1(this.code);
            }
            PdfFont pdfFont = this.font;
            if (this.altText != null) {
                strRemoveFNC1 = this.altText;
            }
            width = pdfFont.getWidth(strRemoveFNC1, this.size);
            f = f2;
        } else {
            f = 0.0f;
        }
        if (this.codeType == 3) {
            int iIndexOf2 = this.code.indexOf(65535);
            if (iIndexOf2 >= 0) {
                rawText = this.code.substring(0, iIndexOf2);
            } else {
                rawText = this.code;
            }
        } else {
            rawText = getRawText(this.code, this.codeType == 2, this.codeSet);
        }
        return new Rectangle(Math.max(((rawText.length() + 2) * 11 * this.f2834x) + (this.f2834x * 2.0f), width), this.barHeight + f);
    }

    @Override // com.itextpdf.barcodes.Barcode1D
    public Rectangle placeBarcode(PdfCanvas pdfCanvas, Color color, Color color2) {
        String strRemoveFNC1;
        String str;
        float width;
        String rawText;
        float f;
        float f2;
        float f3;
        float f4;
        int i;
        float f5;
        byte[] bArr;
        float f6;
        if (this.codeType == 3) {
            int iIndexOf = this.code.indexOf(65535);
            if (iIndexOf < 0) {
                strRemoveFNC1 = "";
            } else {
                strRemoveFNC1 = this.code.substring(iIndexOf + 1);
            }
        } else if (this.codeType == 2) {
            strRemoveFNC1 = getHumanReadableUCCEAN(this.code);
        } else {
            strRemoveFNC1 = removeFNC1(this.code);
        }
        if (this.font != null) {
            PdfFont pdfFont = this.font;
            if (this.altText != null) {
                strRemoveFNC1 = this.altText;
            }
            width = pdfFont.getWidth(strRemoveFNC1, this.size);
            str = strRemoveFNC1;
        } else {
            str = strRemoveFNC1;
            width = 0.0f;
        }
        if (this.codeType == 3) {
            int iIndexOf2 = this.code.indexOf(65535);
            if (iIndexOf2 >= 0) {
                rawText = this.code.substring(0, iIndexOf2);
            } else {
                rawText = this.code;
            }
        } else {
            rawText = getRawText(this.code, this.codeType == 2, this.codeSet);
        }
        float length = ((rawText.length() + 2) * 11 * this.f2834x) + (this.f2834x * 2.0f);
        int i2 = this.textAlignment;
        if (i2 == 1) {
            f = 0.0f;
            f2 = 0.0f;
        } else if (i2 != 2) {
            if (width > length) {
                f = (width - length) / 2.0f;
                f2 = 0.0f;
            } else {
                f6 = (length - width) / 2.0f;
                f2 = f6;
                f = 0.0f;
            }
        } else if (width > length) {
            f = width - length;
            f2 = 0.0f;
        } else {
            f6 = length - width;
            f2 = f6;
            f = 0.0f;
        }
        if (this.font == null) {
            f3 = 0.0f;
            f4 = 0.0f;
        } else if (this.baseline <= 0.0f) {
            f4 = this.barHeight - this.baseline;
            f3 = 0.0f;
        } else {
            float f7 = -getDescender();
            f3 = this.baseline + f7;
            f4 = f7;
        }
        byte[] barsCode128Raw = getBarsCode128Raw(rawText);
        if (color != null) {
            pdfCanvas.setFillColor(color);
        }
        boolean z = true;
        float f8 = f;
        int i3 = 0;
        while (i3 < barsCode128Raw.length) {
            float f9 = barsCode128Raw[i3] * this.f2834x;
            if (z) {
                f5 = f8;
                bArr = barsCode128Raw;
                i = i3;
                pdfCanvas.rectangle(f8, f3, f9 - this.inkSpreading, this.barHeight);
            } else {
                i = i3;
                f5 = f8;
                bArr = barsCode128Raw;
            }
            z = !z;
            f8 = f5 + f9;
            i3 = i + 1;
            barsCode128Raw = bArr;
        }
        pdfCanvas.fill();
        if (this.font != null) {
            if (color2 != null) {
                pdfCanvas.setFillColor(color2);
            }
            pdfCanvas.beginText();
            pdfCanvas.setFontAndSize(this.font, this.size);
            pdfCanvas.setTextMatrix(f2, f4);
            pdfCanvas.showText(str);
            pdfCanvas.endText();
        }
        return getBarcodeSize();
    }

    @Override // com.itextpdf.barcodes.Barcode1D
    public void setCode(String str) {
        if (getCodeType() == 2 && str.startsWith("(")) {
            StringBuilder sb = new StringBuilder("");
            int i = 0;
            while (i >= 0) {
                int iIndexOf = str.indexOf(41, i);
                if (iIndexOf < 0) {
                    throw new IllegalArgumentException("Badly formed ucc string");
                }
                String strSubstring = str.substring(i + 1, iIndexOf);
                if (strSubstring.length() < 2) {
                    throw new IllegalArgumentException("AI is too short");
                }
                int i2 = Integer.parseInt(strSubstring);
                int iIntValue = ais.get(Integer.valueOf(i2)).intValue();
                if (iIntValue == 0) {
                    throw new IllegalArgumentException("AI not found");
                }
                String string = Integer.valueOf(i2).toString();
                if (string.length() == 1) {
                    string = AppEventsConstants.EVENT_PARAM_VALUE_NO + string;
                }
                int iIndexOf2 = str.indexOf(40, iIndexOf);
                int length = iIndexOf2 < 0 ? str.length() : iIndexOf2;
                sb.append(string).append(str.substring(iIndexOf + 1, length));
                if (iIntValue < 0) {
                    if (iIndexOf2 >= 0) {
                        sb.append(FNC1);
                    }
                } else if (((length - iIndexOf) - 1) + string.length() != iIntValue) {
                    throw new IllegalArgumentException("Invalid AI length");
                }
                i = iIndexOf2;
            }
            super.setCode(sb.toString());
            return;
        }
        super.setCode(str);
    }

    @Override // com.itextpdf.barcodes.Barcode1D
    public Image createAwtImage(java.awt.Color color, java.awt.Color color2) {
        String rawText;
        int rgb = color == null ? this.DEFAULT_BAR_FOREGROUND_COLOR.getRGB() : color.getRGB();
        int rgb2 = color2 == null ? this.DEFAULT_BAR_BACKGROUND_COLOR.getRGB() : color2.getRGB();
        Canvas canvas = new Canvas();
        boolean z = true;
        if (this.codeType == 3) {
            int iIndexOf = this.code.indexOf(65535);
            if (iIndexOf >= 0) {
                rawText = this.code.substring(0, iIndexOf);
            } else {
                rawText = this.code;
            }
        } else {
            rawText = getRawText(this.code, this.codeType == 2);
        }
        int length = ((rawText.length() + 2) * 11) + 2;
        byte[] barsCode128Raw = getBarsCode128Raw(rawText);
        int i = (int) this.barHeight;
        int i2 = length * i;
        int[] iArr = new int[i2];
        int i3 = 0;
        for (byte b : barsCode128Raw) {
            int i4 = z ? rgb : rgb2;
            z = !z;
            int i5 = 0;
            while (i5 < b) {
                iArr[i3] = i4;
                i5++;
                i3++;
            }
        }
        for (int i6 = length; i6 < i2; i6 += length) {
            System.arraycopy(iArr, 0, iArr, i6, length);
        }
        return canvas.createImage(new MemoryImageSource(length, i, iArr, 0, length));
    }

    /* JADX INFO: renamed from: com.itextpdf.barcodes.Barcode128$1 */
    static /* synthetic */ class C34571 {
        static final /* synthetic */ int[] $SwitchMap$com$itextpdf$barcodes$Barcode128$Barcode128CodeSet;

        static {
            int[] iArr = new int[Barcode128CodeSet.values().length];
            $SwitchMap$com$itextpdf$barcodes$Barcode128$Barcode128CodeSet = iArr;
            try {
                iArr[Barcode128CodeSet.A.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$itextpdf$barcodes$Barcode128$Barcode128CodeSet[Barcode128CodeSet.B.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$itextpdf$barcodes$Barcode128$Barcode128CodeSet[Barcode128CodeSet.C.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private static char getStartSymbol(Barcode128CodeSet barcode128CodeSet) {
        int i = C34571.$SwitchMap$com$itextpdf$barcodes$Barcode128$Barcode128CodeSet[barcode128CodeSet.ordinal()];
        return i != 1 ? i != 3 ? START_B : START_C : START_A;
    }

    static {
        byte[] bArr = new byte[6];
        // fill-array-data instruction
        bArr[0] = 1;
        bArr[1] = 2;
        bArr[2] = 2;
        bArr[3] = 1;
        bArr[4] = 3;
        bArr[5] = 2;
        BARS = new byte[][]{new byte[]{2, 1, 2, 2, 2, 2}, new byte[]{2, 2, 2, 1, 2, 2}, new byte[]{2, 2, 2, 2, 2, 1}, new byte[]{1, 2, 1, 2, 2, 3}, new byte[]{1, 2, 1, 3, 2, 2}, new byte[]{1, 3, 1, 2, 2, 2}, new byte[]{1, 2, 2, 2, 1, 3}, new byte[]{1, 2, 2, 3, 1, 2}, new byte[]{1, 3, 2, 2, 1, 2}, new byte[]{2, 2, 1, 2, 1, 3}, new byte[]{2, 2, 1, 3, 1, 2}, new byte[]{2, 3, 1, 2, 1, 2}, new byte[]{1, 1, 2, 2, 3, 2}, bArr, new byte[]{1, 2, 2, 2, 3, 1}, new byte[]{1, 1, 3, 2, 2, 2}, new byte[]{1, 2, 3, 1, 2, 2}, new byte[]{1, 2, 3, 2, 2, 1}, new byte[]{2, 2, 3, 2, 1, 1}, new byte[]{2, 2, 1, 1, 3, 2}, new byte[]{2, 2, 1, 2, 3, 1}, new byte[]{2, 1, 3, 2, 1, 2}, new byte[]{2, 2, 3, 1, 1, 2}, new byte[]{3, 1, 2, 1, 3, 1}, new byte[]{3, 1, 1, 2, 2, 2}, new byte[]{3, 2, 1, 1, 2, 2}, new byte[]{3, 2, 1, 2, 2, 1}, new byte[]{3, 1, 2, 2, 1, 2}, new byte[]{3, 2, 2, 1, 1, 2}, new byte[]{3, 2, 2, 2, 1, 1}, new byte[]{2, 1, 2, 1, 2, 3}, new byte[]{2, 1, 2, 3, 2, 1}, new byte[]{2, 3, 2, 1, 2, 1}, new byte[]{1, 1, 1, 3, 2, 3}, new byte[]{1, 3, 1, 1, 2, 3}, new byte[]{1, 3, 1, 3, 2, 1}, new byte[]{1, 1, 2, 3, 1, 3}, new byte[]{1, 3, 2, 1, 1, 3}, new byte[]{1, 3, 2, 3, 1, 1}, new byte[]{2, 1, 1, 3, 1, 3}, new byte[]{2, 3, 1, 1, 1, 3}, new byte[]{2, 3, 1, 3, 1, 1}, new byte[]{1, 1, 2, 1, 3, 3}, new byte[]{1, 1, 2, 3, 3, 1}, new byte[]{1, 3, 2, 1, 3, 1}, new byte[]{1, 1, 3, 1, 2, 3}, new byte[]{1, 1, 3, 3, 2, 1}, new byte[]{1, 3, 3, 1, 2, 1}, new byte[]{3, 1, 3, 1, 2, 1}, new byte[]{2, 1, 1, 3, 3, 1}, new byte[]{2, 3, 1, 1, 3, 1}, new byte[]{2, 1, 3, 1, 1, 3}, new byte[]{2, 1, 3, 3, 1, 1}, new byte[]{2, 1, 3, 1, 3, 1}, new byte[]{3, 1, 1, 1, 2, 3}, new byte[]{3, 1, 1, 3, 2, 1}, new byte[]{3, 3, 1, 1, 2, 1}, new byte[]{3, 1, 2, 1, 1, 3}, new byte[]{3, 1, 2, 3, 1, 1}, new byte[]{3, 3, 2, 1, 1, 1}, new byte[]{3, 1, 4, 1, 1, 1}, new byte[]{2, 2, 1, 4, 1, 1}, new byte[]{4, 3, 1, 1, 1, 1}, new byte[]{1, 1, 1, 2, 2, 4}, new byte[]{1, 1, 1, 4, 2, 2}, new byte[]{1, 2, 1, 1, 2, 4}, new byte[]{1, 2, 1, 4, 2, 1}, new byte[]{1, 4, 1, 1, 2, 2}, new byte[]{1, 4, 1, 2, 2, 1}, new byte[]{1, 1, 2, 2, 1, 4}, new byte[]{1, 1, 2, 4, 1, 2}, new byte[]{1, 2, 2, 1, 1, 4}, new byte[]{1, 2, 2, 4, 1, 1}, new byte[]{1, 4, 2, 1, 1, 2}, new byte[]{1, 4, 2, 2, 1, 1}, new byte[]{2, 4, 1, 2, 1, 1}, new byte[]{2, 2, 1, 1, 1, 4}, new byte[]{4, 1, 3, 1, 1, 1}, new byte[]{2, 4, 1, 1, 1, 2}, new byte[]{1, 3, 4, 1, 1, 1}, new byte[]{1, 1, 1, 2, 4, 2}, new byte[]{1, 2, 1, 1, 4, 2}, new byte[]{1, 2, 1, 2, 4, 1}, new byte[]{1, 1, 4, 2, 1, 2}, new byte[]{1, 2, 4, 1, 1, 2}, new byte[]{1, 2, 4, 2, 1, 1}, new byte[]{4, 1, 1, 2, 1, 2}, new byte[]{4, 2, 1, 1, 1, 2}, new byte[]{4, 2, 1, 2, 1, 1}, new byte[]{2, 1, 2, 1, 4, 1}, new byte[]{2, 1, 4, 1, 2, 1}, new byte[]{4, 1, 2, 1, 2, 1}, new byte[]{1, 1, 1, 1, 4, 3}, new byte[]{1, 1, 1, 3, 4, 1}, new byte[]{1, 3, 1, 1, 4, 1}, new byte[]{1, 1, 4, 1, 1, 3}, new byte[]{1, 1, 4, 3, 1, 1}, new byte[]{4, 1, 1, 1, 1, 3}, new byte[]{4, 1, 1, 3, 1, 1}, new byte[]{1, 1, 3, 1, 4, 1}, new byte[]{1, 1, 4, 1, 3, 1}, new byte[]{3, 1, 1, 1, 4, 1}, new byte[]{4, 1, 1, 1, 3, 1}, new byte[]{2, 1, 1, 4, 1, 2}, new byte[]{2, 1, 1, 2, 1, 4}, new byte[]{2, 1, 1, 2, 3, 2}};
        HashMap map = new HashMap();
        ais = map;
        map.put(0, 20);
        ais.put(1, 16);
        ais.put(2, 16);
        ais.put(10, -1);
        ais.put(11, 9);
        ais.put(12, 8);
        ais.put(13, 8);
        ais.put(15, 8);
        ais.put(17, 8);
        ais.put(20, 4);
        ais.put(21, -1);
        ais.put(22, -1);
        ais.put(23, -1);
        ais.put(240, -1);
        ais.put(241, -1);
        ais.put(Integer.valueOf(ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION), -1);
        ais.put(251, -1);
        ais.put(252, -1);
        ais.put(30, -1);
        for (int i = 3100; i < 3700; i++) {
            ais.put(Integer.valueOf(i), 10);
        }
        ais.put(37, -1);
        for (int i2 = 3900; i2 < 3940; i2++) {
            ais.put(Integer.valueOf(i2), -1);
        }
        ais.put(400, -1);
        ais.put(Integer.valueOf(TypedValues.CycleType.TYPE_CURVE_FIT), -1);
        ais.put(402, 20);
        ais.put(Integer.valueOf(TypedValues.CycleType.TYPE_ALPHA), -1);
        for (int i3 = WalletConstants.ERROR_CODE_INVALID_TRANSACTION; i3 < 416; i3++) {
            ais.put(Integer.valueOf(i3), 16);
        }
        ais.put(Integer.valueOf(TypedValues.CycleType.TYPE_EASING), -1);
        ais.put(421, -1);
        ais.put(Integer.valueOf(TypedValues.CycleType.TYPE_CUSTOM_WAVE_SHAPE), 6);
        ais.put(Integer.valueOf(TypedValues.CycleType.TYPE_WAVE_PERIOD), -1);
        ais.put(Integer.valueOf(TypedValues.CycleType.TYPE_WAVE_OFFSET), 6);
        ais.put(Integer.valueOf(TypedValues.CycleType.TYPE_WAVE_PHASE), 6);
        ais.put(426, 6);
        ais.put(7001, 17);
        ais.put(7002, -1);
        for (int i4 = 7030; i4 < 7040; i4++) {
            ais.put(Integer.valueOf(i4), -1);
        }
        ais.put(8001, 18);
        ais.put(8002, -1);
        ais.put(8003, -1);
        ais.put(8004, -1);
        ais.put(8005, 10);
        ais.put(8006, 22);
        ais.put(8007, -1);
        ais.put(8008, -1);
        ais.put(8018, 22);
        ais.put(8020, -1);
        ais.put(8100, 10);
        ais.put(8101, 14);
        ais.put(8102, 6);
        for (int i5 = 90; i5 < 100; i5++) {
            ais.put(Integer.valueOf(i5), -1);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0004, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static boolean isNextDigits(java.lang.String r5, int r6, int r7) {
        /*
            int r0 = r5.length()
        L4:
            r1 = 0
            if (r6 >= r0) goto L37
            if (r7 <= 0) goto L37
            char r2 = r5.charAt(r6)
            r3 = 202(0xca, float:2.83E-43)
            if (r2 != r3) goto L14
            int r6 = r6 + 1
            goto L4
        L14:
            r2 = 2
            int r2 = java.lang.Math.min(r2, r7)
            int r3 = r6 + r2
            if (r3 <= r0) goto L1e
            return r1
        L1e:
            int r3 = r2 + (-1)
            if (r2 <= 0) goto L4
            int r2 = r6 + 1
            char r6 = r5.charAt(r6)
            r4 = 48
            if (r6 < r4) goto L36
            r4 = 57
            if (r6 <= r4) goto L31
            goto L36
        L31:
            int r7 = r7 + (-1)
            r6 = r2
            r2 = r3
            goto L1e
        L36:
            return r1
        L37:
            if (r7 != 0) goto L3a
            r1 = 1
        L3a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.barcodes.Barcode128.isNextDigits(java.lang.String, int, int):boolean");
    }

    static String getPackedRawDigits(String str, int i, int i2) {
        StringBuilder sb = new StringBuilder("");
        int i3 = i;
        while (i2 > 0) {
            if (str.charAt(i3) == 202) {
                sb.append(FNC1_INDEX);
                i3++;
            } else {
                i2 -= 2;
                int i4 = i3 + 1;
                int iCharAt = str.charAt(i3) - '0';
                i3 += 2;
                sb.append((char) ((iCharAt * 10) + (str.charAt(i4) - '0')));
            }
        }
        return ((char) (i3 - i)) + sb.toString();
    }
}
