package com.itextpdf.kernel.pdf;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import com.itextpdf.p017io.source.ByteUtils;
import com.itextpdf.p017io.source.OutputStream;
import java.io.IOException;
import java.util.Iterator;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class PdfOutputStream extends OutputStream<PdfOutputStream> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    protected PdfEncryption crypto;
    protected PdfDocument document;
    private static final byte[] stream = ByteUtils.getIsoBytes("stream\n");
    private static final byte[] endstream = ByteUtils.getIsoBytes("\nendstream");
    private static final byte[] openDict = ByteUtils.getIsoBytes("<<");
    private static final byte[] closeDict = ByteUtils.getIsoBytes(">>");
    private static final byte[] endIndirect = ByteUtils.getIsoBytes(" R");
    private static final byte[] endIndirectWithZeroGenNr = ByteUtils.getIsoBytes(" 0 R");
    private static final Logger LOGGER = LoggerFactory.getLogger((Class<?>) PdfOutputStream.class);

    public PdfOutputStream(java.io.OutputStream outputStream) {
        super(outputStream);
        this.document = null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public PdfOutputStream write(PdfObject pdfObject) {
        PdfDocument pdfDocument;
        if (pdfObject.checkState((short) 64) && (pdfDocument = this.document) != null) {
            pdfObject.makeIndirect(pdfDocument);
            pdfObject = pdfObject.getIndirectReference();
        }
        if (pdfObject.checkState((short) 256)) {
            throw new PdfException(KernelExceptionMessageConstant.CANNOT_WRITE_OBJECT_AFTER_IT_WAS_RELEASED);
        }
        switch (pdfObject.getType()) {
            case 1:
                write((PdfArray) pdfObject);
                return this;
            case 2:
            case 7:
                write((PdfPrimitiveObject) pdfObject);
                return this;
            case 3:
                write((PdfDictionary) pdfObject);
                return this;
            case 4:
                write((PdfLiteral) pdfObject);
                return this;
            case 5:
                write((PdfIndirectReference) pdfObject);
                return this;
            case 6:
                write((PdfName) pdfObject);
                return this;
            case 8:
                write((PdfNumber) pdfObject);
                return this;
            case 9:
                write((PdfStream) pdfObject);
                return this;
            case 10:
                write((PdfString) pdfObject);
                return this;
            default:
                return this;
        }
    }

    void write(long j, int i) throws IOException {
        while (true) {
            i--;
            if (i < 0) {
                return;
            } else {
                write((byte) ((j >> (i * 8)) & 255));
            }
        }
    }

    void write(int i, int i2) throws IOException {
        write(((long) i) & BodyPartID.bodyIdMax, i2);
    }

    private void write(PdfArray pdfArray) {
        writeByte(91);
        for (int i = 0; i < pdfArray.size(); i++) {
            PdfObject pdfObject = pdfArray.get(i, false);
            PdfIndirectReference indirectReference = pdfObject.getIndirectReference();
            if (indirectReference != null) {
                write(indirectReference);
            } else {
                write(pdfObject);
            }
            if (i < pdfArray.size() - 1) {
                writeSpace();
            }
        }
        writeByte(93);
    }

    private void write(PdfDictionary pdfDictionary) {
        writeBytes(openDict);
        for (PdfName pdfName : pdfDictionary.keySet()) {
            write(pdfName);
            boolean z = false;
            PdfObject pdfObject = pdfDictionary.get(pdfName, false);
            if (pdfObject == null) {
                LOGGER.warn(MessageFormatUtil.format(IoLogMessageConstant.INVALID_KEY_VALUE_KEY_0_HAS_NULL_VALUE, pdfName));
                pdfObject = PdfNull.PDF_NULL;
            }
            if (pdfObject.getType() == 8 || pdfObject.getType() == 4 || pdfObject.getType() == 2 || pdfObject.getType() == 7 || pdfObject.getType() == 5 || pdfObject.checkState((short) 64)) {
                writeSpace();
                z = true;
            }
            PdfIndirectReference indirectReference = pdfObject.getIndirectReference();
            if (indirectReference != null) {
                if (!z) {
                    writeSpace();
                }
                write(indirectReference);
            } else {
                write(pdfObject);
            }
        }
        writeBytes(closeDict);
    }

    private void write(PdfIndirectReference pdfIndirectReference) {
        if (this.document != null && !pdfIndirectReference.getDocument().equals(this.document)) {
            throw new PdfException(KernelExceptionMessageConstant.PDF_INDIRECT_OBJECT_BELONGS_TO_OTHER_PDF_DOCUMENT);
        }
        if (pdfIndirectReference.isFree()) {
            LOGGER.error(IoLogMessageConstant.FLUSHED_OBJECT_CONTAINS_FREE_REFERENCE);
            write((PdfPrimitiveObject) PdfNull.PDF_NULL);
            return;
        }
        if (pdfIndirectReference.refersTo == null && (pdfIndirectReference.checkState((short) 8) || pdfIndirectReference.getReader() == null || (pdfIndirectReference.getOffset() <= 0 && pdfIndirectReference.getIndex() < 0))) {
            LOGGER.error(IoLogMessageConstant.FLUSHED_OBJECT_CONTAINS_REFERENCE_WHICH_NOT_REFER_TO_ANY_OBJECT);
            write((PdfPrimitiveObject) PdfNull.PDF_NULL);
        } else if (pdfIndirectReference.getGenNumber() == 0) {
            writeInteger(pdfIndirectReference.getObjNumber()).writeBytes(endIndirectWithZeroGenNr);
        } else {
            writeInteger(pdfIndirectReference.getObjNumber()).writeSpace().writeInteger(pdfIndirectReference.getGenNumber()).writeBytes(endIndirect);
        }
    }

    private void write(PdfPrimitiveObject pdfPrimitiveObject) {
        writeBytes(pdfPrimitiveObject.getInternalContent());
    }

    private void write(PdfLiteral pdfLiteral) {
        pdfLiteral.setPosition(getCurrentPos());
        writeBytes(pdfLiteral.getInternalContent());
    }

    private void write(PdfString pdfString) {
        pdfString.encrypt(this.crypto);
        if (pdfString.isHexWriting()) {
            writeByte(60);
            writeBytes(pdfString.getInternalContent());
            writeByte(62);
        } else {
            writeByte(40);
            writeBytes(pdfString.getInternalContent());
            writeByte(41);
        }
    }

    private void write(PdfName pdfName) {
        writeByte(47);
        writeBytes(pdfName.getInternalContent());
    }

    private void write(PdfNumber pdfNumber) {
        if (pdfNumber.hasContent()) {
            writeBytes(pdfNumber.getInternalContent());
        } else if (pdfNumber.isDoubleNumber()) {
            writeDouble(pdfNumber.getValue());
        } else {
            writeInteger(pdfNumber.intValue());
        }
    }

    private boolean isNotMetadataPdfStream(PdfStream pdfStream) {
        return pdfStream.getAsName(PdfName.Type) == null || !(pdfStream.getAsName(PdfName.Type) == null || pdfStream.getAsName(PdfName.Type).equals(PdfName.Metadata));
    }

    private boolean isXRefStream(PdfStream pdfStream) {
        return PdfName.XRef.equals(pdfStream.getAsName(PdfName.Type));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:65:0x013f A[Catch: IOException -> 0x01b2, TryCatch #0 {IOException -> 0x01b2, blocks: (B:54:0x00eb, B:56:0x00f1, B:60:0x00fb, B:62:0x0110, B:64:0x013b, B:69:0x0171, B:71:0x0177, B:63:0x012e, B:65:0x013f, B:67:0x0143, B:68:0x0167), top: B:81:0x00eb, outer: #1 }] */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [com.itextpdf.kernel.crypto.OutputStreamEncryption] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void write(com.itextpdf.kernel.pdf.PdfStream r9) {
        /*
            Method dump skipped, instruction units count: 452
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.kernel.pdf.PdfOutputStream.write(com.itextpdf.kernel.pdf.PdfStream):void");
    }

    protected boolean checkEncryption(PdfStream pdfStream) {
        PdfEncryption pdfEncryption = this.crypto;
        if (pdfEncryption == null || ((pdfEncryption.isEmbeddedFilesOnly() && !this.document.doesStreamBelongToEmbeddedFile(pdfStream)) || isXRefStream(pdfStream))) {
            return false;
        }
        PdfObject pdfObject = pdfStream.get(PdfName.Filter, true);
        if (pdfObject == null) {
            return true;
        }
        if (pdfObject.isFlushed()) {
            IndirectFilterUtils.throwFlushedFilterException(pdfStream);
        }
        if (PdfName.Crypt.equals(pdfObject)) {
            return false;
        }
        if (pdfObject.getType() != 1) {
            return true;
        }
        PdfArray pdfArray = (PdfArray) pdfObject;
        if (pdfArray.isEmpty()) {
            return true;
        }
        if (pdfArray.get(0).isFlushed()) {
            IndirectFilterUtils.throwFlushedFilterException(pdfStream);
        }
        return !PdfName.Crypt.equals(pdfArray.get(0, true));
    }

    protected boolean containsFlateFilter(PdfStream pdfStream) {
        PdfObject pdfObject = pdfStream.get(PdfName.Filter);
        if (pdfObject == null) {
            return false;
        }
        if (pdfObject.isFlushed()) {
            IndirectFilterUtils.logFilterWasAlreadyFlushed(LOGGER, pdfStream);
            return true;
        }
        if (pdfObject.getType() != 6 && pdfObject.getType() != 1) {
            throw new PdfException(KernelExceptionMessageConstant.FILTER_IS_NOT_A_NAME_OR_ARRAY);
        }
        if (pdfObject.getType() == 6) {
            return PdfName.FlateDecode.equals(pdfObject);
        }
        PdfArray pdfArray = (PdfArray) pdfObject;
        Iterator<PdfObject> it = pdfArray.iterator();
        while (it.hasNext()) {
            if (it.next().isFlushed()) {
                IndirectFilterUtils.logFilterWasAlreadyFlushed(LOGGER, pdfStream);
                return true;
            }
        }
        return pdfArray.contains(PdfName.FlateDecode);
    }

    protected void updateCompressionFilter(PdfStream pdfStream) {
        PdfObject pdfObject = pdfStream.get(PdfName.Filter);
        if (pdfObject == null) {
            pdfStream.put(PdfName.Filter, PdfName.FlateDecode);
            return;
        }
        PdfArray pdfArray = new PdfArray();
        pdfArray.add(PdfName.FlateDecode);
        if (pdfObject instanceof PdfArray) {
            pdfArray.addAll((PdfArray) pdfObject);
        } else {
            pdfArray.add(pdfObject);
        }
        PdfObject pdfObject2 = pdfStream.get(PdfName.DecodeParms);
        if (pdfObject2 != null) {
            if (pdfObject2 instanceof PdfDictionary) {
                PdfArray pdfArray2 = new PdfArray();
                pdfArray2.add(new PdfNull());
                pdfArray2.add(pdfObject2);
                pdfStream.put(PdfName.DecodeParms, pdfArray2);
            } else if (pdfObject2 instanceof PdfArray) {
                ((PdfArray) pdfObject2).add(0, new PdfNull());
            } else {
                throw new PdfException(KernelExceptionMessageConstant.THIS_DECODE_PARAMETER_TYPE_IS_NOT_SUPPORTED).setMessageParams(pdfObject2.getClass().toString());
            }
        }
        pdfStream.put(PdfName.Filter, pdfArray);
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x00c6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected byte[] decodeFlateBytes(com.itextpdf.kernel.pdf.PdfStream r9, byte[] r10) {
        /*
            Method dump skipped, instruction units count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.kernel.pdf.PdfOutputStream.decodeFlateBytes(com.itextpdf.kernel.pdf.PdfStream, byte[]):byte[]");
    }

    private static boolean isFlushed(PdfDictionary pdfDictionary, PdfName pdfName) {
        PdfObject pdfObject = pdfDictionary.get(pdfName);
        return pdfObject != null && pdfObject.isFlushed();
    }

    private static boolean decodeParamsArrayNotFlushed(PdfStream pdfStream) {
        PdfArray asArray = pdfStream.getAsArray(PdfName.DecodeParms);
        if (asArray == null || !asArray.isFlushed()) {
            return true;
        }
        IndirectFilterUtils.logFilterWasAlreadyFlushed(LOGGER, pdfStream);
        return false;
    }
}
