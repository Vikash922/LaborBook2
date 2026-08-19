.class public Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;
.super Lcom/itextpdf/kernel/crypto/securityhandler/StandardSecurityHandler;
.source "StandardHandlerUsingStandard40.java"


# static fields
.field protected static final metadataPad:[B

.field protected static final pad:[B


# instance fields
.field protected arcfour:Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;

.field protected documentId:[B

.field protected keyLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    .line 59
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->pad:[B

    const/4 v0, 0x4

    .line 66
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->metadataPad:[B

    return-void

    :array_0
    .array-data 1
        0x28t
        -0x41t
        0x4et
        0x5et
        0x4et
        0x75t
        -0x76t
        0x41t
        0x64t
        0x0t
        0x4et
        0x56t
        -0x1t
        -0x6t
        0x1t
        0x8t
        0x2et
        0x2et
        0x0t
        -0x4at
        -0x30t
        0x68t
        0x3et
        -0x80t
        0x2ft
        0xct
        -0x57t
        -0x2t
        0x64t
        0x53t
        0x69t
        0x7at
    .end array-data

    :array_1
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[BIZZ[B)V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardSecurityHandler;-><init>()V

    .line 73
    new-instance v0, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;

    invoke-direct {v0}, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->arcfour:Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;

    .line 77
    invoke-direct/range {p0 .. p7}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->initKeyAndFillDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[BIZZ[B)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[BZ)V
    .locals 1

    .line 80
    invoke-direct {p0}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardSecurityHandler;-><init>()V

    .line 73
    new-instance v0, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;

    invoke-direct {v0}, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->arcfour:Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;

    .line 81
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->initKeyAndReadDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[BZ)V

    return-void
.end method

.method private checkPassword(Z[B[B[B)V
    .locals 1

    .line 204
    invoke-virtual {p0, p3, p4}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->computeOwnerKey([B[B)[B

    move-result-object v0

    .line 205
    invoke-virtual {p0, v0, p3, p1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->computeGlobalEncryptionKey([B[BZ)V

    .line 206
    invoke-virtual {p0}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->computeUserKey()[B

    move-result-object v0

    .line 208
    invoke-virtual {p0, p2, v0}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->isValidPassword([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    invoke-virtual {p0, p4, p3, p1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->computeGlobalEncryptionKey([B[BZ)V

    .line 211
    invoke-virtual {p0}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->computeUserKey()[B

    move-result-object p1

    .line 213
    invoke-virtual {p0, p2, p1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->isValidPassword([B[B)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 216
    iput-boolean p1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->usedOwnerPassword:Z

    goto :goto_0

    .line 214
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/exceptions/BadPasswordException;

    const-string p2, "Bad user password. Password is not provided or wrong password provided. Correct password should be passed to PdfReader constructor with properties. See ReaderProperties#setPassword() method."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/BadPasswordException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private getKeyLength(Lcom/itextpdf/kernel/pdf/PdfDictionary;)I
    .locals 1

    .line 237
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Length:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsInt(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 238
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0x28

    :goto_0
    return p1
.end method

.method private initKeyAndFillDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[BIZZ[B)V
    .locals 0

    .line 170
    invoke-virtual {p0, p3}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->generateOwnerPasswordIfNullOrEmpty([B)[B

    move-result-object p3

    .line 171
    invoke-virtual {p0, p4}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->calculatePermissions(I)V

    .line 173
    iput-object p7, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->documentId:[B

    .line 174
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->getKeyLength(Lcom/itextpdf/kernel/pdf/PdfDictionary;)I

    move-result p4

    iput p4, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->keyLength:I

    .line 177
    invoke-direct {p0, p2}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->padPassword([B)[B

    move-result-object p2

    .line 178
    invoke-direct {p0, p3}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->padPassword([B)[B

    move-result-object p3

    .line 180
    invoke-virtual {p0, p2, p3}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->computeOwnerKey([B[B)[B

    move-result-object p3

    .line 181
    invoke-virtual {p0, p2, p3, p5}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->computeGlobalEncryptionKey([B[BZ)V

    .line 182
    invoke-virtual {p0}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->computeUserKey()[B

    move-result-object p2

    .line 184
    invoke-virtual {p0, p1, p2, p3}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->setStandardHandlerDicEntries(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[B)V

    .line 185
    invoke-virtual {p0, p1, p5, p6}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->setSpecificHandlerDicEntries(Lcom/itextpdf/kernel/pdf/PdfDictionary;ZZ)V

    return-void
.end method

.method private initKeyAndReadDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;[B[BZ)V
    .locals 4

    .line 189
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->U:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->getIsoBytes(Lcom/itextpdf/kernel/pdf/PdfString;)[B

    move-result-object v0

    .line 190
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->O:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->getIsoBytes(Lcom/itextpdf/kernel/pdf/PdfString;)[B

    move-result-object v1

    .line 192
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    .line 193
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->permissions:J

    .line 195
    iput-object p3, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->documentId:[B

    .line 196
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->getKeyLength(Lcom/itextpdf/kernel/pdf/PdfDictionary;)I

    move-result p1

    iput p1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->keyLength:I

    .line 197
    invoke-direct {p0, p2}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->padPassword([B)[B

    move-result-object p1

    .line 198
    invoke-direct {p0, p4, v0, v1, p1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->checkPassword(Z[B[B[B)V

    return-void
.end method

.method private padPassword([B)[B
    .locals 5

    const/16 v0, 0x20

    .line 222
    new-array v1, v0, [B

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 224
    sget-object p1, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->pad:[B

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 226
    :cond_0
    array-length v3, p1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    array-length v3, p1

    if-ge v3, v0, :cond_1

    .line 229
    sget-object v3, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->pad:[B

    array-length v4, p1

    array-length p1, p1

    sub-int/2addr v0, p1

    invoke-static {v3, v2, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    return-object v1
.end method


# virtual methods
.method protected calculatePermissions(I)V
    .locals 2

    or-int/lit8 p1, p1, -0x40

    and-int/lit8 p1, p1, -0x4

    int-to-long v0, p1

    .line 116
    iput-wide v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->permissions:J

    return-void
.end method

.method protected computeGlobalEncryptionKey([B[BZ)V
    .locals 5

    .line 128
    iget v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->keyLength:I

    const/16 v1, 0x8

    div-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->mkey:[B

    .line 131
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 132
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 133
    iget-object p1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->md5:Ljava/security/MessageDigest;

    invoke-virtual {p1, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 136
    iget-wide p1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->permissions:J

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 137
    iget-wide v2, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->permissions:J

    shr-long v0, v2, v1

    long-to-int p2, v0

    int-to-byte p2, p2

    .line 138
    iget-wide v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->permissions:J

    const/16 v2, 0x10

    shr-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 139
    iget-wide v1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->permissions:J

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

    .line 140
    iget-object p1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->md5:Ljava/security/MessageDigest;

    invoke-virtual {p1, v3, v4, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 141
    iget-object p1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->documentId:[B

    if-eqz p1, :cond_0

    .line 142
    iget-object p1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->md5:Ljava/security/MessageDigest;

    iget-object p2, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->documentId:[B

    invoke-virtual {p1, p2}, Ljava/security/MessageDigest;->update([B)V

    :cond_0
    if-nez p3, :cond_1

    .line 144
    iget-object p1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->md5:Ljava/security/MessageDigest;

    sget-object p2, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->metadataPad:[B

    invoke-virtual {p1, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 146
    :cond_1
    iget-object p1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->mkey:[B

    array-length p1, p1

    new-array p1, p1, [B

    .line 147
    iget-object p2, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->md5:Ljava/security/MessageDigest;

    invoke-virtual {p2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p2

    iget-object p3, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->mkey:[B

    array-length p3, p3

    invoke-static {p2, v4, p1, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    iget-object p2, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->mkey:[B

    iget-object p3, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->mkey:[B

    array-length p3, p3

    invoke-static {p1, v4, p2, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method protected computeOwnerKey([B[B)[B
    .locals 4

    const/16 v0, 0x20

    .line 120
    new-array v0, v0, [B

    .line 121
    iget-object v1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v1, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p2

    .line 122
    iget-object v1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->arcfour:Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v1, p2, v2, v3}, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;->prepareARCFOURKey([BII)V

    .line 123
    iget-object p2, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->arcfour:Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;

    invoke-virtual {p2, p1, v0}, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;->encryptARCFOUR([B[B)V

    return-object v0
.end method

.method protected computeUserKey()[B
    .locals 3

    const/16 v0, 0x20

    .line 152
    new-array v0, v0, [B

    .line 153
    iget-object v1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->arcfour:Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;

    iget-object v2, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->mkey:[B

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;->prepareARCFOURKey([B)V

    .line 154
    iget-object v1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->arcfour:Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;

    sget-object v2, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->pad:[B

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;->encryptARCFOUR([B[B)V

    return-object v0
.end method

.method public computeUserPassword([BLcom/itextpdf/kernel/pdf/PdfDictionary;)[B
    .locals 4

    .line 95
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->O:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->getIsoBytes(Lcom/itextpdf/kernel/pdf/PdfString;)[B

    move-result-object p2

    .line 96
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->padPassword([B)[B

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->computeOwnerKey([B[B)[B

    move-result-object p1

    const/4 p2, 0x0

    move v0, p2

    .line 97
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    move v1, p2

    .line 99
    :goto_1
    array-length v2, p1

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_1

    add-int v2, v0, v1

    .line 100
    aget-byte v2, p1, v2

    sget-object v3, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->pad:[B

    aget-byte v3, v3, v1

    if-eq v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 106
    :cond_1
    new-array v1, v0, [B

    .line 107
    invoke-static {p1, p2, v1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_2
    return-object p1
.end method

.method public getDecryptor()Lcom/itextpdf/kernel/crypto/IDecryptor;
    .locals 4

    .line 91
    new-instance v0, Lcom/itextpdf/kernel/crypto/StandardDecryptor;

    iget-object v1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->nextObjectKey:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->nextObjectKeySize:I

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/kernel/crypto/StandardDecryptor;-><init>([BII)V

    return-object v0
.end method

.method public getEncryptionStream(Ljava/io/OutputStream;)Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;
    .locals 4

    .line 86
    new-instance v0, Lcom/itextpdf/kernel/crypto/OutputStreamStandardEncryption;

    iget-object v1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->nextObjectKey:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->nextObjectKeySize:I

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/itextpdf/kernel/crypto/OutputStreamStandardEncryption;-><init>(Ljava/io/OutputStream;[BII)V

    return-object v0
.end method

.method protected isValidPassword([B[B)Z
    .locals 1

    const/16 v0, 0x20

    .line 165
    invoke-static {p1, p2, v0}, Lcom/itextpdf/kernel/crypto/securityhandler/StandardHandlerUsingStandard40;->equalsArray([B[BI)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected setSpecificHandlerDicEntries(Lcom/itextpdf/kernel/pdf/PdfDictionary;ZZ)V
    .locals 1

    .line 159
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->R:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance p3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/4 v0, 0x2

    invoke-direct {p3, v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p1, p2, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 160
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance p3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p1, p2, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void
.end method
