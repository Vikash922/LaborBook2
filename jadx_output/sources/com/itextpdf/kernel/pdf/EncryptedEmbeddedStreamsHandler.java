package com.itextpdf.kernel.pdf;

import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
class EncryptedEmbeddedStreamsHandler {
    private final PdfDocument document;
    private final Set<PdfStream> embeddedStreams = new HashSet();

    EncryptedEmbeddedStreamsHandler(PdfDocument pdfDocument) {
        this.document = pdfDocument;
    }

    void storeAllEmbeddedStreams() {
        PdfStream embeddedFileStreamFromDictionary;
        for (int i = 0; i < this.document.getNumberOfPdfObjects(); i++) {
            PdfObject pdfObject = this.document.getPdfObject(i);
            if ((pdfObject instanceof PdfDictionary) && (embeddedFileStreamFromDictionary = getEmbeddedFileStreamFromDictionary((PdfDictionary) pdfObject)) != null) {
                storeEmbeddedStream(embeddedFileStreamFromDictionary);
            }
        }
    }

    void storeEmbeddedStream(PdfStream pdfStream) {
        this.embeddedStreams.add(pdfStream);
    }

    boolean isStreamStoredAsEmbedded(PdfStream pdfStream) {
        return this.embeddedStreams.contains(pdfStream);
    }

    private static PdfStream getEmbeddedFileStreamFromDictionary(PdfDictionary pdfDictionary) {
        PdfDictionary asDictionary = pdfDictionary.getAsDictionary(PdfName.f3001EF);
        if (!PdfName.Filespec.equals(pdfDictionary.getAsName(PdfName.Type)) || asDictionary == null) {
            return null;
        }
        return asDictionary.getAsStream(PdfName.f3004F);
    }
}
