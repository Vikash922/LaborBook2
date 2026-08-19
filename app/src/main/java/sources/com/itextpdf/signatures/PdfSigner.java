package com.itextpdf.signatures;

import com.itextpdf.commons.utils.DateTimeUtil;
import com.itextpdf.commons.utils.FileUtil;
import com.itextpdf.forms.PdfAcroForm;
import com.itextpdf.forms.PdfSigFieldLock;
import com.itextpdf.forms.fields.PdfFormField;
import com.itextpdf.forms.fields.PdfSignatureFormField;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.IsoKey;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDate;
import com.itextpdf.kernel.pdf.PdfDeveloperExtension;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfLiteral;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfOutputStream;
import com.itextpdf.kernel.pdf.PdfPage;
import com.itextpdf.kernel.pdf.PdfReader;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.kernel.pdf.PdfVersion;
import com.itextpdf.kernel.pdf.PdfWriter;
import com.itextpdf.kernel.pdf.StampingProperties;
import com.itextpdf.kernel.pdf.annot.PdfWidgetAnnotation;
import com.itextpdf.p017io.source.ByteBuffer;
import com.itextpdf.p017io.source.IRandomAccessSource;
import com.itextpdf.p017io.source.RASInputStream;
import com.itextpdf.p017io.source.RandomAccessSourceFactory;
import com.itextpdf.p017io.util.StreamUtil;
import com.itextpdf.pdfa.PdfAAgnosticPdfDocument;
import com.itextpdf.signatures.exceptions.SignExceptionMessageConstant;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.bouncycastle.asn1.esf.SignaturePolicyIdentifier;

/* JADX INFO: loaded from: classes6.dex */
public class PdfSigner {
    public static final int CERTIFIED_FORM_FILLING = 2;
    public static final int CERTIFIED_FORM_FILLING_AND_ANNOTATIONS = 3;
    public static final int CERTIFIED_NO_CHANGES_ALLOWED = 1;
    public static final int NOT_CERTIFIED = 0;
    protected PdfSignatureAppearance appearance;
    protected byte[] bout;
    protected int certificationLevel;
    protected boolean closed;
    protected PdfSignature cryptoDictionary;
    protected PdfDocument document;
    protected Map<PdfName, PdfLiteral> exclusionLocations;
    protected PdfSigFieldLock fieldLock;
    protected String fieldName;
    protected OutputStream originalOS;
    protected boolean preClosed;
    protected RandomAccessFile raf;
    protected long[] range;
    protected Calendar signDate;
    protected ISignatureEvent signatureEvent;
    protected File tempFile;
    protected ByteArrayOutputStream temporaryOS;

    public enum CryptoStandard {
        CMS,
        CADES
    }

    public interface ISignatureEvent {
        void getSignatureDictionary(PdfSignature pdfSignature);
    }

    public PdfSigner(PdfReader pdfReader, OutputStream outputStream, StampingProperties stampingProperties) throws IOException {
        this(pdfReader, outputStream, null, stampingProperties);
    }

    public PdfSigner(PdfReader pdfReader, OutputStream outputStream, String str, StampingProperties stampingProperties) throws IOException {
        this.certificationLevel = 0;
        this.preClosed = false;
        StampingProperties stampingPropertiesPreserveEncryption = new StampingProperties(stampingProperties).preserveEncryption();
        if (str == null) {
            this.temporaryOS = new ByteArrayOutputStream();
            this.document = initDocument(pdfReader, new PdfWriter(this.temporaryOS), stampingPropertiesPreserveEncryption);
        } else {
            this.tempFile = FileUtil.createTempFile(str);
            this.document = initDocument(pdfReader, new PdfWriter(FileUtil.getFileOutputStream(this.tempFile)), stampingPropertiesPreserveEncryption);
        }
        this.originalOS = outputStream;
        this.signDate = DateTimeUtil.getCurrentTimeCalendar();
        this.fieldName = getNewSigFieldName();
        PdfSignatureAppearance pdfSignatureAppearance = new PdfSignatureAppearance(this.document, new Rectangle(0.0f, 0.0f), 1);
        this.appearance = pdfSignatureAppearance;
        pdfSignatureAppearance.setSignDate(this.signDate);
        this.closed = false;
    }

    protected PdfDocument initDocument(PdfReader pdfReader, PdfWriter pdfWriter, StampingProperties stampingProperties) {
        return new PdfAAgnosticPdfDocument(pdfReader, pdfWriter, stampingProperties);
    }

    public Calendar getSignDate() {
        return this.signDate;
    }

    public void setSignDate(Calendar calendar) {
        this.signDate = calendar;
        this.appearance.setSignDate(calendar);
    }

    public PdfSignatureAppearance getSignatureAppearance() {
        return this.appearance;
    }

