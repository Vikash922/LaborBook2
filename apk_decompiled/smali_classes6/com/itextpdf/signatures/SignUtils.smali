.class final Lcom/itextpdf/signatures/SignUtils;
.super Ljava/lang/Object;
.source "SignUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/signatures/SignUtils$TsaResponse;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static add180Sec(Ljava/util/Date;)Ljava/util/Date;
    .locals 5

    .line 241
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/32 v3, 0x2bf20

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method static checkIfIssuersMatch(Lorg/bouncycastle/cert/ocsp/CertificateID;Ljava/security/cert/X509Certificate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/io/IOException;,
            Lorg/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 236
    new-instance v0, Lorg/bouncycastle/cert/X509CertificateHolder;

    .line 237
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/cert/X509CertificateHolder;-><init>([B)V

    new-instance p1, Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider;

    invoke-direct {p1}, Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider;-><init>()V

    .line 236
    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/cert/ocsp/CertificateID;->matchesIssuer(Lorg/bouncycastle/cert/X509CertificateHolder;Lorg/bouncycastle/operator/DigestCalculatorProvider;)Z

    move-result p0

    return p0
.end method

.method static varargs createSigPolicyQualifiers([Lorg/bouncycastle/asn1/esf/SigPolicyQualifierInfo;)Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;
    .locals 1

    .line 374
    new-instance v0, Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/esf/SigPolicyQualifiers;-><init>([Lorg/bouncycastle/asn1/esf/SigPolicyQualifierInfo;)V

    return-object v0
.end method

.method public static dateToString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2

    .line 273
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy.MM.dd HH:mm:ss z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static generateCertificateId(Ljava/security/cert/X509Certificate;Ljava/math/BigInteger;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/cert/ocsp/CertificateID;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;,
            Ljava/security/cert/CertificateEncodingException;,
            Lorg/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 180
    new-instance v0, Lorg/bouncycastle/cert/ocsp/CertificateID;

    new-instance v1, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    invoke-direct {v1}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;-><init>()V

    .line 181
    invoke-virtual {v1}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->build()Lorg/bouncycastle/operator/DigestCalculatorProvider;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v2, p2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-interface {v1, v2}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object p2

    new-instance v1, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;

    invoke-direct {v1, p0}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-direct {v0, p2, v1, p1}, Lorg/bouncycastle/cert/ocsp/CertificateID;-><init>(Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/cert/X509CertificateHolder;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method static generateCertificateId(Ljava/security/cert/X509Certificate;Ljava/math/BigInteger;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/cert/ocsp/CertificateID;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;,
            Ljava/security/cert/CertificateEncodingException;,
            Lorg/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 172
    new-instance v0, Lorg/bouncycastle/cert/ocsp/CertificateID;

    new-instance v1, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    invoke-direct {v1}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;-><init>()V

    .line 173
    invoke-virtual {v1}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->build()Lorg/bouncycastle/operator/DigestCalculatorProvider;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object p2

    new-instance v1, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;

    invoke-direct {v1, p0}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-direct {v0, p2, v1, p1}, Lorg/bouncycastle/cert/ocsp/CertificateID;-><init>(Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/cert/X509CertificateHolder;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method static generateOcspRequestWithNonce(Lorg/bouncycastle/cert/ocsp/CertificateID;)Lorg/bouncycastle/cert/ocsp/OCSPReq;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 187
    new-instance v0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;

    invoke-direct {v0}, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;-><init>()V

    .line 188
    invoke-virtual {v0, p0}, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->addRequest(Lorg/bouncycastle/cert/ocsp/CertificateID;)Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;

    .line 190
    new-instance p0, Lorg/bouncycastle/asn1/DEROctetString;

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    .line 191
    invoke-static {}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->generateNewDocumentId()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DEROctetString;->getEncoded()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 192
    new-instance v1, Lorg/bouncycastle/asn1/x509/Extension;

    sget-object v2, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_nonce:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p0}, Lorg/bouncycastle/asn1/x509/Extension;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1OctetString;)V

    .line 193
    new-instance p0, Lorg/bouncycastle/asn1/x509/Extensions;

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/bouncycastle/asn1/x509/Extension;

    aput-object v1, v2, v3

    invoke-direct {p0, v2}, Lorg/bouncycastle/asn1/x509/Extensions;-><init>([Lorg/bouncycastle/asn1/x509/Extension;)V

    invoke-virtual {v0, p0}, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->setRequestExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;

    .line 194
    invoke-virtual {v0}, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->build()Lorg/bouncycastle/cert/ocsp/OCSPReq;

    move-result-object p0

    return-object p0
.end method

.method static getCertificates(Ljava/security/KeyStore;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/KeyStore;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 378
    invoke-virtual {p0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v0

    .line 379
    new-instance v1, Lcom/itextpdf/signatures/SignUtils$1;

    invoke-direct {v1, v0, p0}, Lcom/itextpdf/signatures/SignUtils$1;-><init>(Ljava/util/Enumeration;Ljava/security/KeyStore;)V

    return-object v1
.end method

.method static getCertsFromOcspResponse(Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;)Ljava/lang/Iterable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 246
    invoke-virtual {p0}, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->getCerts()[Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object p0

    .line 247
    new-instance v1, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;

    invoke-direct {v1}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;-><init>()V

    .line 248
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p0, v3

    .line 250
    :try_start_0
    invoke-virtual {v1, v4}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;->getCertificate(Lorg/bouncycastle/cert/X509CertificateHolder;)Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static getExtensionValueByOid(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B
    .locals 0

    .line 140
    invoke-virtual {p0, p1}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static getFirstElement(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 265
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static getHttpResponse(Ljava/net/URL;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/URLConnection;

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 162
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 166
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/InputStream;

    return-object p0

    .line 163
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "Invalid http response {0}."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/exceptions/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object p0

    throw p0
.end method

.method static getHttpResponseForOcspRequest([BLjava/net/URL;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URLConnection;

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 199
    const-string v0, "Content-Type"

    const-string v1, "application/ocsp-request"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v0, "Accept"

    const-string v1, "application/ocsp-response"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 201
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 202
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 203
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 204
    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->write([B)V

    .line 205
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 206
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 207
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    div-int/lit8 p0, p0, 0x64

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 212
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/InputStream;

    return-object p0

    .line 208
    :cond_0
    new-instance p0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Invalid http response {0}."

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object p0

    throw p0
.end method

.method static getIssuerX509Name(Lorg/bouncycastle/asn1/ASN1Sequence;)Lorg/bouncycastle/jce/X509Principal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    new-instance v0, Lorg/bouncycastle/jce/X509Principal;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/jce/X509Principal;-><init>([B)V

    return-object v0
.end method

.method static getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 144
    new-instance v0, Lcom/itextpdf/signatures/BouncyCastleDigest;

    invoke-direct {v0}, Lcom/itextpdf/signatures/BouncyCastleDigest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/itextpdf/signatures/BouncyCastleDigest;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    return-object p0
.end method

.method static getMessageDigest(Ljava/lang/String;Lcom/itextpdf/signatures/IExternalDigest;)Ljava/security/MessageDigest;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 148
    invoke-interface {p1, p0}, Lcom/itextpdf/signatures/IExternalDigest;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    return-object p0
.end method

.method static getMessageDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 153
    const-string v0, "SunPKCS11"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SunMSCAPI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    invoke-static {p0, p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    return-object p0

    .line 154
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/itextpdf/signatures/DigestAlgorithms;->normalizeDigestName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    return-object p0
.end method

.method static getPrivateKeyAlgorithm(Ljava/security/PrivateKey;)Ljava/lang/String;
    .locals 1

    .line 120
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    .line 121
    const-string v0, "EC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const-string p0, "ECDSA"

    :cond_0
    return-object p0
.end method

.method static getSignatureHelper(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 354
    invoke-static {p0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p0

    goto :goto_0

    .line 355
    :cond_0
    invoke-static {p0, p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static getTimeStampDate(Lorg/bouncycastle/tsp/TimeStampToken;)Ljava/util/Calendar;
    .locals 1

    .line 346
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 347
    invoke-virtual {p0}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getGenTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    return-object v0
.end method

.method static getTsaResponseForUserRequest(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Lcom/itextpdf/signatures/SignUtils$TsaResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 286
    :try_start_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    .line 291
    invoke-virtual {v0, p0}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 292
    invoke-virtual {v0, p0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const/4 p0, 0x0

    .line 293
    invoke-virtual {v0, p0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 294
    const-string p0, "Content-Type"

    const-string v1, "application/timestamp-query"

    invoke-virtual {v0, p0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string p0, "Content-Transfer-Encoding"

    const-string v1, "binary"

    invoke-virtual {v0, p0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 298
    const-string p0, ""

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 299
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ":"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 300
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Basic "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 301
    invoke-virtual {p0, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/16 p3, 0x8

    invoke-static {p0, p3}, Lcom/itextpdf/commons/utils/Base64;->encodeBytes([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 300
    const-string p2, "Authorization"

    invoke-virtual {v0, p2, p0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    .line 304
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 305
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 307
    new-instance p0, Lcom/itextpdf/signatures/SignUtils$TsaResponse;

    invoke-direct {p0}, Lcom/itextpdf/signatures/SignUtils$TsaResponse;-><init>()V

    .line 308
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/signatures/SignUtils$TsaResponse;->tsaResponseStream:Ljava/io/InputStream;

    .line 309
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/signatures/SignUtils$TsaResponse;->encoding:Ljava/lang/String;

    return-object p0

    .line 289
    :catch_0
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "Failed to get TSA response from {0}."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/itextpdf/kernel/exceptions/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object p0

    throw p0
.end method

.method static hasUnsupportedCriticalExtension(Ljava/security/cert/X509Certificate;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_2

    .line 333
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->hasUnsupportedCriticalExtension()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 335
    sget-object v1, Lcom/itextpdf/signatures/OID$X509Extensions;->SUPPORTED_CRITICAL_EXTENSIONS:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 331
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "X509Certificate can\'t be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static isSignatureValid(Lorg/bouncycastle/tsp/TimeStampToken;Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;,
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 227
    const-string p2, "BC"

    .line 229
    :cond_0
    new-instance v0, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;

    invoke-direct {v0}, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;-><init>()V

    invoke-virtual {v0, p2}, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;

    move-result-object p2

    .line 230
    invoke-virtual {p2, p1}, Lorg/bouncycastle/cms/jcajce/JcaSimpleSignerInfoVerifierBuilder;->build(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/cms/SignerInformationVerifier;

    move-result-object p1

    .line 231
    invoke-virtual {p0, p1}, Lorg/bouncycastle/tsp/TimeStampToken;->validate(Lorg/bouncycastle/cms/SignerInformationVerifier;)V

    return-void
.end method

.method static isSignatureValid(Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;Ljava/security/cert/Certificate;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;,
            Lorg/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 218
    const-string p2, "BC"

    .line 220
    :cond_0
    new-instance v0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    invoke-direct {v0}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;-><init>()V

    .line 221
    invoke-virtual {v0, p2}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->build(Ljava/security/PublicKey;)Lorg/bouncycastle/operator/ContentVerifierProvider;

    move-result-object p1

    .line 220
    invoke-virtual {p0, p1}, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->isSignatureValid(Lorg/bouncycastle/operator/ContentVerifierProvider;)Z

    move-result p0

    return p0
.end method

.method static parseCrlFromStream(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 136
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object p0

    return-object p0
.end method

.method static readAllCerts([B)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Collection<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/util/StreamParsingException;
        }
    .end annotation

    .line 259
    new-instance v0, Lorg/bouncycastle/jce/provider/X509CertParser;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/X509CertParser;-><init>()V

    .line 260
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jce/provider/X509CertParser;->engineInit(Ljava/io/InputStream;)V

    .line 261
    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/X509CertParser;->engineReadAll()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method static verifyCertificateSignature(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)Z
    .locals 0

    if-nez p2, :cond_0

    .line 362
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    goto :goto_0

    .line 364
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :catch_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
