package com.itextpdf.signatures;

import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.signatures.PdfSigner;
import com.itextpdf.signatures.exceptions.SignExceptionMessageConstant;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.CRL;
import java.security.cert.Certificate;
import java.security.cert.X509CRL;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.ASN1Enumerated;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1OutputStream;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1Set;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.DERNull;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERSet;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.cms.Attribute;
import org.bouncycastle.asn1.cms.AttributeTable;
import org.bouncycastle.asn1.cms.ContentInfo;
import org.bouncycastle.asn1.esf.SignaturePolicyIdentifier;
import org.bouncycastle.asn1.ess.ESSCertIDv2;
import org.bouncycastle.asn1.ess.SigningCertificate;
import org.bouncycastle.asn1.ess.SigningCertificateV2;
import org.bouncycastle.asn1.ocsp.BasicOCSPResponse;
import org.bouncycastle.asn1.ocsp.OCSPObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.x509.AlgorithmIdentifier;
import org.bouncycastle.cert.ocsp.BasicOCSPResp;
import org.bouncycastle.cert.ocsp.CertificateID;
import org.bouncycastle.jce.X509Principal;
import org.bouncycastle.tsp.TimeStampToken;
import org.bouncycastle.tsp.TimeStampTokenInfo;

/* JADX INFO: loaded from: classes6.dex */
public class PdfPKCS7 {
    BasicOCSPResp basicResp;
    private Collection<Certificate> certs;
    private Collection<CRL> crls;
    private byte[] digest;
    private String digestAlgorithmOid;
    private byte[] digestAttr;
    private String digestEncryptionAlgorithmOid;
    private Set<String> digestalgos;
    private MessageDigest encContDigest;
    private byte[] externalDigest;
    private byte[] externalRsaData;
    private PdfName filterSubtype;
    private IExternalDigest interfaceDigest;
    private boolean isCades;
    private boolean isTsp;
    private String location;
    private MessageDigest messageDigest;
    private String provider;
    private String reason;
    private byte[] rsaData;
    private Signature sig;
    private byte[] sigAttr;
    private byte[] sigAttrDer;
    private X509Certificate signCert;
    Collection<Certificate> signCerts;
    private Calendar signDate;
    private String signName;
    private SignaturePolicyIdentifier signaturePolicyIdentifier;
    private int signerversion;
    private TimeStampToken timeStampToken;
    private boolean verified;
    private boolean verifyResult;
    private int version;

    public PdfPKCS7(PrivateKey privateKey, Certificate[] certificateArr, String str, String str2, IExternalDigest iExternalDigest, boolean z) throws NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException {
        this.signDate = (Calendar) TimestampConstants.UNDEFINED_TIMESTAMP_DATE;
        this.version = 1;
        this.signerversion = 1;
        this.provider = str2;
        this.interfaceDigest = iExternalDigest;
        String allowedDigest = DigestAlgorithms.getAllowedDigest(str);
        this.digestAlgorithmOid = allowedDigest;
        if (allowedDigest == null) {
            throw new PdfException(SignExceptionMessageConstant.UNKNOWN_HASH_ALGORITHM).setMessageParams(str);
        }
        this.signCert = (X509Certificate) certificateArr[0];
        this.certs = new ArrayList();
        for (Certificate certificate : certificateArr) {
            this.certs.add(certificate);
        }
        HashSet hashSet = new HashSet();
        this.digestalgos = hashSet;
        hashSet.add(this.digestAlgorithmOid);
        if (privateKey != null) {
            String privateKeyAlgorithm = SignUtils.getPrivateKeyAlgorithm(privateKey);
            this.digestEncryptionAlgorithmOid = privateKeyAlgorithm;
            if (privateKeyAlgorithm.equals("RSA")) {
                this.digestEncryptionAlgorithmOid = SecurityIDs.ID_RSA;
            } else if (this.digestEncryptionAlgorithmOid.equals("DSA")) {
                this.digestEncryptionAlgorithmOid = SecurityIDs.ID_DSA;
            } else {
                throw new PdfException(SignExceptionMessageConstant.UNKNOWN_KEY_ALGORITHM).setMessageParams(this.digestEncryptionAlgorithmOid);
            }
        }
        if (z) {
            this.rsaData = new byte[0];
            this.messageDigest = DigestAlgorithms.getMessageDigest(getHashAlgorithm(), str2);
        }
        if (privateKey != null) {
            this.sig = initSignature(privateKey);
        }
    }

