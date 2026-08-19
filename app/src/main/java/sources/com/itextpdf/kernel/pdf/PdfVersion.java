package com.itextpdf.kernel.pdf;

import com.itextpdf.commons.utils.MessageFormatUtil;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class PdfVersion implements Comparable<PdfVersion> {
    private int major;
    private int minor;
    private static final List<PdfVersion> values = new ArrayList();
    public static final PdfVersion PDF_1_0 = createPdfVersion(1, 0);
    public static final PdfVersion PDF_1_1 = createPdfVersion(1, 1);
    public static final PdfVersion PDF_1_2 = createPdfVersion(1, 2);
    public static final PdfVersion PDF_1_3 = createPdfVersion(1, 3);
    public static final PdfVersion PDF_1_4 = createPdfVersion(1, 4);
    public static final PdfVersion PDF_1_5 = createPdfVersion(1, 5);
    public static final PdfVersion PDF_1_6 = createPdfVersion(1, 6);
    public static final PdfVersion PDF_1_7 = createPdfVersion(1, 7);
    public static final PdfVersion PDF_2_0 = createPdfVersion(2, 0);

    private PdfVersion(int i, int i2) {
        this.major = i;
        this.minor = i2;
    }

    public String toString() {
        return MessageFormatUtil.format("PDF-{0}.{1}", Integer.valueOf(this.major), Integer.valueOf(this.minor));
    }

    public PdfName toPdfName() {
        return new PdfName(MessageFormatUtil.format("{0}.{1}", Integer.valueOf(this.major), Integer.valueOf(this.minor)));
    }

    public static PdfVersion fromString(String str) {
        for (PdfVersion pdfVersion : values) {
            if (pdfVersion.toString().equals(str)) {
                return pdfVersion;
            }
        }
        throw new IllegalArgumentException("The provided pdf version was not found.");
    }

    public static PdfVersion fromPdfName(PdfName pdfName) {
        for (PdfVersion pdfVersion : values) {
            if (pdfVersion.toPdfName().equals(pdfName)) {
                return pdfVersion;
            }
        }
        throw new IllegalArgumentException("The provided pdf version was not found.");
    }

    @Override // java.lang.Comparable
    public int compareTo(PdfVersion pdfVersion) {
        int iCompare = Integer.compare(this.major, pdfVersion.major);
        return iCompare != 0 ? iCompare : Integer.compare(this.minor, pdfVersion.minor);
    }

    public boolean equals(Object obj) {
        return getClass() == obj.getClass() && compareTo((PdfVersion) obj) == 0;
    }

    private static PdfVersion createPdfVersion(int i, int i2) {
        PdfVersion pdfVersion = new PdfVersion(i, i2);
        values.add(pdfVersion);
        return pdfVersion;
    }
}
