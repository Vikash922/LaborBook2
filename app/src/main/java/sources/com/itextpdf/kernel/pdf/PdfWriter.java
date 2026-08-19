package com.itextpdf.kernel.pdf;

import com.itextpdf.commons.utils.FileUtil;
import com.itextpdf.kernel.utils.ICopyFilter;
import com.itextpdf.kernel.utils.NullCopyFilter;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import com.itextpdf.p017io.source.ByteUtils;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class PdfWriter extends PdfOutputStream {
    private Map<PdfIndirectReference, PdfIndirectReference> copiedObjects;
    protected boolean isUserWarnedAboutAcroFormCopying;
    PdfObjectStream objectStream;
    protected WriterProperties properties;
    private SmartModePdfObjectsSerializer smartModeSerializer;
    private static final byte[] obj = ByteUtils.getIsoBytes(" obj\n");
    private static final byte[] endobj = ByteUtils.getIsoBytes("\nendobj\n");

    public PdfWriter(File file) throws FileNotFoundException {
        this(file.getAbsolutePath());
    }

    public PdfWriter(OutputStream outputStream) {
        this(outputStream, new WriterProperties());
    }

    public PdfWriter(OutputStream outputStream, WriterProperties writerProperties) {
        super(new CountOutputStream(FileUtil.wrapWithBufferedOutputStream(outputStream)));
        this.objectStream = null;
        this.copiedObjects = new LinkedHashMap();
        this.smartModeSerializer = new SmartModePdfObjectsSerializer();
        this.properties = writerProperties;
    }

    public PdfWriter(String str) throws FileNotFoundException {
        this(str, new WriterProperties());
    }

    public PdfWriter(String str, WriterProperties writerProperties) throws FileNotFoundException {
        this(FileUtil.getBufferedOutputStream(str), writerProperties);
    }

    public boolean isFullCompression() {
        if (this.properties.isFullCompression != null) {
            return this.properties.isFullCompression.booleanValue();
        }
        return false;
    }

    public int getCompressionLevel() {
        return this.properties.compressionLevel;
    }

    public PdfWriter setCompressionLevel(int i) {
        this.properties.setCompressionLevel(i);
        return this;
    }

    public PdfWriter setSmartMode(boolean z) {
        this.properties.smartMode = z;
        return this;
    }

    protected void initCryptoIfSpecified(PdfVersion pdfVersion) {
        EncryptionProperties encryptionProperties = this.properties.encryptionProperties;
        if (this.properties.isStandardEncryptionUsed()) {
            this.crypto = new PdfEncryption(encryptionProperties.userPassword, encryptionProperties.ownerPassword, encryptionProperties.standardEncryptPermissions, encryptionProperties.encryptionAlgorithm, ByteUtils.getIsoBytes(this.document.getOriginalDocumentId().getValue()), pdfVersion);
        } else if (this.properties.isPublicKeyEncryptionUsed()) {
            this.crypto = new PdfEncryption(encryptionProperties.publicCertificates, encryptionProperties.publicKeyEncryptPermissions, encryptionProperties.encryptionAlgorithm, pdfVersion);
        }
    }

    protected void flushObject(PdfObject pdfObject, boolean z) {
        PdfIndirectReference indirectReference = pdfObject.getIndirectReference();
        if (isFullCompression() && z) {
            getObjectStream().addObject(pdfObject);
        } else {
            indirectReference.setOffset(getCurrentPos());
            writeToBody(pdfObject);
        }
        indirectReference.setState((short) 1).clearState((short) 32);
        switch (pdfObject.getType()) {
            case 1:
                PdfArray pdfArray = (PdfArray) pdfObject;
                markArrayContentToFlush(pdfArray);
                pdfArray.releaseContent();
                break;
            case 2:
            case 6:
            case 7:
            case 8:
            case 10:
                ((PdfPrimitiveObject) pdfObject).content = null;
                break;
            case 3:
            case 9:
                PdfDictionary pdfDictionary = (PdfDictionary) pdfObject;
                markDictionaryContentToFlush(pdfDictionary);
                pdfDictionary.releaseContent();
                break;
            case 5:
                markObjectToFlush(((PdfIndirectReference) pdfObject).getRefersTo(false));
                break;
        }
    }

    protected PdfObject copyObject(PdfObject pdfObject, PdfDocument pdfDocument, boolean z) {
        return copyObject(pdfObject, pdfDocument, z, NullCopyFilter.getInstance());
    }

    protected PdfObject copyObject(PdfObject pdfObject, PdfDocument pdfDocument, boolean z, ICopyFilter iCopyFilter) {
        SerializedObjectContent serializedObjectContentSerializeObject;
        PdfIndirectReference pdfIndirectReference;
        if (pdfObject instanceof PdfIndirectReference) {
            pdfObject = ((PdfIndirectReference) pdfObject).getRefersTo();
        }
        if (pdfObject == null) {
            pdfObject = PdfNull.PDF_NULL;
        }
        if (checkTypeOfPdfDictionary(pdfObject, PdfName.Catalog)) {
            LoggerFactory.getLogger((Class<?>) PdfReader.class).warn(IoLogMessageConstant.MAKE_COPY_OF_CATALOG_DICTIONARY_IS_FORBIDDEN);
            pdfObject = PdfNull.PDF_NULL;
        }
        PdfIndirectReference indirectReference = pdfObject.getIndirectReference();
        boolean z2 = (z || indirectReference == null) ? false : true;
        if (z2 && (pdfIndirectReference = this.copiedObjects.get(indirectReference)) != null) {
            return pdfIndirectReference.getRefersTo();
        }
        if (!this.properties.smartMode || !z2 || checkTypeOfPdfDictionary(pdfObject, PdfName.Page) || checkTypeOfPdfDictionary(pdfObject, PdfName.OCG) || checkTypeOfPdfDictionary(pdfObject, PdfName.OCMD)) {
            serializedObjectContentSerializeObject = null;
        } else {
            serializedObjectContentSerializeObject = this.smartModeSerializer.serializeObject(pdfObject);
            PdfIndirectReference savedSerializedObject = this.smartModeSerializer.getSavedSerializedObject(serializedObjectContentSerializeObject);
            if (savedSerializedObject != null) {
                this.copiedObjects.put(indirectReference, savedSerializedObject);
                return savedSerializedObject.refersTo;
            }
        }
        PdfObject pdfObjectNewInstance = pdfObject.newInstance();
        if (indirectReference != null) {
            PdfIndirectReference indirectReference2 = pdfObjectNewInstance.makeIndirect(pdfDocument).getIndirectReference();
            if (serializedObjectContentSerializeObject != null) {
                this.smartModeSerializer.saveSerializedObject(serializedObjectContentSerializeObject, indirectReference2);
            }
            this.copiedObjects.put(indirectReference, indirectReference2);
        }
        pdfObjectNewInstance.copyContent(pdfObject, pdfDocument, iCopyFilter);
        return pdfObjectNewInstance;
    }

    protected void writeToBody(PdfObject pdfObject) {
        if (this.crypto != null) {
            this.crypto.setHashKeyForNextObject(pdfObject.getIndirectReference().getObjNumber(), pdfObject.getIndirectReference().getGenNumber());
        }
        writeInteger(pdfObject.getIndirectReference().getObjNumber()).writeSpace().writeInteger(pdfObject.getIndirectReference().getGenNumber()).writeBytes(obj);
        write(pdfObject);
        writeBytes(endobj);
    }

    protected void writeHeader() {
        writeByte(37).writeString(this.document.getPdfVersion().toString()).writeString("\n%âãÏÓ\n");
    }

    protected void flushWaitingObjects(Set<PdfIndirectReference> set) {
        boolean z;
        PdfObject refersTo;
        PdfXrefTable xref = this.document.getXref();
        for (boolean z2 = true; z2; z2 = z) {
            z = false;
            for (int i = 1; i < xref.size(); i++) {
                PdfIndirectReference pdfIndirectReference = xref.get(i);
                if (pdfIndirectReference != null && !pdfIndirectReference.isFree() && pdfIndirectReference.checkState((short) 32) && !set.contains(pdfIndirectReference) && (refersTo = pdfIndirectReference.getRefersTo(false)) != null) {
                    refersTo.flush();
                    z = true;
                }
            }
        }
        PdfObjectStream pdfObjectStream = this.objectStream;
        if (pdfObjectStream == null || pdfObjectStream.getSize() <= 0) {
            return;
        }
        this.objectStream.flush();
        this.objectStream = null;
    }

    protected void flushModifiedWaitingObjects(Set<PdfIndirectReference> set) {
        PdfObject refersTo;
        PdfXrefTable xref = this.document.getXref();
        for (int i = 1; i < xref.size(); i++) {
            PdfIndirectReference pdfIndirectReference = xref.get(i);
            if (pdfIndirectReference != null && !pdfIndirectReference.isFree() && !set.contains(pdfIndirectReference) && pdfIndirectReference.checkState((short) 8) && (refersTo = pdfIndirectReference.getRefersTo(false)) != null && !refersTo.equals(this.objectStream)) {
                refersTo.flush();
            }
        }
        PdfObjectStream pdfObjectStream = this.objectStream;
        if (pdfObjectStream == null || pdfObjectStream.getSize() <= 0) {
            return;
        }
        this.objectStream.flush();
        this.objectStream = null;
    }

    PdfObjectStream getObjectStream() {
        if (!isFullCompression()) {
            return null;
        }
        PdfObjectStream pdfObjectStream = this.objectStream;
        if (pdfObjectStream == null) {
            this.objectStream = new PdfObjectStream(this.document);
        } else if (pdfObjectStream.getSize() == 200) {
            this.objectStream.flush();
            this.objectStream = new PdfObjectStream(this.objectStream);
        }
        return this.objectStream;
    }

    void flushCopiedObjects(long j) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<PdfIndirectReference, PdfIndirectReference> entry : this.copiedObjects.entrySet()) {
            PdfDocument document = entry.getKey().getDocument();
            if (document != null && document.getDocumentId() == j && entry.getValue().refersTo != null) {
                entry.getValue().refersTo.flush();
                arrayList.add(entry.getKey());
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            this.copiedObjects.remove((PdfIndirectReference) it.next());
        }
    }

    private void markArrayContentToFlush(PdfArray pdfArray) {
        for (int i = 0; i < pdfArray.size(); i++) {
            markObjectToFlush(pdfArray.get(i, false));
        }
    }

    private void markDictionaryContentToFlush(PdfDictionary pdfDictionary) {
        Iterator<PdfObject> it = pdfDictionary.values(false).iterator();
        while (it.hasNext()) {
            markObjectToFlush(it.next());
        }
    }

    private void markObjectToFlush(PdfObject pdfObject) {
        if (pdfObject != null) {
            PdfIndirectReference indirectReference = pdfObject.getIndirectReference();
            if (indirectReference != null) {
                if (indirectReference.checkState((short) 1)) {
                    return;
                }
                indirectReference.setState((short) 32);
            } else if (pdfObject.getType() == 5) {
                if (pdfObject.checkState((short) 1)) {
                    return;
                }
                pdfObject.setState((short) 32);
            } else if (pdfObject.getType() == 1) {
                markArrayContentToFlush((PdfArray) pdfObject);
            } else if (pdfObject.getType() == 3) {
                markDictionaryContentToFlush((PdfDictionary) pdfObject);
            }
        }
    }

    private static boolean checkTypeOfPdfDictionary(PdfObject pdfObject, PdfName pdfName) {
        return pdfObject.isDictionary() && pdfName.equals(((PdfDictionary) pdfObject).getAsName(PdfName.Type));
    }
}