    public PdfPKCS7(byte[] bArr, byte[] bArr2, String str) {
        this.signDate = (Calendar) TimestampConstants.UNDEFINED_TIMESTAMP_DATE;
        this.version = 1;
        this.signerversion = 1;
        try {
            this.provider = str;
            Collection<Certificate> allCerts = SignUtils.readAllCerts(bArr2);
            this.certs = allCerts;
            this.signCerts = allCerts;
            this.signCert = (X509Certificate) SignUtils.getFirstElement(allCerts);
            this.crls = new ArrayList();
            this.digest = ((ASN1OctetString) new ASN1InputStream(new ByteArrayInputStream(bArr)).readObject()).getOctets();
            Signature signatureHelper = SignUtils.getSignatureHelper("SHA1withRSA", str);
            this.sig = signatureHelper;
            signatureHelper.initVerify(this.signCert.getPublicKey());
            this.digestAlgorithmOid = "1.2.840.10040.4.3";
            this.digestEncryptionAlgorithmOid = "1.3.36.3.3.1.2";
        } catch (Exception e) {
            throw new PdfException(e);
        }
    }

    public PdfPKCS7(byte[] bArr, PdfName pdfName, String str) {
        boolean z;
        Attribute attribute;
        this.signDate = (Calendar) TimestampConstants.UNDEFINED_TIMESTAMP_DATE;
        this.version = 1;
        this.signerversion = 1;
        this.filterSubtype = pdfName;
        this.isTsp = PdfName.ETSI_RFC3161.equals(pdfName);
        this.isCades = PdfName.ETSI_CAdES_DETACHED.equals(pdfName);
        try {
            this.provider = str;
            try {
                ASN1Primitive object = new ASN1InputStream(new ByteArrayInputStream(bArr)).readObject();
                if (!(object instanceof ASN1Sequence)) {
                    throw new IllegalArgumentException(SignExceptionMessageConstant.NOT_A_VALID_PKCS7_OBJECT_NOT_A_SEQUENCE);
                }
                ASN1Sequence aSN1Sequence = (ASN1Sequence) object;
                if (!((ASN1ObjectIdentifier) aSN1Sequence.getObjectAt(0)).getId().equals(SecurityIDs.ID_PKCS7_SIGNED_DATA)) {
                    throw new IllegalArgumentException(SignExceptionMessageConstant.NOT_A_VALID_PKCS7_OBJECT_NOT_SIGNED_DATA);
                }
                ASN1Sequence aSN1Sequence2 = (ASN1Sequence) ((ASN1TaggedObject) aSN1Sequence.getObjectAt(1)).getObject();
                this.version = ((ASN1Integer) aSN1Sequence2.getObjectAt(0)).getValue().intValue();
                this.digestalgos = new HashSet();
                Enumeration objects = ((ASN1Set) aSN1Sequence2.getObjectAt(1)).getObjects();
                while (objects.hasMoreElements()) {
                    this.digestalgos.add(((ASN1ObjectIdentifier) ((ASN1Sequence) objects.nextElement()).getObjectAt(0)).getId());
                }
                ASN1Sequence aSN1Sequence3 = (ASN1Sequence) aSN1Sequence2.getObjectAt(2);
                if (aSN1Sequence3.size() > 1) {
                    this.rsaData = ((ASN1OctetString) ((ASN1TaggedObject) aSN1Sequence3.getObjectAt(1)).getObject()).getOctets();
                }
                int i = 3;
                int i2 = 3;
                while (aSN1Sequence2.getObjectAt(i2) instanceof ASN1TaggedObject) {
                    i2++;
                }
                this.certs = SignUtils.readAllCerts(bArr);
                ASN1Set aSN1Set = (ASN1Set) aSN1Sequence2.getObjectAt(i2);
                if (aSN1Set.size() != 1) {
                    throw new IllegalArgumentException(SignExceptionMessageConstant.f3295x99cb1fbe);
                }
                ASN1Sequence aSN1Sequence4 = (ASN1Sequence) aSN1Set.getObjectAt(0);
                this.signerversion = ((ASN1Integer) aSN1Sequence4.getObjectAt(0)).getValue().intValue();
                ASN1Sequence aSN1Sequence5 = (ASN1Sequence) aSN1Sequence4.getObjectAt(1);
                X509Principal issuerX509Name = SignUtils.getIssuerX509Name(aSN1Sequence5);
                BigInteger value = ((ASN1Integer) aSN1Sequence5.getObjectAt(1)).getValue();
                Iterator<Certificate> it = this.certs.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    X509Certificate x509Certificate = (X509Certificate) it.next();
                    if (x509Certificate.getIssuerDN().equals(issuerX509Name) && value.equals(x509Certificate.getSerialNumber())) {
                        this.signCert = x509Certificate;
                        break;
                    }
                }
                if (this.signCert == null) {
                    throw new PdfException(SignExceptionMessageConstant.CANNOT_FIND_SIGNING_CERTIFICATE_WITH_THIS_SERIAL).setMessageParams(issuerX509Name.getName() + " / " + value.toString(16));
                }
                signCertificateChain();
                this.digestAlgorithmOid = ((ASN1ObjectIdentifier) ((ASN1Sequence) aSN1Sequence4.getObjectAt(2)).getObjectAt(0)).getId();
                if (aSN1Sequence4.getObjectAt(3) instanceof ASN1TaggedObject) {
                    ASN1Set aSN1Set2 = ASN1Set.getInstance((ASN1TaggedObject) aSN1Sequence4.getObjectAt(3), false);
                    this.sigAttr = aSN1Set2.getEncoded();
                    this.sigAttrDer = aSN1Set2.getEncoded(ASN1Encoding.DER);
                    z = false;
                    for (int i3 = 0; i3 < aSN1Set2.size(); i3++) {
                        ASN1Sequence aSN1Sequence6 = (ASN1Sequence) aSN1Set2.getObjectAt(i3);
                        String id = ((ASN1ObjectIdentifier) aSN1Sequence6.getObjectAt(0)).getId();
                        if (id.equals(SecurityIDs.ID_MESSAGE_DIGEST)) {
                            this.digestAttr = ((ASN1OctetString) ((ASN1Set) aSN1Sequence6.getObjectAt(1)).getObjectAt(0)).getOctets();
                        } else if (id.equals(SecurityIDs.ID_ADBE_REVOCATION)) {
                            ASN1Sequence aSN1Sequence7 = (ASN1Sequence) ((ASN1Set) aSN1Sequence6.getObjectAt(1)).getObjectAt(0);
                            for (int i4 = 0; i4 < aSN1Sequence7.size(); i4++) {
                                ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) aSN1Sequence7.getObjectAt(i4);
                                if (aSN1TaggedObject.getTagNo() == 0) {
                                    findCRL((ASN1Sequence) aSN1TaggedObject.getObject());
                                }
                                if (aSN1TaggedObject.getTagNo() == 1) {
                                    findOcsp((ASN1Sequence) aSN1TaggedObject.getObject());
                                }
                            }
                        } else {
                            if (this.isCades && id.equals(SecurityIDs.ID_AA_SIGNING_CERTIFICATE_V1)) {
                                if (!Arrays.equals(SignUtils.getMessageDigest("SHA-1").digest(this.signCert.getEncoded()), SigningCertificate.getInstance((ASN1Sequence) ((ASN1Set) aSN1Sequence6.getObjectAt(1)).getObjectAt(0)).getCerts()[0].getCertHash())) {
                                    throw new IllegalArgumentException("Signing certificate doesn't match the ESS information.");
                                }
                            } else if (this.isCades && id.equals(SecurityIDs.ID_AA_SIGNING_CERTIFICATE_V2)) {
                                ESSCertIDv2 eSSCertIDv2 = SigningCertificateV2.getInstance((ASN1Sequence) ((ASN1Set) aSN1Sequence6.getObjectAt(1)).getObjectAt(0)).getCerts()[0];
                                if (!Arrays.equals(SignUtils.getMessageDigest(DigestAlgorithms.getDigest(eSSCertIDv2.getHashAlgorithm().getAlgorithm().getId())).digest(this.signCert.getEncoded()), eSSCertIDv2.getCertHash())) {
                                    throw new IllegalArgumentException("Signing certificate doesn't match the ESS information.");
                                }
                            }
                            z = true;
                        }
                    }
                    if (this.digestAttr == null) {
                        throw new IllegalArgumentException(SignExceptionMessageConstant.AUTHENTICATED_ATTRIBUTE_IS_MISSING_THE_DIGEST);
                    }
                    i = 4;
                } else {
                    z = false;
                }
                if (this.isCades && !z) {
                    throw new IllegalArgumentException("CAdES ESS information missing.");
                }
                int i5 = i + 1;
                this.digestEncryptionAlgorithmOid = ((ASN1ObjectIdentifier) ((ASN1Sequence) aSN1Sequence4.getObjectAt(i)).getObjectAt(0)).getId();
                int i6 = i + 2;
                this.digest = ((ASN1OctetString) aSN1Sequence4.getObjectAt(i5)).getOctets();
                if (i6 < aSN1Sequence4.size() && (aSN1Sequence4.getObjectAt(i6) instanceof ASN1TaggedObject) && (attribute = new AttributeTable(ASN1Set.getInstance((ASN1TaggedObject) aSN1Sequence4.getObjectAt(i6), false)).get(PKCSObjectIdentifiers.id_aa_signatureTimeStampToken)) != null && attribute.getAttrValues().size() > 0) {
                    this.timeStampToken = new TimeStampToken(ContentInfo.getInstance(ASN1Sequence.getInstance(attribute.getAttrValues().getObjectAt(0))));
                }
                if (this.isTsp) {
                    TimeStampToken timeStampToken = new TimeStampToken(ContentInfo.getInstance(aSN1Sequence));
                    this.timeStampToken = timeStampToken;
                    this.messageDigest = DigestAlgorithms.getMessageDigestFromOid(timeStampToken.getTimeStampInfo().getHashAlgorithm().getAlgorithm().getId(), null);
                    return;
                }
                if (this.rsaData != null || this.digestAttr != null) {
                    if (PdfName.Adbe_pkcs7_sha1.equals(getFilterSubtype())) {
                        this.messageDigest = DigestAlgorithms.getMessageDigest("SHA1", str);
                    } else {
                        this.messageDigest = DigestAlgorithms.getMessageDigest(getHashAlgorithm(), str);
                    }
                    this.encContDigest = DigestAlgorithms.getMessageDigest(getHashAlgorithm(), str);
                }
                this.sig = initSignature(this.signCert.getPublicKey());
            } catch (IOException unused) {
                throw new IllegalArgumentException(SignExceptionMessageConstant.CANNOT_DECODE_PKCS7_SIGNED_DATA_OBJECT);
            }
        } catch (Exception e) {
            throw new PdfException(e);
        }
    }

    public void setSignaturePolicy(SignaturePolicyInfo signaturePolicyInfo) {
        this.signaturePolicyIdentifier = signaturePolicyInfo.toSignaturePolicyIdentifier();
    }

    public void setSignaturePolicy(SignaturePolicyIdentifier signaturePolicyIdentifier) {
        this.signaturePolicyIdentifier = signaturePolicyIdentifier;
    }

    public String getSignName() {
        return this.signName;
    }

    public void setSignName(String str) {
        this.signName = str;
    }

    public String getReason() {
        return this.reason;
    }

    public void setReason(String str) {
        this.reason = str;
    }

    public String getLocation() {
        return this.location;
    }

    public void setLocation(String str) {
        this.location = str;
    }

    public Calendar getSignDate() {
        Calendar timeStampDate = getTimeStampDate();
        return timeStampDate == TimestampConstants.UNDEFINED_TIMESTAMP_DATE ? this.signDate : timeStampDate;
    }

    public void setSignDate(Calendar calendar) {
        this.signDate = calendar;
    }

    public int getVersion() {
        return this.version;
    }

    public int getSigningInfoVersion() {
        return this.signerversion;
    }

    public String getDigestAlgorithmOid() {
        return this.digestAlgorithmOid;
    }

    public String getHashAlgorithm() {
        return DigestAlgorithms.getDigest(this.digestAlgorithmOid);
    }

    public String getDigestEncryptionAlgorithmOid() {
        return this.digestEncryptionAlgorithmOid;
    }

    public String getDigestAlgorithm() {
        return getHashAlgorithm() + "with" + getEncryptionAlgorithm();
    }

    public void setExternalDigest(byte[] bArr, byte[] bArr2, String str) {
        this.externalDigest = bArr;
        this.externalRsaData = bArr2;
        if (str != null) {
            if (str.equals("RSA")) {
                this.digestEncryptionAlgorithmOid = SecurityIDs.ID_RSA;
            } else if (str.equals("DSA")) {
                this.digestEncryptionAlgorithmOid = SecurityIDs.ID_DSA;
            } else {
                if (str.equals("ECDSA")) {
                    this.digestEncryptionAlgorithmOid = SecurityIDs.ID_ECDSA;
                    return;
                }
                throw new PdfException(SignExceptionMessageConstant.UNKNOWN_KEY_ALGORITHM).setMessageParams(str);
            }
        }
    }

    private Signature initSignature(PrivateKey privateKey) throws NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException {
        Signature signatureHelper = SignUtils.getSignatureHelper(getDigestAlgorithm(), this.provider);
        signatureHelper.initSign(privateKey);
        return signatureHelper;
    }

    private Signature initSignature(PublicKey publicKey) throws NoSuchAlgorithmException, InvalidKeyException, NoSuchProviderException {
        String digestAlgorithm = getDigestAlgorithm();
        if (PdfName.Adbe_x509_rsa_sha1.equals(getFilterSubtype())) {
            digestAlgorithm = "SHA1withRSA";
        }
        Signature signatureHelper = SignUtils.getSignatureHelper(digestAlgorithm, this.provider);
        signatureHelper.initVerify(publicKey);
        return signatureHelper;
    }

    public void update(byte[] bArr, int i, int i2) throws SignatureException {
        if (this.rsaData != null || this.digestAttr != null || this.isTsp) {
            this.messageDigest.update(bArr, i, i2);
        } else {
            this.sig.update(bArr, i, i2);
        }
    }

    public byte[] getEncodedPKCS1() {
        try {
            byte[] bArr = this.externalDigest;
            if (bArr != null) {
                this.digest = bArr;
            } else {
                this.digest = this.sig.sign();
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            ASN1OutputStream aSN1OutputStreamCreate = ASN1OutputStream.create(byteArrayOutputStream);
            aSN1OutputStreamCreate.writeObject((ASN1Primitive) new DEROctetString(this.digest));
            aSN1OutputStreamCreate.close();
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e) {
            throw new PdfException(e);
        }
    }

    public byte[] getEncodedPKCS7() {
        return getEncodedPKCS7(null, PdfSigner.CryptoStandard.CMS, null, null, null);
    }

    public byte[] getEncodedPKCS7(byte[] bArr) {
        return getEncodedPKCS7(bArr, PdfSigner.CryptoStandard.CMS, null, null, null);
    }

    public byte[] getEncodedPKCS7(byte[] bArr, PdfSigner.CryptoStandard cryptoStandard, ITSAClient iTSAClient, Collection<byte[]> collection, Collection<byte[]> collection2) {
        byte[] timeStampToken;
        ASN1EncodableVector aSN1EncodableVectorBuildUnauthenticatedAttributes;
        try {
            byte[] bArr2 = this.externalDigest;
            if (bArr2 != null) {
                this.digest = bArr2;
                if (this.rsaData != null) {
                    this.rsaData = this.externalRsaData;
                }
            } else {
                byte[] bArr3 = this.externalRsaData;
                if (bArr3 != null && this.rsaData != null) {
                    this.rsaData = bArr3;
                    this.sig.update(bArr3);
                    this.digest = this.sig.sign();
                } else {
                    if (this.rsaData != null) {
                        byte[] bArrDigest = this.messageDigest.digest();
                        this.rsaData = bArrDigest;
                        this.sig.update(bArrDigest);
                    }
                    this.digest = this.sig.sign();
                }
            }
            ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
            for (String str : this.digestalgos) {
                ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
                aSN1EncodableVector2.add(new ASN1ObjectIdentifier(str));
                aSN1EncodableVector2.add(DERNull.INSTANCE);
                aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector2));
            }
            ASN1EncodableVector aSN1EncodableVector3 = new ASN1EncodableVector();
            aSN1EncodableVector3.add(new ASN1ObjectIdentifier(SecurityIDs.ID_PKCS7_DATA));
            if (this.rsaData != null) {
                aSN1EncodableVector3.add(new DERTaggedObject(0, new DEROctetString(this.rsaData)));
            }
            DERSequence dERSequence = new DERSequence(aSN1EncodableVector3);
            ASN1EncodableVector aSN1EncodableVector4 = new ASN1EncodableVector();
            Iterator<Certificate> it = this.certs.iterator();
            while (it.hasNext()) {
                aSN1EncodableVector4.add(new ASN1InputStream(new ByteArrayInputStream(((X509Certificate) it.next()).getEncoded())).readObject());
            }
            DERSet dERSet = new DERSet(aSN1EncodableVector4);
            ASN1EncodableVector aSN1EncodableVector5 = new ASN1EncodableVector();
            aSN1EncodableVector5.add(new ASN1Integer(this.signerversion));
            ASN1EncodableVector aSN1EncodableVector6 = new ASN1EncodableVector();
            aSN1EncodableVector6.add(CertificateInfo.getIssuer(this.signCert.getTBSCertificate()));
            aSN1EncodableVector6.add(new ASN1Integer(this.signCert.getSerialNumber()));
            aSN1EncodableVector5.add(new DERSequence(aSN1EncodableVector6));
            ASN1EncodableVector aSN1EncodableVector7 = new ASN1EncodableVector();
            aSN1EncodableVector7.add(new ASN1ObjectIdentifier(this.digestAlgorithmOid));
            aSN1EncodableVector7.add(DERNull.INSTANCE);
            aSN1EncodableVector5.add(new DERSequence(aSN1EncodableVector7));
            if (bArr != null) {
                aSN1EncodableVector5.add(new DERTaggedObject(false, 0, (ASN1Encodable) getAuthenticatedAttributeSet(bArr, collection, collection2, cryptoStandard)));
            }
            ASN1EncodableVector aSN1EncodableVector8 = new ASN1EncodableVector();
            aSN1EncodableVector8.add(new ASN1ObjectIdentifier(this.digestEncryptionAlgorithmOid));
            aSN1EncodableVector8.add(DERNull.INSTANCE);
            aSN1EncodableVector5.add(new DERSequence(aSN1EncodableVector8));
            aSN1EncodableVector5.add(new DEROctetString(this.digest));
            if (iTSAClient != null && (timeStampToken = iTSAClient.getTimeStampToken(iTSAClient.getMessageDigest().digest(this.digest))) != null && (aSN1EncodableVectorBuildUnauthenticatedAttributes = buildUnauthenticatedAttributes(timeStampToken)) != null) {
                aSN1EncodableVector5.add(new DERTaggedObject(false, 1, (ASN1Encodable) new DERSet(aSN1EncodableVectorBuildUnauthenticatedAttributes)));
            }
            ASN1EncodableVector aSN1EncodableVector9 = new ASN1EncodableVector();
            aSN1EncodableVector9.add(new ASN1Integer(this.version));
            aSN1EncodableVector9.add(new DERSet(aSN1EncodableVector));
            aSN1EncodableVector9.add(dERSequence);
            aSN1EncodableVector9.add(new DERTaggedObject(false, 0, (ASN1Encodable) dERSet));
            aSN1EncodableVector9.add(new DERSet(new DERSequence(aSN1EncodableVector5)));
            ASN1EncodableVector aSN1EncodableVector10 = new ASN1EncodableVector();
            aSN1EncodableVector10.add(new ASN1ObjectIdentifier(SecurityIDs.ID_PKCS7_SIGNED_DATA));
            aSN1EncodableVector10.add(new DERTaggedObject(0, new DERSequence(aSN1EncodableVector9)));
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            ASN1OutputStream aSN1OutputStreamCreate = ASN1OutputStream.create(byteArrayOutputStream);
            aSN1OutputStreamCreate.writeObject((ASN1Primitive) new DERSequence(aSN1EncodableVector10));
            aSN1OutputStreamCreate.close();
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e) {
            throw new PdfException(e);
        }
    }

    private ASN1EncodableVector buildUnauthenticatedAttributes(byte[] bArr) throws IOException {
        if (bArr == null) {
            return null;
        }
        ASN1InputStream aSN1InputStream = new ASN1InputStream(new ByteArrayInputStream(bArr));
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
        aSN1EncodableVector2.add(new ASN1ObjectIdentifier("1.2.840.113549.1.9.16.2.14"));
        aSN1EncodableVector2.add(new DERSet((ASN1Sequence) aSN1InputStream.readObject()));
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector2));
        return aSN1EncodableVector;
    }

    public byte[] getAuthenticatedAttributeBytes(byte[] bArr, PdfSigner.CryptoStandard cryptoStandard, Collection<byte[]> collection, Collection<byte[]> collection2) {
        try {
            return getAuthenticatedAttributeSet(bArr, collection, collection2, cryptoStandard).getEncoded(ASN1Encoding.DER);
        } catch (Exception e) {
            throw new PdfException(e);
        }
    }

    private DERSet getAuthenticatedAttributeSet(byte[] bArr, Collection<byte[]> collection, Collection<byte[]> collection2, PdfSigner.CryptoStandard cryptoStandard) {
        boolean z;
        try {
            ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
            ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
            aSN1EncodableVector2.add(new ASN1ObjectIdentifier(SecurityIDs.ID_CONTENT_TYPE));
            aSN1EncodableVector2.add(new DERSet(new ASN1ObjectIdentifier(SecurityIDs.ID_PKCS7_DATA)));
            aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector2));
            ASN1EncodableVector aSN1EncodableVector3 = new ASN1EncodableVector();
            aSN1EncodableVector3.add(new ASN1ObjectIdentifier(SecurityIDs.ID_MESSAGE_DIGEST));
            aSN1EncodableVector3.add(new DERSet(new DEROctetString(bArr)));
            aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector3));
            if (collection2 != null) {
                Iterator<byte[]> it = collection2.iterator();
                while (it.hasNext()) {
                    if (it.next() != null) {
                        z = true;
                        break;
                    }
                }
                z = false;
            } else {
                z = false;
            }
            if ((collection != null && !collection.isEmpty()) || z) {
                ASN1EncodableVector aSN1EncodableVector4 = new ASN1EncodableVector();
                aSN1EncodableVector4.add(new ASN1ObjectIdentifier(SecurityIDs.ID_ADBE_REVOCATION));
                ASN1EncodableVector aSN1EncodableVector5 = new ASN1EncodableVector();
                if (z) {
                    ASN1EncodableVector aSN1EncodableVector6 = new ASN1EncodableVector();
                    for (byte[] bArr2 : collection2) {
                        if (bArr2 != null) {
                            aSN1EncodableVector6.add(new ASN1InputStream(new ByteArrayInputStream(bArr2)).readObject());
                        }
                    }
                    aSN1EncodableVector5.add(new DERTaggedObject(true, 0, (ASN1Encodable) new DERSequence(aSN1EncodableVector6)));
                }
                if (collection != null && !collection.isEmpty()) {
                    ASN1EncodableVector aSN1EncodableVector7 = new ASN1EncodableVector();
                    Iterator<byte[]> it2 = collection.iterator();
                    while (it2.hasNext()) {
                        DEROctetString dEROctetString = new DEROctetString(it2.next());
                        ASN1EncodableVector aSN1EncodableVector8 = new ASN1EncodableVector();
                        aSN1EncodableVector8.add(OCSPObjectIdentifiers.id_pkix_ocsp_basic);
                        aSN1EncodableVector8.add(dEROctetString);
                        ASN1Enumerated aSN1Enumerated = new ASN1Enumerated(0);
                        ASN1EncodableVector aSN1EncodableVector9 = new ASN1EncodableVector();
                        aSN1EncodableVector9.add(aSN1Enumerated);
                        aSN1EncodableVector9.add(new DERTaggedObject(true, 0, (ASN1Encodable) new DERSequence(aSN1EncodableVector8)));
                        aSN1EncodableVector7.add(new DERSequence(aSN1EncodableVector9));
                    }
                    aSN1EncodableVector5.add(new DERTaggedObject(true, 1, (ASN1Encodable) new DERSequence(aSN1EncodableVector7)));
                }
                aSN1EncodableVector4.add(new DERSet(new DERSequence(aSN1EncodableVector5)));
                aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector4));
            }
            if (cryptoStandard == PdfSigner.CryptoStandard.CADES) {
                ASN1EncodableVector aSN1EncodableVector10 = new ASN1EncodableVector();
                aSN1EncodableVector10.add(new ASN1ObjectIdentifier(SecurityIDs.ID_AA_SIGNING_CERTIFICATE_V2));
                ASN1EncodableVector aSN1EncodableVector11 = new ASN1EncodableVector();
                aSN1EncodableVector11.add(new AlgorithmIdentifier(new ASN1ObjectIdentifier(this.digestAlgorithmOid), null));
                aSN1EncodableVector11.add(new DEROctetString(SignUtils.getMessageDigest(getHashAlgorithm(), this.interfaceDigest).digest(this.signCert.getEncoded())));
                aSN1EncodableVector10.add(new DERSet(new DERSequence(new DERSequence(new DERSequence(aSN1EncodableVector11)))));
                aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector10));
            }
            if (this.signaturePolicyIdentifier != null) {
                aSN1EncodableVector.add(new Attribute(PKCSObjectIdentifiers.id_aa_ets_sigPolicyId, new DERSet(this.signaturePolicyIdentifier)));
            }
            return new DERSet(aSN1EncodableVector);
        } catch (Exception e) {
            throw new PdfException(e);
        }
    }

    public boolean verifySignatureIntegrityAndAuthenticity() throws GeneralSecurityException {
        boolean zEquals;
        boolean zEquals2;
        if (this.verified) {
            return this.verifyResult;
        }
        if (this.isTsp) {
            this.verifyResult = Arrays.equals(this.messageDigest.digest(), this.timeStampToken.getTimeStampInfo().toASN1Structure().getMessageImprint().getHashedMessage());
        } else if (this.sigAttr != null || this.sigAttrDer != null) {
            byte[] bArrDigest = this.messageDigest.digest();
            byte[] bArr = this.rsaData;
            boolean z = false;
            if (bArr != null) {
                zEquals = Arrays.equals(bArrDigest, bArr);
                this.encContDigest.update(this.rsaData);
                zEquals2 = Arrays.equals(this.encContDigest.digest(), this.digestAttr);
            } else {
                zEquals = true;
                zEquals2 = false;
            }
            boolean z2 = Arrays.equals(bArrDigest, this.digestAttr) || zEquals2;
            boolean z3 = verifySigAttributes(this.sigAttr) || verifySigAttributes(this.sigAttrDer);
            if (z2 && z3 && zEquals) {
                z = true;
            }
            this.verifyResult = z;
        } else {
            if (this.rsaData != null) {
                this.sig.update(this.messageDigest.digest());
            }
            this.verifyResult = this.sig.verify(this.digest);
        }
        this.verified = true;
        return this.verifyResult;
    }

    private boolean verifySigAttributes(byte[] bArr) throws GeneralSecurityException {
        Signature signatureInitSignature = initSignature(this.signCert.getPublicKey());
        signatureInitSignature.update(bArr);
        return signatureInitSignature.verify(this.digest);
    }

    public boolean verifyTimestampImprint() throws GeneralSecurityException {
        TimeStampToken timeStampToken = this.timeStampToken;
        if (timeStampToken == null) {
            return false;
        }
        TimeStampTokenInfo timeStampInfo = timeStampToken.getTimeStampInfo();
        return Arrays.equals(SignUtils.getMessageDigest(DigestAlgorithms.getDigest(timeStampInfo.getHashAlgorithm().getAlgorithm().getId())).digest(this.digest), timeStampInfo.toASN1Structure().getMessageImprint().getHashedMessage());
    }

    public Certificate[] getCertificates() {
        Collection<Certificate> collection = this.certs;
        return (Certificate[]) collection.toArray(new X509Certificate[collection.size()]);
    }

    public Certificate[] getSignCertificateChain() {
        Collection<Certificate> collection = this.signCerts;
        return (Certificate[]) collection.toArray(new X509Certificate[collection.size()]);
    }

    public X509Certificate getSigningCertificate() {
        return this.signCert;
    }

    private void signCertificateChain() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.signCert);
        ArrayList arrayList2 = new ArrayList(this.certs);
        int i = 0;
        while (i < arrayList2.size()) {
            if (this.signCert.equals(arrayList2.get(i))) {
                arrayList2.remove(i);
                i--;
            }
            i++;
        }
        while (true) {
            X509Certificate x509Certificate = (X509Certificate) arrayList.get(arrayList.size() - 1);
            int i2 = 0;
            while (i2 < arrayList2.size()) {
                if (SignUtils.verifyCertificateSignature(x509Certificate, ((X509Certificate) arrayList2.get(i2)).getPublicKey(), this.provider)) {
                    break;
                } else {
                    i2++;
                }
            }
            this.signCerts = arrayList;
            return;
            arrayList.add(arrayList2.get(i2));
            arrayList2.remove(i2);
        }
    }

    public Collection<CRL> getCRLs() {
        return this.crls;
    }

    void findCRL(ASN1Sequence aSN1Sequence) {
        try {
            this.crls = new ArrayList();
            for (int i = 0; i < aSN1Sequence.size(); i++) {
                this.crls.add((X509CRL) SignUtils.parseCrlFromStream(new ByteArrayInputStream(aSN1Sequence.getObjectAt(i).toASN1Primitive().getEncoded(ASN1Encoding.DER))));
            }
        } catch (Exception unused) {
        }
    }

    public BasicOCSPResp getOcsp() {
        return this.basicResp;
    }

    public boolean isRevocationValid() {
        if (this.basicResp == null || this.signCerts.size() < 2) {
            return false;
        }
        try {
            X509Certificate[] x509CertificateArr = (X509Certificate[]) getSignCertificateChain();
            CertificateID certID = this.basicResp.getResponses()[0].getCertID();
            return SignUtils.generateCertificateId(x509CertificateArr[1], getSigningCertificate().getSerialNumber(), certID.getHashAlgOID()).equals(certID);
        } catch (Exception unused) {
            return false;
        }
    }

    private void findOcsp(ASN1Sequence aSN1Sequence) throws IOException {
        boolean z;
        this.basicResp = null;
        do {
            z = false;
            if (!(aSN1Sequence.getObjectAt(0) instanceof ASN1ObjectIdentifier) || !((ASN1ObjectIdentifier) aSN1Sequence.getObjectAt(0)).getId().equals(OCSPObjectIdentifiers.id_pkix_ocsp_basic.getId())) {
                int i = 0;
                while (true) {
                    if (i >= aSN1Sequence.size()) {
                        z = true;
                        break;
                    }
                    if (aSN1Sequence.getObjectAt(i) instanceof ASN1Sequence) {
                        aSN1Sequence = (ASN1Sequence) aSN1Sequence.getObjectAt(0);
                        break;
                    } else if (aSN1Sequence.getObjectAt(i) instanceof ASN1TaggedObject) {
                        ASN1TaggedObject aSN1TaggedObject = (ASN1TaggedObject) aSN1Sequence.getObjectAt(i);
                        if (!(aSN1TaggedObject.getObject() instanceof ASN1Sequence)) {
                            return;
                        } else {
                            aSN1Sequence = (ASN1Sequence) aSN1TaggedObject.getObject();
                        }
                    } else {
                        i++;
                    }
                }
            } else {
                this.basicResp = new BasicOCSPResp(BasicOCSPResponse.getInstance(new ASN1InputStream(((ASN1OctetString) aSN1Sequence.getObjectAt(1)).getOctets()).readObject()));
                return;
            }
        } while (!z);
    }

    public boolean isTsp() {
        return this.isTsp;
    }

    public TimeStampToken getTimeStampToken() {
        return this.timeStampToken;
    }

    public Calendar getTimeStampDate() {
        TimeStampToken timeStampToken = this.timeStampToken;
        if (timeStampToken == null) {
            return (Calendar) TimestampConstants.UNDEFINED_TIMESTAMP_DATE;
        }
        return SignUtils.getTimeStampDate(timeStampToken);
    }

    public PdfName getFilterSubtype() {
        return this.filterSubtype;
    }

    public String getEncryptionAlgorithm() {
        String algorithm = EncryptionAlgorithms.getAlgorithm(this.digestEncryptionAlgorithmOid);
        return algorithm == null ? this.digestEncryptionAlgorithmOid : algorithm;
    }
}
