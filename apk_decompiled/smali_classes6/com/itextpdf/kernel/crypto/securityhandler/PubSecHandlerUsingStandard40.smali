.class public Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingStandard40;
.super Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;
.source "PubSecHandlerUsingStandard40.java"


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/security/Key;Ljava/security/cert/Certificate;Ljava/lang/String;Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;Z)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;-><init>()V

    .line 68
    invoke-virtual/range {p0 .. p6}, Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingStandard40;->initKeyAndReadDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/security/Key;Ljava/security/cert/Certificate;Ljava/lang/String;Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[Ljava/security/cert/Certificate;[IZZ)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;-><init>()V

    .line 62
    invoke-virtual/range {p0 .. p5}, Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingStandard40;->initKeyAndFillDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;[Ljava/security/cert/Certificate;[IZZ)V

    return-void
.end method


# virtual methods
.method public getDecryptor()Lcom/itextpdf/kernel/crypto/IDecryptor;
    .locals 4

    .line 79
    new-instance v0, Lcom/itextpdf/kernel/crypto/StandardDecryptor;

    iget-object v1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingStandard40;->nextObjectKey:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingStandard40;->nextObjectKeySize:I

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/kernel/crypto/StandardDecryptor;-><init>([BII)V

    return-object v0
.end method

.method protected getDigestAlgorithm()Ljava/lang/String;
    .locals 1

    .line 83
    const-string v0, "SHA-1"

    return-object v0
.end method

.method public getEncryptionStream(Ljava/io/OutputStream;)Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;
    .locals 4

    .line 74
    new-instance v0, Lcom/itextpdf/kernel/crypto/OutputStreamStandardEncryption;

    iget-object v1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingStandard40;->nextObjectKey:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingStandard40;->nextObjectKeySize:I

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/itextpdf/kernel/crypto/OutputStreamStandardEncryption;-><init>(Ljava/io/OutputStream;[BII)V

    return-object v0
.end method

.method protected initKey([BI)V
    .locals 2

    .line 87
    div-int/lit8 p2, p2, 0x8

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingStandard40;->mkey:[B

    .line 88
    iget-object p2, p0, Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingStandard40;->mkey:[B

    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingStandard40;->mkey:[B

    array-length v0, v0

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method protected setPubSecSpecificHandlerDicEntries(Lcom/itextpdf/kernel/pdf/PdfDictionary;ZZ)V
    .locals 2

    .line 92
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->Adobe_PubSec:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p2, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 93
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->R:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance p3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/4 v0, 0x2

    invoke-direct {p3, v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p1, p2, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 95
    invoke-virtual {p0}, Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingStandard40;->createRecipientsArray()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p2

    .line 96
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p1, p3, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 97
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->SubFilter:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Adbe_pkcs7_s4:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p3, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 98
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->Recipients:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p3, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void
.end method
