.class public abstract Lcom/itextpdf/kernel/crypto/securityhandler/StandardSecurityHandler;
.super Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;
.source "StandardSecurityHandler.java"


# static fields
.field protected static final PERMS_MASK_1_FOR_REVISION_2:I = -0x40

.field protected static final PERMS_MASK_1_FOR_REVISION_3_OR_GREATER:I = -0xf40

.field protected static final PERMS_MASK_2:I = -0x4


# instance fields
.field protected permissions:J

.field protected usedOwnerPassword:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;-><init>()V

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardSecurityHandler;->usedOwnerPassword:Z

    return-void
.end method

.method protected static equalsArray([B[BI)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 98
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected generateOwnerPasswordIfNullOrEmpty([B)[B
    .locals 1

    if-eqz p1, :cond_0

    .line 80
    array-length v0, p1

    if-nez v0, :cond_1

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardSecurityHandler;->md5:Ljava/security/MessageDigest;

    invoke-static {}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->generateNewDocumentId()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method protected getIsoBytes(Lcom/itextpdf/kernel/pdf/PdfString;)[B
    .locals 0

    .line 93
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public getPermissions()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardSecurityHandler;->permissions:J

    return-wide v0
.end method

.method public isUsedOwnerPassword()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardSecurityHandler;->usedOwnerPassword:Z

    return v0
.end method

.method protected setStandardHandlerDicEntries(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[B)V
    .locals 2

    .line 73
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Standard:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 74
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->O:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfLiteral;

    invoke-static {p3}, Lcom/itextpdf/io/util/StreamUtil;->createEscapedString([B)[B

    move-result-object p3

    invoke-direct {v1, p3}, Lcom/itextpdf/kernel/pdf/PdfLiteral;-><init>([B)V

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 75
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->U:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfLiteral;

    invoke-static {p2}, Lcom/itextpdf/io/util/StreamUtil;->createEscapedString([B)[B

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/itextpdf/kernel/pdf/PdfLiteral;-><init>([B)V

    invoke-virtual {p1, p3, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 76
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance p3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    iget-wide v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardSecurityHandler;->permissions:J

    long-to-double v0, v0

    invoke-direct {p3, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {p1, p2, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void
.end method
