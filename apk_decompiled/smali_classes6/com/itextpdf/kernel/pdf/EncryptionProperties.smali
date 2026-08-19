.class public Lcom/itextpdf/kernel/pdf/EncryptionProperties;
.super Ljava/lang/Object;
.source "EncryptionProperties.java"


# instance fields
.field protected encryptionAlgorithm:I

.field protected ownerPassword:[B

.field protected publicCertificates:[Ljava/security/cert/Certificate;

.field protected publicKeyEncryptPermissions:[I

.field protected standardEncryptPermissions:I

.field protected userPassword:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private clearEncryption()V
    .locals 1

    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->publicCertificates:[Ljava/security/cert/Certificate;

    .line 170
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->publicKeyEncryptPermissions:[I

    .line 171
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->userPassword:[B

    .line 172
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->ownerPassword:[B

    return-void
.end method

.method private static randomBytes([B)V
    .locals 1

    .line 176
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-void
.end method


# virtual methods
.method isPublicKeyEncryptionUsed()Z
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->publicCertificates:[Ljava/security/cert/Certificate;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isStandardEncryptionUsed()Z
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->ownerPassword:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setPublicKeyEncryption([Ljava/security/cert/Certificate;[II)Lcom/itextpdf/kernel/pdf/EncryptionProperties;
    .locals 0

    .line 152
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->clearEncryption()V

    .line 153
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->publicCertificates:[Ljava/security/cert/Certificate;

    .line 154
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->publicKeyEncryptPermissions:[I

    .line 155
    iput p3, p0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->encryptionAlgorithm:I

    return-object p0
.end method

.method public setStandardEncryption([B[BII)Lcom/itextpdf/kernel/pdf/EncryptionProperties;
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->clearEncryption()V

    .line 103
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->userPassword:[B

    if-eqz p2, :cond_0

    .line 105
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->ownerPassword:[B

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    .line 107
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->ownerPassword:[B

    .line 108
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->randomBytes([B)V

    .line 110
    :goto_0
    iput p3, p0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->standardEncryptPermissions:I

    .line 111
    iput p4, p0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->encryptionAlgorithm:I

    return-object p0
.end method