    public int getCertificationLevel() {
        return this.certificationLevel;
    }

    public void setCertificationLevel(int i) {
        this.certificationLevel = i;
    }

    public String getFieldName() {
        return this.fieldName;
    }

    public PdfSignature getSignatureDictionary() {
        return this.cryptoDictionary;
    }

    public ISignatureEvent getSignatureEvent() {
        return this.signatureEvent;
    }

    public void setSignatureEvent(ISignatureEvent iSignatureEvent) {
        this.signatureEvent = iSignatureEvent;
    }

    public String getNewSigFieldName() {
        int i = 1;
        while (PdfAcroForm.getAcroForm(this.document, true).getField("Signature" + i) != null) {
            i++;
        }
        return "Signature" + i;
    }

    public void setFieldName(String str) {
        if (str != null) {
            if (str.indexOf(46) >= 0) {
                throw new IllegalArgumentException(SignExceptionMessageConstant.FIELD_NAMES_CANNOT_CONTAIN_A_DOT);
            }
            PdfAcroForm acroForm = PdfAcroForm.getAcroForm(this.document, true);
            if (acroForm.getField(str) != null) {
                PdfFormField field = acroForm.getField(str);
                if (!PdfName.Sig.equals(field.getFormType())) {
                    throw new IllegalArgumentException(SignExceptionMessageConstant.FIELD_TYPE_IS_NOT_A_SIGNATURE_FIELD_TYPE);
                }
                if (field.getValue() != null) {
                    throw new IllegalArgumentException(SignExceptionMessageConstant.FIELD_ALREADY_SIGNED);
                }
                this.appearance.setFieldName(str);
                List<PdfWidgetAnnotation> widgets = field.getWidgets();
                if (widgets.size() > 0) {
                    PdfWidgetAnnotation pdfWidgetAnnotation = widgets.get(0);
                    this.appearance.setPageRect(getWidgetRectangle(pdfWidgetAnnotation));
                    this.appearance.setPageNumber(getWidgetPageNumber(pdfWidgetAnnotation));
                }
            }
            this.fieldName = str;
        }
    }

    public PdfDocument getDocument() {
        return this.document;
    }

    protected void setDocument(PdfDocument pdfDocument) {
        if (pdfDocument.getReader() == null) {
            throw new IllegalArgumentException(SignExceptionMessageConstant.DOCUMENT_MUST_HAVE_READER);
        }
        this.document = pdfDocument;
    }

    public void setOriginalOutputStream(OutputStream outputStream) {
        this.originalOS = outputStream;
    }

    public PdfSigFieldLock getFieldLockDict() {
        return this.fieldLock;
    }

    public void setFieldLockDict(PdfSigFieldLock pdfSigFieldLock) {
        this.fieldLock = pdfSigFieldLock;
    }

    public void signDetached(IExternalDigest iExternalDigest, IExternalSignature iExternalSignature, Certificate[] certificateArr, Collection<ICrlClient> collection, IOcspClient iOcspClient, ITSAClient iTSAClient, int i, CryptoStandard cryptoStandard) throws GeneralSecurityException, IOException {
        signDetached(iExternalDigest, iExternalSignature, certificateArr, collection, iOcspClient, iTSAClient, i, cryptoStandard, (SignaturePolicyIdentifier) null);
    }

    public void signDetached(IExternalDigest iExternalDigest, IExternalSignature iExternalSignature, Certificate[] certificateArr, Collection<ICrlClient> collection, IOcspClient iOcspClient, ITSAClient iTSAClient, int i, CryptoStandard cryptoStandard, SignaturePolicyInfo signaturePolicyInfo) throws GeneralSecurityException, IOException {
        signDetached(iExternalDigest, iExternalSignature, certificateArr, collection, iOcspClient, iTSAClient, i, cryptoStandard, signaturePolicyInfo.toSignaturePolicyIdentifier());
    }

