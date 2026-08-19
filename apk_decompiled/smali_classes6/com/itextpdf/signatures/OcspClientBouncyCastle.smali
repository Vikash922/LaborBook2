.class public Lcom/itextpdf/signatures/OcspClientBouncyCastle;
.super Ljava/lang/Object;
.source "OcspClientBouncyCastle.java"

# interfaces
.implements Lcom/itextpdf/signatures/IOcspClient;


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final verifier:Lcom/itextpdf/signatures/OCSPVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    const-class v0, Lcom/itextpdf/signatures/OcspClientBouncyCastle;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/signatures/OcspClientBouncyCastle;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/signatures/OCSPVerifier;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/itextpdf/signatures/OcspClientBouncyCastle;->verifier:Lcom/itextpdf/signatures/OCSPVerifier;

    return-void
.end method

.method private static generateOCSPRequest(Ljava/security/cert/X509Certificate;Ljava/math/BigInteger;)Lorg/bouncycastle/cert/ocsp/OCSPReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/ocsp/OCSPException;,
            Ljava/io/IOException;,
            Lorg/bouncycastle/operator/OperatorException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 168
    new-instance v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 171
    sget-object v0, Lorg/bouncycastle/cert/ocsp/CertificateID;->HASH_SHA1:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-static {p0, p1, v0}, Lcom/itextpdf/signatures/SignUtils;->generateCertificateId(Ljava/security/cert/X509Certificate;Ljava/math/BigInteger;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/cert/ocsp/CertificateID;

    move-result-object p0

    .line 174
    invoke-static {p0}, Lcom/itextpdf/signatures/SignUtils;->generateOcspRequestWithNonce(Lorg/bouncycastle/cert/ocsp/CertificateID;)Lorg/bouncycastle/cert/ocsp/OCSPReq;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getBasicOCSPResp(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/lang/String;)Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;
    .locals 2

    const/4 v0, 0x0

    .line 107
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/itextpdf/signatures/OcspClientBouncyCastle;->getOcspResponse(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/lang/String;)Lorg/bouncycastle/cert/ocsp/OCSPResp;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    .line 111
    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/cert/ocsp/OCSPResp;->getStatus()I

    move-result p3

    if-eqz p3, :cond_1

    return-object v0

    .line 114
    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/cert/ocsp/OCSPResp;->getResponseObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    .line 115
    iget-object p3, p0, Lcom/itextpdf/signatures/OcspClientBouncyCastle;->verifier:Lcom/itextpdf/signatures/OCSPVerifier;

    if-eqz p3, :cond_2

    .line 116
    invoke-static {}, Lcom/itextpdf/commons/utils/DateTimeUtil;->getCurrentTimeDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p3, p1, p2, v1}, Lcom/itextpdf/signatures/OCSPVerifier;->isValidResponse(Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;Ljava/security/cert/X509Certificate;Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object p1

    :catch_0
    move-exception p1

    .line 120
    sget-object p2, Lcom/itextpdf/signatures/OcspClientBouncyCastle;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-object v0
.end method

.method public getEncoded(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B
    .locals 1

    .line 131
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/itextpdf/signatures/OcspClientBouncyCastle;->getBasicOCSPResp(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/lang/String;)Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 133
    invoke-virtual {p1}, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->getResponses()[Lorg/bouncycastle/cert/ocsp/SingleResp;

    move-result-object p2

    .line 134
    array-length p3, p2

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    const/4 p3, 0x0

    .line 135
    aget-object p2, p2, p3

    .line 136
    invoke-virtual {p2}, Lorg/bouncycastle/cert/ocsp/SingleResp;->getCertStatus()Lorg/bouncycastle/cert/ocsp/CertificateStatus;

    move-result-object p2

    .line 137
    sget-object p3, Lorg/bouncycastle/cert/ocsp/CertificateStatus;->GOOD:Lorg/bouncycastle/cert/ocsp/CertificateStatus;

    if-ne p2, p3, :cond_0

    .line 138
    invoke-virtual {p1}, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->getEncoded()[B

    move-result-object p1

    return-object p1

    .line 139
    :cond_0
    instance-of p1, p2, Lorg/bouncycastle/cert/ocsp/RevokedStatus;

    if-eqz p1, :cond_1

    .line 140
    new-instance p1, Ljava/io/IOException;

    const-string p2, "OCSP status is revoked."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 142
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "OCSP status is unknown."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 147
    sget-object p2, Lcom/itextpdf/signatures/OcspClientBouncyCastle;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method getOcspResponse(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/lang/String;)Lorg/bouncycastle/cert/ocsp/OCSPResp;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Lorg/bouncycastle/cert/ocsp/OCSPException;,
            Ljava/io/IOException;,
            Lorg/bouncycastle/operator/OperatorException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 198
    invoke-static {p1}, Lcom/itextpdf/signatures/CertificateUtil;->getOCSPURL(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object p3

    :cond_1
    if-nez p3, :cond_2

    return-object v0

    .line 203
    :cond_2
    sget-object v0, Lcom/itextpdf/signatures/OcspClientBouncyCastle;->LOGGER:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Getting OCSP from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/itextpdf/signatures/OcspClientBouncyCastle;->generateOCSPRequest(Ljava/security/cert/X509Certificate;Ljava/math/BigInteger;)Lorg/bouncycastle/cert/ocsp/OCSPReq;

    move-result-object p1

    .line 205
    invoke-virtual {p1}, Lorg/bouncycastle/cert/ocsp/OCSPReq;->getEncoded()[B

    move-result-object p1

    .line 206
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-static {p1, p2}, Lcom/itextpdf/signatures/SignUtils;->getHttpResponseForOcspRequest([BLjava/net/URL;)Ljava/io/InputStream;

    move-result-object p1

    .line 208
    new-instance p2, Lorg/bouncycastle/cert/ocsp/OCSPResp;

    invoke-static {p1}, Lcom/itextpdf/io/util/StreamUtil;->inputStreamToArray(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/bouncycastle/cert/ocsp/OCSPResp;-><init>([B)V

    return-object p2

    :cond_3
    :goto_0
    return-object v0
.end method
