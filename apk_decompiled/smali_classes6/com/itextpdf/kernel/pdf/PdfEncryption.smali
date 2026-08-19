.class public Lcom/itextpdf/kernel/pdf/PdfEncryption;
.super Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
.source "PdfEncryption.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/kernel/pdf/PdfObjectWrapper<",
        "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
        ">;"
    }
.end annotation


# static fields
.field private static final AES_128:I = 0x4

.field private static final AES_256:I = 0x5

.field private static final STANDARD_ENCRYPTION_128:I = 0x3

.field private static final STANDARD_ENCRYPTION_40:I = 0x2

.field private static seq:J


# instance fields
.field private cryptoMode:I

.field private documentId:[B

.field private embeddedFilesOnly:Z

.field private encryptMetadata:Z

.field private permissions:Ljava/lang/Long;

.field private securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 81
    invoke-static {}, Lcom/itextpdf/commons/utils/SystemUtil;->getTimeBasedSeed()J

    move-result-wide v0

    sput-wide v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->seq:J

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/security/Key;Ljava/security/cert/Certificate;Ljava/lang/String;Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;)V
    .locals 17

    move-object/from16 v0, p0

    .line 255
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->setForbidRelease()V

    .line 257
    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->readAndSetCryptoModeForPubSecHandler(Lcom/itextpdf/kernel/pdf/PdfDictionary;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    .line 272
    :cond_0
    new-instance v1, Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingAes256;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-boolean v9, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->encryptMetadata:Z

    move-object v3, v1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v9}, Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingAes256;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/security/Key;Ljava/security/cert/Certificate;Ljava/lang/String;Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;Z)V

    iput-object v1, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;

    goto :goto_0

    .line 268
    :cond_1
    new-instance v1, Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingAes128;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-boolean v2, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->encryptMetadata:Z

    move-object v10, v1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move/from16 v16, v2

    invoke-direct/range {v10 .. v16}, Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingAes128;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/security/Key;Ljava/security/cert/Certificate;Ljava/lang/String;Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;Z)V

    iput-object v1, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;

    goto :goto_0

    .line 264
    :cond_2
    new-instance v1, Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingStandard128;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-boolean v9, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->encryptMetadata:Z

    move-object v3, v1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v9}, Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingStandard128;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/security/Key;Ljava/security/cert/Certificate;Ljava/lang/String;Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;Z)V

    iput-object v1, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;

    goto :goto_0

    .line 260
    :cond_3
    new-instance v1, Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingStandard40;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-boolean v2, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->encryptMetadata:Z

    move-object v10, v1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move/from16 v16, v2

    invoke-direct/range {v10 .. v16}, Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingStandard40;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/security/Key;Ljava/security/cert/Certificate;Ljava/lang/String;Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;Z)V

    iput-object v1, v0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[B)V
    .locals 2

    .line 223
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 224
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->setForbidRelease()V

    .line 225
    iput-object p3, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->documentId:[B

    .line 227
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->readAndSetCryptoModeForStdHandler(Lcom/itextpdf/kernel/pdf/PdfDictionary;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 p3, 0x5

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p1, p3, p2}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B)V

    .line 246
    invoke-virtual {p1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->getPermissions()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->permissions:Ljava/lang/Long;

    .line 247
    invoke-virtual {p1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->isEncryptMetadata()Z

    move-result p2

    iput-boolean p2, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->encryptMetadata:Z

    .line 248
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;

    goto :goto_0

    .line 240
    :cond_1
    new-instance p1, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes128;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-boolean v1, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->encryptMetadata:Z

    invoke-direct {p1, v0, p2, p3, v1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes128;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[BZ)V

    .line 241
    invoke-virtual {p1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes128;->getPermissions()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->permissions:Ljava/lang/Long;

    .line 242
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;

    goto :goto_0

    .line 235
    :cond_2
    new-instance p1, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-boolean v1, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->encryptMetadata:Z

    invoke-direct {p1, v0, p2, p3, v1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[BZ)V

    .line 236
    invoke-virtual {p1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->getPermissions()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->permissions:Ljava/lang/Long;

    .line 237
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;

    goto :goto_0

    .line 230
    :cond_3
    new-instance p1, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-boolean v1, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->encryptMetadata:Z

    invoke-direct {p1, v0, p2, p3, v1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[BZ)V

    .line 231
    invoke-virtual {p1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->getPermissions()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->permissions:Ljava/lang/Long;

    .line 232
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;

    :goto_0
    return-void
.end method

.method public constructor <init>([B[BII[BLcom/itextpdf/kernel/pdf/PdfVersion;)V
    .locals 8

    .line 129
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 130
    iput-object p5, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->documentId:[B

    if-eqz p6, :cond_0

    .line 131
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_2_0:Lcom/itextpdf/kernel/pdf/PdfVersion;

    invoke-virtual {p6, v0}, Lcom/itextpdf/kernel/pdf/PdfVersion;->compareTo(Lcom/itextpdf/kernel/pdf/PdfVersion;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 132
    invoke-direct {p0, p3}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->fixAccessibilityPermissionPdf20(I)I

    move-result p3

    :cond_0
    move v4, p3

    .line 134
    invoke-direct {p0, p4}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->setCryptoMode(I)I

    move-result p3

    const/4 p4, 0x2

    if-eq p3, p4, :cond_4

    const/4 p4, 0x3

    if-eq p3, p4, :cond_3

    const/4 p4, 0x4

    if-eq p3, p4, :cond_2

    const/4 p4, 0x5

    if-eq p3, p4, :cond_1

    goto/16 :goto_0

    .line 155
    :cond_1
    new-instance p3, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p4

    move-object v1, p4

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-boolean v5, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->encryptMetadata:Z

    iget-boolean v6, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->embeddedFilesOnly:Z

    move-object v0, p3

    move-object v2, p1

    move-object v3, p2

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[BIZZLcom/itextpdf/kernel/pdf/PdfVersion;)V

    .line 157
    invoke-virtual {p3}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes256;->getPermissions()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->permissions:Ljava/lang/Long;

    .line 158
    iput-object p3, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;

    goto/16 :goto_0

    .line 149
    :cond_2
    new-instance p3, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes128;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p4

    move-object v1, p4

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-boolean v5, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->encryptMetadata:Z

    iget-boolean v6, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->embeddedFilesOnly:Z

    move-object v0, p3

    move-object v2, p1

    move-object v3, p2

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes128;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[BIZZ[B)V

    .line 151
    invoke-virtual {p3}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingAes128;->getPermissions()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->permissions:Ljava/lang/Long;

    .line 152
    iput-object p3, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;

    goto :goto_0

    .line 143
    :cond_3
    new-instance p3, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p4

    move-object v1, p4

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-boolean v5, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->encryptMetadata:Z

    iget-boolean v6, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->embeddedFilesOnly:Z

    move-object v0, p3

    move-object v2, p1

    move-object v3, p2

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[BIZZ[B)V

    .line 145
    invoke-virtual {p3}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->getPermissions()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->permissions:Ljava/lang/Long;

    .line 146
    iput-object p3, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;

    goto :goto_0

    .line 137
    :cond_4
    new-instance p3, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p4

    move-object v1, p4

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-boolean v5, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->encryptMetadata:Z

    iget-boolean v6, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->embeddedFilesOnly:Z

    move-object v0, p3

    move-object v2, p1

    move-object v3, p2

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[BIZZ[B)V

    .line 139
    invoke-virtual {p3}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->getPermissions()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->permissions:Ljava/lang/Long;

    .line 140
    iput-object p3, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;

    :goto_0
    return-void
.end method

.method public constructor <init>([Ljava/security/cert/Certificate;[IILcom/itextpdf/kernel/pdf/PdfVersion;)V
    .locals 7

    .line 199
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    if-eqz p4, :cond_0

    .line 200
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_2_0:Lcom/itextpdf/kernel/pdf/PdfVersion;

    invoke-virtual {p4, v1}, Lcom/itextpdf/kernel/pdf/PdfVersion;->compareTo(Lcom/itextpdf/kernel/pdf/PdfVersion;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    .line 201
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 202
    aget v1, p2, v0

    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->fixAccessibilityPermissionPdf20(I)I

    move-result v1

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    :cond_0
    invoke-direct {p0, p3}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->setCryptoMode(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 217
    :cond_1
    new-instance v6, Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingAes256;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-boolean v4, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->encryptMetadata:Z

    iget-boolean v5, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->embeddedFilesOnly:Z

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingAes256;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[Ljava/security/cert/Certificate;[IZZ)V

    iput-object v6, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;

    goto :goto_1

    .line 214
    :cond_2
    new-instance v6, Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingAes128;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-boolean v4, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->encryptMetadata:Z

    iget-boolean v5, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->embeddedFilesOnly:Z

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingAes128;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[Ljava/security/cert/Certificate;[IZZ)V

    iput-object v6, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;

    goto :goto_1

    .line 211
    :cond_3
    new-instance v6, Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingStandard128;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-boolean v4, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->encryptMetadata:Z

    iget-boolean v5, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->embeddedFilesOnly:Z

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingStandard128;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[Ljava/security/cert/Certificate;[IZZ)V

    iput-object v6, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;

    goto :goto_1

    .line 208
    :cond_4
    new-instance v6, Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingStandard40;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-boolean v4, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->encryptMetadata:Z

    iget-boolean v5, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->embeddedFilesOnly:Z

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/kernel/crypto/securityhandler/PubSecHandlerUsingStandard40;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[Ljava/security/cert/Certificate;[IZZ)V

    iput-object v6, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;

    :goto_1
    return-void
.end method

.method public static createInfoId([BZ)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 0

    if-eqz p1, :cond_0

    .line 303
    invoke-static {}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->generateNewDocumentId()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->createInfoId([B[B)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    return-object p0

    .line 305
    :cond_0
    invoke-static {p0, p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->createInfoId([B[B)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p0

    return-object p0
.end method

.method public static createInfoId([B[B)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 5

    .line 319
    array-length v0, p0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 320
    invoke-static {p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->padByteArrayTo16([B)[B

    move-result-object p0

    .line 323
    :cond_0
    array-length v0, p1

    if-ge v0, v1, :cond_1

    .line 324
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->padByteArrayTo16([B)[B

    move-result-object p1

    .line 327
    :cond_1
    new-instance v0, Lcom/itextpdf/io/source/ByteBuffer;

    const/16 v1, 0x5a

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/ByteBuffer;-><init>(I)V

    const/16 v1, 0x5b

    .line 328
    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object v1

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    const/4 v1, 0x0

    move v3, v1

    .line 330
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_2

    .line 331
    aget-byte v4, p0, v3

    invoke-virtual {v0, v4}, Lcom/itextpdf/io/source/ByteBuffer;->appendHex(B)Lcom/itextpdf/io/source/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/16 p0, 0x3e

    .line 332
    invoke-virtual {v0, p0}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    .line 333
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 334
    aget-byte v2, p1, v1

    invoke-virtual {v0, v2}, Lcom/itextpdf/io/source/ByteBuffer;->appendHex(B)Lcom/itextpdf/io/source/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 335
    :cond_3
    invoke-virtual {v0, p0}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object p0

    const/16 p1, 0x5d

    invoke-virtual {p0, p1}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    .line 337
    new-instance p0, Lcom/itextpdf/kernel/pdf/PdfLiteral;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfLiteral;-><init>([B)V

    return-object p0
.end method

.method private fixAccessibilityPermissionPdf20(I)I
    .locals 0

    or-int/lit16 p1, p1, 0x200

    return p1
.end method

.method public static generateNewDocumentId()[B
    .locals 6

    .line 281
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    invoke-static {}, Lcom/itextpdf/commons/utils/SystemUtil;->getTimeBasedSeed()J

    move-result-wide v1

    .line 286
    invoke-static {}, Lcom/itextpdf/commons/utils/SystemUtil;->getFreeMemory()J

    move-result-wide v3

    .line 287
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/itextpdf/kernel/pdf/PdfEncryption;->seq:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lcom/itextpdf/kernel/pdf/PdfEncryption;->seq:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 289
    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 283
    new-instance v1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v2, "PdfEncryption exception."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static padByteArrayTo16([B)[B
    .locals 3

    const/16 v0, 0x10

    .line 341
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 343
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
    .end array-data
.end method

.method private readAndSetCryptoModeForPubSecHandler(Lcom/itextpdf/kernel/pdf/PdfDictionary;)I
    .locals 7

    .line 574
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 577
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    .line 578
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->readEmbeddedFilesOnlyFromEncryptDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v2

    const/16 v3, 0x28

    const/4 v4, 0x1

    if-eq v1, v4, :cond_b

    const/4 v5, 0x2

    const/16 v6, 0x80

    if-eq v1, v5, :cond_8

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 622
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "Unknown encryption type V == {0}."

    invoke-direct {p1, v1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw p1

    .line 595
    :cond_1
    :goto_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->CF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 598
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DefaultCryptFilter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz p1, :cond_6

    .line 601
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->V2:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->CFM:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    move v3, v6

    goto :goto_2

    .line 604
    :cond_2
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->AESV2:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->CFM:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v4, v5

    goto :goto_1

    .line 607
    :cond_3
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->AESV3:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->CFM:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v4, 0x3

    const/16 v0, 0x100

    move v3, v0

    .line 613
    :goto_2
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->EncryptMetadata:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsBoolean(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 614
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->getValue()Z

    move-result p1

    if-nez p1, :cond_4

    or-int/lit8 p1, v4, 0x8

    move v4, p1

    :cond_4
    if-eqz v2, :cond_c

    or-int/lit8 v4, v4, 0x18

    goto :goto_3

    .line 611
    :cond_5
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "No compatible encryption found."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 600
    :cond_6
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "/DefaultCryptFilter not found (encryption)."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 597
    :cond_7
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "/CF not found (encryption)"

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 585
    :cond_8
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Length:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object p1

    .line 586
    const-string v0, "Illegal length value."

    if-eqz p1, :cond_a

    .line 588
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result p1

    if-gt p1, v6, :cond_9

    if-lt p1, v3, :cond_9

    .line 589
    rem-int/lit8 v1, p1, 0x8

    if-nez v1, :cond_9

    move v3, p1

    goto :goto_3

    .line 590
    :cond_9
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 587
    :cond_a
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    const/4 v4, 0x0

    .line 624
    :cond_c
    :goto_3
    invoke-direct {p0, v4, v3}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->setCryptoMode(II)I

    move-result p1

    return p1

    .line 576
    :cond_d
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Illegal V value."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readAndSetCryptoModeForStdHandler(Lcom/itextpdf/kernel/pdf/PdfDictionary;)I
    .locals 9

    .line 510
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->R:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 513
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    .line 514
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->readEmbeddedFilesOnlyFromEncryptDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v1, v3, :cond_e

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v1, v6, :cond_b

    const/4 v7, 0x4

    if-eq v1, v7, :cond_4

    const/4 v3, 0x5

    if-eq v1, v3, :cond_1

    const/4 v3, 0x6

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 562
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "Unknown encryption type R == {0}."

    invoke-direct {p1, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 563
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object p1

    throw p1

    .line 553
    :cond_1
    :goto_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->EncryptMetadata:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsBoolean(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 554
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->getValue()Z

    move-result p1

    if-nez p1, :cond_2

    const/16 v6, 0xb

    :cond_2
    if-eqz v2, :cond_3

    const/16 p1, 0x1b

    :goto_1
    move v8, v4

    move v4, p1

    move p1, v8

    goto/16 :goto_3

    :cond_3
    move p1, v4

    move v4, v6

    goto/16 :goto_3

    .line 529
    :cond_4
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->CF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz v0, :cond_a

    .line 532
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->StdCF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz v0, :cond_9

    .line 535
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->V2:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->CFM:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v3, v5

    goto :goto_2

    .line 537
    :cond_5
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AESV2:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->CFM:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 542
    :goto_2
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->EncryptMetadata:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsBoolean(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 543
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->getValue()Z

    move-result p1

    if-nez p1, :cond_6

    or-int/lit8 v3, v3, 0x8

    :cond_6
    if-eqz v2, :cond_7

    or-int/lit8 p1, v3, 0x18

    goto :goto_1

    :cond_7
    move p1, v4

    move v4, v3

    goto :goto_3

    .line 540
    :cond_8
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "No compatible encryption found."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 534
    :cond_9
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "/StdCF not found (encryption)"

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 531
    :cond_a
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "/CF not found (encryption)"

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 520
    :cond_b
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Length:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object p1

    .line 521
    const-string v0, "Illegal length value."

    if-eqz p1, :cond_d

    .line 523
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v4

    const/16 p1, 0x80

    if-gt v4, p1, :cond_c

    const/16 p1, 0x28

    if-lt v4, p1, :cond_c

    .line 524
    rem-int/lit8 p1, v4, 0x8

    if-nez p1, :cond_c

    move p1, v4

    move v4, v5

    goto :goto_3

    .line 525
    :cond_c
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 522
    :cond_d
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    move p1, v4

    .line 566
    :goto_3
    invoke-direct {p0, v4, p1}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->setCryptoMode(II)I

    move-result p1

    return p1

    .line 512
    :cond_f
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Illegal R value."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static readEmbeddedFilesOnlyFromEncryptDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z
    .locals 7

    .line 628
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->EFF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 629
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Identity:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 630
    :goto_0
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Identity:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->StmF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 631
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Identity:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->StrF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    if-nez v1, :cond_1

    goto :goto_2

    .line 636
    :cond_1
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->CF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 639
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2

    :cond_3
    :goto_2
    return v3
.end method

.method private setCryptoMode(I)I
    .locals 1

    const/4 v0, 0x0

    .line 468
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->setCryptoMode(II)I

    move-result p1

    return p1
.end method

.method private setCryptoMode(II)I
    .locals 4

    .line 473
    iput p1, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->cryptoMode:I

    and-int/lit8 v0, p1, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-eq v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 474
    :goto_0
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->encryptMetadata:Z

    and-int/lit8 v0, p1, 0x18

    const/16 v3, 0x18

    if-ne v0, v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    .line 475
    :goto_1
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->embeddedFilesOnly:Z

    and-int/lit8 p1, p1, 0x7

    const/4 v0, 0x2

    if-eqz p1, :cond_6

    const/16 v1, 0x80

    const/4 v3, 0x3

    if-eq p1, v2, :cond_4

    if-eq p1, v0, :cond_3

    if-ne p1, v3, :cond_2

    const/16 p1, 0x100

    .line 497
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->setKeyLength(I)V

    const/4 v0, 0x5

    goto :goto_3

    .line 501
    :cond_2
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "No valid encryption mode."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 493
    :cond_3
    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->setKeyLength(I)V

    const/4 v0, 0x4

    goto :goto_3

    :cond_4
    if-lez p2, :cond_5

    .line 486
    invoke-direct {p0, p2}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->setKeyLength(I)V

    goto :goto_2

    .line 488
    :cond_5
    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->setKeyLength(I)V

    :goto_2
    move v0, v3

    goto :goto_3

    .line 479
    :cond_6
    iput-boolean v2, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->encryptMetadata:Z

    .line 480
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->embeddedFilesOnly:Z

    const/16 p1, 0x28

    .line 481
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->setKeyLength(I)V

    :goto_3
    return v0
.end method

.method private setKeyLength(I)V
    .locals 3

    const/16 v0, 0x28

    if-eq p1, v0, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Length:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_0
    return-void
.end method


# virtual methods
.method public computeUserPassword([B)[B
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;

    instance-of v1, v0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;

    if-eqz v1, :cond_0

    .line 438
    check-cast v0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, p1, v1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->computeUserPassword([BLcom/itextpdf/kernel/pdf/PdfDictionary;)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public decryptByteArray([B)[B
    .locals 4

    .line 407
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 408
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;->getDecryptor()Lcom/itextpdf/kernel/crypto/IDecryptor;

    move-result-object v1

    .line 409
    array-length v2, p1

    const/4 v3, 0x0

    invoke-interface {v1, p1, v3, v2}, Lcom/itextpdf/kernel/crypto/IDecryptor;->update([BII)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 411
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 412
    :cond_0
    invoke-interface {v1}, Lcom/itextpdf/kernel/crypto/IDecryptor;->finish()[B

    move-result-object p1

    if-eqz p1, :cond_1

    .line 414
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 415
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 417
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "PdfEncryption exception."

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public encryptByteArray([B)[B
    .locals 2

    .line 394
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 395
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getEncryptionStream(Ljava/io/OutputStream;)Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;

    move-result-object v1

    .line 397
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    invoke-virtual {v1}, Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;->finish()V

    .line 402
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 399
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "PdfEncryption exception."

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public flush()V
    .locals 0

    .line 452
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;->flush()V

    return-void
.end method

.method public getCryptoMode()I
    .locals 1

    .line 366
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->cryptoMode:I

    return v0
.end method

.method public getDocumentId()[B
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->documentId:[B

    return-object v0
.end method

.method public getEncryptionStream(Ljava/io/OutputStream;)Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;->getEncryptionStream(Ljava/io/OutputStream;)Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;

    move-result-object p1

    return-object p1
.end method

.method public getPermissions()Ljava/lang/Long;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->permissions:Ljava/lang/Long;

    return-object v0
.end method

.method public isEmbeddedFilesOnly()Z
    .locals 1

    .line 374
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->embeddedFilesOnly:Z

    return v0
.end method

.method public isMetadataEncrypted()Z
    .locals 1

    .line 370
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->encryptMetadata:Z

    return v0
.end method

.method public isOpenedWithFullPermission()Z
    .locals 3

    .line 422
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;

    instance-of v1, v0, Lcom/itextpdf/kernel/crypto/securityhandler/PubKeySecurityHandler;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 424
    :cond_0
    instance-of v1, v0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardSecurityHandler;

    if-eqz v1, :cond_1

    .line 425
    check-cast v0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardSecurityHandler;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardSecurityHandler;->isUsedOwnerPassword()Z

    move-result v0

    return v0

    :cond_1
    return v2
.end method

.method protected isWrappedObjectMustBeIndirect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setHashKeyForNextObject(II)V
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfEncryption;->securityHandler:Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;->setHashKeyForNextObject(II)V

    return-void
.end method
