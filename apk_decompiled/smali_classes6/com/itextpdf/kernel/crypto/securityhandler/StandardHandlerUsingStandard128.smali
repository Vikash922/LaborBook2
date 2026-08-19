.class public Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;
.super Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;
.source "StandardHandlerUsingStandard128.java"


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[BIZZ[B)V
    .locals 0

    .line 56
    invoke-direct/range {p0 .. p7}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[BIZZ[B)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[BZ)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[BZ)V

    return-void
.end method


# virtual methods
.method protected calculatePermissions(I)V
    .locals 2

    or-int/lit16 p1, p1, -0xf40

    and-int/lit8 p1, p1, -0x4

    int-to-long v0, p1

    .line 67
    iput-wide v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->permissions:J

    return-void
.end method

.method protected computeGlobalEncryptionKey([B[BZ)V
    .locals 5

    .line 92
    iget v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->keyLength:I

    const/16 v1, 0x8

    div-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->mkey:[B

    .line 95
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 96
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 97
    iget-object p1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->md5:Ljava/security/MessageDigest;

    invoke-virtual {p1, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 100
    iget-wide p1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->permissions:J

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 101
    iget-wide v2, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->permissions:J

    shr-long v0, v2, v1

    long-to-int p2, v0

    int-to-byte p2, p2

    .line 102
    iget-wide v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->permissions:J

    const/16 v2, 0x10

    shr-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 103
    iget-wide v1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->permissions:J

    const/16 v3, 0x18

    shr-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x4

    new-array v3, v2, [B

    const/4 v4, 0x0

    aput-byte p1, v3, v4

    const/4 p1, 0x1

    aput-byte p2, v3, p1

    const/4 p1, 0x2

    aput-byte v0, v3, p1

    const/4 p1, 0x3

    aput-byte v1, v3, p1

    .line 104
    iget-object p1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->md5:Ljava/security/MessageDigest;

    invoke-virtual {p1, v3, v4, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 105
    iget-object p1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->documentId:[B

    if-eqz p1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->md5:Ljava/security/MessageDigest;

    iget-object p2, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->documentId:[B

    invoke-virtual {p1, p2}, Ljava/security/MessageDigest;->update([B)V

    :cond_0
    if-nez p3, :cond_1

    .line 108
    iget-object p1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->md5:Ljava/security/MessageDigest;

    sget-object p2, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->metadataPad:[B

    invoke-virtual {p1, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 110
    :cond_1
    iget-object p1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->mkey:[B

    array-length p1, p1

    new-array p1, p1, [B

    .line 111
    iget-object p2, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->md5:Ljava/security/MessageDigest;

    invoke-virtual {p2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p2

    iget-object p3, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->mkey:[B

    array-length p3, p3

    invoke-static {p2, v4, p1, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p2, v4

    :goto_0
    const/16 p3, 0x32

    if-ge p2, p3, :cond_2

    .line 114
    iget-object p3, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->md5:Ljava/security/MessageDigest;

    invoke-virtual {p3, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p3

    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->mkey:[B

    array-length v0, v0

    invoke-static {p3, v4, p1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 117
    :cond_2
    iget-object p2, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->mkey:[B

    iget-object p3, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->mkey:[B

    array-length p3, p3

    invoke-static {p1, v4, p2, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method protected computeOwnerKey([B[B)[B
    .locals 7

    const/16 v0, 0x20

    .line 72
    new-array v1, v0, [B

    .line 73
    iget-object v2, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v2, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p2

    .line 74
    iget v2, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->keyLength:I

    div-int/lit8 v2, v2, 0x8

    new-array v3, v2, [B

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/16 v6, 0x32

    if-ge v5, v6, :cond_0

    .line 77
    iget-object v6, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v6, p2, v4, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 78
    iget-object v6, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    invoke-static {v6, v4, p2, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {p1, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p1, v4

    :goto_1
    const/16 v0, 0x14

    if-ge p1, v0, :cond_2

    move v0, v4

    :goto_2
    if-ge v0, v2, :cond_1

    .line 83
    aget-byte v5, p2, v0

    xor-int/2addr v5, p1

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->arcfour:Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;->prepareARCFOURKey([B)V

    .line 85
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->arcfour:Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;->encryptARCFOUR([B)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method protected computeUserKey()[B
    .locals 7

    const/16 v0, 0x20

    .line 122
    new-array v1, v0, [B

    .line 123
    iget-object v2, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->md5:Ljava/security/MessageDigest;

    sget-object v3, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->pad:[B

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 124
    iget-object v2, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->md5:Ljava/security/MessageDigest;

    iget-object v3, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->documentId:[B

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x10

    .line 125
    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_0

    .line 127
    aput-byte v3, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_1
    const/16 v5, 0x14

    if-ge v0, v5, :cond_2

    move v5, v3

    .line 129
    :goto_2
    iget-object v6, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->mkey:[B

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 130
    iget-object v6, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->mkey:[B

    aget-byte v6, v6, v5

    xor-int/2addr v6, v0

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 131
    :cond_1
    iget-object v5, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->arcfour:Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;

    iget-object v6, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->mkey:[B

    array-length v6, v6

    invoke-virtual {v5, v2, v3, v6}, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;->prepareARCFOURKey([BII)V

    .line 132
    iget-object v5, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->arcfour:Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;

    invoke-virtual {v5, v1, v3, v4}, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;->encryptARCFOUR([BII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method protected isValidPassword([B[B)Z
    .locals 1

    const/16 v0, 0x10

    .line 167
    invoke-static {p1, p2, v0}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard128;->equalsArray([B[BI)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected setSpecificHandlerDicEntries(Lcom/itextpdf/kernel/pdf/PdfDictionary;ZZ)V
    .locals 3

    if-eqz p2, :cond_0

    .line 140
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->R:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance p3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/4 v0, 0x3

    invoke-direct {p3, v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p1, p2, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 141
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance p3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/4 v0, 0x2

    invoke-direct {p3, v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p1, p2, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_1

    .line 143
    :cond_0
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->EncryptMetadata:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfBoolean;->FALSE:Lcom/itextpdf/kernel/pdf/PdfBoolean;

    invoke-virtual {p1, p2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 144
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->R:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p1, p2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 145
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p1, p2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 146
    new-instance p2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 147
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Length:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p2, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    if-eqz p3, :cond_1

    .line 149
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->AuthEvent:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->EFOpen:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, p3, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 150
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->EFF:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->StdCF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p3, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 151
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->StrF:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Identity:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p3, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 152
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->StmF:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Identity:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p3, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 154
    :cond_1
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->AuthEvent:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->DocOpen:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, p3, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 155
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->StrF:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->StdCF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p3, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 156
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->StmF:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->StdCF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p3, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 158
    :goto_0
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->CFM:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->V2:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, p3, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 159
    new-instance p3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 160
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->StdCF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p3, v0, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 161
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->CF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p2, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :goto_1
    return-void
.end method
