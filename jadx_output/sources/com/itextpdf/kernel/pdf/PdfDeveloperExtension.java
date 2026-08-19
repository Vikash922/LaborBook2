package com.itextpdf.kernel.pdf;

/* JADX INFO: loaded from: classes6.dex */
public class PdfDeveloperExtension {
    public static final PdfDeveloperExtension ADOBE_1_7_EXTENSIONLEVEL3 = new PdfDeveloperExtension(PdfName.ADBE, PdfName.Pdf_Version_1_7, 3);
    public static final PdfDeveloperExtension ESIC_1_7_EXTENSIONLEVEL2 = new PdfDeveloperExtension(PdfName.ESIC, PdfName.Pdf_Version_1_7, 2);
    public static final PdfDeveloperExtension ESIC_1_7_EXTENSIONLEVEL5 = new PdfDeveloperExtension(PdfName.ESIC, PdfName.Pdf_Version_1_7, 5);
    protected PdfName baseVersion;
    protected int extensionLevel;
    protected PdfName prefix;

    public PdfDeveloperExtension(PdfName pdfName, PdfName pdfName2, int i) {
        this.prefix = pdfName;
        this.baseVersion = pdfName2;
        this.extensionLevel = i;
    }

    public PdfName getPrefix() {
        return this.prefix;
    }

    public PdfName getBaseVersion() {
        return this.baseVersion;
    }

    public int getExtensionLevel() {
        return this.extensionLevel;
    }

    public PdfDictionary getDeveloperExtensions() {
        PdfDictionary pdfDictionary = new PdfDictionary();
        pdfDictionary.put(PdfName.BaseVersion, this.baseVersion);
        pdfDictionary.put(PdfName.ExtensionLevel, new PdfNumber(this.extensionLevel));
        return pdfDictionary;
    }
}
