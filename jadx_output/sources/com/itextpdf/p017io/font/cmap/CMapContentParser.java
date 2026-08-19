package com.itextpdf.p017io.font.cmap;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.p017io.font.PdfEncodings;
import com.itextpdf.p017io.source.ByteBuffer;
import com.itextpdf.p017io.source.PdfTokenizer;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import okio.Utf8;

/* JADX INFO: loaded from: classes6.dex */
public class CMapContentParser {
    public static final int COMMAND_TYPE = 200;
    private PdfTokenizer tokeniser;

    public CMapContentParser(PdfTokenizer pdfTokenizer) {
        this.tokeniser = pdfTokenizer;
    }

    public void parse(List<CMapObject> list) throws IOException {
        CMapObject object;
        list.clear();
        do {
            object = readObject();
            if (object == null) {
                return;
            } else {
                list.add(object);
            }
        } while (!object.isLiteral());
    }

    public CMapObject readDictionary() throws IOException {
        HashMap map = new HashMap();
        while (nextValidToken()) {
            if (this.tokeniser.getTokenType() != PdfTokenizer.TokenType.EndDic) {
                if (this.tokeniser.getTokenType() != PdfTokenizer.TokenType.Other || !"def".equals(this.tokeniser.getStringValue())) {
                    if (this.tokeniser.getTokenType() != PdfTokenizer.TokenType.Name) {
                        throw new com.itextpdf.p017io.exceptions.IOException("Dictionary key {0} is not a name.").setMessageParams(this.tokeniser.getStringValue());
                    }
                    String stringValue = this.tokeniser.getStringValue();
                    CMapObject object = readObject();
                    if (object.isToken()) {
                        if (object.toString().equals(">>")) {
                            this.tokeniser.throwError(com.itextpdf.p017io.exceptions.IOException.UnexpectedGtGt, new Object[0]);
                        }
                        if (object.toString().equals("]")) {
                            this.tokeniser.throwError("Unexpected close bracket.", new Object[0]);
                        }
                    }
                    map.put(stringValue, object);
                }
            } else {
                return new CMapObject(7, map);
            }
        }
        throw new com.itextpdf.p017io.exceptions.IOException(KernelExceptionMessageConstant.UNEXPECTED_END_OF_FILE);
    }

    public CMapObject readArray() throws IOException {
        ArrayList arrayList = new ArrayList();
        while (true) {
            CMapObject object = readObject();
            if (object.isToken()) {
                if (!object.toString().equals("]")) {
                    if (object.toString().equals(">>")) {
                        this.tokeniser.throwError(com.itextpdf.p017io.exceptions.IOException.UnexpectedGtGt, new Object[0]);
                    }
                } else {
                    return new CMapObject(6, arrayList);
                }
            }
            arrayList.add(object);
        }
    }

    public CMapObject readObject() throws IOException {
        if (!nextValidToken()) {
            return null;
        }
        switch (C34641.$SwitchMap$com$itextpdf$io$source$PdfTokenizer$TokenType[this.tokeniser.getTokenType().ordinal()]) {
            case 1:
                return readDictionary();
            case 2:
                return readArray();
            case 3:
                if (this.tokeniser.isHexString()) {
                    return new CMapObject(2, PdfTokenizer.decodeStringContent(this.tokeniser.getByteContent(), true));
                }
                return new CMapObject(1, PdfTokenizer.decodeStringContent(this.tokeniser.getByteContent(), false));
            case 4:
                return new CMapObject(3, decodeName(this.tokeniser.getByteContent()));
            case 5:
                CMapObject cMapObject = new CMapObject(4, null);
                try {
                    cMapObject.setValue(Integer.valueOf((int) Double.parseDouble(this.tokeniser.getStringValue())));
                    break;
                } catch (NumberFormatException unused) {
                    cMapObject.setValue(Integer.MIN_VALUE);
                }
                return cMapObject;
            case 6:
                return new CMapObject(5, this.tokeniser.getStringValue());
            case 7:
                return new CMapObject(8, "]");
            case 8:
                return new CMapObject(8, ">>");
            default:
                return new CMapObject(0, "");
        }
    }

    /* JADX INFO: renamed from: com.itextpdf.io.font.cmap.CMapContentParser$1 */
    static /* synthetic */ class C34641 {
        static final /* synthetic */ int[] $SwitchMap$com$itextpdf$io$source$PdfTokenizer$TokenType;

        static {
            int[] iArr = new int[PdfTokenizer.TokenType.values().length];
            $SwitchMap$com$itextpdf$io$source$PdfTokenizer$TokenType = iArr;
            try {
                iArr[PdfTokenizer.TokenType.StartDic.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$itextpdf$io$source$PdfTokenizer$TokenType[PdfTokenizer.TokenType.StartArray.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$itextpdf$io$source$PdfTokenizer$TokenType[PdfTokenizer.TokenType.String.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$itextpdf$io$source$PdfTokenizer$TokenType[PdfTokenizer.TokenType.Name.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$itextpdf$io$source$PdfTokenizer$TokenType[PdfTokenizer.TokenType.Number.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$itextpdf$io$source$PdfTokenizer$TokenType[PdfTokenizer.TokenType.Other.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$itextpdf$io$source$PdfTokenizer$TokenType[PdfTokenizer.TokenType.EndArray.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$itextpdf$io$source$PdfTokenizer$TokenType[PdfTokenizer.TokenType.EndDic.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public boolean nextValidToken() throws IOException {
        while (this.tokeniser.nextToken()) {
            if (this.tokeniser.getTokenType() != PdfTokenizer.TokenType.Comment) {
                return true;
            }
        }
        return false;
    }

    protected static String decodeName(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (i < bArr.length) {
            try {
                char hex = (char) bArr[i];
                if (hex == '#') {
                    byte b = bArr[i + 1];
                    i += 2;
                    hex = (char) ((ByteBuffer.getHex(b) << 4) + ByteBuffer.getHex(bArr[i]));
                }
                sb.append(hex);
                i++;
            } catch (IndexOutOfBoundsException unused) {
            }
        }
        return sb.toString();
    }

    private static String toHex4(int i) {
        return ("0000" + Integer.toHexString(i)).substring(r2.length() - 4);
    }

    public static String toHex(int i) {
        if (i < 65536) {
            return "<" + toHex4(i) + ">";
        }
        int i2 = i - 65536;
        return "[<" + toHex4((i2 / 1024) + 55296) + toHex4((i2 % 1024) + Utf8.LOG_SURROGATE_HEADER) + ">]";
    }

    public static String decodeCMapObject(CMapObject cMapObject) {
        if (cMapObject.isHexString()) {
            return PdfEncodings.convertToString(((String) cMapObject.getValue()).getBytes(), PdfEncodings.UNICODE_BIG_UNMARKED);
        }
        return (String) cMapObject.getValue();
    }
}