    public void signDetached(IExternalDigest iExternalDigest, IExternalSignature iExternalSignature, Certificate[] certificateArr, Collection<ICrlClient> collection, IOcspClient iOcspClient, ITSAClient iTSAClient, int i, CryptoStandard cryptoStandard, SignaturePolicyIdentifier signaturePolicyIdentifier) throws GeneralSecurityException, IOException {
        int i2;
        if (this.closed) {
            throw new PdfException(SignExceptionMessageConstant.THIS_INSTANCE_OF_PDF_SIGNER_ALREADY_CLOSED);
        }
        if (this.certificationLevel > 0 && isDocumentPdf2() && documentContainsCertificationOrApprovalSignatures()) {
            throw new PdfException(SignExceptionMessageConstant.f3293xaeea04c1);
        }
        Collection<byte[]> collectionProcessCrl = null;
        for (int i3 = 0; collectionProcessCrl == null && i3 < certificateArr.length; i3++) {
            collectionProcessCrl = processCrl(certificateArr[i3], collection);
        }
        if (i == 0) {
            int length = 8192;
            if (collectionProcessCrl != null) {
                Iterator<byte[]> it = collectionProcessCrl.iterator();
                while (it.hasNext()) {
                    length += it.next().length + 10;
                }
            }
            if (iOcspClient != null) {
                length += 4192;
            }
            if (iTSAClient != null) {
                length += 4192;
            }
            i2 = length;
        } else {
            i2 = i;
        }
        PdfSignatureAppearance signatureAppearance = getSignatureAppearance();
        signatureAppearance.setCertificate(certificateArr[0]);
        if (cryptoStandard == CryptoStandard.CADES && !isDocumentPdf2()) {
            addDeveloperExtension(PdfDeveloperExtension.ESIC_1_7_EXTENSIONLEVEL2);
        }
        String hashAlgorithm = iExternalSignature.getHashAlgorithm();
        PdfSignature pdfSignature = new PdfSignature(PdfName.Adobe_PPKLite, cryptoStandard == CryptoStandard.CADES ? PdfName.ETSI_CAdES_DETACHED : PdfName.Adbe_pkcs7_detached);
        pdfSignature.setReason(signatureAppearance.getReason());
        pdfSignature.setLocation(signatureAppearance.getLocation());
        pdfSignature.setSignatureCreator(signatureAppearance.getSignatureCreator());
        pdfSignature.setContact(signatureAppearance.getContact());
        pdfSignature.setDate(new PdfDate(getSignDate()));
        this.cryptoDictionary = pdfSignature;
        HashMap map = new HashMap();
        map.put(PdfName.Contents, Integer.valueOf((i2 * 2) + 2));
        preClose(map);
        PdfPKCS7 pdfPKCS7 = new PdfPKCS7(null, certificateArr, hashAlgorithm, null, iExternalDigest, false);
        if (signaturePolicyIdentifier != null) {
            pdfPKCS7.setSignaturePolicy(signaturePolicyIdentifier);
        }
        byte[] bArrDigest = DigestAlgorithms.digest(getRangeStream(), SignUtils.getMessageDigest(hashAlgorithm, iExternalDigest));
        ArrayList arrayList = new ArrayList();
        if (certificateArr.length > 1 && iOcspClient != null) {
            int i4 = 0;
            while (i4 < certificateArr.length - 1) {
                X509Certificate x509Certificate = (X509Certificate) certificateArr[i4];
                i4++;
                byte[] encoded = iOcspClient.getEncoded(x509Certificate, (X509Certificate) certificateArr[i4], null);
                if (encoded != null) {
                    arrayList.add(encoded);
                }
            }
        }
        pdfPKCS7.setExternalDigest(iExternalSignature.sign(pdfPKCS7.getAuthenticatedAttributeBytes(bArrDigest, cryptoStandard, arrayList, collectionProcessCrl)), null, iExternalSignature.getEncryptionAlgorithm());
        byte[] encodedPKCS7 = pdfPKCS7.getEncodedPKCS7(bArrDigest, cryptoStandard, iTSAClient, arrayList, collectionProcessCrl);
        if (i2 < encodedPKCS7.length) {
            throw new IOException("Not enough space");
        }
        byte[] bArr = new byte[i2];
        System.arraycopy(encodedPKCS7, 0, bArr, 0, encodedPKCS7.length);
        PdfDictionary pdfDictionary = new PdfDictionary();
        pdfDictionary.put(PdfName.Contents, new PdfString(bArr).setHexWriting(true));
        close(pdfDictionary);
        this.closed = true;
    }

    public void signExternalContainer(IExternalSignatureContainer iExternalSignatureContainer, int i) throws GeneralSecurityException, IOException {
        if (this.closed) {
            throw new PdfException(SignExceptionMessageConstant.THIS_INSTANCE_OF_PDF_SIGNER_ALREADY_CLOSED);
        }
        PdfSignature pdfSignature = new PdfSignature();
        PdfSignatureAppearance signatureAppearance = getSignatureAppearance();
        pdfSignature.setReason(signatureAppearance.getReason());
        pdfSignature.setLocation(signatureAppearance.getLocation());
        pdfSignature.setSignatureCreator(signatureAppearance.getSignatureCreator());
        pdfSignature.setContact(signatureAppearance.getContact());
        pdfSignature.setDate(new PdfDate(getSignDate()));
        iExternalSignatureContainer.modifySigningDictionary(pdfSignature.getPdfObject());
        this.cryptoDictionary = pdfSignature;
        HashMap map = new HashMap();
        map.put(PdfName.Contents, Integer.valueOf((i * 2) + 2));
        preClose(map);
        byte[] bArrSign = iExternalSignatureContainer.sign(getRangeStream());
        if (i < bArrSign.length) {
            throw new IOException(SignExceptionMessageConstant.NOT_ENOUGH_SPACE);
        }
        byte[] bArr = new byte[i];
        System.arraycopy(bArrSign, 0, bArr, 0, bArrSign.length);
        PdfDictionary pdfDictionary = new PdfDictionary();
        pdfDictionary.put(PdfName.Contents, new PdfString(bArr).setHexWriting(true));
        close(pdfDictionary);
        this.closed = true;
    }

