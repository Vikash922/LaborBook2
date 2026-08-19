package com.itextpdf.kernel.font;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.p017io.font.CidFont;
import com.itextpdf.p017io.font.FontProgram;
import com.itextpdf.p017io.font.FontProgramFactory;
import com.itextpdf.p017io.font.PdfEncodings;
import com.itextpdf.p017io.font.TrueTypeFont;
import com.itextpdf.p017io.font.Type1Font;
import java.io.IOException;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class PdfFontFactory {
    private static final boolean DEFAULT_CACHED = true;
    private static final EmbeddingStrategy DEFAULT_EMBEDDING = EmbeddingStrategy.PREFER_EMBEDDED;
    private static final String DEFAULT_ENCODING = "";

    public enum EmbeddingStrategy {
        FORCE_EMBEDDED,
        FORCE_NOT_EMBEDDED,
        PREFER_EMBEDDED,
        PREFER_NOT_EMBEDDED
    }

    public static PdfFont createFont() throws IOException {
        return createFont("Helvetica", "");
    }

    public static PdfFont createFont(PdfDictionary pdfDictionary) {
        if (pdfDictionary == null) {
            throw new PdfException(KernelExceptionMessageConstant.CANNOT_CREATE_FONT_FROM_NULL_PDF_DICTIONARY);
        }
        PdfObject pdfObject = pdfDictionary.get(PdfName.Subtype);
        if (PdfName.Type1.equals(pdfObject)) {
            return new PdfType1Font(pdfDictionary);
        }
        if (PdfName.Type0.equals(pdfObject)) {
            return new PdfType0Font(pdfDictionary);
        }
        if (PdfName.TrueType.equals(pdfObject)) {
            return new PdfTrueTypeFont(pdfDictionary);
        }
        if (PdfName.Type3.equals(pdfObject)) {
            return new PdfType3Font(pdfDictionary);
        }
        if (PdfName.MMType1.equals(pdfObject)) {
            return new PdfType1Font(pdfDictionary);
        }
        throw new PdfException(KernelExceptionMessageConstant.DICTIONARY_DOES_NOT_HAVE_SUPPORTED_FONT_DATA);
    }

    public static PdfFont createFont(String str, String str2, PdfDocument pdfDocument) throws IOException {
        return createFont(str, str2, DEFAULT_EMBEDDING, pdfDocument);
    }

    public static PdfFont createFont(String str, String str2, EmbeddingStrategy embeddingStrategy, PdfDocument pdfDocument) throws IOException {
        if (pdfDocument == null) {
            return createFont(str, str2, embeddingStrategy);
        }
        PdfFont pdfFontFindFont = pdfDocument.findFont(str, str2);
        if (pdfFontFindFont == null && (pdfFontFindFont = createFont(str, str2, embeddingStrategy)) != null) {
            pdfFontFindFont.makeIndirect(pdfDocument);
        }
        return pdfFontFindFont;
    }

    public static PdfFont createFont(String str) throws IOException {
        return createFont(str, "");
    }

    public static PdfFont createFont(String str, String str2) throws IOException {
        return createFont(str, str2, DEFAULT_EMBEDDING);
    }

    public static PdfFont createFont(String str, EmbeddingStrategy embeddingStrategy) throws IOException {
        return createFont(str, "", embeddingStrategy);
    }

    public static PdfFont createFont(String str, String str2, EmbeddingStrategy embeddingStrategy) throws IOException {
        return createFont(str, str2, embeddingStrategy, true);
    }

    public static PdfFont createFont(String str, String str2, EmbeddingStrategy embeddingStrategy, boolean z) throws IOException {
        return createFont(FontProgramFactory.createFont(str, z), str2, embeddingStrategy);
    }

    public static PdfFont createFont(FontProgram fontProgram, String str, EmbeddingStrategy embeddingStrategy) {
        if (fontProgram == null) {
            return null;
        }
        if (fontProgram instanceof Type1Font) {
            return createFontFromType1FontProgram((Type1Font) fontProgram, str, embeddingStrategy);
        }
        if (fontProgram instanceof TrueTypeFont) {
            if (str == null || "".equals(str)) {
                str = PdfEncodings.IDENTITY_H;
            }
            if (PdfEncodings.IDENTITY_H.equals(str) || PdfEncodings.IDENTITY_V.equals(str)) {
                return createType0FontFromTrueTypeFontProgram((TrueTypeFont) fontProgram, str, embeddingStrategy);
            }
            return createTrueTypeFontFromTrueTypeFontProgram((TrueTypeFont) fontProgram, str, embeddingStrategy);
        }
        if (fontProgram instanceof CidFont) {
            return createType0FontFromCidFontProgram((CidFont) fontProgram, str, embeddingStrategy);
        }
        return null;
    }

    public static PdfFont createFont(FontProgram fontProgram, String str) {
        return createFont(fontProgram, str, DEFAULT_EMBEDDING);
    }

    public static PdfFont createFont(FontProgram fontProgram) {
        return createFont(fontProgram, "");
    }

    public static PdfFont createFont(byte[] bArr, String str) throws IOException {
        return createFont(bArr, str, DEFAULT_EMBEDDING);
    }

    public static PdfFont createFont(byte[] bArr, EmbeddingStrategy embeddingStrategy) throws IOException {
        return createFont(bArr, "", embeddingStrategy);
    }

    public static PdfFont createFont(byte[] bArr, String str, EmbeddingStrategy embeddingStrategy) throws IOException {
        return createFont(bArr, str, embeddingStrategy, true);
    }

    public static PdfFont createFont(byte[] bArr, String str, EmbeddingStrategy embeddingStrategy, boolean z) throws IOException {
        return createFont(FontProgramFactory.createFont(bArr, z), str, embeddingStrategy);
    }

    public static PdfFont createTtcFont(byte[] bArr, int i, String str, EmbeddingStrategy embeddingStrategy, boolean z) throws IOException {
        return createFont(FontProgramFactory.createFont(bArr, i, z), str, embeddingStrategy);
    }

    public static PdfFont createTtcFont(String str, int i, String str2, EmbeddingStrategy embeddingStrategy, boolean z) throws IOException {
        return createFont(FontProgramFactory.createFont(str, i, z), str2, embeddingStrategy);
    }

    public static PdfType3Font createType3Font(PdfDocument pdfDocument, boolean z) {
        return new PdfType3Font(pdfDocument, z);
    }

    public static PdfType3Font createType3Font(PdfDocument pdfDocument, String str, String str2, boolean z) {
        return new PdfType3Font(pdfDocument, str, str2, z);
    }

    public static PdfFont createRegisteredFont(String str, String str2, EmbeddingStrategy embeddingStrategy, int i, boolean z) throws IOException {
        return createFont(FontProgramFactory.createRegisteredFont(str, i, z), str2, embeddingStrategy);
    }

    public static PdfFont createRegisteredFont(String str, String str2, EmbeddingStrategy embeddingStrategy, boolean z) throws IOException {
        return createRegisteredFont(str, str2, embeddingStrategy, -1, z);
    }

    public static PdfFont createRegisteredFont(String str, String str2, EmbeddingStrategy embeddingStrategy) throws IOException {
        return createRegisteredFont(str, str2, embeddingStrategy, -1);
    }

    public static PdfFont createRegisteredFont(String str, String str2, EmbeddingStrategy embeddingStrategy, int i) throws IOException {
        return createRegisteredFont(str, str2, embeddingStrategy, i, true);
    }

    public static PdfFont createRegisteredFont(String str, String str2) throws IOException {
        return createRegisteredFont(str, str2, DEFAULT_EMBEDDING);
    }

    public static PdfFont createRegisteredFont(String str) throws IOException {
        return createRegisteredFont(str, "");
    }

    public static void registerFamily(String str, String str2, String str3) {
        FontProgramFactory.registerFontFamily(str, str2, str3);
    }

    public static void register(String str) {
        register(str, null);
    }

    public static void register(String str, String str2) {
        FontProgramFactory.registerFont(str, str2);
    }

    public static int registerDirectory(String str) {
        return FontProgramFactory.registerFontDirectory(str);
    }

    public static int registerSystemDirectories() {
        return FontProgramFactory.registerSystemFontDirectories();
    }

    public static Set<String> getRegisteredFonts() {
        return FontProgramFactory.getRegisteredFonts();
    }

    public static Set<String> getRegisteredFamilies() {
        return FontProgramFactory.getRegisteredFontFamilies();
    }

    public static boolean isRegistered(String str) {
        return FontProgramFactory.isRegisteredFont(str);
    }

    /* JADX INFO: renamed from: com.itextpdf.kernel.font.PdfFontFactory$1 */
    static /* synthetic */ class C34721 {

        /* JADX INFO: renamed from: $SwitchMap$com$itextpdf$kernel$font$PdfFontFactory$EmbeddingStrategy */
        static final /* synthetic */ int[] f2934xbe3b1c2;

        static {
            int[] iArr = new int[EmbeddingStrategy.values().length];
            f2934xbe3b1c2 = iArr;
            try {
                iArr[EmbeddingStrategy.FORCE_EMBEDDED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2934xbe3b1c2[EmbeddingStrategy.PREFER_EMBEDDED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2934xbe3b1c2[EmbeddingStrategy.PREFER_NOT_EMBEDDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2934xbe3b1c2[EmbeddingStrategy.FORCE_NOT_EMBEDDED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private static PdfType1Font createFontFromType1FontProgram(Type1Font type1Font, String str, EmbeddingStrategy embeddingStrategy) {
        int i = C34721.f2934xbe3b1c2[embeddingStrategy.ordinal()];
        boolean zIsBuiltInFont = true;
        if (i != 1) {
            if (i == 2) {
                zIsBuiltInFont = true ^ type1Font.isBuiltInFont();
            } else {
                if (i != 3 && i != 4) {
                    throw new PdfException(KernelExceptionMessageConstant.UNSUPPORTED_FONT_EMBEDDING_STRATEGY);
                }
                zIsBuiltInFont = false;
            }
        } else if (type1Font.isBuiltInFont()) {
            throw new PdfException(KernelExceptionMessageConstant.CANNOT_EMBED_STANDARD_FONT);
        }
        return new PdfType1Font(type1Font, str, zIsBuiltInFont);
    }

    private static PdfType0Font createType0FontFromTrueTypeFontProgram(TrueTypeFont trueTypeFont, String str, EmbeddingStrategy embeddingStrategy) {
        if (!trueTypeFont.getFontNames().allowEmbedding()) {
            throw new PdfException(KernelExceptionMessageConstant.CANNOT_BE_EMBEDDED_DUE_TO_LICENSING_RESTRICTIONS).setMessageParams(trueTypeFont.getFontNames().getFontName() + trueTypeFont.getFontNames().getStyle());
        }
        int i = C34721.f2934xbe3b1c2[embeddingStrategy.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            return new PdfType0Font(trueTypeFont, str);
        }
        if (i == 4) {
            throw new PdfException(KernelExceptionMessageConstant.f2911x40006cab);
        }
        throw new PdfException(KernelExceptionMessageConstant.UNSUPPORTED_FONT_EMBEDDING_STRATEGY);
    }

    private static PdfTrueTypeFont createTrueTypeFontFromTrueTypeFontProgram(TrueTypeFont trueTypeFont, String str, EmbeddingStrategy embeddingStrategy) {
        int i = C34721.f2934xbe3b1c2[embeddingStrategy.ordinal()];
        boolean zAllowEmbedding = true;
        if (i != 1) {
            if (i == 2) {
                zAllowEmbedding = trueTypeFont.getFontNames().allowEmbedding();
            } else {
                if (i != 3 && i != 4) {
                    throw new PdfException(KernelExceptionMessageConstant.UNSUPPORTED_FONT_EMBEDDING_STRATEGY);
                }
                zAllowEmbedding = false;
            }
        } else if (!trueTypeFont.getFontNames().allowEmbedding()) {
            throw new PdfException(KernelExceptionMessageConstant.CANNOT_BE_EMBEDDED_DUE_TO_LICENSING_RESTRICTIONS).setMessageParams(trueTypeFont.getFontNames().getFontName() + trueTypeFont.getFontNames().getStyle());
        }
        return new PdfTrueTypeFont(trueTypeFont, str, zAllowEmbedding);
    }

    private static PdfType0Font createType0FontFromCidFontProgram(CidFont cidFont, String str, EmbeddingStrategy embeddingStrategy) {
        if (!cidFont.compatibleWith(str)) {
            return null;
        }
        int i = C34721.f2934xbe3b1c2[embeddingStrategy.ordinal()];
        if (i == 1) {
            throw new PdfException(KernelExceptionMessageConstant.CANNOT_EMBED_TYPE_0_FONT_WITH_CID_FONT_PROGRAM);
        }
        if (i == 2 || i == 3 || i == 4) {
            return new PdfType0Font(cidFont, str);
        }
        throw new PdfException(KernelExceptionMessageConstant.UNSUPPORTED_FONT_EMBEDDING_STRATEGY);
    }
}
