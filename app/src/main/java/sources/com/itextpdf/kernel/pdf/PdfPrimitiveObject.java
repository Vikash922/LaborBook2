package com.itextpdf.kernel.pdf;

import com.itextpdf.kernel.utils.ICopyFilter;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import java.util.Arrays;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public abstract class PdfPrimitiveObject extends PdfObject {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    protected byte[] content;
    protected boolean directOnly;

    protected abstract void generateContent();

    protected PdfPrimitiveObject() {
        this.content = null;
    }

    protected PdfPrimitiveObject(boolean z) {
        this.content = null;
        this.directOnly = z;
    }

    protected PdfPrimitiveObject(byte[] bArr) {
        this();
        this.content = bArr;
    }

    protected final byte[] getInternalContent() {
        if (this.content == null) {
            generateContent();
        }
        return this.content;
    }

    protected boolean hasContent() {
        return this.content != null;
    }

    @Override // com.itextpdf.kernel.pdf.PdfObject
    public PdfObject makeIndirect(PdfDocument pdfDocument, PdfIndirectReference pdfIndirectReference) {
        if (!this.directOnly) {
            return super.makeIndirect(pdfDocument, pdfIndirectReference);
        }
        LoggerFactory.getLogger((Class<?>) PdfObject.class).warn(IoLogMessageConstant.DIRECTONLY_OBJECT_CANNOT_BE_INDIRECT);
        return this;
    }

    @Override // com.itextpdf.kernel.pdf.PdfObject
    public PdfObject setIndirectReference(PdfIndirectReference pdfIndirectReference) {
        if (!this.directOnly) {
            super.setIndirectReference(pdfIndirectReference);
        } else {
            LoggerFactory.getLogger((Class<?>) PdfObject.class).warn(IoLogMessageConstant.DIRECTONLY_OBJECT_CANNOT_BE_INDIRECT);
        }
        return this;
    }

    @Override // com.itextpdf.kernel.pdf.PdfObject
    protected void copyContent(PdfObject pdfObject, PdfDocument pdfDocument, ICopyFilter iCopyFilter) {
        super.copyContent(pdfObject, pdfDocument, iCopyFilter);
        byte[] bArr = ((PdfPrimitiveObject) pdfObject).content;
        if (bArr != null) {
            this.content = Arrays.copyOf(bArr, bArr.length);
        }
    }

    protected int compareContent(PdfPrimitiveObject pdfPrimitiveObject) {
        for (int i = 0; i < Math.min(this.content.length, pdfPrimitiveObject.content.length); i++) {
            byte b = this.content[i];
            byte b2 = pdfPrimitiveObject.content[i];
            if (b > b2) {
                return 1;
            }
            if (b < b2) {
                return -1;
            }
        }
        return Integer.compare(this.content.length, pdfPrimitiveObject.content.length);
    }
}
