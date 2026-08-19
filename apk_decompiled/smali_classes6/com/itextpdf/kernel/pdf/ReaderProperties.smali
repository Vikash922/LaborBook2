.class public Lcom/itextpdf/kernel/pdf/ReaderProperties;
.super Ljava/lang/Object;
.source "ReaderProperties.java"


# instance fields
.field protected certificate:Ljava/security/cert/Certificate;

.field protected certificateKey:Ljava/security/Key;

.field protected certificateKeyProvider:Ljava/lang/String;

.field protected externalDecryptionProcess:Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;

.field protected memoryLimitsAwareHandler:Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;

.field protected password:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private clearEncryptionParams()V
    .locals 1

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/ReaderProperties;->password:[B

    .line 121
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/ReaderProperties;->certificate:Ljava/security/cert/Certificate;

    .line 122
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/ReaderProperties;->certificateKey:Ljava/security/Key;

    .line 123
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/ReaderProperties;->certificateKeyProvider:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/ReaderProperties;->externalDecryptionProcess:Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;

    return-void
.end method


# virtual methods
.method public setMemoryLimitsAwareHandler(Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;)Lcom/itextpdf/kernel/pdf/ReaderProperties;
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/ReaderProperties;->memoryLimitsAwareHandler:Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;

    return-object p0
.end method

.method public setPassword([B)Lcom/itextpdf/kernel/pdf/ReaderProperties;
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/ReaderProperties;->clearEncryptionParams()V

    .line 76
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/ReaderProperties;->password:[B

    return-object p0
.end method

.method public setPublicKeySecurityParams(Ljava/security/cert/Certificate;Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;)Lcom/itextpdf/kernel/pdf/ReaderProperties;
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/ReaderProperties;->clearEncryptionParams()V

    .line 114
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/ReaderProperties;->certificate:Ljava/security/cert/Certificate;

    .line 115
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/ReaderProperties;->externalDecryptionProcess:Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;

    return-object p0
.end method

.method public setPublicKeySecurityParams(Ljava/security/cert/Certificate;Ljava/security/Key;Ljava/lang/String;Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;)Lcom/itextpdf/kernel/pdf/ReaderProperties;
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/ReaderProperties;->clearEncryptionParams()V

    .line 95
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/ReaderProperties;->certificate:Ljava/security/cert/Certificate;

    .line 96
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/ReaderProperties;->certificateKey:Ljava/security/Key;

    .line 97
    iput-object p3, p0, Lcom/itextpdf/kernel/pdf/ReaderProperties;->certificateKeyProvider:Ljava/lang/String;

    .line 98
    iput-object p4, p0, Lcom/itextpdf/kernel/pdf/ReaderProperties;->externalDecryptionProcess:Lcom/itextpdf/kernel/security/IExternalDecryptionProcess;

    return-object p0
.end method
