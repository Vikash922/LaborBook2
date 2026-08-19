.class public Lcom/itextpdf/signatures/LtvVerification;
.super Ljava/lang/Object;
.source "LtvVerification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/signatures/LtvVerification$ValidationData;,
        Lcom/itextpdf/signatures/LtvVerification$CertificateInclusion;,
        Lcom/itextpdf/signatures/LtvVerification$CertificateOption;,
        Lcom/itextpdf/signatures/LtvVerification$Level;
    }
.end annotation


# instance fields
.field private LOGGER:Lorg/slf4j/Logger;

.field private acroForm:Lcom/itextpdf/forms/PdfAcroForm;

.field private document:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field private securityProviderCode:Ljava/lang/String;

.field private sgnUtil:Lcom/itextpdf/signatures/SignatureUtil;

.field private used:Z

.field private validated:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            "Lcom/itextpdf/signatures/LtvVerification$ValidationData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const-class v0, Lcom/itextpdf/signatures/LtvVerification;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/signatures/LtvVerification;->LOGGER:Lorg/slf4j/Logger;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/signatures/LtvVerification;->validated:Ljava/util/Map;

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/itextpdf/signatures/LtvVerification;->used:Z

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/itextpdf/signatures/LtvVerification;->securityProviderCode:Ljava/lang/String;

    .line 162
    iput-object p1, p0, Lcom/itextpdf/signatures/LtvVerification;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    const/4 v0, 0x1

    .line 163
    invoke-static {p1, v0}, Lcom/itextpdf/forms/PdfAcroForm;->getAcroForm(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/signatures/LtvVerification;->acroForm:Lcom/itextpdf/forms/PdfAcroForm;

    .line 164
    new-instance v0, Lcom/itextpdf/signatures/SignatureUtil;

    invoke-direct {v0, p1}, Lcom/itextpdf/signatures/SignatureUtil;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    iput-object v0, p0, Lcom/itextpdf/signatures/LtvVerification;->sgnUtil:Lcom/itextpdf/signatures/SignatureUtil;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/lang/String;)V
    .locals 0

    .line 176
    invoke-direct {p0, p1}, Lcom/itextpdf/signatures/LtvVerification;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 177
    iput-object p2, p0, Lcom/itextpdf/signatures/LtvVerification;->securityProviderCode:Ljava/lang/String;

    return-void
.end method

