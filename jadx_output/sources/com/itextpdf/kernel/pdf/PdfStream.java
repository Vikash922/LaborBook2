package com.itextpdf.kernel.pdf;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.utils.ICopyFilter;
import com.itextpdf.kernel.utils.NullCopyFilter;
import com.itextpdf.p017io.source.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class PdfStream extends PdfDictionary {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    protected int compressionLevel;
    private InputStream inputStream;
    private int length;
    private long offset;
    protected PdfOutputStream outputStream;

    @Override // com.itextpdf.kernel.pdf.PdfDictionary, com.itextpdf.kernel.pdf.PdfObject
    public byte getType() {
        return (byte) 9;
    }

    public PdfStream(byte[] bArr, int i) {
        this.length = -1;
        setState((short) 64);
        this.compressionLevel = i;
        if (bArr != null && bArr.length > 0) {
            PdfOutputStream pdfOutputStream = new PdfOutputStream(new ByteArrayOutputStream(bArr.length));
            this.outputStream = pdfOutputStream;
            pdfOutputStream.writeBytes(bArr);
            return;
        }
        this.outputStream = new PdfOutputStream(new ByteArrayOutputStream());
    }

    public PdfStream(byte[] bArr) {
        this(bArr, Integer.MIN_VALUE);
    }

    public PdfStream(PdfDocument pdfDocument, InputStream inputStream, int i) {
        this.length = -1;
        if (pdfDocument == null) {
            throw new PdfException(KernelExceptionMessageConstant.CANNOT_CREATE_PDFSTREAM_BY_INPUT_STREAM_WITHOUT_PDF_DOCUMENT);
        }
        makeIndirect(pdfDocument);
        if (inputStream == null) {
            throw new IllegalArgumentException("The input stream in PdfStream constructor can not be null.");
        }
        this.inputStream = inputStream;
        this.compressionLevel = i;
        put(PdfName.Length, new PdfNumber(-1).makeIndirect(pdfDocument));
    }

    public PdfStream(PdfDocument pdfDocument, InputStream inputStream) {
        this(pdfDocument, inputStream, Integer.MIN_VALUE);
    }

    public PdfStream(int i) {
        this((byte[]) null, i);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PdfStream() {
        this((byte[]) null);
    }

    protected PdfStream(OutputStream outputStream) {
        this.length = -1;
        this.outputStream = new PdfOutputStream(outputStream);
        this.compressionLevel = Integer.MIN_VALUE;
        setState((short) 64);
    }

    PdfStream(long j, PdfDictionary pdfDictionary) {
        this.length = -1;
        this.compressionLevel = Integer.MIN_VALUE;
        this.offset = j;
        putAll(pdfDictionary);
        PdfNumber asNumber = getAsNumber(PdfName.Length);
        if (asNumber == null) {
            this.length = 0;
        } else {
            this.length = asNumber.intValue();
        }
    }

    public PdfOutputStream getOutputStream() {
        return this.outputStream;
    }

    public int getCompressionLevel() {
        return this.compressionLevel;
    }

    public void setCompressionLevel(int i) {
        this.compressionLevel = i;
    }

    public int getLength() {
        return this.length;
    }

    public byte[] getBytes() {
        return getBytes(true);
    }

    public byte[] getBytes(boolean z) {
        PdfReader reader;
        if (isFlushed()) {
            throw new PdfException(KernelExceptionMessageConstant.CANNOT_OPERATE_WITH_FLUSHED_PDF_STREAM);
        }
        if (this.inputStream != null) {
            LoggerFactory.getLogger((Class<?>) PdfStream.class).warn("PdfStream was created by InputStream.getBytes() always returns null in this case");
            return null;
        }
        PdfOutputStream pdfOutputStream = this.outputStream;
        if (pdfOutputStream != null && pdfOutputStream.getOutputStream() != null) {
            try {
                this.outputStream.getOutputStream().flush();
                byte[] byteArray = ((ByteArrayOutputStream) this.outputStream.getOutputStream()).toByteArray();
                return (z && containsKey(PdfName.Filter)) ? PdfReader.decodeBytes(byteArray, this) : byteArray;
            } catch (IOException e) {
                throw new PdfException(KernelExceptionMessageConstant.CANNOT_GET_PDF_STREAM_BYTES, e, this);
            }
        }
        if (getIndirectReference() == null || (reader = getIndirectReference().getReader()) == null) {
            return null;
        }
        try {
            return reader.readStreamBytes(this, z);
        } catch (IOException e2) {
            throw new PdfException(KernelExceptionMessageConstant.CANNOT_GET_PDF_STREAM_BYTES, e2, this);
        }
    }

    public void setData(byte[] bArr) {
        setData(bArr, false);
    }

    public void setData(byte[] bArr, boolean z) {
        if (isFlushed()) {
            throw new PdfException(KernelExceptionMessageConstant.CANNOT_OPERATE_WITH_FLUSHED_PDF_STREAM);
        }
        if (this.inputStream != null) {
            throw new PdfException(KernelExceptionMessageConstant.CANNOT_SET_DATA_TO_PDF_STREAM_WHICH_WAS_CREATED_BY_INPUT_STREAM);
        }
        boolean z2 = this.outputStream == null;
        if (z2) {
            this.outputStream = new PdfOutputStream(new ByteArrayOutputStream());
        }
        if (z) {
            if ((z2 && getIndirectReference() != null && getIndirectReference().getReader() != null) || (!z2 && containsKey(PdfName.Filter))) {
                try {
                    byte[] bytes = getBytes();
                    this.outputStream.assignBytes(bytes, bytes.length);
                } catch (PdfException e) {
                    throw new PdfException(KernelExceptionMessageConstant.CANNOT_READ_A_STREAM_IN_ORDER_TO_APPEND_NEW_BYTES, (Throwable) e);
                }
            }
            if (bArr != null) {
                this.outputStream.writeBytes(bArr);
            }
        } else if (bArr != null) {
            this.outputStream.assignBytes(bArr, bArr.length);
        } else {
            this.outputStream.reset();
        }
        this.offset = 0L;
        remove(PdfName.Filter);
        remove(PdfName.DecodeParms);
    }

    @Override // com.itextpdf.kernel.pdf.PdfDictionary, com.itextpdf.kernel.pdf.PdfObject
    protected PdfObject newInstance() {
        return new PdfStream();
    }

    protected long getOffset() {
        return this.offset;
    }

    protected void updateLength(int i) {
        this.length = i;
    }

    @Override // com.itextpdf.kernel.pdf.PdfDictionary, com.itextpdf.kernel.pdf.PdfObject
    protected void copyContent(PdfObject pdfObject, PdfDocument pdfDocument) {
        copyContent(pdfObject, pdfDocument, NullCopyFilter.getInstance());
    }

    @Override // com.itextpdf.kernel.pdf.PdfDictionary, com.itextpdf.kernel.pdf.PdfObject
    protected void copyContent(PdfObject pdfObject, PdfDocument pdfDocument, ICopyFilter iCopyFilter) {
        super.copyContent(pdfObject, pdfDocument, iCopyFilter);
        PdfStream pdfStream = (PdfStream) pdfObject;
        try {
            this.outputStream.write(pdfStream.getBytes(false));
        } catch (IOException e) {
            throw new PdfException(KernelExceptionMessageConstant.CANNOT_COPY_OBJECT_CONTENT, e, pdfStream);
        }
    }

    protected void initOutputStream(OutputStream outputStream) {
        if (getOutputStream() == null && this.inputStream == null) {
            if (outputStream == null) {
                outputStream = new ByteArrayOutputStream();
            }
            this.outputStream = new PdfOutputStream(outputStream);
        }
    }

    @Override // com.itextpdf.kernel.pdf.PdfDictionary
    protected void releaseContent() {
        super.releaseContent();
        try {
            PdfOutputStream pdfOutputStream = this.outputStream;
            if (pdfOutputStream != null) {
                pdfOutputStream.close();
                this.outputStream = null;
            }
        } catch (IOException e) {
            throw new PdfException("I/O exception.", (Throwable) e);
        }
    }

    protected InputStream getInputStream() {
        return this.inputStream;
    }
}