    public void timestamp(ITSAClient iTSAClient, String str) throws GeneralSecurityException, IOException {
        if (this.closed) {
            throw new PdfException(SignExceptionMessageConstant.THIS_INSTANCE_OF_PDF_SIGNER_ALREADY_CLOSED);
        }
        int tokenSizeEstimate = iTSAClient.getTokenSizeEstimate();
        if (!isDocumentPdf2()) {
            addDeveloperExtension(PdfDeveloperExtension.ESIC_1_7_EXTENSIONLEVEL5);
        }
        setFieldName(str);
        PdfSignature pdfSignature = new PdfSignature(PdfName.Adobe_PPKLite, PdfName.ETSI_RFC3161);
        pdfSignature.put(PdfName.Type, PdfName.DocTimeStamp);
        this.cryptoDictionary = pdfSignature;
        HashMap map = new HashMap();
        map.put(PdfName.Contents, Integer.valueOf((tokenSizeEstimate * 2) + 2));
        preClose(map);
        InputStream rangeStream = getRangeStream();
        MessageDigest messageDigest = iTSAClient.getMessageDigest();
        byte[] bArr = new byte[4096];
        while (true) {
            int i = rangeStream.read(bArr);
            if (i <= 0) {
                break;
            } else {
                messageDigest.update(bArr, 0, i);
            }
        }
        try {
            byte[] timeStampToken = iTSAClient.getTimeStampToken(messageDigest.digest());
            if (tokenSizeEstimate + 2 < timeStampToken.length) {
                throw new IOException("Not enough space");
            }
            byte[] bArr2 = new byte[tokenSizeEstimate];
            System.arraycopy(timeStampToken, 0, bArr2, 0, timeStampToken.length);
            PdfDictionary pdfDictionary = new PdfDictionary();
            pdfDictionary.put(PdfName.Contents, new PdfString(bArr2).setHexWriting(true));
            close(pdfDictionary);
            this.closed = true;
        } catch (Exception e) {
            throw new GeneralSecurityException(e.getMessage(), e);
        }
    }

    public static void signDeferred(PdfDocument pdfDocument, String str, OutputStream outputStream, IExternalSignatureContainer iExternalSignatureContainer) throws GeneralSecurityException, IOException {
        SignatureUtil signatureUtil = new SignatureUtil(pdfDocument);
        PdfSignature signature = signatureUtil.getSignature(str);
        if (signature == null) {
            throw new PdfException(SignExceptionMessageConstant.THERE_IS_NO_FIELD_IN_THE_DOCUMENT_WITH_SUCH_NAME).setMessageParams(str);
        }
        if (!signatureUtil.signatureCoversWholeDocument(str)) {
            throw new PdfException(SignExceptionMessageConstant.f3294xbf0eb368).setMessageParams(str);
        }
        PdfArray byteRange = signature.getByteRange();
        long[] longArray = byteRange.toLongArray();
        if (byteRange.size() == 4) {
            if (longArray[0] == 0) {
                IRandomAccessSource iRandomAccessSourceCreateSourceView = pdfDocument.getReader().getSafeFile().createSourceView();
                byte[] bArrSign = iExternalSignatureContainer.sign(new RASInputStream(new RandomAccessSourceFactory().createRanged(iRandomAccessSourceCreateSourceView, longArray)));
                long j = longArray[2];
                long j2 = longArray[1];
                int i = ((int) (j - j2)) - 2;
                if ((i & 1) != 0) {
                    throw new IllegalArgumentException("Gap is not a multiple of 2");
                }
                int i2 = i / 2;
                if (i2 < bArrSign.length) {
                    throw new PdfException(SignExceptionMessageConstant.AVAILABLE_SPACE_IS_NOT_ENOUGH_FOR_SIGNATURE);
                }
                StreamUtil.copyBytes(iRandomAccessSourceCreateSourceView, 0L, j2 + 1, outputStream);
                ByteBuffer byteBuffer = new ByteBuffer(i2 * 2);
                for (byte b : bArrSign) {
                    byteBuffer.appendHex(b);
                }
                int length = (i2 - bArrSign.length) * 2;
                for (int i3 = 0; i3 < length; i3++) {
                    byteBuffer.append((byte) 48);
                }
                outputStream.write(byteBuffer.toByteArray());
                StreamUtil.copyBytes(iRandomAccessSourceCreateSourceView, longArray[2] - 1, longArray[3] + 1, outputStream);
                return;
            }
        }
        throw new IllegalArgumentException("Single exclusion space supported");
    }

