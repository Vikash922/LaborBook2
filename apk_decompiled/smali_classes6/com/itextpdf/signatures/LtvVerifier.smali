.class public Lcom/itextpdf/signatures/LtvVerifier;
.super Lcom/itextpdf/signatures/RootStoreVerifier;
.source "LtvVerifier.java"


# static fields
.field protected static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field protected acroForm:Lcom/itextpdf/forms/PdfAcroForm;

.field protected document:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field protected dss:Lcom/itextpdf/kernel/pdf/PdfDictionary;

.field protected latestRevision:Z

.field protected metaInfo:Lcom/itextpdf/commons/actions/contexts/IMetaInfo;

.field protected option:Lcom/itextpdf/signatures/LtvVerification$CertificateOption;

.field protected pkcs7:Lcom/itextpdf/signatures/PdfPKCS7;

.field protected securityProviderCode:Ljava/lang/String;

.field private sgnUtil:Lcom/itextpdf/signatures/SignatureUtil;

.field protected signDate:Ljava/util/Date;

.field protected signatureName:Ljava/lang/String;

.field protected verifyRootCertificate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    const-class v0, Lcom/itextpdf/signatures/LtvVerifier;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/signatures/LtvVerifier;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, v0}, Lcom/itextpdf/signatures/RootStoreVerifier;-><init>(Lcom/itextpdf/signatures/CertificateVerifier;)V

    .line 83
    sget-object v1, Lcom/itextpdf/signatures/LtvVerification$CertificateOption;->SIGNING_CERTIFICATE:Lcom/itextpdf/signatures/LtvVerification$CertificateOption;

    iput-object v1, p0, Lcom/itextpdf/signatures/LtvVerifier;->option:Lcom/itextpdf/signatures/LtvVerification$CertificateOption;

    const/4 v1, 0x1

    .line 85
    iput-boolean v1, p0, Lcom/itextpdf/signatures/LtvVerifier;->verifyRootCertificate:Z

    .line 98
    iput-boolean v1, p0, Lcom/itextpdf/signatures/LtvVerifier;->latestRevision:Z

    .line 102
    iput-object v0, p0, Lcom/itextpdf/signatures/LtvVerifier;->securityProviderCode:Ljava/lang/String;

    .line 115
    invoke-virtual {p0, p1}, Lcom/itextpdf/signatures/LtvVerifier;->initLtvVerifier(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, v0}, Lcom/itextpdf/signatures/RootStoreVerifier;-><init>(Lcom/itextpdf/signatures/CertificateVerifier;)V

    .line 83
    sget-object v0, Lcom/itextpdf/signatures/LtvVerification$CertificateOption;->SIGNING_CERTIFICATE:Lcom/itextpdf/signatures/LtvVerification$CertificateOption;

    iput-object v0, p0, Lcom/itextpdf/signatures/LtvVerifier;->option:Lcom/itextpdf/signatures/LtvVerification$CertificateOption;

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/itextpdf/signatures/LtvVerifier;->verifyRootCertificate:Z

    .line 98
    iput-boolean v0, p0, Lcom/itextpdf/signatures/LtvVerifier;->latestRevision:Z

    .line 120
    iput-object p2, p0, Lcom/itextpdf/signatures/LtvVerifier;->securityProviderCode:Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p1}, Lcom/itextpdf/signatures/LtvVerifier;->initLtvVerifier(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    return-void
.end method


# virtual methods
.method protected coversWholeDocument()Lcom/itextpdf/signatures/PdfPKCS7;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/itextpdf/signatures/LtvVerifier;->sgnUtil:Lcom/itextpdf/signatures/SignatureUtil;

    iget-object v1, p0, Lcom/itextpdf/signatures/LtvVerifier;->signatureName:Ljava/lang/String;

    iget-object v2, p0, Lcom/itextpdf/signatures/LtvVerifier;->securityProviderCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/signatures/SignatureUtil;->readSignatureData(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/signatures/PdfPKCS7;

    move-result-object v0

    .line 396
    iget-object v1, p0, Lcom/itextpdf/signatures/LtvVerifier;->sgnUtil:Lcom/itextpdf/signatures/SignatureUtil;

    iget-object v2, p0, Lcom/itextpdf/signatures/LtvVerifier;->signatureName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/itextpdf/signatures/SignatureUtil;->signatureCoversWholeDocument(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 397
    sget-object v1, Lcom/itextpdf/signatures/LtvVerifier;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "The timestamp covers whole document."

    invoke-interface {v1, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 401
    invoke-virtual {v0}, Lcom/itextpdf/signatures/PdfPKCS7;->verifySignatureIntegrityAndAuthenticity()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 402
    const-string v2, "The signed document has not been modified."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-object v0

    .line 405
    :cond_0
    new-instance v0, Lcom/itextpdf/signatures/VerificationException;

    move-object v1, v2

    check-cast v1, Ljava/security/cert/Certificate;

    const-string v1, "The document was altered after the final signature was applied."

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/signatures/VerificationException;-><init>(Ljava/security/cert/Certificate;Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_1
    new-instance v0, Lcom/itextpdf/signatures/VerificationException;

    move-object v1, v2

    check-cast v1, Ljava/security/cert/Certificate;

    const-string v1, "Signature doesn\'t cover whole document."

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/signatures/VerificationException;-><init>(Ljava/security/cert/Certificate;Ljava/lang/String;)V

    throw v0
.end method

.method public getCRLsFromDSS()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/X509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 326
    iget-object v1, p0, Lcom/itextpdf/signatures/LtvVerifier;->dss:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-nez v1, :cond_0

    return-object v0

    .line 329
    :cond_0
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->CRLs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const/4 v2, 0x0

    .line 333
    :goto_0
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 334
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsStream(I)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v3

    .line 335
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v4}, Lcom/itextpdf/signatures/SignUtils;->parseCrlFromStream(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509CRL;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getOCSPResponsesFromDSS()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 347
    iget-object v1, p0, Lcom/itextpdf/signatures/LtvVerifier;->dss:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-nez v1, :cond_0

    return-object v0

    .line 350
    :cond_0
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->OCSPs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const/4 v2, 0x0

    .line 354
    :goto_0
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 355
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsStream(I)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v3

    .line 358
    :try_start_0
    new-instance v4, Lorg/bouncycastle/cert/ocsp/OCSPResp;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/bouncycastle/cert/ocsp/OCSPResp;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 362
    invoke-virtual {v4}, Lorg/bouncycastle/cert/ocsp/OCSPResp;->getStatus()I

    move-result v3

    if-nez v3, :cond_2

    .line 364
    :try_start_1
    invoke-virtual {v4}, Lorg/bouncycastle/cert/ocsp/OCSPResp;->getResponseObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/bouncycastle/cert/ocsp/OCSPException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 366
    new-instance v1, Ljava/security/GeneralSecurityException;

    invoke-virtual {v0}, Lorg/bouncycastle/cert/ocsp/OCSPException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 360
    new-instance v1, Ljava/security/GeneralSecurityException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    return-object v0
.end method

.method protected initLtvVerifier(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 373
    iput-object p1, p0, Lcom/itextpdf/signatures/LtvVerifier;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    const/4 v0, 0x1

    .line 374
    invoke-static {p1, v0}, Lcom/itextpdf/forms/PdfAcroForm;->getAcroForm(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/signatures/LtvVerifier;->acroForm:Lcom/itextpdf/forms/PdfAcroForm;

    .line 375
    new-instance v1, Lcom/itextpdf/signatures/SignatureUtil;

    invoke-direct {v1, p1}, Lcom/itextpdf/signatures/SignatureUtil;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    iput-object v1, p0, Lcom/itextpdf/signatures/LtvVerifier;->sgnUtil:Lcom/itextpdf/signatures/SignatureUtil;

    .line 376
    invoke-virtual {v1}, Lcom/itextpdf/signatures/SignatureUtil;->getSignatureNames()Ljava/util/List;

    move-result-object p1

    .line 377
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/itextpdf/signatures/LtvVerifier;->signatureName:Ljava/lang/String;

    .line 378
    invoke-static {}, Lcom/itextpdf/commons/utils/DateTimeUtil;->getCurrentTimeDate()Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/signatures/LtvVerifier;->signDate:Ljava/util/Date;

    .line 379
    invoke-virtual {p0}, Lcom/itextpdf/signatures/LtvVerifier;->coversWholeDocument()Lcom/itextpdf/signatures/PdfPKCS7;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/signatures/LtvVerifier;->pkcs7:Lcom/itextpdf/signatures/PdfPKCS7;

    .line 380
    sget-object v0, Lcom/itextpdf/signatures/LtvVerifier;->LOGGER:Lorg/slf4j/Logger;

    .line 382
    invoke-virtual {p1}, Lcom/itextpdf/signatures/PdfPKCS7;->isTsp()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "document-level timestamp "

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iget-object v1, p0, Lcom/itextpdf/signatures/LtvVerifier;->signatureName:Ljava/lang/String;

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    .line 381
    const-string v1, "Checking {0}signature {1}"

    invoke-static {v1, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 380
    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public setCertificateOption(Lcom/itextpdf/signatures/LtvVerification$CertificateOption;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/itextpdf/signatures/LtvVerifier;->option:Lcom/itextpdf/signatures/LtvVerification$CertificateOption;

    return-void
.end method

.method public setEventCountingMetaInfo(Lcom/itextpdf/commons/actions/contexts/IMetaInfo;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/itextpdf/signatures/LtvVerifier;->metaInfo:Lcom/itextpdf/commons/actions/contexts/IMetaInfo;

    return-void
.end method

.method public setVerifier(Lcom/itextpdf/signatures/CertificateVerifier;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/itextpdf/signatures/LtvVerifier;->verifier:Lcom/itextpdf/signatures/CertificateVerifier;

    return-void
.end method

.method public setVerifyRootCertificate(Z)V
    .locals 0

    .line 146
    iput-boolean p1, p0, Lcom/itextpdf/signatures/LtvVerifier;->verifyRootCertificate:Z

    return-void
.end method

.method public switchToPreviousRevision()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 287
    sget-object v0, Lcom/itextpdf/signatures/LtvVerifier;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Switching to previous revision."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 288
    iput-boolean v1, p0, Lcom/itextpdf/signatures/LtvVerifier;->latestRevision:Z

    .line 289
    iget-object v1, p0, Lcom/itextpdf/signatures/LtvVerifier;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->DSS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/signatures/LtvVerifier;->dss:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 290
    iget-object v1, p0, Lcom/itextpdf/signatures/LtvVerifier;->pkcs7:Lcom/itextpdf/signatures/PdfPKCS7;

    invoke-virtual {v1}, Lcom/itextpdf/signatures/PdfPKCS7;->getTimeStampDate()Ljava/util/Calendar;

    move-result-object v1

    .line 291
    sget-object v2, Lcom/itextpdf/signatures/TimestampConstants;->UNDEFINED_TIMESTAMP_DATE:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    .line 292
    iget-object v1, p0, Lcom/itextpdf/signatures/LtvVerifier;->pkcs7:Lcom/itextpdf/signatures/PdfPKCS7;

    invoke-virtual {v1}, Lcom/itextpdf/signatures/PdfPKCS7;->getSignDate()Ljava/util/Calendar;

    move-result-object v1

    .line 295
    :cond_0
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/signatures/LtvVerifier;->signDate:Ljava/util/Date;

    .line 296
    iget-object v1, p0, Lcom/itextpdf/signatures/LtvVerifier;->sgnUtil:Lcom/itextpdf/signatures/SignatureUtil;

    invoke-virtual {v1}, Lcom/itextpdf/signatures/SignatureUtil;->getSignatureNames()Ljava/util/List;

    move-result-object v1

    .line 297
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 298
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/itextpdf/signatures/LtvVerifier;->signatureName:Ljava/lang/String;

    .line 299
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-object v2, p0, Lcom/itextpdf/signatures/LtvVerifier;->sgnUtil:Lcom/itextpdf/signatures/SignatureUtil;

    iget-object v4, p0, Lcom/itextpdf/signatures/LtvVerifier;->signatureName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/itextpdf/signatures/SignatureUtil;->extractRevision(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfReader;-><init>(Ljava/io/InputStream;)V

    .line 300
    :try_start_0
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfDocument;

    new-instance v4, Lcom/itextpdf/kernel/pdf/DocumentProperties;

    invoke-direct {v4}, Lcom/itextpdf/kernel/pdf/DocumentProperties;-><init>()V

    iget-object v5, p0, Lcom/itextpdf/signatures/LtvVerifier;->metaInfo:Lcom/itextpdf/commons/actions/contexts/IMetaInfo;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/DocumentProperties;->setEventCountingMetaInfo(Lcom/itextpdf/commons/actions/contexts/IMetaInfo;)Lcom/itextpdf/kernel/pdf/DocumentProperties;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/DocumentProperties;)V

    iput-object v2, p0, Lcom/itextpdf/signatures/LtvVerifier;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 301
    invoke-static {v2, v3}, Lcom/itextpdf/forms/PdfAcroForm;->getAcroForm(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/signatures/LtvVerifier;->acroForm:Lcom/itextpdf/forms/PdfAcroForm;

    .line 302
    new-instance v2, Lcom/itextpdf/signatures/SignatureUtil;

    iget-object v4, p0, Lcom/itextpdf/signatures/LtvVerifier;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v2, v4}, Lcom/itextpdf/signatures/SignatureUtil;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    iput-object v2, p0, Lcom/itextpdf/signatures/LtvVerifier;->sgnUtil:Lcom/itextpdf/signatures/SignatureUtil;

    .line 303
    invoke-virtual {v2}, Lcom/itextpdf/signatures/SignatureUtil;->getSignatureNames()Ljava/util/List;

    move-result-object v2

    .line 304
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/itextpdf/signatures/LtvVerifier;->signatureName:Ljava/lang/String;

    .line 305
    invoke-virtual {p0}, Lcom/itextpdf/signatures/LtvVerifier;->coversWholeDocument()Lcom/itextpdf/signatures/PdfPKCS7;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/signatures/LtvVerifier;->pkcs7:Lcom/itextpdf/signatures/PdfPKCS7;

    .line 306
    const-string v3, "Checking {0}signature {1}"

    .line 307
    invoke-virtual {v2}, Lcom/itextpdf/signatures/PdfPKCS7;->isTsp()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "document-level timestamp "

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    iget-object v4, p0, Lcom/itextpdf/signatures/LtvVerifier;->signatureName:Ljava/lang/String;

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 306
    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfReader;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 299
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    .line 310
    :try_start_2
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2

    .line 313
    :cond_2
    const-string v1, "No signatures in revision"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 314
    iput-object v0, p0, Lcom/itextpdf/signatures/LtvVerifier;->pkcs7:Lcom/itextpdf/signatures/PdfPKCS7;

    :goto_2
    return-void
.end method

.method public verify(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;)Ljava/util/List;
    .locals 5
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

    .line 267
    new-instance v0, Lcom/itextpdf/signatures/RootStoreVerifier;

    iget-object v1, p0, Lcom/itextpdf/signatures/LtvVerifier;->verifier:Lcom/itextpdf/signatures/CertificateVerifier;

    invoke-direct {v0, v1}, Lcom/itextpdf/signatures/RootStoreVerifier;-><init>(Lcom/itextpdf/signatures/CertificateVerifier;)V

    .line 268
    iget-object v1, p0, Lcom/itextpdf/signatures/LtvVerifier;->rootStore:Ljava/security/KeyStore;

    invoke-virtual {v0, v1}, Lcom/itextpdf/signatures/RootStoreVerifier;->setRootStore(Ljava/security/KeyStore;)V

    .line 270
    new-instance v1, Lcom/itextpdf/signatures/CRLVerifier;

    invoke-virtual {p0}, Lcom/itextpdf/signatures/LtvVerifier;->getCRLsFromDSS()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/itextpdf/signatures/CRLVerifier;-><init>(Lcom/itextpdf/signatures/CertificateVerifier;Ljava/util/List;)V

    .line 271
    iget-object v0, p0, Lcom/itextpdf/signatures/LtvVerifier;->rootStore:Ljava/security/KeyStore;

    invoke-virtual {v1, v0}, Lcom/itextpdf/signatures/CRLVerifier;->setRootStore(Ljava/security/KeyStore;)V

    .line 272
    iget-boolean v0, p0, Lcom/itextpdf/signatures/LtvVerifier;->latestRevision:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/itextpdf/signatures/LtvVerifier;->onlineCheckingAllowed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    invoke-virtual {v1, v0}, Lcom/itextpdf/signatures/CRLVerifier;->setOnlineCheckingAllowed(Z)V

    .line 274
    new-instance v0, Lcom/itextpdf/signatures/OCSPVerifier;

    invoke-virtual {p0}, Lcom/itextpdf/signatures/LtvVerifier;->getOCSPResponsesFromDSS()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lcom/itextpdf/signatures/OCSPVerifier;-><init>(Lcom/itextpdf/signatures/CertificateVerifier;Ljava/util/List;)V

    .line 275
    iget-object v1, p0, Lcom/itextpdf/signatures/LtvVerifier;->rootStore:Ljava/security/KeyStore;

    invoke-virtual {v0, v1}, Lcom/itextpdf/signatures/OCSPVerifier;->setRootStore(Ljava/security/KeyStore;)V

    .line 276
    iget-boolean v1, p0, Lcom/itextpdf/signatures/LtvVerifier;->latestRevision:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/itextpdf/signatures/LtvVerifier;->onlineCheckingAllowed:Z

    if-eqz v1, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    invoke-virtual {v0, v2}, Lcom/itextpdf/signatures/OCSPVerifier;->setOnlineCheckingAllowed(Z)V

    .line 278
    invoke-virtual {v0, p1, p2, p3}, Lcom/itextpdf/signatures/OCSPVerifier;->verify(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public verify(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/signatures/VerificationOK;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/itextpdf/signatures/VerificationOK;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 168
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 170
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/signatures/LtvVerifier;->pkcs7:Lcom/itextpdf/signatures/PdfPKCS7;

    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {p0}, Lcom/itextpdf/signatures/LtvVerifier;->verifySignature()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public verifyChain([Ljava/security/cert/Certificate;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 242
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 243
    aget-object v1, p1, v0

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 245
    iget-object v2, p0, Lcom/itextpdf/signatures/LtvVerifier;->signDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    .line 248
    aget-object v1, p1, v1

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    :cond_1
    sget-object p1, Lcom/itextpdf/signatures/LtvVerifier;->LOGGER:Lorg/slf4j/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "All certificates are valid on "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/itextpdf/signatures/LtvVerifier;->signDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public verifySignature()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/signatures/VerificationOK;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    sget-object v0, Lcom/itextpdf/signatures/LtvVerifier;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Verifying signature."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    iget-object v1, p0, Lcom/itextpdf/signatures/LtvVerifier;->pkcs7:Lcom/itextpdf/signatures/PdfPKCS7;

    invoke-virtual {v1}, Lcom/itextpdf/signatures/PdfPKCS7;->getSignCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v1

    .line 188
    invoke-virtual {p0, v1}, Lcom/itextpdf/signatures/LtvVerifier;->verifyChain([Ljava/security/cert/Certificate;)V

    .line 191
    sget-object v2, Lcom/itextpdf/signatures/LtvVerification$CertificateOption;->WHOLE_CHAIN:Lcom/itextpdf/signatures/LtvVerification$CertificateOption;

    iget-object v3, p0, Lcom/itextpdf/signatures/LtvVerifier;->option:Lcom/itextpdf/signatures/LtvVerification$CertificateOption;

    invoke-virtual {v2, v3}, Lcom/itextpdf/signatures/LtvVerification$CertificateOption;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 192
    array-length v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_6

    add-int/lit8 v5, v4, 0x1

    .line 199
    aget-object v4, v1, v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    const/4 v6, 0x0

    .line 201
    move-object v7, v6

    check-cast v7, Ljava/security/cert/X509Certificate;

    .line 202
    array-length v7, v1

    if-ge v5, v7, :cond_1

    .line 203
    aget-object v6, v1, v5

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 206
    :cond_1
    sget-object v7, Lcom/itextpdf/signatures/LtvVerifier;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v8

    invoke-interface {v8}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 207
    iget-object v7, p0, Lcom/itextpdf/signatures/LtvVerifier;->signDate:Ljava/util/Date;

    invoke-virtual {p0, v4, v6, v7}, Lcom/itextpdf/signatures/LtvVerifier;->verify(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;)Ljava/util/List;

    move-result-object v6

    .line 208
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_5

    .line 210
    :try_start_0
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 211
    iget-boolean v7, p0, Lcom/itextpdf/signatures/LtvVerifier;->latestRevision:Z

    if-eqz v7, :cond_2

    array-length v7, v1

    if-le v7, v3, :cond_2

    .line 212
    new-instance v7, Lcom/itextpdf/signatures/VerificationOK;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "Root certificate in final revision"

    invoke-direct {v7, v4, v8, v9}, Lcom/itextpdf/signatures/VerificationOK;-><init>(Ljava/security/cert/X509Certificate;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_4

    iget-boolean v7, p0, Lcom/itextpdf/signatures/LtvVerifier;->verifyRootCertificate:Z

    if-nez v7, :cond_3

    goto :goto_2

    .line 215
    :cond_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0}, Ljava/security/GeneralSecurityException;-><init>()V

    throw v0

    .line 217
    :cond_4
    :goto_2
    array-length v7, v1

    if-le v7, v3, :cond_5

    .line 218
    new-instance v7, Lcom/itextpdf/signatures/VerificationOK;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "Root certificate passed without checking"

    invoke-direct {v7, v4, v8, v9}, Lcom/itextpdf/signatures/VerificationOK;-><init>(Ljava/security/cert/X509Certificate;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 221
    :catch_0
    new-instance v0, Lcom/itextpdf/signatures/VerificationException;

    const-string v1, "Couldn\'t verify with CRL or OCSP or trusted anchor"

    invoke-direct {v0, v4, v1}, Lcom/itextpdf/signatures/VerificationException;-><init>(Ljava/security/cert/Certificate;Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_5
    :goto_3
    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v4, v5

    goto :goto_1

    .line 227
    :cond_6
    invoke-virtual {p0}, Lcom/itextpdf/signatures/LtvVerifier;->switchToPreviousRevision()V

    return-object v0
.end method
