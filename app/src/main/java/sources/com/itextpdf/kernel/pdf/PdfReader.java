package com.itextpdf.kernel.pdf;

import com.inmobi.commons.core.configs.AdConfig;
import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.crypto.securityhandler.UnsupportedSecurityHandlerException;
import com.itextpdf.kernel.exceptions.InvalidXRefPrevException;
import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.MemoryLimitsAwareException;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.exceptions.XrefCycledReferencesException;
import com.itextpdf.kernel.pdf.filters.FilterHandlers;
import com.itextpdf.kernel.pdf.filters.IFilterHandler;
import com.itextpdf.kernel.xmp.XMPException;
import com.itextpdf.kernel.xmp.XMPMeta;
import com.itextpdf.kernel.xmp.XMPMetaFactory;
import com.itextpdf.p017io.exceptions.IoExceptionMessage;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import com.itextpdf.p017io.source.ByteBuffer;
import com.itextpdf.p017io.source.ByteUtils;
import com.itextpdf.p017io.source.IRandomAccessSource;
import com.itextpdf.p017io.source.PdfTokenizer;
import com.itextpdf.p017io.source.RandomAccessFileOrArray;
import com.itextpdf.p017io.source.RandomAccessSourceFactory;
import com.itextpdf.p017io.source.WindowRandomAccessSource;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.HashSet;
import java.util.Map;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class PdfReader implements Closeable {
    private static final String endstream2 = "\nendstream";
    private static final String endstream3 = "\r\nendstream";
    private static final String endstream4 = "\rendstream";
    private PdfIndirectReference currentIndirectReference;
    protected PdfEncryption decrypt;
    protected boolean encrypted;
    protected long eofPos;
    protected boolean fixedXref;
    protected PdfVersion headerPdfVersion;
    protected boolean hybridXref;
    protected long lastXref;
    private boolean memorySavingMode;
    protected PdfAConformanceLevel pdfAConformanceLevel;
    protected PdfDocument pdfDocument;
    protected ReaderProperties properties;
    protected boolean rebuiltXref;
    private StrictnessLevel strictnessLevel;
    protected PdfTokenizer tokens;
    protected PdfDictionary trailer;
    private boolean unethicalReading;
    private XMPMeta xmpMeta;
    protected boolean xrefStm;
    public static final StrictnessLevel DEFAULT_STRICTNESS_LEVEL = StrictnessLevel.LENIENT;
    private static final String endstream1 = "endstream";
    private static final byte[] endstream = ByteUtils.getIsoBytes(endstream1);
    private static final byte[] endobj = ByteUtils.getIsoBytes("endobj");
    protected static boolean correctStreamLength = true;

    public PdfReader(IRandomAccessSource iRandomAccessSource, ReaderProperties readerProperties) throws IOException {
        this(iRandomAccessSource, readerProperties, false);
    }

    public PdfReader(InputStream inputStream, ReaderProperties readerProperties) throws IOException {
        this(new RandomAccessSourceFactory().extractOrCreateSource(inputStream), readerProperties, true);
    }

    public PdfReader(File file) throws IOException {
        this(file.getAbsolutePath());
    }

    public PdfReader(InputStream inputStream) throws IOException {
        this(inputStream, new ReaderProperties());
    }

    public PdfReader(String str, ReaderProperties readerProperties) throws IOException {
        this(new RandomAccessSourceFactory().setForceRead(false).createBestSource(str), readerProperties, true);
    }

    public PdfReader(String str) throws IOException {
        this(str, new ReaderProperties());
    }

    PdfReader(IRandomAccessSource iRandomAccessSource, ReaderProperties readerProperties, boolean z) throws IOException {
        this.strictnessLevel = DEFAULT_STRICTNESS_LEVEL;
        this.encrypted = false;
        this.rebuiltXref = false;
        this.hybridXref = false;
        this.fixedXref = false;
        this.xrefStm = false;
        this.properties = readerProperties;
        this.tokens = getOffsetTokeniser(iRandomAccessSource, z);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.tokens.close();
    }

    public PdfReader setUnethicalReading(boolean z) {
        this.unethicalReading = z;
        return this;
    }

    public PdfReader setMemorySavingMode(boolean z) {
        this.memorySavingMode = z;
        return this;
    }

    public StrictnessLevel getStrictnessLevel() {
        return this.strictnessLevel;
    }

    public PdfReader setStrictnessLevel(StrictnessLevel strictnessLevel) {
        if (strictnessLevel == null) {
            strictnessLevel = DEFAULT_STRICTNESS_LEVEL;
        }
        this.strictnessLevel = strictnessLevel;
        return this;
    }

    public boolean isCloseStream() {
        return this.tokens.isCloseStream();
    }

    public void setCloseStream(boolean z) {
        this.tokens.setCloseStream(z);
    }

    public boolean hasRebuiltXref() {
        PdfDocument pdfDocument = this.pdfDocument;
        if (pdfDocument == null || !pdfDocument.getXref().isReadingCompleted()) {
            throw new PdfException(KernelExceptionMessageConstant.DOCUMENT_HAS_NOT_BEEN_READ_YET);
        }
        return this.rebuiltXref;
    }

    public boolean hasHybridXref() {
        PdfDocument pdfDocument = this.pdfDocument;
        if (pdfDocument == null || !pdfDocument.getXref().isReadingCompleted()) {
            throw new PdfException(KernelExceptionMessageConstant.DOCUMENT_HAS_NOT_BEEN_READ_YET);
        }
        return this.hybridXref;
    }

    public boolean hasXrefStm() {
        PdfDocument pdfDocument = this.pdfDocument;
        if (pdfDocument == null || !pdfDocument.getXref().isReadingCompleted()) {
            throw new PdfException(KernelExceptionMessageConstant.DOCUMENT_HAS_NOT_BEEN_READ_YET);
        }
        return this.xrefStm;
    }

    public boolean hasFixedXref() {
        PdfDocument pdfDocument = this.pdfDocument;
        if (pdfDocument == null || !pdfDocument.getXref().isReadingCompleted()) {
            throw new PdfException(KernelExceptionMessageConstant.DOCUMENT_HAS_NOT_BEEN_READ_YET);
        }
        return this.fixedXref;
    }

    public long getLastXref() {
        PdfDocument pdfDocument = this.pdfDocument;
        if (pdfDocument == null || !pdfDocument.getXref().isReadingCompleted()) {
            throw new PdfException(KernelExceptionMessageConstant.DOCUMENT_HAS_NOT_BEEN_READ_YET);
        }
        return this.lastXref;
    }

    public byte[] readStreamBytes(PdfStream pdfStream, boolean z) throws IOException {
        byte[] streamBytesRaw = readStreamBytesRaw(pdfStream);
        return (!z || streamBytesRaw == null) ? streamBytesRaw : decodeBytes(streamBytesRaw, pdfStream);
    }

    public byte[] readStreamBytesRaw(PdfStream pdfStream) throws IOException {
        PdfName asName = pdfStream.getAsName(PdfName.Type);
        if (!PdfName.XRef.equals(asName) && !PdfName.ObjStm.equals(asName)) {
            checkPdfStreamLength(pdfStream);
        }
        long offset = pdfStream.getOffset();
        if (offset <= 0) {
            return null;
        }
        int length = pdfStream.getLength();
        boolean z = false;
        if (length <= 0) {
            return new byte[0];
        }
        RandomAccessFileOrArray safeFile = this.tokens.getSafeFile();
        try {
            safeFile.seek(offset);
            byte[] bArrDecryptByteArray = new byte[length];
            safeFile.readFully(bArrDecryptByteArray);
            boolean zDoesStreamBelongToEmbeddedFile = this.pdfDocument.doesStreamBelongToEmbeddedFile(pdfStream);
            PdfEncryption pdfEncryption = this.decrypt;
            if (pdfEncryption != null && (!pdfEncryption.isEmbeddedFilesOnly() || zDoesStreamBelongToEmbeddedFile)) {
                PdfObject pdfObject = pdfStream.get(PdfName.Filter, true);
                if (pdfObject != null) {
                    if (pdfObject.isFlushed()) {
                        IndirectFilterUtils.throwFlushedFilterException(pdfStream);
                    }
                    if (!PdfName.Crypt.equals(pdfObject)) {
                        if (pdfObject.getType() == 1) {
                            PdfArray pdfArray = (PdfArray) pdfObject;
                            for (int i = 0; i < pdfArray.size(); i++) {
                                if (pdfArray.get(i).isFlushed()) {
                                    IndirectFilterUtils.throwFlushedFilterException(pdfStream);
                                }
                                if (!pdfArray.isEmpty() && PdfName.Crypt.equals(pdfArray.get(i, true))) {
                                    z = true;
                                    break;
                                }
                            }
                        }
                        pdfObject.release();
                    } else {
                        z = true;
                        pdfObject.release();
                    }
                }
                if (!z) {
                    this.decrypt.setHashKeyForNextObject(pdfStream.getIndirectReference().getObjNumber(), pdfStream.getIndirectReference().getGenNumber());
                    bArrDecryptByteArray = this.decrypt.decryptByteArray(bArrDecryptByteArray);
                }
            }
            return bArrDecryptByteArray;
        } finally {
            try {
                safeFile.close();
            } catch (Exception unused) {
            }
        }
    }

    public InputStream readStream(PdfStream pdfStream, boolean z) throws IOException {
        byte[] streamBytes = readStreamBytes(pdfStream, z);
        if (streamBytes != null) {
            return new ByteArrayInputStream(streamBytes);
        }
        return null;
    }

    public static byte[] decodeBytes(byte[] bArr, PdfDictionary pdfDictionary) {
        return decodeBytes(bArr, pdfDictionary, FilterHandlers.getDefaultFilterHandlers());
    }

    public static byte[] decodeBytes(byte[] bArr, PdfDictionary pdfDictionary, Map<PdfName, IFilterHandler> map) {
        PdfDictionary pdfDictionary2;
        PdfObject pdfObject;
        if (bArr == null) {
            return null;
        }
        PdfObject pdfObject2 = pdfDictionary.get(PdfName.Filter);
        PdfArray pdfArray = new PdfArray();
        if (pdfObject2 != null) {
            if (pdfObject2.getType() == 6) {
                pdfArray.add(pdfObject2);
            } else if (pdfObject2.getType() == 1) {
                pdfArray = (PdfArray) pdfObject2;
            }
        }
        MemoryLimitsAwareHandler memoryLimitsAwareHandler = pdfDictionary.getIndirectReference() != null ? pdfDictionary.getIndirectReference().getDocument().memoryLimitsAwareHandler : null;
        boolean z = memoryLimitsAwareHandler != null && memoryLimitsAwareHandler.isMemoryLimitsAwarenessRequiredOnDecompression(pdfArray);
        if (z) {
            memoryLimitsAwareHandler.beginDecompressedPdfStreamProcessing();
        }
        PdfArray pdfArray2 = new PdfArray();
        PdfObject pdfObject3 = pdfDictionary.get(PdfName.DecodeParms);
        if (pdfObject3 == null || (pdfObject3.getType() != 3 && pdfObject3.getType() != 1)) {
            if (pdfObject3 != null) {
                pdfObject3.release();
            }
            pdfObject3 = pdfDictionary.get(PdfName.f2994DP);
        }
        if (pdfObject3 != null) {
            if (pdfObject3.getType() == 3) {
                pdfArray2.add(pdfObject3);
            } else if (pdfObject3.getType() == 1) {
                pdfArray2 = (PdfArray) pdfObject3;
            }
            pdfObject3.release();
        }
        for (int i = 0; i < pdfArray.size(); i++) {
            PdfName pdfName = (PdfName) pdfArray.get(i);
            IFilterHandler iFilterHandler = map.get(pdfName);
            if (iFilterHandler == null) {
                throw new PdfException(KernelExceptionMessageConstant.THIS_FILTER_IS_NOT_SUPPORTED).setMessageParams(pdfName);
            }
            if (i >= pdfArray2.size() || (pdfObject = pdfArray2.get(i, true)) == null || pdfObject.getType() == 7) {
                pdfDictionary2 = null;
            } else if (pdfObject.getType() == 3) {
                pdfDictionary2 = (PdfDictionary) pdfObject;
            } else {
                throw new PdfException(KernelExceptionMessageConstant.THIS_DECODE_PARAMETER_TYPE_IS_NOT_SUPPORTED).setMessageParams(pdfObject.getClass().toString());
            }
            bArr = iFilterHandler.decode(bArr, pdfName, pdfDictionary2, pdfDictionary);
            if (z) {
                memoryLimitsAwareHandler.considerBytesOccupiedByDecompressedPdfStream(bArr.length);
            }
        }
        if (z) {
            memoryLimitsAwareHandler.endDecompressedPdfStreamProcessing();
        }
        return bArr;
    }

    public RandomAccessFileOrArray getSafeFile() {
        return this.tokens.getSafeFile();
    }

    public long getFileLength() {
        return this.tokens.getSafeFile().length();
    }

    public boolean isOpenedWithFullPermission() {
        PdfDocument pdfDocument = this.pdfDocument;
        if (pdfDocument == null || !pdfDocument.getXref().isReadingCompleted()) {
            throw new PdfException(KernelExceptionMessageConstant.DOCUMENT_HAS_NOT_BEEN_READ_YET);
        }
        return !this.encrypted || this.decrypt.isOpenedWithFullPermission() || this.unethicalReading;
    }

    public long getPermissions() {
        PdfDocument pdfDocument = this.pdfDocument;
        if (pdfDocument == null || !pdfDocument.getXref().isReadingCompleted()) {
            throw new PdfException(KernelExceptionMessageConstant.DOCUMENT_HAS_NOT_BEEN_READ_YET);
        }
        if (!this.encrypted || this.decrypt.getPermissions() == null) {
            return 0L;
        }
        return this.decrypt.getPermissions().longValue();
    }

    public int getCryptoMode() {
        PdfDocument pdfDocument = this.pdfDocument;
        if (pdfDocument == null || !pdfDocument.getXref().isReadingCompleted()) {
            throw new PdfException(KernelExceptionMessageConstant.DOCUMENT_HAS_NOT_BEEN_READ_YET);
        }
        PdfEncryption pdfEncryption = this.decrypt;
        if (pdfEncryption == null) {
            return -1;
        }
        return pdfEncryption.getCryptoMode();
    }

    public PdfAConformanceLevel getPdfAConformanceLevel() {
        if (this.pdfAConformanceLevel == null) {
            PdfDocument pdfDocument = this.pdfDocument;
            if (pdfDocument == null || !pdfDocument.getXref().isReadingCompleted()) {
                throw new PdfException(KernelExceptionMessageConstant.DOCUMENT_HAS_NOT_BEEN_READ_YET);
            }
            try {
                if (this.xmpMeta == null && this.pdfDocument.getXmpMetadata() != null) {
                    this.xmpMeta = XMPMetaFactory.parseFromBuffer(this.pdfDocument.getXmpMetadata());
                }
                XMPMeta xMPMeta = this.xmpMeta;
                if (xMPMeta != null) {
                    this.pdfAConformanceLevel = PdfAConformanceLevel.getConformanceLevel(xMPMeta);
                }
            } catch (XMPException unused) {
            }
        }
        return this.pdfAConformanceLevel;
    }

    public byte[] computeUserPassword() {
        PdfDocument pdfDocument = this.pdfDocument;
        if (pdfDocument == null || !pdfDocument.getXref().isReadingCompleted()) {
            throw new PdfException(KernelExceptionMessageConstant.DOCUMENT_HAS_NOT_BEEN_READ_YET);
        }
        if (this.encrypted && this.decrypt.isOpenedWithFullPermission()) {
            return this.decrypt.computeUserPassword(this.properties.password);
        }
        return null;
    }

    public byte[] getOriginalFileId() {
        PdfDocument pdfDocument = this.pdfDocument;
        if (pdfDocument == null || !pdfDocument.getXref().isReadingCompleted()) {
            throw new PdfException(KernelExceptionMessageConstant.DOCUMENT_HAS_NOT_BEEN_READ_YET);
        }
        PdfArray asArray = this.trailer.getAsArray(PdfName.f3021ID);
        if (asArray != null && asArray.size() == 2) {
            return ByteUtils.getIsoBytes(asArray.getAsString(0).getValue());
        }
        return new byte[0];
    }

    public byte[] getModifiedFileId() {
        PdfDocument pdfDocument = this.pdfDocument;
        if (pdfDocument == null || !pdfDocument.getXref().isReadingCompleted()) {
            throw new PdfException(KernelExceptionMessageConstant.DOCUMENT_HAS_NOT_BEEN_READ_YET);
        }
        PdfArray asArray = this.trailer.getAsArray(PdfName.f3021ID);
        if (asArray != null && asArray.size() == 2) {
            return ByteUtils.getIsoBytes(asArray.getAsString(1).getValue());
        }
        return new byte[0];
    }

    public boolean isEncrypted() {
        PdfDocument pdfDocument = this.pdfDocument;
        if (pdfDocument == null || !pdfDocument.getXref().isReadingCompleted()) {
            throw new PdfException(KernelExceptionMessageConstant.DOCUMENT_HAS_NOT_BEEN_READ_YET);
        }
        return this.encrypted;
    }

    protected void readPdf() throws IOException {
        String strCheckPdfHeader = this.tokens.checkPdfHeader();
        try {
            this.headerPdfVersion = PdfVersion.fromString(strCheckPdfHeader);
            try {
                readXref();
            } catch (InvalidXRefPrevException e) {
                throw e;
            } catch (MemoryLimitsAwareException e2) {
                throw e2;
            } catch (XrefCycledReferencesException e3) {
                throw e3;
            } catch (RuntimeException e4) {
                if (StrictnessLevel.CONSERVATIVE.isStricter(getStrictnessLevel())) {
                    LoggerFactory.getLogger((Class<?>) PdfReader.class).error(IoLogMessageConstant.XREF_ERROR_WHILE_READING_TABLE_WILL_BE_REBUILT, (Throwable) e4);
                    rebuildXref();
                } else {
                    throw e4;
                }
            }
            this.pdfDocument.getXref().markReadingCompleted();
            readDecryptObj();
        } catch (IllegalArgumentException unused) {
            throw new PdfException(KernelExceptionMessageConstant.PDF_VERSION_IS_NOT_VALID, strCheckPdfHeader);
        }
    }

    protected void readObjectStream(PdfStream pdfStream) throws IOException {
        PdfObject object;
        int objNumber = pdfStream.getIndirectReference().getObjNumber();
        int iIntValue = pdfStream.getAsNumber(PdfName.First).intValue();
        int iIntValue2 = pdfStream.getAsNumber(PdfName.f3037N).intValue();
        byte[] streamBytes = readStreamBytes(pdfStream, true);
        PdfTokenizer pdfTokenizer = this.tokens;
        try {
            this.tokens = new PdfTokenizer(new RandomAccessFileOrArray(new RandomAccessSourceFactory().createSource(streamBytes)));
            int[] iArr = new int[iIntValue2];
            int[] iArr2 = new int[iIntValue2];
            boolean zNextToken = true;
            for (int i = 0; i < iIntValue2; i++) {
                zNextToken = this.tokens.nextToken();
                if (!zNextToken) {
                    break;
                }
                if (this.tokens.getTokenType() == PdfTokenizer.TokenType.Number) {
                    iArr2[i] = this.tokens.getIntValue();
                    zNextToken = this.tokens.nextToken();
                    if (!zNextToken) {
                        break;
                    } else if (this.tokens.getTokenType() == PdfTokenizer.TokenType.Number) {
                        iArr[i] = this.tokens.getIntValue() + iIntValue;
                    }
                }
                zNextToken = false;
                break;
            }
            if (!zNextToken) {
                throw new PdfException(KernelExceptionMessageConstant.ERROR_WHILE_READING_OBJECT_STREAM);
            }
            for (int i2 = 0; i2 < iIntValue2; i2++) {
                this.tokens.seek(iArr[i2]);
                this.tokens.nextToken();
                PdfIndirectReference pdfIndirectReference = this.pdfDocument.getXref().get(iArr2[i2]);
                if (pdfIndirectReference.refersTo == null && pdfIndirectReference.getObjStreamNumber() == objNumber) {
                    if (this.tokens.getTokenType() == PdfTokenizer.TokenType.Number) {
                        object = new PdfNumber(this.tokens.getByteContent());
                    } else {
                        this.tokens.seek(iArr[i2]);
                        object = readObject(false, true);
                    }
                    pdfIndirectReference.setRefersTo(object);
                    object.setIndirectReference(pdfIndirectReference);
                }
            }
            pdfStream.getIndirectReference().setState((short) 16);
        } finally {
            this.tokens = pdfTokenizer;
        }
    }

    protected PdfObject readObject(PdfIndirectReference pdfIndirectReference) {
        return readObject(pdfIndirectReference, true);
    }

    protected PdfObject readObject(boolean z) throws IOException {
        return readObject(z, false);
    }

    protected PdfObject readReference(boolean z) {
        int objNr = this.tokens.getObjNr();
        if (objNr < 0) {
            return createPdfNullInstance(z);
        }
        PdfXrefTable xref = this.pdfDocument.getXref();
        PdfIndirectReference pdfIndirectReference = xref.get(objNr);
        if (pdfIndirectReference != null) {
            if (pdfIndirectReference.isFree()) {
                LoggerFactory.getLogger((Class<?>) PdfReader.class).warn(MessageFormatUtil.format(IoLogMessageConstant.INVALID_INDIRECT_REFERENCE, Integer.valueOf(this.tokens.getObjNr()), Integer.valueOf(this.tokens.getGenNr())));
                return createPdfNullInstance(z);
            }
            if (pdfIndirectReference.getGenNumber() == this.tokens.getGenNr()) {
                return pdfIndirectReference;
            }
            if (this.fixedXref) {
                LoggerFactory.getLogger((Class<?>) PdfReader.class).warn(MessageFormatUtil.format(IoLogMessageConstant.INVALID_INDIRECT_REFERENCE, Integer.valueOf(this.tokens.getObjNr()), Integer.valueOf(this.tokens.getGenNr())));
                return createPdfNullInstance(z);
            }
            throw new PdfException(KernelExceptionMessageConstant.INVALID_INDIRECT_REFERENCE, MessageFormatUtil.format("{0} {1} R", Integer.valueOf(pdfIndirectReference.getObjNumber()), Integer.valueOf(pdfIndirectReference.getGenNumber())));
        }
        if (xref.isReadingCompleted()) {
            LoggerFactory.getLogger((Class<?>) PdfReader.class).warn(MessageFormatUtil.format(IoLogMessageConstant.INVALID_INDIRECT_REFERENCE, Integer.valueOf(this.tokens.getObjNr()), Integer.valueOf(this.tokens.getGenNr())));
            return createPdfNullInstance(z);
        }
        return xref.add((PdfIndirectReference) new PdfIndirectReference(this.pdfDocument, objNr, this.tokens.getGenNr(), 0L).setState((short) 4));
    }

    protected PdfObject readObject(boolean z, boolean z2) throws IOException {
        boolean zNextToken;
        this.tokens.nextValidToken();
        switch (C34741.$SwitchMap$com$itextpdf$io$source$PdfTokenizer$TokenType[this.tokens.getTokenType().ordinal()]) {
            case 1:
                PdfDictionary dictionary = readDictionary(z2);
                long position = this.tokens.getPosition();
                do {
                    zNextToken = this.tokens.nextToken();
                    if (zNextToken) {
                    }
                    if (zNextToken || !this.tokens.tokenValueEqualsTo(PdfTokenizer.Stream)) {
                        this.tokens.seek(position);
                        return dictionary;
                    }
                    while (true) {
                        int i = this.tokens.read();
                        if (i != 32 && i != 9 && i != 0 && i != 12) {
                            if (i != 10) {
                                i = this.tokens.read();
                            }
                            if (i != 10) {
                                this.tokens.backOnePosition(i);
                            }
                            PdfStream pdfStream = new PdfStream(this.tokens.getPosition(), dictionary);
                            this.tokens.seek(pdfStream.getOffset() + ((long) pdfStream.getLength()));
                            return pdfStream;
                        }
                    }
                } while (this.tokens.getTokenType() == PdfTokenizer.TokenType.Comment);
                if (zNextToken) {
                }
                this.tokens.seek(position);
                return dictionary;
            case 2:
                return readArray(z2);
            case 3:
                return new PdfNumber(this.tokens.getByteContent());
            case 4:
                PdfString pdfString = new PdfString(this.tokens.getByteContent(), this.tokens.isHexString());
                if (this.encrypted && !this.decrypt.isEmbeddedFilesOnly() && !z2) {
                    pdfString.setDecryption(this.currentIndirectReference.getObjNumber(), this.currentIndirectReference.getGenNumber(), this.decrypt);
                }
                return pdfString;
            case 5:
                return readPdfName(z);
            case 6:
                return readReference(z);
            case 7:
                throw new PdfException(KernelExceptionMessageConstant.UNEXPECTED_END_OF_FILE);
            default:
                if (this.tokens.tokenValueEqualsTo(PdfTokenizer.Null)) {
                    return createPdfNullInstance(z);
                }
                if (this.tokens.tokenValueEqualsTo(PdfTokenizer.True)) {
                    if (z) {
                        return PdfBoolean.TRUE;
                    }
                    return new PdfBoolean(true);
                }
                if (!this.tokens.tokenValueEqualsTo(PdfTokenizer.False)) {
                    return null;
                }
                if (z) {
                    return PdfBoolean.FALSE;
                }
                return new PdfBoolean(false);
        }
    }

    /* JADX INFO: renamed from: com.itextpdf.kernel.pdf.PdfReader$1 */
    static /* synthetic */ class C34741 {
        static final /* synthetic */ int[] $SwitchMap$com$itextpdf$io$source$PdfTokenizer$TokenType;

        static {
            int[] iArr = new int[PdfTokenizer.TokenType.values().length];
            $SwitchMap$com$itextpdf$io$source$PdfTokenizer$TokenType = iArr;
            try {
                iArr[PdfTokenizer.TokenType.StartDic.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$itextpdf$io$source$PdfTokenizer$TokenType[PdfTokenizer.TokenType.StartArray.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$itextpdf$io$source$PdfTokenizer$TokenType[PdfTokenizer.TokenType.Number.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$itextpdf$io$source$PdfTokenizer$TokenType[PdfTokenizer.TokenType.String.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$itextpdf$io$source$PdfTokenizer$TokenType[PdfTokenizer.TokenType.Name.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$itextpdf$io$source$PdfTokenizer$TokenType[PdfTokenizer.TokenType.Ref.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$itextpdf$io$source$PdfTokenizer$TokenType[PdfTokenizer.TokenType.EndOfFile.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    protected PdfName readPdfName(boolean z) {
        PdfName pdfName;
        return (!z || (pdfName = PdfName.staticNames.get(this.tokens.getStringValue())) == null) ? new PdfName(this.tokens.getByteContent()) : pdfName;
    }

    protected PdfDictionary readDictionary(boolean z) throws IOException {
        PdfDictionary pdfDictionary = new PdfDictionary();
        while (true) {
            this.tokens.nextValidToken();
            if (this.tokens.getTokenType() == PdfTokenizer.TokenType.EndDic) {
                return pdfDictionary;
            }
            if (this.tokens.getTokenType() != PdfTokenizer.TokenType.Name) {
                PdfTokenizer pdfTokenizer = this.tokens;
                pdfTokenizer.throwError("Dictionary key {0} is not a name.", pdfTokenizer.getStringValue());
            }
            PdfName pdfName = readPdfName(true);
            PdfObject object = readObject(true, z);
            if (object == null) {
                if (this.tokens.getTokenType() == PdfTokenizer.TokenType.EndDic) {
                    this.tokens.throwError(MessageFormatUtil.format(KernelExceptionMessageConstant.UNEXPECTED_TOKEN, ">>"), new Object[0]);
                }
                if (this.tokens.getTokenType() == PdfTokenizer.TokenType.EndArray) {
                    this.tokens.throwError(MessageFormatUtil.format(KernelExceptionMessageConstant.UNEXPECTED_TOKEN, "]"), new Object[0]);
                }
            }
            pdfDictionary.put(pdfName, object);
        }
    }

    protected PdfArray readArray(boolean z) throws IOException {
        PdfArray pdfArray = new PdfArray();
        while (true) {
            PdfObject object = readObject(true, z);
            if (object == null) {
                break;
            }
            pdfArray.add(object);
        }
        if (this.tokens.getTokenType() != PdfTokenizer.TokenType.EndArray) {
            processArrayReadError();
        }
        return pdfArray;
    }

    protected void readXref() throws IOException {
        PdfTokenizer pdfTokenizer = this.tokens;
        pdfTokenizer.seek(pdfTokenizer.getStartxref());
        this.tokens.nextToken();
        if (!this.tokens.tokenValueEqualsTo(PdfTokenizer.Startxref)) {
            throw new PdfException("PDF startxref not found.", this.tokens);
        }
        this.tokens.nextToken();
        if (this.tokens.getTokenType() != PdfTokenizer.TokenType.Number) {
            throw new PdfException(KernelExceptionMessageConstant.PDF_STARTXREF_IS_NOT_FOLLOWED_BY_A_NUMBER, this.tokens);
        }
        long longValue = this.tokens.getLongValue();
        this.lastXref = longValue;
        this.eofPos = this.tokens.getPosition();
        try {
            if (readXrefStream(longValue)) {
                this.xrefStm = true;
                return;
            }
        } catch (InvalidXRefPrevException e) {
            throw e;
        } catch (MemoryLimitsAwareException e2) {
            throw e2;
        } catch (XrefCycledReferencesException e3) {
            throw e3;
        } catch (Exception unused) {
        }
        this.pdfDocument.getXref().clear();
        this.tokens.seek(longValue);
        PdfDictionary xrefSection = readXrefSection();
        this.trailer = xrefSection;
        HashSet hashSet = new HashSet();
        while (true) {
            hashSet.add(Long.valueOf(longValue));
            PdfNumber xrefPrev = getXrefPrev(xrefSection.get(PdfName.Prev, false));
            if (xrefPrev != null) {
                longValue = xrefPrev.longValue();
                if (hashSet.contains(Long.valueOf(longValue))) {
                    if (StrictnessLevel.CONSERVATIVE.isStricter(getStrictnessLevel())) {
                        throw new PdfException(KernelExceptionMessageConstant.TRAILER_PREV_ENTRY_POINTS_TO_ITS_OWN_CROSS_REFERENCE_SECTION);
                    }
                    throw new XrefCycledReferencesException(KernelExceptionMessageConstant.XREF_TABLE_HAS_CYCLED_REFERENCES);
                }
                this.tokens.seek(longValue);
                xrefSection = readXrefSection();
            } else {
                if (this.trailer.getAsInt(PdfName.Size) == null) {
                    throw new PdfException(KernelExceptionMessageConstant.INVALID_XREF_TABLE);
                }
                return;
            }
        }
    }

    protected PdfDictionary readXrefSection() throws IOException {
        this.tokens.nextValidToken();
        if (!this.tokens.tokenValueEqualsTo(PdfTokenizer.Xref)) {
            this.tokens.throwError(KernelExceptionMessageConstant.XREF_SUBSECTION_NOT_FOUND, new Object[0]);
        }
        PdfXrefTable xref = this.pdfDocument.getXref();
        while (true) {
            this.tokens.nextValidToken();
            if (this.tokens.tokenValueEqualsTo(PdfTokenizer.Trailer)) {
                break;
            }
            if (this.tokens.getTokenType() != PdfTokenizer.TokenType.Number) {
                this.tokens.throwError(KernelExceptionMessageConstant.f2921x89e1ddc8, new Object[0]);
            }
            int intValue = this.tokens.getIntValue();
            this.tokens.nextValidToken();
            if (this.tokens.getTokenType() != PdfTokenizer.TokenType.Number) {
                this.tokens.throwError(KernelExceptionMessageConstant.NUMBER_OF_ENTRIES_IN_THIS_XREF_SUBSECTION_NOT_FOUND, new Object[0]);
            }
            int intValue2 = this.tokens.getIntValue() + intValue;
            int i = intValue;
            while (i < intValue2) {
                this.tokens.nextValidToken();
                long longValue = this.tokens.getLongValue();
                this.tokens.nextValidToken();
                int intValue3 = this.tokens.getIntValue();
                this.tokens.nextValidToken();
                if (longValue == 0 && intValue3 == 65535 && i == 1 && intValue != 0) {
                    intValue2--;
                    i = 0;
                } else {
                    PdfIndirectReference pdfIndirectReference = xref.get(i);
                    boolean z = pdfIndirectReference != null && pdfIndirectReference.checkState((short) 4) && pdfIndirectReference.getGenNumber() == intValue3;
                    boolean z2 = pdfIndirectReference == null || (!z && pdfIndirectReference.getDocument() == null);
                    if (z2) {
                        pdfIndirectReference = new PdfIndirectReference(this.pdfDocument, i, intValue3, longValue);
                    } else if (z) {
                        pdfIndirectReference.setOffset(longValue);
                        pdfIndirectReference.clearState((short) 4);
                    }
                    if (this.tokens.tokenValueEqualsTo(PdfTokenizer.f2901N)) {
                        if (longValue == 0) {
                            this.tokens.throwError(KernelExceptionMessageConstant.FILE_POSITION_0_CROSS_REFERENCE_ENTRY_IN_THIS_XREF_SUBSECTION, new Object[0]);
                        }
                    } else if (!this.tokens.tokenValueEqualsTo(PdfTokenizer.f2900F)) {
                        this.tokens.throwError(KernelExceptionMessageConstant.INVALID_CROSS_REFERENCE_ENTRY_IN_THIS_XREF_SUBSECTION, new Object[0]);
                    } else if (z2) {
                        pdfIndirectReference.setState((short) 2);
                    }
                    if (z2) {
                        xref.add(pdfIndirectReference);
                    }
                }
                i++;
            }
        }
        PdfDictionary pdfDictionary = (PdfDictionary) readObject(false);
        PdfObject pdfObject = pdfDictionary.get(PdfName.XRefStm);
        if (pdfObject != null && pdfObject.getType() == 8) {
            try {
                readXrefStream(((PdfNumber) pdfObject).intValue());
                this.xrefStm = true;
                this.hybridXref = true;
            } catch (IOException e) {
                xref.clear();
                throw e;
            }
        }
        return pdfDictionary;
    }

    /* JADX WARN: Code restructure failed: missing block: B:85:0x020d, code lost:
    
        r6 = r6 + 2;
        r7 = 1;
        r8 = 0;
        r0 = r23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0236, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0238, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected boolean readXrefStream(long r24) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 571
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.kernel.pdf.PdfReader.readXrefStream(long):boolean");
    }

    protected void fixXref() throws IOException {
        int[] iArrCheckObjectStart;
        this.fixedXref = true;
        PdfXrefTable xref = this.pdfDocument.getXref();
        this.tokens.seek(0L);
        ByteBuffer byteBuffer = new ByteBuffer(24);
        PdfTokenizer pdfTokenizer = new PdfTokenizer(new RandomAccessFileOrArray(new ReusableRandomAccessSource(byteBuffer)));
        while (true) {
            long position = this.tokens.getPosition();
            byteBuffer.reset();
            if (!this.tokens.readLineSegment(byteBuffer, true)) {
                return;
            }
            if (byteBuffer.get(0) >= 48 && byteBuffer.get(0) <= 57 && (iArrCheckObjectStart = PdfTokenizer.checkObjectStart(pdfTokenizer)) != null) {
                int i = iArrCheckObjectStart[0];
                int i2 = iArrCheckObjectStart[1];
                PdfIndirectReference pdfIndirectReference = xref.get(i);
                if (pdfIndirectReference != null && pdfIndirectReference.getGenNumber() == i2) {
                    pdfIndirectReference.fixOffset(position);
                }
            }
        }
    }

    protected void rebuildXref() throws IOException {
        int[] iArrCheckObjectStart;
        this.xrefStm = false;
        this.hybridXref = false;
        this.rebuiltXref = true;
        PdfXrefTable xref = this.pdfDocument.getXref();
        xref.clear();
        this.tokens.seek(0L);
        Long lValueOf = null;
        this.trailer = null;
        ByteBuffer byteBuffer = new ByteBuffer(24);
        PdfTokenizer pdfTokenizer = new PdfTokenizer(new RandomAccessFileOrArray(new ReusableRandomAccessSource(byteBuffer)));
        while (true) {
            try {
                long position = this.tokens.getPosition();
                byteBuffer.reset();
                if (this.tokens.readLineSegment(byteBuffer, true)) {
                    if (byteBuffer.get(0) == 116) {
                        if (PdfTokenizer.checkTrailer(byteBuffer)) {
                            this.tokens.seek(position);
                            this.tokens.nextToken();
                            long position2 = this.tokens.getPosition();
                            if (isCurrentObjectATrailer()) {
                                lValueOf = Long.valueOf(position2);
                            } else {
                                this.tokens.seek(position2);
                            }
                        }
                    } else if (byteBuffer.get(0) >= 48 && byteBuffer.get(0) <= 57 && (iArrCheckObjectStart = PdfTokenizer.checkObjectStart(pdfTokenizer)) != null) {
                        int i = iArrCheckObjectStart[0];
                        int i2 = iArrCheckObjectStart[1];
                        if (xref.get(i) == null || xref.get(i).getGenNumber() <= i2) {
                            xref.add(new PdfIndirectReference(this.pdfDocument, i, i2, position));
                        }
                    }
                } else {
                    setTrailerFromTrailerIndex(lValueOf);
                    pdfTokenizer.close();
                    return;
                }
            } finally {
            }
        }
    }

    private boolean isCurrentObjectATrailer() {
        try {
            return ((PdfDictionary) readObject(false)).get(PdfName.Root, false) != null;
        } catch (Exception unused) {
            return false;
        }
    }

    private void setTrailerFromTrailerIndex(Long l) throws IOException {
        if (l == null) {
            throw new PdfException(KernelExceptionMessageConstant.TRAILER_NOT_FOUND);
        }
        this.tokens.seek(l.longValue());
        PdfDictionary pdfDictionary = (PdfDictionary) readObject(false);
        if (pdfDictionary.get(PdfName.Root, false) != null) {
            this.trailer = pdfDictionary;
        }
        if (this.trailer == null) {
            throw new PdfException(KernelExceptionMessageConstant.TRAILER_NOT_FOUND);
        }
    }

    protected PdfNumber getXrefPrev(PdfObject pdfObject) {
        PdfObject refersTo;
        if (pdfObject == null) {
            return null;
        }
        if (pdfObject.getType() == 8) {
            return (PdfNumber) pdfObject;
        }
        if (pdfObject.getType() == 5 && StrictnessLevel.CONSERVATIVE.isStricter(getStrictnessLevel()) && (refersTo = ((PdfIndirectReference) pdfObject).getRefersTo(true)) != null && refersTo.getType() == 8) {
            return (PdfNumber) refersTo;
        }
        throw new InvalidXRefPrevException(KernelExceptionMessageConstant.XREF_PREV_SHALL_BE_DIRECT_NUMBER_OBJECT);
    }

    boolean isMemorySavingMode() {
        return this.memorySavingMode;
    }

    private void processArrayReadError() {
        String str = MessageFormatUtil.format(KernelExceptionMessageConstant.UNEXPECTED_TOKEN, new String(this.tokens.getByteContent(), StandardCharsets.UTF_8));
        if (StrictnessLevel.CONSERVATIVE.isStricter(getStrictnessLevel())) {
            LoggerFactory.getLogger((Class<?>) PdfReader.class).error(str);
        } else {
            this.tokens.throwError(str, new Object[0]);
        }
    }

    private void readDecryptObj() {
        PdfDictionary asDictionary;
        if (this.encrypted || (asDictionary = this.trailer.getAsDictionary(PdfName.Encrypt)) == null) {
            return;
        }
        this.encrypted = true;
        PdfName asName = asDictionary.getAsName(PdfName.Filter);
        if (PdfName.Adobe_PubSec.equals(asName)) {
            if (this.properties.certificate == null) {
                throw new PdfException(KernelExceptionMessageConstant.f2913x6506ab0b);
            }
            this.decrypt = new PdfEncryption(asDictionary, this.properties.certificateKey, this.properties.certificate, this.properties.certificateKeyProvider, this.properties.externalDecryptionProcess);
        } else {
            if (PdfName.Standard.equals(asName)) {
                this.decrypt = new PdfEncryption(asDictionary, this.properties.password, getOriginalFileId());
                return;
            }
            throw new UnsupportedSecurityHandlerException(MessageFormatUtil.format(UnsupportedSecurityHandlerException.UnsupportedSecurityHandler, asName));
        }
    }

    private PdfObject readObject(PdfIndirectReference pdfIndirectReference, boolean z) {
        PdfObject object;
        if (pdfIndirectReference == null) {
            return null;
        }
        if (pdfIndirectReference.refersTo != null) {
            return pdfIndirectReference.refersTo;
        }
        try {
            this.currentIndirectReference = pdfIndirectReference;
            if (pdfIndirectReference.getObjStreamNumber() > 0) {
                readObjectStream((PdfStream) this.pdfDocument.getXref().get(pdfIndirectReference.getObjStreamNumber()).getRefersTo(false));
                return pdfIndirectReference.refersTo;
            }
            if (pdfIndirectReference.getOffset() <= 0) {
                return null;
            }
            try {
                this.tokens.seek(pdfIndirectReference.getOffset());
                this.tokens.nextValidToken();
                if (this.tokens.getTokenType() != PdfTokenizer.TokenType.Obj || this.tokens.getObjNr() != pdfIndirectReference.getObjNumber() || this.tokens.getGenNr() != pdfIndirectReference.getGenNumber()) {
                    this.tokens.throwError(KernelExceptionMessageConstant.INVALID_OFFSET_FOR_THIS_OBJECT, pdfIndirectReference.toString());
                }
                object = readObject(false);
            } catch (RuntimeException e) {
                if (z && pdfIndirectReference.getObjStreamNumber() == 0) {
                    fixXref();
                    object = readObject(pdfIndirectReference, false);
                } else {
                    throw e;
                }
            }
            if (object != null) {
                return object.setIndirectReference(pdfIndirectReference);
            }
            return null;
        } catch (IOException e2) {
            throw new PdfException(KernelExceptionMessageConstant.CANNOT_READ_PDF_OBJECT, (Throwable) e2);
        }
    }

    private void checkPdfStreamLength(PdfStream pdfStream) throws IOException {
        long position;
        if (correctStreamLength) {
            long length = this.tokens.length();
            long offset = pdfStream.getOffset();
            PdfNumber asNumber = pdfStream.getAsNumber(PdfName.Length);
            boolean z = true;
            if (asNumber != null) {
                long jIntValue = ((long) asNumber.intValue()) + offset;
                if (jIntValue <= length - 20) {
                    this.tokens.seek(jIntValue);
                    String string = this.tokens.readString(20);
                    if (string.startsWith(endstream2) || string.startsWith(endstream3) || string.startsWith(endstream4) || string.startsWith(endstream1)) {
                        z = false;
                    }
                }
            } else {
                asNumber = new PdfNumber(0);
                pdfStream.put(PdfName.Length, asNumber);
            }
            if (z) {
                ByteBuffer byteBuffer = new ByteBuffer(16);
                this.tokens.seek(offset);
                while (true) {
                    position = this.tokens.getPosition();
                    byteBuffer.reset();
                    if (!this.tokens.readLineSegment(byteBuffer, false)) {
                        if (!StrictnessLevel.CONSERVATIVE.isStricter(this.strictnessLevel)) {
                            throw new PdfException(KernelExceptionMessageConstant.STREAM_SHALL_END_WITH_ENDSTREAM);
                        }
                    } else {
                        if (byteBuffer.startsWith(endstream)) {
                            break;
                        }
                        if (byteBuffer.startsWith(endobj)) {
                            long j = position - 16;
                            this.tokens.seek(j);
                            int iIndexOf = this.tokens.readString(16).indexOf(endstream1);
                            if (iIndexOf >= 0) {
                                position = j + ((long) iIndexOf);
                            }
                        }
                    }
                }
                int i = (int) (position - offset);
                this.tokens.seek(position - 2);
                if (this.tokens.read() == 13) {
                    i--;
                }
                this.tokens.seek(position - 1);
                if (this.tokens.read() == 10) {
                    i--;
                }
                asNumber.setValue(i);
                pdfStream.updateLength(i);
            }
        }
    }

    private PdfObject createPdfNullInstance(boolean z) {
        if (z) {
            return PdfNull.PDF_NULL;
        }
        return new PdfNull();
    }

    private static PdfTokenizer getOffsetTokeniser(IRandomAccessSource iRandomAccessSource, boolean z) throws IOException {
        PdfTokenizer pdfTokenizer = new PdfTokenizer(new RandomAccessFileOrArray(iRandomAccessSource));
        try {
            int headerOffset = pdfTokenizer.getHeaderOffset();
            return headerOffset != 0 ? new PdfTokenizer(new RandomAccessFileOrArray(new WindowRandomAccessSource(iRandomAccessSource, headerOffset))) : pdfTokenizer;
        } catch (com.itextpdf.p017io.exceptions.IOException e) {
            if (z) {
                pdfTokenizer.close();
            }
            throw e;
        }
    }

    protected static class ReusableRandomAccessSource implements IRandomAccessSource {
        private ByteBuffer buffer;

        public ReusableRandomAccessSource(ByteBuffer byteBuffer) {
            if (byteBuffer == null) {
                throw new IllegalArgumentException("Passed byte buffer can not be null.");
            }
            this.buffer = byteBuffer;
        }

        @Override // com.itextpdf.p017io.source.IRandomAccessSource
        public int get(long j) {
            if (j >= this.buffer.size()) {
                return -1;
            }
            return this.buffer.getInternalBuffer()[(int) j] & 255;
        }

        @Override // com.itextpdf.p017io.source.IRandomAccessSource
        public int get(long j, byte[] bArr, int i, int i2) {
            if (this.buffer == null) {
                throw new IllegalStateException(IoExceptionMessage.ALREADY_CLOSED);
            }
            if (j >= r0.size()) {
                return -1;
            }
            if (((long) i2) + j > this.buffer.size()) {
                i2 = (int) (((long) this.buffer.size()) - j);
            }
            System.arraycopy(this.buffer.getInternalBuffer(), (int) j, bArr, i, i2);
            return i2;
        }

        @Override // com.itextpdf.p017io.source.IRandomAccessSource
        public long length() {
            return this.buffer.size();
        }

        @Override // com.itextpdf.p017io.source.IRandomAccessSource
        public void close() {
            this.buffer = null;
        }
    }

    public enum StrictnessLevel {
        CONSERVATIVE(AdConfig.DEFAULT_AD_QUALITY_RETRY_INTERVAL),
        LENIENT(3000);

        private final int levelValue;

        StrictnessLevel(int i) {
            this.levelValue = i;
        }

        public boolean isStricter(StrictnessLevel strictnessLevel) {
            return strictnessLevel == null || this.levelValue > strictnessLevel.levelValue;
        }
    }
}