    protected Collection<byte[]> processCrl(Certificate certificate, Collection<ICrlClient> collection) {
        Collection<byte[]> encoded;
        if (collection == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (ICrlClient iCrlClient : collection) {
            if (iCrlClient != null && (encoded = iCrlClient.getEncoded((X509Certificate) certificate, null)) != null) {
                arrayList.addAll(encoded);
            }
        }
        if (arrayList.size() == 0) {
            return null;
        }
        return arrayList;
    }

    protected void addDeveloperExtension(PdfDeveloperExtension pdfDeveloperExtension) {
        this.document.getCatalog().addDeveloperExtension(pdfDeveloperExtension);
    }

    protected boolean isPreClosed() {
        return this.preClosed;
    }

    protected void preClose(Map<PdfName, Integer> map) throws IOException {
        PdfSigFieldLock pdfSigFieldLockCreateNewSignatureFormField;
        if (this.preClosed) {
            throw new PdfException(SignExceptionMessageConstant.DOCUMENT_ALREADY_PRE_CLOSED);
        }
        this.preClosed = true;
        PdfAcroForm acroForm = PdfAcroForm.getAcroForm(this.document, true);
        SignatureUtil signatureUtil = new SignatureUtil(this.document);
        String fieldName = getFieldName();
        boolean zDoesSignatureFieldExist = signatureUtil.doesSignatureFieldExist(fieldName);
        int i = 3;
        acroForm.setSignatureFlags(3);
        PdfSignature pdfSignature = this.cryptoDictionary;
        if (pdfSignature == null) {
            throw new PdfException(SignExceptionMessageConstant.NO_CRYPTO_DICTIONARY_DEFINED);
        }
        pdfSignature.getPdfObject().makeIndirect(this.document);
        if (zDoesSignatureFieldExist) {
            pdfSigFieldLockCreateNewSignatureFormField = populateExistingSignatureFormField(acroForm);
        } else {
            pdfSigFieldLockCreateNewSignatureFormField = createNewSignatureFormField(acroForm, fieldName);
        }
        this.exclusionLocations = new HashMap();
        PdfLiteral pdfLiteral = new PdfLiteral(80);
        this.exclusionLocations.put(PdfName.ByteRange, pdfLiteral);
        this.cryptoDictionary.put(PdfName.ByteRange, pdfLiteral);
        for (Map.Entry<PdfName, Integer> entry : map.entrySet()) {
            PdfName key = entry.getKey();
            PdfLiteral pdfLiteral2 = new PdfLiteral(entry.getValue().intValue());
            this.exclusionLocations.put(key, pdfLiteral2);
            this.cryptoDictionary.put(key, pdfLiteral2);
        }
        if (this.certificationLevel > 0) {
            addDocMDP(this.cryptoDictionary);
        }
        if (pdfSigFieldLockCreateNewSignatureFormField != null) {
            addFieldMDP(this.cryptoDictionary, pdfSigFieldLockCreateNewSignatureFormField);
        }
        ISignatureEvent iSignatureEvent = this.signatureEvent;
        if (iSignatureEvent != null) {
            iSignatureEvent.getSignatureDictionary(this.cryptoDictionary);
        }
        if (this.certificationLevel > 0) {
            PdfDictionary pdfDictionary = new PdfDictionary();
            pdfDictionary.put(PdfName.DocMDP, this.cryptoDictionary.getPdfObject());
            this.document.getCatalog().put(PdfName.Perms, pdfDictionary);
            this.document.getCatalog().setModified();
        }
        this.document.checkIsoConformance(this.cryptoDictionary.getPdfObject(), IsoKey.SIGNATURE);
        this.cryptoDictionary.getPdfObject().flush(false);
        this.document.close();
        this.range = new long[this.exclusionLocations.size() * 2];
        long position = this.exclusionLocations.get(PdfName.ByteRange).getPosition();
        this.exclusionLocations.remove(PdfName.ByteRange);
        int i2 = 1;
        for (PdfLiteral pdfLiteral3 : this.exclusionLocations.values()) {
            long position2 = pdfLiteral3.getPosition();
            long[] jArr = this.range;
            int i3 = i2 + 1;
            jArr[i2] = position2;
            i2 += 2;
            jArr[i3] = ((long) pdfLiteral3.getBytesCount()) + position2;
        }
        long[] jArr2 = this.range;
        Arrays.sort(jArr2, 1, jArr2.length - 1);
        while (true) {
            long[] jArr3 = this.range;
            if (i >= jArr3.length - 2) {
                break;
            }
            jArr3[i] = jArr3[i] - jArr3[i - 1];
            i += 2;
        }
        File file = this.tempFile;
        if (file == null) {
            byte[] byteArray = this.temporaryOS.toByteArray();
            this.bout = byteArray;
            long[] jArr4 = this.range;
            jArr4[jArr4.length - 1] = ((long) byteArray.length) - jArr4[jArr4.length - 2];
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            PdfOutputStream pdfOutputStream = new PdfOutputStream(byteArrayOutputStream);
            pdfOutputStream.write(91);
            int i4 = 0;
            while (true) {
                long[] jArr5 = this.range;
                if (i4 < jArr5.length) {
                    pdfOutputStream.writeLong(jArr5[i4]).write(32);
                    i4++;
                } else {
                    pdfOutputStream.write(93);
                    System.arraycopy(byteArrayOutputStream.toByteArray(), 0, this.bout, (int) position, byteArrayOutputStream.size());
                    return;
                }
            }
        } else {
            try {
                RandomAccessFile randomAccessFile = FileUtil.getRandomAccessFile(file);
                this.raf = randomAccessFile;
                long length = randomAccessFile.length();
                long[] jArr6 = this.range;
                jArr6[jArr6.length - 1] = length - jArr6[jArr6.length - 2];
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                PdfOutputStream pdfOutputStream2 = new PdfOutputStream(byteArrayOutputStream2);
                pdfOutputStream2.write(91);
                int i5 = 0;
                while (true) {
                    long[] jArr7 = this.range;
                    if (i5 < jArr7.length) {
                        pdfOutputStream2.writeLong(jArr7[i5]).write(32);
                        i5++;
                    } else {
                        pdfOutputStream2.write(93);
                        this.raf.seek(position);
                        this.raf.write(byteArrayOutputStream2.toByteArray(), 0, byteArrayOutputStream2.size());
                        return;
                    }
                }
            } catch (IOException e) {
                try {
                    this.raf.close();
                } catch (Exception unused) {
                }
                try {
                    this.tempFile.delete();
                    throw e;
                } catch (Exception unused2) {
                    throw e;
                }
            }
        }
    }

    protected PdfSigFieldLock populateExistingSignatureFormField(PdfAcroForm pdfAcroForm) throws IOException {
        PdfSigFieldLock pdfSigFieldLock;
        PdfSignatureFormField pdfSignatureFormField = (PdfSignatureFormField) pdfAcroForm.getField(this.fieldName);
        pdfSignatureFormField.put(PdfName.f3086V, this.cryptoDictionary.getPdfObject());
        PdfSigFieldLock sigFieldLockDictionary = pdfSignatureFormField.getSigFieldLockDictionary();
        if (sigFieldLockDictionary == null && (pdfSigFieldLock = this.fieldLock) != null) {
            pdfSigFieldLock.getPdfObject().makeIndirect(this.document);
            pdfSignatureFormField.put(PdfName.Lock, this.fieldLock.getPdfObject());
            sigFieldLockDictionary = this.fieldLock;
        }
        pdfSignatureFormField.put(PdfName.f3047P, this.document.getPage(this.appearance.getPageNumber()).getPdfObject());
        pdfSignatureFormField.put(PdfName.f3086V, this.cryptoDictionary.getPdfObject());
        PdfObject pdfObject = ((PdfDictionary) pdfSignatureFormField.getPdfObject()).get(PdfName.f3004F);
        pdfSignatureFormField.put(PdfName.f3004F, new PdfNumber(((pdfObject == null || !pdfObject.isNumber()) ? 0 : ((PdfNumber) pdfObject).intValue()) | 128));
        if (this.appearance.isInvisible()) {
            pdfSignatureFormField.remove(PdfName.f2971AP);
        } else {
            PdfDictionary pdfDictionary = new PdfDictionary();
            pdfDictionary.put(PdfName.f3037N, this.appearance.getAppearance().getPdfObject());
            pdfSignatureFormField.put(PdfName.f2971AP, pdfDictionary);
        }
        pdfSignatureFormField.setModified();
        return sigFieldLockDictionary;
    }

    protected PdfSigFieldLock createNewSignatureFormField(PdfAcroForm pdfAcroForm, String str) throws IOException {
        PdfWidgetAnnotation pdfWidgetAnnotation = new PdfWidgetAnnotation(this.appearance.getPageRect());
        pdfWidgetAnnotation.setFlags(132);
        PdfSignatureFormField pdfSignatureFormFieldCreateSignature = PdfFormField.createSignature(this.document);
        pdfSignatureFormFieldCreateSignature.setFieldName(str);
        pdfSignatureFormFieldCreateSignature.put(PdfName.f3086V, this.cryptoDictionary.getPdfObject());
        pdfSignatureFormFieldCreateSignature.addKid(pdfWidgetAnnotation);
        PdfSigFieldLock sigFieldLockDictionary = pdfSignatureFormFieldCreateSignature.getSigFieldLockDictionary();
        PdfSigFieldLock pdfSigFieldLock = this.fieldLock;
        if (pdfSigFieldLock != null) {
            pdfSigFieldLock.getPdfObject().makeIndirect(this.document);
            pdfSignatureFormFieldCreateSignature.put(PdfName.Lock, this.fieldLock.getPdfObject());
            sigFieldLockDictionary = this.fieldLock;
        }
        int pageNumber = this.appearance.getPageNumber();
        pdfWidgetAnnotation.setPage(this.document.getPage(pageNumber));
        if (this.appearance.isInvisible()) {
            pdfWidgetAnnotation.remove(PdfName.f2971AP);
        } else {
            PdfDictionary appearanceDictionary = pdfWidgetAnnotation.getAppearanceDictionary();
            if (appearanceDictionary == null) {
                appearanceDictionary = new PdfDictionary();
                pdfWidgetAnnotation.put(PdfName.f2971AP, appearanceDictionary);
            }
            appearanceDictionary.put(PdfName.f3037N, this.appearance.getAppearance().getPdfObject());
        }
        pdfAcroForm.addField(pdfSignatureFormFieldCreateSignature, this.document.getPage(pageNumber));
        if (((PdfDictionary) pdfAcroForm.getPdfObject()).isIndirect()) {
            pdfAcroForm.setModified();
        } else {
            this.document.getCatalog().setModified();
        }
        return sigFieldLockDictionary;
    }

    protected InputStream getRangeStream() throws IOException {
        return new RASInputStream(new RandomAccessSourceFactory().createRanged(getUnderlyingSource(), this.range));
    }

    protected void close(PdfDictionary pdfDictionary) throws IOException {
        try {
            if (!this.preClosed) {
                throw new PdfException(SignExceptionMessageConstant.DOCUMENT_MUST_BE_PRE_CLOSED);
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            PdfOutputStream pdfOutputStream = new PdfOutputStream(byteArrayOutputStream);
            for (PdfName pdfName : pdfDictionary.keySet()) {
                PdfObject pdfObject = pdfDictionary.get(pdfName);
                PdfLiteral pdfLiteral = this.exclusionLocations.get(pdfName);
                if (pdfLiteral == null) {
                    throw new IllegalArgumentException("The key didn't reserve space in preclose");
                }
                byteArrayOutputStream.reset();
                pdfOutputStream.write(pdfObject);
                if (byteArrayOutputStream.size() > pdfLiteral.getBytesCount()) {
                    throw new IllegalArgumentException(SignExceptionMessageConstant.TOO_BIG_KEY);
                }
                if (this.tempFile == null) {
                    System.arraycopy(byteArrayOutputStream.toByteArray(), 0, this.bout, (int) pdfLiteral.getPosition(), byteArrayOutputStream.size());
                } else {
                    this.raf.seek(pdfLiteral.getPosition());
                    this.raf.write(byteArrayOutputStream.toByteArray(), 0, byteArrayOutputStream.size());
                }
            }
            if (pdfDictionary.size() != this.exclusionLocations.size()) {
                throw new IllegalArgumentException("The update dictionary has less keys than required");
            }
            if (this.tempFile == null) {
                OutputStream outputStream = this.originalOS;
                byte[] bArr = this.bout;
                outputStream.write(bArr, 0, bArr.length);
            } else if (this.originalOS != null) {
                this.raf.seek(0L);
                long length = this.raf.length();
                byte[] bArr2 = new byte[8192];
                while (length > 0) {
                    int i = this.raf.read(bArr2, 0, (int) Math.min(8192, length));
                    if (i < 0) {
                        throw new EOFException("unexpected eof");
                    }
                    this.originalOS.write(bArr2, 0, i);
                    length -= (long) i;
                }
            }
            if (r10 != null) {
                try {
                    this.originalOS.close();
                } catch (Exception unused) {
                }
            }
        } finally {
            if (this.tempFile != null) {
                this.raf.close();
                if (this.originalOS != null) {
                    this.tempFile.delete();
                }
            }
            OutputStream outputStream2 = this.originalOS;
            if (outputStream2 != null) {
                try {
                    outputStream2.close();
                } catch (Exception unused2) {
                }
            }
        }
    }

    protected IRandomAccessSource getUnderlyingSource() throws IOException {
        RandomAccessSourceFactory randomAccessSourceFactory = new RandomAccessSourceFactory();
        RandomAccessFile randomAccessFile = this.raf;
        return randomAccessFile == null ? randomAccessSourceFactory.createSource(this.bout) : randomAccessSourceFactory.createSource(randomAccessFile);
    }

    protected void addDocMDP(PdfSignature pdfSignature) {
        PdfDictionary pdfDictionary = new PdfDictionary();
        PdfDictionary pdfDictionary2 = new PdfDictionary();
        pdfDictionary2.put(PdfName.f3047P, new PdfNumber(this.certificationLevel));
        pdfDictionary2.put(PdfName.f3086V, new PdfName("1.2"));
        pdfDictionary2.put(PdfName.Type, PdfName.TransformParams);
        pdfDictionary.put(PdfName.TransformMethod, PdfName.DocMDP);
        pdfDictionary.put(PdfName.Type, PdfName.SigRef);
        pdfDictionary.put(PdfName.TransformParams, pdfDictionary2);
        pdfDictionary.put(PdfName.Data, this.document.getTrailer().get(PdfName.Root));
        PdfArray pdfArray = new PdfArray();
        pdfArray.add(pdfDictionary);
        pdfSignature.put(PdfName.Reference, pdfArray);
    }

    protected void addFieldMDP(PdfSignature pdfSignature, PdfSigFieldLock pdfSigFieldLock) {
        PdfDictionary pdfDictionary = new PdfDictionary();
        PdfDictionary pdfDictionary2 = new PdfDictionary();
        pdfDictionary2.putAll(pdfSigFieldLock.getPdfObject());
        pdfDictionary2.put(PdfName.Type, PdfName.TransformParams);
        pdfDictionary2.put(PdfName.f3086V, new PdfName("1.2"));
        pdfDictionary.put(PdfName.TransformMethod, PdfName.FieldMDP);
        pdfDictionary.put(PdfName.Type, PdfName.SigRef);
        pdfDictionary.put(PdfName.TransformParams, pdfDictionary2);
        pdfDictionary.put(PdfName.Data, this.document.getTrailer().get(PdfName.Root));
        PdfArray asArray = ((PdfDictionary) pdfSignature.getPdfObject()).getAsArray(PdfName.Reference);
        if (asArray == null) {
            asArray = new PdfArray();
            pdfSignature.put(PdfName.Reference, asArray);
        }
        asArray.add(pdfDictionary);
    }

    protected boolean documentContainsCertificationOrApprovalSignatures() {
        PdfDictionary asDictionary;
        PdfDictionary asDictionary2 = this.document.getCatalog().getPdfObject().getAsDictionary(PdfName.Perms);
        PdfDictionary asDictionary3 = asDictionary2 != null ? asDictionary2.getAsDictionary(PdfName.UR3) : null;
        PdfAcroForm acroForm = PdfAcroForm.getAcroForm(this.document, false);
        if (acroForm == null) {
            return false;
        }
        Iterator<Map.Entry<String, PdfFormField>> it = acroForm.getFormFields().entrySet().iterator();
        while (it.hasNext()) {
            PdfDictionary pdfObject = it.next().getValue().getPdfObject();
            if (PdfName.Sig.equals(pdfObject.get(PdfName.f3007FT)) && (asDictionary = pdfObject.getAsDictionary(PdfName.f3086V)) != null) {
                PdfSignature pdfSignature = new PdfSignature(asDictionary);
                if (pdfSignature.getContents() != null && pdfSignature.getByteRange() != null && !pdfSignature.getType().equals(PdfName.DocTimeStamp) && asDictionary != asDictionary3) {
                    return true;
                }
            }
        }
        return false;
    }

    protected Rectangle getWidgetRectangle(PdfWidgetAnnotation pdfWidgetAnnotation) {
        return pdfWidgetAnnotation.getRectangle().toRectangle();
    }

    protected int getWidgetPageNumber(PdfWidgetAnnotation pdfWidgetAnnotation) {
        PdfDictionary asDictionary = pdfWidgetAnnotation.getPdfObject().getAsDictionary(PdfName.f3047P);
        if (asDictionary != null) {
            return this.document.getPageNumber(asDictionary);
        }
        for (int i = 1; i <= this.document.getNumberOfPages(); i++) {
            PdfPage page = this.document.getPage(i);
            if (!page.isFlushed() && page.containsAnnotation(pdfWidgetAnnotation)) {
                return i;
            }
        }
        return 0;
    }

    private boolean isDocumentPdf2() {
        return this.document.getPdfVersion().compareTo(PdfVersion.PDF_2_0) >= 0;
    }
}
