package com.itextpdf.kernel.pdf;

import com.itextpdf.kernel.exceptions.BadPasswordException;
import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.utils.ICopyFilter;
import com.itextpdf.kernel.utils.NullCopyFilter;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import java.io.IOException;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public abstract class PdfObject {
    public static final byte ARRAY = 1;
    public static final byte BOOLEAN = 2;
    public static final byte DICTIONARY = 3;
    protected static final short FLUSHED = 1;
    protected static final short FORBID_RELEASE = 128;
    protected static final short FREE = 2;
    public static final byte INDIRECT_REFERENCE = 5;
    public static final byte LITERAL = 4;
    protected static final short MODIFIED = 8;
    protected static final short MUST_BE_FLUSHED = 32;
    protected static final short MUST_BE_INDIRECT = 64;
    public static final byte NAME = 6;
    public static final byte NULL = 7;
    public static final byte NUMBER = 8;
    protected static final short ORIGINAL_OBJECT_STREAM = 16;
    protected static final short READING = 4;
    protected static final short READ_ONLY = 256;
    public static final byte STREAM = 9;
    public static final byte STRING = 10;
    protected static final short UNENCRYPTED = 512;
    protected PdfIndirectReference indirectReference = null;
    private short state;

    public abstract byte getType();

    protected abstract PdfObject newInstance();

    public final void flush() {
        flush(true);
    }

    public final void flush(boolean z) {
        if (isFlushed() || getIndirectReference() == null || getIndirectReference().isFree()) {
            return;
        }
        try {
            PdfDocument document = getIndirectReference().getDocument();
            if (document != null) {
                if (document.isAppendMode() && !isModified()) {
                    LoggerFactory.getLogger((Class<?>) PdfObject.class).info(IoLogMessageConstant.PDF_OBJECT_FLUSHING_NOT_PERFORMED);
                } else {
                    document.checkIsoConformance(this, IsoKey.PDF_OBJECT);
                    document.flushObject(this, z && getType() != 9 && getType() != 5 && getIndirectReference().getGenNumber() == 0);
                }
            }
        } catch (IOException e) {
            throw new PdfException(KernelExceptionMessageConstant.CANNOT_FLUSH_OBJECT, e, this);
        }
    }

    public PdfIndirectReference getIndirectReference() {
        return this.indirectReference;
    }

    public boolean isIndirect() {
        return this.indirectReference != null || checkState((short) 64);
    }

    public PdfObject makeIndirect(PdfDocument pdfDocument, PdfIndirectReference pdfIndirectReference) {
        if (pdfDocument == null || this.indirectReference != null) {
            return this;
        }
        if (pdfDocument.getWriter() == null) {
            throw new PdfException(KernelExceptionMessageConstant.THERE_IS_NO_ASSOCIATE_PDF_WRITER_FOR_MAKING_INDIRECTS);
        }
        if (pdfIndirectReference == null) {
            PdfIndirectReference pdfIndirectReferenceCreateNextIndirectReference = pdfDocument.createNextIndirectReference();
            this.indirectReference = pdfIndirectReferenceCreateNextIndirectReference;
            pdfIndirectReferenceCreateNextIndirectReference.setRefersTo(this);
        } else {
            pdfIndirectReference.setState((short) 8);
            this.indirectReference = pdfIndirectReference;
            pdfIndirectReference.setRefersTo(this);
        }
        setState(FORBID_RELEASE);
        clearState((short) 64);
        return this;
    }

    public PdfObject makeIndirect(PdfDocument pdfDocument) {
        return makeIndirect(pdfDocument, null);
    }

    public boolean isFlushed() {
        PdfIndirectReference indirectReference = getIndirectReference();
        return indirectReference != null && indirectReference.checkState((short) 1);
    }

    public boolean isModified() {
        PdfIndirectReference indirectReference = getIndirectReference();
        return indirectReference != null && indirectReference.checkState((short) 8);
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public PdfObject m3121clone() {
        return clone(NullCopyFilter.getInstance());
    }

    public PdfObject clone(ICopyFilter iCopyFilter) {
        PdfObject pdfObjectNewInstance = newInstance();
        if (this.indirectReference != null || checkState((short) 64)) {
            pdfObjectNewInstance.setState((short) 64);
        }
        pdfObjectNewInstance.copyContent(this, null, iCopyFilter);
        return pdfObjectNewInstance;
    }

    public PdfObject copyTo(PdfDocument pdfDocument) {
        return copyTo(pdfDocument, true, NullCopyFilter.getInstance());
    }

    public PdfObject copyTo(PdfDocument pdfDocument, boolean z) {
        return copyTo(pdfDocument, z, NullCopyFilter.getInstance());
    }

    public PdfObject copyTo(PdfDocument pdfDocument, ICopyFilter iCopyFilter) {
        return copyTo(pdfDocument, true, iCopyFilter);
    }

    public PdfObject copyTo(PdfDocument pdfDocument, boolean z, ICopyFilter iCopyFilter) {
        if (pdfDocument == null) {
            throw new PdfException(KernelExceptionMessageConstant.DOCUMENT_FOR_COPY_TO_CANNOT_BE_NULL);
        }
        PdfIndirectReference pdfIndirectReference = this.indirectReference;
        if (pdfIndirectReference != null) {
            if (pdfIndirectReference.getWriter() != null || checkState((short) 64)) {
                throw new PdfException(KernelExceptionMessageConstant.f2910x779baddc);
            }
            if (!this.indirectReference.getReader().isOpenedWithFullPermission()) {
                throw new BadPasswordException(BadPasswordException.PdfReaderNotOpenedWithOwnerPassword);
            }
        }
        return processCopying(pdfDocument, z, iCopyFilter);
    }

    public PdfObject setModified() {
        PdfIndirectReference pdfIndirectReference = this.indirectReference;
        if (pdfIndirectReference != null) {
            pdfIndirectReference.setState((short) 8);
            setState(FORBID_RELEASE);
        }
        return this;
    }

    public boolean isReleaseForbidden() {
        return checkState(FORBID_RELEASE);
    }

    public void release() {
        if (isReleaseForbidden()) {
            LoggerFactory.getLogger((Class<?>) PdfObject.class).warn(IoLogMessageConstant.FORBID_RELEASE_IS_SET);
            return;
        }
        PdfIndirectReference pdfIndirectReference = this.indirectReference;
        if (pdfIndirectReference == null || pdfIndirectReference.getReader() == null || this.indirectReference.checkState((short) 1)) {
            return;
        }
        this.indirectReference.refersTo = null;
        this.indirectReference = null;
        setState(READ_ONLY);
    }

    public boolean isNull() {
        return getType() == 7;
    }

    public boolean isBoolean() {
        return getType() == 2;
    }

    public boolean isNumber() {
        return getType() == 8;
    }

    public boolean isString() {
        return getType() == 10;
    }

    public boolean isName() {
        return getType() == 6;
    }

    public boolean isArray() {
        return getType() == 1;
    }

    public boolean isDictionary() {
        return getType() == 3;
    }

    public boolean isStream() {
        return getType() == 9;
    }

    public boolean isIndirectReference() {
        return getType() == 5;
    }

    protected PdfObject setIndirectReference(PdfIndirectReference pdfIndirectReference) {
        this.indirectReference = pdfIndirectReference;
        return this;
    }

    public boolean isLiteral() {
        return getType() == 4;
    }

    protected boolean checkState(short s) {
        return (this.state & s) == s;
    }

    protected PdfObject setState(short s) {
        this.state = (short) (s | this.state);
        return this;
    }

    protected PdfObject clearState(short s) {
        this.state = (short) (((short) (~s)) & this.state);
        return this;
    }

    protected void copyContent(PdfObject pdfObject, PdfDocument pdfDocument) {
        copyContent(pdfObject, pdfDocument, NullCopyFilter.getInstance());
    }

    protected void copyContent(PdfObject pdfObject, PdfDocument pdfDocument, ICopyFilter iCopyFilter) {
        if (isFlushed()) {
            throw new PdfException(KernelExceptionMessageConstant.CANNOT_COPY_FLUSHED_OBJECT, this);
        }
    }

    static boolean equalContent(PdfObject pdfObject, PdfObject pdfObject2) {
        if (pdfObject != null && pdfObject.isIndirectReference()) {
            pdfObject = ((PdfIndirectReference) pdfObject).getRefersTo(true);
        }
        if (pdfObject2 != null && pdfObject2.isIndirectReference()) {
            pdfObject2 = ((PdfIndirectReference) pdfObject2).getRefersTo(true);
        }
        return pdfObject != null && pdfObject.equals(pdfObject2);
    }

    PdfObject processCopying(PdfDocument pdfDocument, boolean z) {
        return processCopying(pdfDocument, z, NullCopyFilter.getInstance());
    }

    PdfObject processCopying(PdfDocument pdfDocument, boolean z, ICopyFilter iCopyFilter) {
        PdfObject refersTo;
        if (pdfDocument != null) {
            PdfWriter writer = pdfDocument.getWriter();
            if (writer == null) {
                throw new PdfException(KernelExceptionMessageConstant.CANNOT_COPY_TO_DOCUMENT_OPENED_IN_READING_MODE);
            }
            return writer.copyObject(this, pdfDocument, z, iCopyFilter);
        }
        if (!isIndirectReference() || (refersTo = ((PdfIndirectReference) this).getRefersTo()) == null) {
            refersTo = this;
        }
        return (!refersTo.isIndirect() || z) ? refersTo.m3121clone() : refersTo;
    }
}
