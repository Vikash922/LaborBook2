package com.itextpdf.kernel.pdf.annot;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfStream;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes6.dex */
public class PdfSoundAnnotation extends PdfMarkupAnnotation {
    public PdfSoundAnnotation(Rectangle rectangle, PdfStream pdfStream) {
        super(rectangle);
        put(PdfName.Sound, pdfStream);
    }

    protected PdfSoundAnnotation(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    public PdfSoundAnnotation(PdfDocument pdfDocument, Rectangle rectangle, InputStream inputStream, float f, PdfName pdfName, int i, int i2) throws IOException {
        super(rectangle);
        PdfStream pdfStream = new PdfStream(pdfDocument, correctWavFile(inputStream));
        pdfStream.put(PdfName.f3056R, new PdfNumber(f));
        pdfStream.put(PdfName.f3000E, pdfName);
        pdfStream.put(PdfName.f2973B, new PdfNumber(i2));
        pdfStream.put(PdfName.f2980C, new PdfNumber(i));
        put(PdfName.Sound, pdfStream);
    }

    @Override // com.itextpdf.kernel.pdf.annot.PdfAnnotation
    public PdfName getSubtype() {
        return PdfName.Sound;
    }

    public PdfStream getSound() {
        return getPdfObject().getAsStream(PdfName.Sound);
    }

    private static InputStream correctWavFile(InputStream inputStream) throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        bufferedInputStream.mark(0);
        String str = "";
        for (int i = 0; i < 4; i++) {
            str = str + ((char) bufferedInputStream.read());
        }
        bufferedInputStream.reset();
        if ("RIFF".equals(str)) {
            bufferedInputStream.read();
        }
        return bufferedInputStream;
    }

    public PdfName getIconName() {
        return getPdfObject().getAsName(PdfName.Name);
    }

    public PdfSoundAnnotation setIconName(PdfName pdfName) {
        return (PdfSoundAnnotation) put(PdfName.Name, pdfName);
    }
}
