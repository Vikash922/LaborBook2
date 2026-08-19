package com.itextpdf.kernel.pdf.canvas.parser.util;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfLiteral;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfResources;
import com.itextpdf.kernel.pdf.PdfStream;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.p017io.source.PdfTokenizer;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class PdfCanvasParser {
    private PdfResources currentResources;
    private PdfTokenizer tokeniser;

    public PdfCanvasParser(PdfTokenizer pdfTokenizer) {
        this.tokeniser = pdfTokenizer;
    }

    public PdfCanvasParser(PdfTokenizer pdfTokenizer, PdfResources pdfResources) {
        this.tokeniser = pdfTokenizer;
        this.currentResources = pdfResources;
    }

    public List<PdfObject> parse(List<PdfObject> list) throws IOException {
        if (list == null) {
            list = new ArrayList<>();
        } else {
            list.clear();
        }
        while (true) {
            PdfObject object = readObject();
            if (object == null) {
                break;
            }
            list.add(object);
            if (this.tokeniser.getTokenType() == PdfTokenizer.TokenType.Other) {
                if ("BI".equals(object.toString())) {
                    PdfStream pdfStream = InlineImageParsingUtils.parse(this, this.currentResources.getResource(PdfName.ColorSpace));
                    list.clear();
                    list.add(pdfStream);
                    list.add(new PdfLiteral("EI"));
                }
            }
        }
        return list;
    }

    public PdfTokenizer getTokeniser() {
        return this.tokeniser;
    }

    public void setTokeniser(PdfTokenizer pdfTokenizer) {
        this.tokeniser = pdfTokenizer;
    }

    public PdfDictionary readDictionary() throws IOException {
        PdfDictionary pdfDictionary = new PdfDictionary();
        while (nextValidToken()) {
            if (this.tokeniser.getTokenType() == PdfTokenizer.TokenType.EndDic) {
                return pdfDictionary;
            }
            if (this.tokeniser.getTokenType() != PdfTokenizer.TokenType.Name) {
                PdfTokenizer pdfTokenizer = this.tokeniser;
                pdfTokenizer.throwError("Dictionary key {0} is not a name.", pdfTokenizer.getStringValue());
            }
            pdfDictionary.put(new PdfName(this.tokeniser.getStringValue()), readObject());
        }
        throw new PdfException(KernelExceptionMessageConstant.UNEXPECTED_END_OF_FILE);
    }

    public PdfArray readArray() throws IOException {
        PdfArray pdfArray = new PdfArray();
        while (true) {
            PdfObject object = readObject();
            if (!object.isArray() && this.tokeniser.getTokenType() == PdfTokenizer.TokenType.EndArray) {
                return pdfArray;
            }
            if (this.tokeniser.getTokenType() == PdfTokenizer.TokenType.EndDic && object.getType() != 3) {
                this.tokeniser.throwError(MessageFormatUtil.format(KernelExceptionMessageConstant.UNEXPECTED_TOKEN, ">>"), new Object[0]);
            }
            pdfArray.add(object);
        }
    }

    public PdfObject readObject() throws IOException {
        if (!nextValidToken()) {
            return null;
        }
        int i = C34861.$SwitchMap$com$itextpdf$io$source$PdfTokenizer$TokenType[this.tokeniser.getTokenType().ordinal()];
        if (i == 1) {
            return readDictionary();
        }
        if (i == 2) {
            return readArray();
        }
        if (i == 3) {
            return new PdfString(this.tokeniser.getDecodedStringContent()).setHexWriting(this.tokeniser.isHexString());
        }
        if (i == 4) {
            return new PdfName(this.tokeniser.getByteContent());
        }
        if (i == 5) {
            return new PdfNumber(this.tokeniser.getByteContent());
        }
        return new PdfLiteral(this.tokeniser.getByteContent());
    }

    /* JADX INFO: renamed from: com.itextpdf.kernel.pdf.canvas.parser.util.PdfCanvasParser$1 */
    static /* synthetic */ class C34861 {
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
}
