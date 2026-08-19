.class public Lcom/itextpdf/signatures/OCSPVerifier;
.super Lcom/itextpdf/signatures/RootStoreVerifier;
.source "OCSPVerifier.java"


# static fields
.field protected static final LOGGER:Lorg/slf4j/Logger;

.field protected static final id_kp_OCSPSigning:Ljava/lang/String; = "1.3.6.1.5.5.7.3.9"


# instance fields
.field protected ocsps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    const-class v0, Lcom/itextpdf/signatures/OCSPVerifier;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/signatures/OCSPVerifier;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/signatures/CertificateVerifier;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/signatures/CertificateVerifier;",
            "Ljava/util/List<",
            "Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;",
            ">;)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1}, Lcom/itextpdf/signatures/RootStoreVerifier;-><init>(Lcom/itextpdf/signatures/CertificateVerifier;)V

    .line 87
    iput-object p2, p0, Lcom/itextpdf/signatures/OCSPVerifier;->ocsps:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getOcspResponse(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-object v0

    .line 336
    :cond_0
    new-instance v1, Lcom/itextpdf/signatures/OcspClientBouncyCastle;

    invoke-direct {v1, v0}, Lcom/itextpdf/signatures/OcspClientBouncyCastle;-><init>(Lcom/itextpdf/signatures/OCSPVerifier;)V

    .line 337
    invoke-virtual {v1, p1, p2, v0}, Lcom/itextpdf/signatures/OcspClientBouncyCastle;->getBasicOCSPResp(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/lang/String;)Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 341
    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->getResponses()[Lorg/bouncycastle/cert/ocsp/SingleResp;

    move-result-object p2

    .line 342
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p2, v2

    .line 343
    invoke-virtual {v3}, Lorg/bouncycastle/cert/ocsp/SingleResp;->getCertStatus()Lorg/bouncycastle/cert/ocsp/CertificateStatus;

    move-result-object v3

    .line 344
    sget-object v4, Lorg/bouncycastle/cert/ocsp/CertificateStatus;->GOOD:Lorg/bouncycastle/cert/ocsp/CertificateStatus;

    if-ne v3, v4, :cond_2

    return-object p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public isSignatureValid(Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;Ljava/security/cert/Certificate;)Z
    .locals 1

    .line 319
    :try_start_0
    const-string v0, "BC"

    invoke-static {p1, p2, v0}, Lcom/itextpdf/signatures/SignUtils;->isSignatureValid(Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;Ljava/security/cert/Certificate;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public isValidResponse(Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;Ljava/security/cert/X509Certificate;Ljava/util/Date;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 217
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/signatures/OCSPVerifier;->isSignatureValid(Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;Ljava/security/cert/Certificate;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_a

    .line 224
    invoke-virtual {p1}, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->getCerts()[Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 226
    invoke-static {p1}, Lcom/itextpdf/signatures/SignUtils;->getCertsFromOcspResponse(Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;)Ljava/lang/Iterable;

    move-result-object v2

    .line 227
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_0
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 230
    :try_start_0
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 231
    const-string v5, "1.3.6.1.5.5.7.3.9"

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 232
    invoke-virtual {p0, p1, v3}, Lcom/itextpdf/signatures/OCSPVerifier;->isSignatureValid(Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;Ljava/security/cert/Certificate;)Z

    move-result v4
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    move-object v0, v3

    :cond_2
    if-eqz v0, :cond_5

    .line 252
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 255
    invoke-virtual {v0, p3}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    .line 260
    sget-object p1, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_nocheck:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_a

    .line 265
    :try_start_1
    invoke-static {v0}, Lcom/itextpdf/signatures/CertificateUtil;->getCRL(Ljava/security/cert/X509Certificate;)Ljava/security/cert/CRL;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 267
    :catch_1
    move-object p1, v1

    check-cast p1, Ljava/security/cert/CRL;

    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_4

    .line 269
    instance-of v2, p1, Ljava/security/cert/X509CRL;

    if-eqz v2, :cond_4

    .line 270
    new-instance v2, Lcom/itextpdf/signatures/CRLVerifier;

    invoke-direct {v2, v1, v1}, Lcom/itextpdf/signatures/CRLVerifier;-><init>(Lcom/itextpdf/signatures/CertificateVerifier;Ljava/util/List;)V

    .line 271
    iget-object v1, p0, Lcom/itextpdf/signatures/OCSPVerifier;->rootStore:Ljava/security/KeyStore;

    invoke-virtual {v2, v1}, Lcom/itextpdf/signatures/CRLVerifier;->setRootStore(Ljava/security/KeyStore;)V

    .line 272
    iget-boolean v1, p0, Lcom/itextpdf/signatures/OCSPVerifier;->onlineCheckingAllowed:Z

    invoke-virtual {v2, v1}, Lcom/itextpdf/signatures/CRLVerifier;->setOnlineCheckingAllowed(Z)V

    .line 273
    check-cast p1, Ljava/security/cert/X509CRL;

    invoke-virtual {v2, p1, v0, p2, p3}, Lcom/itextpdf/signatures/CRLVerifier;->verify(Ljava/security/cert/X509CRL;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    .line 274
    :cond_3
    new-instance p1, Lcom/itextpdf/signatures/VerificationException;

    const-string p3, "Authorized OCSP responder certificate was revoked."

    invoke-direct {p1, p2, p3}, Lcom/itextpdf/signatures/VerificationException;-><init>(Ljava/security/cert/Certificate;Ljava/lang/String;)V

    throw p1

    .line 277
    :cond_4
    sget-object p1, Lcom/itextpdf/signatures/OCSPVerifier;->LOGGER:Lorg/slf4j/Logger;

    const-string p2, "Authorized OCSP responder certificate revocation status cannot be checked"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_3

    .line 243
    :cond_5
    new-instance p1, Lcom/itextpdf/signatures/VerificationException;

    const-string p3, "OCSP response could not be verified"

    invoke-direct {p1, p2, p3}, Lcom/itextpdf/signatures/VerificationException;-><init>(Ljava/security/cert/Certificate;Ljava/lang/String;)V

    throw p1

    .line 290
    :cond_6
    iget-object p3, p0, Lcom/itextpdf/signatures/OCSPVerifier;->rootStore:Ljava/security/KeyStore;

    if-eqz p3, :cond_8

    .line 292
    :try_start_2
    iget-object p3, p0, Lcom/itextpdf/signatures/OCSPVerifier;->rootStore:Ljava/security/KeyStore;

    invoke-static {p3}, Lcom/itextpdf/signatures/SignUtils;->getCertificates(Ljava/security/KeyStore;)Ljava/lang/Iterable;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_7
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 293
    invoke-virtual {p0, p1, v2}, Lcom/itextpdf/signatures/OCSPVerifier;->isSignatureValid(Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;Ljava/security/cert/Certificate;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v3, :cond_7

    move-object v1, v2

    goto :goto_2

    .line 300
    :catch_2
    move-object p1, v1

    check-cast p1, Ljava/security/cert/X509Certificate;

    goto :goto_2

    :cond_8
    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_9

    goto :goto_3

    .line 305
    :cond_9
    new-instance p1, Lcom/itextpdf/signatures/VerificationException;

    const-string p3, "OCSP response could not be verified: it does not contain certificate chain and response is not signed by issuer certificate or any from the root store."

    invoke-direct {p1, p2, p3}, Lcom/itextpdf/signatures/VerificationException;-><init>(Ljava/security/cert/Certificate;Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_3
    return-void
.end method

.method public verify(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/signatures/VerificationOK;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    iget-object v1, p0, Lcom/itextpdf/signatures/OCSPVerifier;->ocsps:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 108
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    .line 109
    invoke-virtual {p0, v4, p1, p2, p3}, Lcom/itextpdf/signatures/OCSPVerifier;->verify(Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 116
    :cond_2
    iget-boolean v1, p0, Lcom/itextpdf/signatures/OCSPVerifier;->onlineCheckingAllowed:Z

    if-eqz v1, :cond_3

    if-nez v3, :cond_3

    .line 117
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/signatures/OCSPVerifier;->getOcspResponse(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    move-result-object v1

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/itextpdf/signatures/OCSPVerifier;->verify(Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x1

    .line 123
    :cond_3
    sget-object v1, Lcom/itextpdf/signatures/OCSPVerifier;->LOGGER:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Valid OCSPs found: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    if-lez v3, :cond_5

    .line 125
    new-instance v1, Lcom/itextpdf/signatures/VerificationOK;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Valid OCSPs Found: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v2, :cond_4

    const-string v2, " (online)"

    goto :goto_1

    :cond_4
    const-string v2, ""

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v4, v2}, Lcom/itextpdf/signatures/VerificationOK;-><init>(Ljava/security/cert/X509Certificate;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_5
    iget-object v1, p0, Lcom/itextpdf/signatures/OCSPVerifier;->verifier:Lcom/itextpdf/signatures/CertificateVerifier;

    if-eqz v1, :cond_6

    .line 129
    iget-object v1, p0, Lcom/itextpdf/signatures/OCSPVerifier;->verifier:Lcom/itextpdf/signatures/CertificateVerifier;

    invoke-virtual {v1, p1, p2, p3}, Lcom/itextpdf/signatures/CertificateVerifier;->verify(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    return-object v0
.end method

.method public verify(Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 153
    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->getResponses()[Lorg/bouncycastle/cert/ocsp/SingleResp;

    move-result-object v1

    move v2, v0

    .line 154
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_7

    .line 156
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    aget-object v4, v1, v2

    invoke-virtual {v4}, Lorg/bouncycastle/cert/ocsp/SingleResp;->getCertID()Lorg/bouncycastle/cert/ocsp/CertificateID;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/cert/ocsp/CertificateID;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_1

    :cond_1
    if-nez p3, :cond_2

    move-object p3, p2

    .line 164
    :cond_2
    :try_start_0
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/bouncycastle/cert/ocsp/SingleResp;->getCertID()Lorg/bouncycastle/cert/ocsp/CertificateID;

    move-result-object v3

    invoke-static {v3, p3}, Lcom/itextpdf/signatures/SignUtils;->checkIfIssuersMatch(Lorg/bouncycastle/cert/ocsp/CertificateID;Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 165
    sget-object v3, Lcom/itextpdf/signatures/OCSPVerifier;->LOGGER:Lorg/slf4j/Logger;

    const-string v4, "OCSP: Issuers doesn\'t match."

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/bouncycastle/cert/ocsp/OCSPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 174
    :cond_3
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/bouncycastle/cert/ocsp/SingleResp;->getNextUpdate()Ljava/util/Date;

    move-result-object v3

    const-string v4, "OCSP no longer valid: {0} after {1}"

    if-nez v3, :cond_4

    .line 175
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/bouncycastle/cert/ocsp/SingleResp;->getThisUpdate()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/signatures/SignUtils;->add180Sec(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    .line 176
    sget-object v5, Lcom/itextpdf/signatures/OCSPVerifier;->LOGGER:Lorg/slf4j/Logger;

    const-string v6, "No \'next update\' for OCSP Response; assuming {0}"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p4, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 178
    filled-new-array {p4, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 182
    :cond_4
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/bouncycastle/cert/ocsp/SingleResp;->getNextUpdate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 183
    sget-object v3, Lcom/itextpdf/signatures/OCSPVerifier;->LOGGER:Lorg/slf4j/Logger;

    aget-object v5, v1, v2

    .line 184
    invoke-virtual {v5}, Lorg/bouncycastle/cert/ocsp/SingleResp;->getNextUpdate()Ljava/util/Date;

    move-result-object v5

    filled-new-array {p4, v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 183
    invoke-static {v4, v5}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 189
    :cond_5
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/bouncycastle/cert/ocsp/SingleResp;->getCertStatus()Lorg/bouncycastle/cert/ocsp/CertificateStatus;

    move-result-object v3

    .line 190
    sget-object v4, Lorg/bouncycastle/cert/ocsp/CertificateStatus;->GOOD:Lorg/bouncycastle/cert/ocsp/CertificateStatus;

    if-ne v3, v4, :cond_6

    .line 192
    invoke-virtual {p0, p1, p3, p4}, Lcom/itextpdf/signatures/OCSPVerifier;->isValidResponse(Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;Ljava/security/cert/X509Certificate;Ljava/util/Date;)V

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception p1

    .line 169
    new-instance p2, Ljava/security/GeneralSecurityException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_7
    return v0
.end method
