.class public abstract Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;
.super Ljava/lang/Object;
.source "SecurityHandler.java"


# instance fields
.field protected extra:[B

.field protected md5:Ljava/security/MessageDigest;

.field protected mkey:[B

.field protected nextObjectKey:[B

.field protected nextObjectKeySize:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;->mkey:[B

    const/4 v0, 0x5

    .line 76
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;->extra:[B

    .line 79
    invoke-direct {p0}, Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;->safeInitMessageDigest()V

    return-void
.end method

.method private safeInitMessageDigest()V
    .locals 3

    .line 112
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;->md5:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 114
    new-instance v1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v2, "PdfEncryption exception."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public abstract getDecryptor()Lcom/itextpdf/kernel/crypto/IDecryptor;
.end method

.method public abstract getEncryptionStream(Ljava/io/OutputStream;)Lcom/itextpdf/kernel/crypto/OutputStreamEncryption;
.end method

.method public setHashKeyForNextObject(II)V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 92
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;->extra:[B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x1

    .line 93
    aput-byte v1, v0, v2

    const/16 v1, 0x10

    shr-int/2addr p1, v1

    int-to-byte p1, p1

    const/4 v2, 0x2

    .line 94
    aput-byte p1, v0, v2

    const/4 p1, 0x3

    int-to-byte v2, p2

    .line 95
    aput-byte v2, v0, p1

    shr-int/lit8 p1, p2, 0x8

    int-to-byte p1, p1

    const/4 p2, 0x4

    .line 96
    aput-byte p1, v0, p2

    .line 97
    iget-object p1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;->md5:Ljava/security/MessageDigest;

    iget-object p2, p0, Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;->mkey:[B

    invoke-virtual {p1, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 98
    iget-object p1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;->md5:Ljava/security/MessageDigest;

    iget-object p2, p0, Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;->extra:[B

    invoke-virtual {p1, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 99
    iget-object p1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;->md5:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;->nextObjectKey:[B

    .line 100
    iget-object p1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;->mkey:[B

    array-length p1, p1

    add-int/lit8 p1, p1, 0x5

    iput p1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;->nextObjectKeySize:I

    if-le p1, v1, :cond_0

    .line 102
    iput v1, p0, Lcom/itextpdf/kernel/crypto/securityhandler/SecurityHandler;->nextObjectKeySize:I

    :cond_0
    return-void
.end method
