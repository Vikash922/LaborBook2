.class public Lcom/itextpdf/kernel/pdf/WriterProperties;
.super Ljava/lang/Object;
.source "WriterProperties.java"


# instance fields
.field protected addUAXmpMetadata:Z

.field protected addXmpMetadata:Z

.field protected compressionLevel:I

.field protected encryptionProperties:Lcom/itextpdf/kernel/pdf/EncryptionProperties;

.field protected initialDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

.field protected isFullCompression:Ljava/lang/Boolean;

.field protected modifiedDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

.field protected pdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

.field protected smartMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/WriterProperties;->smartMode:Z

    .line 79
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/WriterProperties;->addUAXmpMetadata:Z

    const/4 v0, -0x1

    .line 80
    iput v0, p0, Lcom/itextpdf/kernel/pdf/WriterProperties;->compressionLevel:I

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/WriterProperties;->isFullCompression:Ljava/lang/Boolean;

    .line 82
    new-instance v0, Lcom/itextpdf/kernel/pdf/EncryptionProperties;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/EncryptionProperties;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/WriterProperties;->encryptionProperties:Lcom/itextpdf/kernel/pdf/EncryptionProperties;

    return-void
.end method


# virtual methods
.method public addUAXmpMetadata()Lcom/itextpdf/kernel/pdf/WriterProperties;
    .locals 1

    const/4 v0, 0x1

    .line 261
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/WriterProperties;->addUAXmpMetadata:Z

    .line 262
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/WriterProperties;->addXmpMetadata()Lcom/itextpdf/kernel/pdf/WriterProperties;

    move-result-object v0

    return-object v0
.end method

.method public addXmpMetadata()Lcom/itextpdf/kernel/pdf/WriterProperties;
    .locals 1

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/WriterProperties;->addXmpMetadata:Z

    return-object p0
.end method

.method isPublicKeyEncryptionUsed()Z
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/WriterProperties;->encryptionProperties:Lcom/itextpdf/kernel/pdf/EncryptionProperties;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->isPublicKeyEncryptionUsed()Z

    move-result v0

    return v0
.end method

.method isStandardEncryptionUsed()Z
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/WriterProperties;->encryptionProperties:Lcom/itextpdf/kernel/pdf/EncryptionProperties;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->isStandardEncryptionUsed()Z

    move-result v0

    return v0
.end method

.method public setCompressionLevel(I)Lcom/itextpdf/kernel/pdf/WriterProperties;
    .locals 0

    .line 131
    iput p1, p0, Lcom/itextpdf/kernel/pdf/WriterProperties;->compressionLevel:I

    return-object p0
.end method

.method public setFullCompressionMode(Z)Lcom/itextpdf/kernel/pdf/WriterProperties;
    .locals 0

    .line 143
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/WriterProperties;->isFullCompression:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setInitialDocumentId(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/kernel/pdf/WriterProperties;
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/WriterProperties;->initialDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    return-object p0
.end method

.method public setModifiedDocumentId(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/kernel/pdf/WriterProperties;
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/WriterProperties;->modifiedDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    return-object p0
.end method

.method public setPdfVersion(Lcom/itextpdf/kernel/pdf/PdfVersion;)Lcom/itextpdf/kernel/pdf/WriterProperties;
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/WriterProperties;->pdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

    return-object p0
.end method

.method public setPublicKeyEncryption([Ljava/security/cert/Certificate;[II)Lcom/itextpdf/kernel/pdf/WriterProperties;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/WriterProperties;->encryptionProperties:Lcom/itextpdf/kernel/pdf/EncryptionProperties;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->setPublicKeyEncryption([Ljava/security/cert/Certificate;[II)Lcom/itextpdf/kernel/pdf/EncryptionProperties;

    return-object p0
.end method

.method public setStandardEncryption([B[BII)Lcom/itextpdf/kernel/pdf/WriterProperties;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/WriterProperties;->encryptionProperties:Lcom/itextpdf/kernel/pdf/EncryptionProperties;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/itextpdf/kernel/pdf/EncryptionProperties;->setStandardEncryption([B[BII)Lcom/itextpdf/kernel/pdf/EncryptionProperties;

    return-object p0
.end method

.method public useSmartMode()Lcom/itextpdf/kernel/pdf/WriterProperties;
    .locals 1

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/WriterProperties;->smartMode:Z

    return-object p0
.end method
