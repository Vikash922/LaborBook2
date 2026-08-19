package com.itextpdf.kernel.pdf;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.utils.ICopyFilter;
import org.shadow.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes6.dex */
public class PdfIndirectReference extends PdfObject implements Comparable<PdfIndirectReference> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int LENGTH_OF_INDIRECTS_CHAIN = 31;
    protected int genNr;
    protected final int objNr;
    protected int objectStreamNumber;
    protected long offsetOrIndex;
    protected PdfDocument pdfDocument;
    protected PdfObject refersTo;

    @Override // com.itextpdf.kernel.pdf.PdfObject
    protected void copyContent(PdfObject pdfObject, PdfDocument pdfDocument) {
    }

    @Override // com.itextpdf.kernel.pdf.PdfObject
    protected void copyContent(PdfObject pdfObject, PdfDocument pdfDocument, ICopyFilter iCopyFilter) {
    }

    @Override // com.itextpdf.kernel.pdf.PdfObject
    public byte getType() {
        return (byte) 5;
    }

    protected PdfIndirectReference(PdfDocument pdfDocument, int i) {
        this(pdfDocument, i, 0);
    }

    protected PdfIndirectReference(PdfDocument pdfDocument, int i, int i2) {
        this.refersTo = null;
        this.objectStreamNumber = 0;
        this.offsetOrIndex = 0L;
        this.pdfDocument = pdfDocument;
        this.objNr = i;
        this.genNr = i2;
    }

    protected PdfIndirectReference(PdfDocument pdfDocument, int i, int i2, long j) {
        this.refersTo = null;
        this.objectStreamNumber = 0;
        this.pdfDocument = pdfDocument;
        this.objNr = i;
        this.genNr = i2;
        this.offsetOrIndex = j;
    }

    public int getObjNumber() {
        return this.objNr;
    }

    public int getGenNumber() {
        return this.genNr;
    }

    public PdfObject getRefersTo() {
        return getRefersTo(true);
    }

    public PdfObject getRefersTo(boolean z) {
        if (!z) {
            if (this.refersTo == null && !checkState((short) 1) && !checkState((short) 8) && !checkState((short) 2) && getReader() != null) {
                this.refersTo = getReader().readObject(this);
            }
            return this.refersTo;
        }
        PdfObject refersTo = getRefersTo(false);
        for (int i = 0; i < 31 && (refersTo instanceof PdfIndirectReference); i++) {
            refersTo = ((PdfIndirectReference) refersTo).getRefersTo(false);
        }
        return refersTo;
    }

    protected void setRefersTo(PdfObject pdfObject) {
        this.refersTo = pdfObject;
    }

    public int getObjStreamNumber() {
        return this.objectStreamNumber;
    }

    public long getOffset() {
        if (this.objectStreamNumber == 0) {
            return this.offsetOrIndex;
        }
        return -1L;
    }

    public int getIndex() {
        if (this.objectStreamNumber == 0) {
            return -1;
        }
        return (int) this.offsetOrIndex;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        PdfIndirectReference pdfIndirectReference = (PdfIndirectReference) obj;
        PdfDocument pdfDocument = this.pdfDocument;
        PdfDocument pdfDocument2 = pdfIndirectReference.pdfDocument;
        boolean z = pdfDocument == pdfDocument2;
        if (!z) {
            z = (pdfDocument == null || pdfDocument2 == null || pdfDocument.getDocumentId() != pdfIndirectReference.pdfDocument.getDocumentId()) ? false : true;
        }
        return this.objNr == pdfIndirectReference.objNr && this.genNr == pdfIndirectReference.genNr && z;
    }

    public int hashCode() {
        int i = (this.objNr * 31) + this.genNr;
        PdfDocument pdfDocument = this.pdfDocument;
        return pdfDocument != null ? (i * 31) + ((int) pdfDocument.getDocumentId()) : i;
    }

    @Override // java.lang.Comparable
    public int compareTo(PdfIndirectReference pdfIndirectReference) {
        int i = this.objNr;
        int i2 = pdfIndirectReference.objNr;
        if (i != i2) {
            return i > i2 ? 1 : -1;
        }
        int i3 = this.genNr;
        int i4 = pdfIndirectReference.genNr;
        if (i3 == i4) {
            return comparePdfDocumentLinks(pdfIndirectReference);
        }
        return i3 > i4 ? 1 : -1;
    }

    public PdfDocument getDocument() {
        return this.pdfDocument;
    }

    public void setFree() {
        getDocument().getXref().freeReference(this);
    }

    public boolean isFree() {
        return checkState((short) 2);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(StringUtils.SPACE);
        if (checkState((short) 2)) {
            sb.append("Free; ");
        }
        if (checkState((short) 8)) {
            sb.append("Modified; ");
        }
        if (checkState((short) 32)) {
            sb.append("MustBeFlushed; ");
        }
        if (checkState((short) 4)) {
            sb.append("Reading; ");
        }
        if (checkState((short) 1)) {
            sb.append("Flushed; ");
        }
        if (checkState((short) 16)) {
            sb.append("OriginalObjectStream; ");
        }
        if (checkState((short) 128)) {
            sb.append("ForbidRelease; ");
        }
        if (checkState((short) 256)) {
            sb.append("ReadOnly; ");
        }
        return MessageFormatUtil.format("{0} {1} R{2}", Integer.toString(getObjNumber()), Integer.toString(getGenNumber()), sb.substring(0, sb.length() - 1));
    }

    protected PdfWriter getWriter() {
        if (getDocument() != null) {
            return getDocument().getWriter();
        }
        return null;
    }

    protected PdfReader getReader() {
        if (getDocument() != null) {
            return getDocument().getReader();
        }
        return null;
    }

    @Override // com.itextpdf.kernel.pdf.PdfObject
    protected PdfObject newInstance() {
        return PdfNull.PDF_NULL;
    }

    @Override // com.itextpdf.kernel.pdf.PdfObject
    protected PdfObject setState(short s) {
        return super.setState(s);
    }

    void setObjStreamNumber(int i) {
        this.objectStreamNumber = i;
    }

    void setIndex(long j) {
        this.offsetOrIndex = j;
    }

    void setOffset(long j) {
        this.offsetOrIndex = j;
        this.objectStreamNumber = 0;
    }

    void fixOffset(long j) {
        if (isFree()) {
            return;
        }
        this.offsetOrIndex = j;
    }

    private int comparePdfDocumentLinks(PdfIndirectReference pdfIndirectReference) {
        PdfDocument pdfDocument = this.pdfDocument;
        PdfDocument pdfDocument2 = pdfIndirectReference.pdfDocument;
        if (pdfDocument == pdfDocument2) {
            return 0;
        }
        if (pdfDocument == null) {
            return -1;
        }
        if (pdfDocument2 == null) {
            return 1;
        }
        long documentId = pdfDocument.getDocumentId();
        long documentId2 = pdfIndirectReference.pdfDocument.getDocumentId();
        if (documentId == documentId2) {
            return 0;
        }
        return documentId > documentId2 ? 1 : -1;
    }
}