.method private static buildOCSPResponse([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 312
    new-instance p0, Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;-><init>(I)V

    .line 313
    new-instance v1, Lorg/bouncycastle/asn1/ocsp/ResponseBytes;

    sget-object v2, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_basic:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/ocsp/ResponseBytes;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    .line 314
    new-instance v0, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;-><init>(Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;Lorg/bouncycastle/asn1/ocsp/ResponseBytes;)V

    .line 315
    new-instance p0, Lorg/bouncycastle/cert/ocsp/OCSPResp;

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/ocsp/OCSPResp;-><init>(Lorg/bouncycastle/asn1/ocsp/OCSPResponse;)V

    invoke-virtual {p0}, Lorg/bouncycastle/cert/ocsp/OCSPResp;->getEncoded()[B

    move-result-object p0

    return-object p0
.end method

.method public static convertToHex([B)Ljava/lang/String;
    .locals 4

    .line 498
    new-instance v0, Lcom/itextpdf/io/source/ByteBuffer;

    invoke-direct {v0}, Lcom/itextpdf/io/source/ByteBuffer;-><init>()V

    .line 499
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    .line 500
    invoke-virtual {v0, v3}, Lcom/itextpdf/io/source/ByteBuffer;->appendHex(B)Lcom/itextpdf/io/source/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 502
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->toByteArray()[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/itextpdf/io/font/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createDss()V
    .locals 6

    .line 412
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v4}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v5}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/signatures/LtvVerification;->outputDss(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;)V

    return-void
.end method

.method private static deleteOldReferences(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 3

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 397
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 398
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    const/4 v1, 0x0

    .line 400
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 401
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    .line 403
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 404
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->remove(I)V

    add-int/lit8 v1, v1, -0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private getParent(Ljava/security/cert/X509Certificate;[Ljava/security/cert/Certificate;)Ljava/security/cert/X509Certificate;
    .locals 4

    const/4 v0, 0x0

    .line 259
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 260
    aget-object v1, p2, v0

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 261
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 265
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getSignatureHashKey(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/itextpdf/signatures/LtvVerification;->sgnUtil:Lcom/itextpdf/signatures/SignatureUtil;

    invoke-virtual {v0, p1}, Lcom/itextpdf/signatures/SignatureUtil;->getSignature(Ljava/lang/String;)Lcom/itextpdf/signatures/PdfSignature;

    move-result-object p1

    .line 320
    invoke-virtual {p1}, Lcom/itextpdf/signatures/PdfSignature;->getContents()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    .line 321
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/itextpdf/io/font/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 323
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ETSI_RFC3161:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/signatures/PdfSignature;->getSubFilter()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 324
    new-instance p1, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p1, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 325
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    .line 326
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v0

    .line 328
    :cond_0
    invoke-static {v0}, Lcom/itextpdf/signatures/LtvVerification;->hashBytesSha1([B)[B

    move-result-object p1

    .line 329
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {p1}, Lcom/itextpdf/signatures/LtvVerification;->convertToHex([B)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static hashBytesSha1([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 333
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 334
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method private outputDss(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 416
    iget-object v6, v0, Lcom/itextpdf/signatures/LtvVerification;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v6

    .line 417
    iget-object v7, v0, Lcom/itextpdf/signatures/LtvVerification;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPdfVersion()Lcom/itextpdf/kernel/pdf/PdfVersion;

    move-result-object v7

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_2_0:Lcom/itextpdf/kernel/pdf/PdfVersion;

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/pdf/PdfVersion;->compareTo(Lcom/itextpdf/kernel/pdf/PdfVersion;)I

    move-result v7

    if-gez v7, :cond_0

    .line 418
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;->ESIC_1_7_EXTENSIONLEVEL5:Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->addDeveloperExtension(Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;)V

    .line 420
    :cond_0
    iget-object v7, v0, Lcom/itextpdf/signatures/LtvVerification;->validated:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 421
    new-instance v9, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v9}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 422
    new-instance v10, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v10}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 423
    new-instance v11, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v11}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 424
    new-instance v12, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v12}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 425
    iget-object v13, v0, Lcom/itextpdf/signatures/LtvVerification;->validated:Ljava/util/Map;

    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/itextpdf/signatures/LtvVerification$ValidationData;

    iget-object v13, v13, Lcom/itextpdf/signatures/LtvVerification$ValidationData;->crls:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    const/4 v15, -0x1

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    move-object/from16 v16, v7

    .line 426
    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v7, v14}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>([B)V

    .line 427
    invoke-virtual {v7, v15}, Lcom/itextpdf/kernel/pdf/PdfStream;->setCompressionLevel(I)V

    .line 428
    iget-object v14, v0, Lcom/itextpdf/signatures/LtvVerification;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v7, v14}, Lcom/itextpdf/kernel/pdf/PdfStream;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 429
    invoke-virtual {v10, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 430
    invoke-virtual {v4, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 431
    invoke-virtual/range {p4 .. p4}, Lcom/itextpdf/kernel/pdf/PdfArray;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-object/from16 v7, v16

    goto :goto_1

    :cond_1
    move-object/from16 v16, v7

    .line 433
    iget-object v7, v0, Lcom/itextpdf/signatures/LtvVerification;->validated:Ljava/util/Map;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/signatures/LtvVerification$ValidationData;

    iget-object v7, v7, Lcom/itextpdf/signatures/LtvVerification$ValidationData;->ocsps:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    .line 434
    new-instance v14, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v14, v13}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>([B)V

    .line 435
    invoke-virtual {v14, v15}, Lcom/itextpdf/kernel/pdf/PdfStream;->setCompressionLevel(I)V

    .line 436
    invoke-virtual {v9, v14}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 437
    invoke-virtual {v3, v14}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 438
    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/pdf/PdfArray;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_2

    .line 440
    :cond_2
    iget-object v7, v0, Lcom/itextpdf/signatures/LtvVerification;->validated:Ljava/util/Map;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/signatures/LtvVerification$ValidationData;

    iget-object v7, v7, Lcom/itextpdf/signatures/LtvVerification$ValidationData;->certs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    .line 441
    new-instance v14, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v14, v13}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>([B)V

    .line 442
    invoke-virtual {v14, v15}, Lcom/itextpdf/kernel/pdf/PdfStream;->setCompressionLevel(I)V

    .line 443
    iget-object v13, v0, Lcom/itextpdf/signatures/LtvVerification;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v14, v13}, Lcom/itextpdf/kernel/pdf/PdfStream;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 444
    invoke-virtual {v11, v14}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 445
    invoke-virtual {v5, v14}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 446
    invoke-virtual/range {p5 .. p5}, Lcom/itextpdf/kernel/pdf/PdfArray;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_3

    .line 448
    :cond_3
    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 449
    iget-object v7, v0, Lcom/itextpdf/signatures/LtvVerification;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v9, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 450
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->OCSP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v12, v7, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 452
    :cond_4
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 453
    iget-object v7, v0, Lcom/itextpdf/signatures/LtvVerification;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v10, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 454
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->CRL:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v12, v7, v10}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 456
    :cond_5
    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 457
    iget-object v7, v0, Lcom/itextpdf/signatures/LtvVerification;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v11, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 458
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Cert:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v12, v7, v11}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 460
    :cond_6
    iget-object v7, v0, Lcom/itextpdf/signatures/LtvVerification;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v12, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 461
    invoke-virtual {v2, v8, v12}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-object/from16 v7, v16

    goto/16 :goto_0

    .line 463
    :cond_7
    iget-object v7, v0, Lcom/itextpdf/signatures/LtvVerification;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v2, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 464
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 465
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->VRI:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v7, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 466
    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 467
    iget-object v2, v0, Lcom/itextpdf/signatures/LtvVerification;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 468
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->OCSPs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 470
    :cond_8
    invoke-virtual/range {p4 .. p4}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 471
    iget-object v2, v0, Lcom/itextpdf/signatures/LtvVerification;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v4, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 472
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->CRLs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 474
    :cond_9
    invoke-virtual/range {p5 .. p5}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 475
    iget-object v2, v0, Lcom/itextpdf/signatures/LtvVerification;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v5, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 476
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Certs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 479
    :cond_a
    iget-object v2, v0, Lcom/itextpdf/signatures/LtvVerification;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 480
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 481
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->DSS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v6, v2, v1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfCatalog;

    return-void
.end method

.method private updateDss()V
    .locals 8

    .line 354
    iget-object v0, p0, Lcom/itextpdf/signatures/LtvVerification;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 355
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 356
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DSS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    .line 357
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->OCSPs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 358
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->CRLs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    .line 359
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Certs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    .line 360
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->OCSPs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 361
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->CRLs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 362
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Certs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 363
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->VRI:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 366
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 367
    iget-object v7, p0, Lcom/itextpdf/signatures/LtvVerification;->validated:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 368
    invoke-virtual {v4, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 370
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->OCSP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/itextpdf/signatures/LtvVerification;->deleteOldReferences(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 371
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->CRL:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/itextpdf/signatures/LtvVerification;->deleteOldReferences(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 372
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Cert:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/itextpdf/signatures/LtvVerification;->deleteOldReferences(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 378
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    :cond_2
    move-object v5, v0

    if-nez v1, :cond_3

    .line 381
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    move-object v6, v0

    goto :goto_1

    :cond_3
    move-object v6, v1

    :goto_1
    if-nez v2, :cond_4

    .line 384
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    move-object v7, v0

    goto :goto_2

    :cond_4
    move-object v7, v2

    :goto_2
    if-nez v4, :cond_5

    .line 387
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    move-object v4, v0

    :cond_5
    move-object v2, p0

    .line 389
    invoke-direct/range {v2 .. v7}, Lcom/itextpdf/signatures/LtvVerification;->outputDss(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;)V

    return-void
.end method


# virtual methods
.method public addVerification(Ljava/lang/String;Lcom/itextpdf/signatures/IOcspClient;Lcom/itextpdf/signatures/ICrlClient;Lcom/itextpdf/signatures/LtvVerification$CertificateOption;Lcom/itextpdf/signatures/LtvVerification$Level;Lcom/itextpdf/signatures/LtvVerification$CertificateInclusion;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    .line 196
    iget-boolean v5, v0, Lcom/itextpdf/signatures/LtvVerification;->used:Z

    if-nez v5, :cond_a

    .line 198
    iget-object v5, v0, Lcom/itextpdf/signatures/LtvVerification;->sgnUtil:Lcom/itextpdf/signatures/SignatureUtil;

    iget-object v6, v0, Lcom/itextpdf/signatures/LtvVerification;->securityProviderCode:Ljava/lang/String;

    invoke-virtual {v5, v1, v6}, Lcom/itextpdf/signatures/SignatureUtil;->readSignatureData(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/signatures/PdfPKCS7;

    move-result-object v5

    .line 199
    iget-object v6, v0, Lcom/itextpdf/signatures/LtvVerification;->LOGGER:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Adding verification for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v5}, Lcom/itextpdf/signatures/PdfPKCS7;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v6

    .line 202
    invoke-virtual {v5}, Lcom/itextpdf/signatures/PdfPKCS7;->getSigningCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v5

    .line 203
    new-instance v7, Lcom/itextpdf/signatures/LtvVerification$ValidationData;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/itextpdf/signatures/LtvVerification$ValidationData;-><init>(Lcom/itextpdf/signatures/LtvVerification$1;)V

    const/4 v9, 0x0

    move v10, v9

    .line 204
    :goto_0
    array-length v11, v6

    if-ge v10, v11, :cond_8

    .line 205
    aget-object v11, v6, v10

    check-cast v11, Ljava/security/cert/X509Certificate;

    .line 206
    iget-object v12, v0, Lcom/itextpdf/signatures/LtvVerification;->LOGGER:Lorg/slf4j/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Certificate: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 207
    sget-object v12, Lcom/itextpdf/signatures/LtvVerification$CertificateOption;->SIGNING_CERTIFICATE:Lcom/itextpdf/signatures/LtvVerification$CertificateOption;

    move-object/from16 v13, p4

    if-ne v13, v12, :cond_0

    .line 208
    invoke-virtual {v11, v5}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    move-object/from16 v12, p6

    goto/16 :goto_5

    :cond_0
    if-eqz v2, :cond_1

    .line 212
    sget-object v12, Lcom/itextpdf/signatures/LtvVerification$Level;->CRL:Lcom/itextpdf/signatures/LtvVerification$Level;

    if-eq v4, v12, :cond_1

    .line 213
    invoke-direct {v0, v11, v6}, Lcom/itextpdf/signatures/LtvVerification;->getParent(Ljava/security/cert/X509Certificate;[Ljava/security/cert/Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v12

    invoke-interface {v2, v11, v12, v8}, Lcom/itextpdf/signatures/IOcspClient;->getEncoded(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    move-result-object v12

    if-eqz v12, :cond_2

    .line 215
    iget-object v14, v7, Lcom/itextpdf/signatures/LtvVerification$ValidationData;->ocsps:Ljava/util/List;

    invoke-static {v12}, Lcom/itextpdf/signatures/LtvVerification;->buildOCSPResponse([B)[B

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v14, v0, Lcom/itextpdf/signatures/LtvVerification;->LOGGER:Lorg/slf4j/Logger;

    const-string v15, "OCSP added"

    invoke-interface {v14, v15}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v12, v8

    :cond_2
    :goto_1
    if-eqz v3, :cond_6

    .line 219
    sget-object v14, Lcom/itextpdf/signatures/LtvVerification$Level;->CRL:Lcom/itextpdf/signatures/LtvVerification$Level;

    if-eq v4, v14, :cond_3

    sget-object v14, Lcom/itextpdf/signatures/LtvVerification$Level;->OCSP_CRL:Lcom/itextpdf/signatures/LtvVerification$Level;

    if-eq v4, v14, :cond_3

    sget-object v14, Lcom/itextpdf/signatures/LtvVerification$Level;->OCSP_OPTIONAL_CRL:Lcom/itextpdf/signatures/LtvVerification$Level;

    if-ne v4, v14, :cond_6

    if-nez v12, :cond_6

    .line 222
    :cond_3
    invoke-interface {v3, v11, v8}, Lcom/itextpdf/signatures/ICrlClient;->getEncoded(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 224
    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    .line 226
    iget-object v15, v7, Lcom/itextpdf/signatures/LtvVerification$ValidationData;->crls:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, [B

    .line 227
    invoke-static {v8, v14}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    goto :goto_3

    .line 233
    :cond_5
    iget-object v8, v7, Lcom/itextpdf/signatures/LtvVerification$ValidationData;->crls:Ljava/util/List;

    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v8, v0, Lcom/itextpdf/signatures/LtvVerification;->LOGGER:Lorg/slf4j/Logger;

    const-string v14, "CRL added"

    invoke-interface {v8, v14}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :goto_4
    const/4 v8, 0x0

    goto :goto_2

    .line 239
    :cond_6
    sget-object v8, Lcom/itextpdf/signatures/LtvVerification$CertificateInclusion;->YES:Lcom/itextpdf/signatures/LtvVerification$CertificateInclusion;

    move-object/from16 v12, p6

    if-ne v12, v8, :cond_7

    .line 240
    iget-object v8, v7, Lcom/itextpdf/signatures/LtvVerification$ValidationData;->certs:Ljava/util/List;

    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_5
    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x0

    goto/16 :goto_0

    .line 243
    :cond_8
    iget-object v2, v7, Lcom/itextpdf/signatures/LtvVerification$ValidationData;->crls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v7, Lcom/itextpdf/signatures/LtvVerification$ValidationData;->ocsps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_9

    return v9

    .line 246
    :cond_9
    iget-object v2, v0, Lcom/itextpdf/signatures/LtvVerification;->validated:Ljava/util/Map;

    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/signatures/LtvVerification;->getSignatureHashKey(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    invoke-interface {v2, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    return v1

    .line 197
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Verification already output."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addVerification(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "[B>;",
            "Ljava/util/Collection<",
            "[B>;",
            "Ljava/util/Collection<",
            "[B>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 288
    iget-boolean v0, p0, Lcom/itextpdf/signatures/LtvVerification;->used:Z

    if-nez v0, :cond_3

    .line 290
    new-instance v0, Lcom/itextpdf/signatures/LtvVerification$ValidationData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/signatures/LtvVerification$ValidationData;-><init>(Lcom/itextpdf/signatures/LtvVerification$1;)V

    if-eqz p2, :cond_0

    .line 292
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 293
    iget-object v2, v0, Lcom/itextpdf/signatures/LtvVerification$ValidationData;->ocsps:Ljava/util/List;

    invoke-static {v1}, Lcom/itextpdf/signatures/LtvVerification;->buildOCSPResponse([B)[B

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 297
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    .line 298
    iget-object v1, v0, Lcom/itextpdf/signatures/LtvVerification$ValidationData;->crls:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    .line 302
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    .line 303
    iget-object p4, v0, Lcom/itextpdf/signatures/LtvVerification$ValidationData;->certs:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 306
    :cond_2
    iget-object p2, p0, Lcom/itextpdf/signatures/LtvVerification;->validated:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/itextpdf/signatures/LtvVerification;->getSignatureHashKey(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    .line 289
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Verification already output."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public merge()V
    .locals 2

    .line 341
    iget-boolean v0, p0, Lcom/itextpdf/signatures/LtvVerification;->used:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itextpdf/signatures/LtvVerification;->validated:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 343
    iput-boolean v0, p0, Lcom/itextpdf/signatures/LtvVerification;->used:Z

    .line 344
    iget-object v0, p0, Lcom/itextpdf/signatures/LtvVerification;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 345
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DSS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    if-nez v0, :cond_1

    .line 347
    invoke-direct {p0}, Lcom/itextpdf/signatures/LtvVerification;->createDss()V

    goto :goto_0

    .line 349
    :cond_1
    invoke-direct {p0}, Lcom/itextpdf/signatures/LtvVerification;->updateDss()V

    :cond_2
    :goto_0
    return-void
.end method
