.class public final Lcom/itextpdf/kernel/pdf/PdfEncryptor;
.super Ljava/lang/Object;
.source "PdfEncryptor.java"


# instance fields
.field private metaInfo:Lcom/itextpdf/commons/actions/contexts/IMetaInfo;

.field private properties:Lcom/itextpdf/kernel/pdf/EncryptionProperties;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encrypt(Lcom/itextpdf/kernel/pdf/PdfReader;Ljava/io/OutputStream;Lcom/itextpdf/kernel/pdf/EncryptionProperties;)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-static {p0, p1, p2, v0}, Lcom/itextpdf/kernel/pdf/PdfEncryptor;->encrypt(Lcom/itextpdf/kernel/pdf/PdfReader;Ljava/io/OutputStream;Lcom/itextpdf/kernel/pdf/EncryptionProperties;Ljava/util/Map;)V

    return-void
.end method

.method public static encrypt(Lcom/itextpdf/kernel/pdf/PdfReader;Ljava/io/OutputStream;Lcom/itextpdf/kernel/pdf/EncryptionProperties;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfReader;",
            "Ljava/io/OutputStream;",
            "Lcom/itextpdf/kernel/pdf/EncryptionProperties;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 81
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfEncryptor;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfEncryptor;-><init>()V

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/PdfEncryptor;->setEncryptionProperties(Lcom/itextpdf/kernel/pdf/EncryptionProperties;)Lcom/itextpdf/kernel/pdf/PdfEncryptor;

    move-result-object p2

    invoke-virtual {p2, p0, p1, p3}, Lcom/itextpdf/kernel/pdf/PdfEncryptor;->encrypt(Lcom/itextpdf/kernel/pdf/PdfReader;Ljava/io/OutputStream;Ljava/util/Map;)V

    return-void
.end method

.method public static getContent(Lorg/bouncycastle/cms/RecipientInformation;Ljava/security/PrivateKey;Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 208
    new-instance v0, Lorg/bouncycastle/cms/jcajce/JceKeyTransEnvelopedRecipient;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cms/jcajce/JceKeyTransEnvelopedRecipient;-><init>(Ljava/security/PrivateKey;)V

    invoke-virtual {v0, p2}, Lorg/bouncycastle/cms/jcajce/JceKeyTransEnvelopedRecipient;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/JceKeyTransRecipient;

    move-result-object p1

    .line 209
    invoke-virtual {p0, p1}, Lorg/bouncycastle/cms/RecipientInformation;->getContent(Lorg/bouncycastle/cms/Recipient;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getPermissionsVerbose(I)Ljava/lang/String;
    .locals 3

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Allowed:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v1, p0, 0x804

    const/16 v2, 0x804

    if-ne v1, v2, :cond_0

    .line 103
    const-string v1, " Printing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 105
    const-string v1, " Modify contents"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    and-int/lit8 v1, p0, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    .line 106
    const-string v1, " Copy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 v1, p0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_3

    .line 108
    const-string v1, " Modify annotations"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    and-int/lit16 v1, p0, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_4

    .line 109
    const-string v1, " Fill in"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    and-int/lit16 v1, p0, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_5

    .line 111
    const-string v1, " Screen readers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    and-int/lit16 v1, p0, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_6

    .line 112
    const-string v1, " Assembly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const/4 v1, 0x4

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_7

    .line 114
    const-string p0, " Degraded printing"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isAssemblyAllowed(I)Z
    .locals 1

    const/16 v0, 0x400

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isCopyAllowed(I)Z
    .locals 1

    const/16 v0, 0x10

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDegradedPrintingAllowed(I)Z
    .locals 1

    const/4 v0, 0x4

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isFillInAllowed(I)Z
    .locals 1

    const/16 v0, 0x100

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isModifyAnnotationsAllowed(I)Z
    .locals 1

    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isModifyContentsAllowed(I)Z
    .locals 1

    const/16 v0, 0x8

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPrintingAllowed(I)Z
    .locals 1

    const/16 v0, 0x804

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isScreenReadersAllowed(I)Z
    .locals 1

    const/16 v0, 0x200

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public encrypt(Lcom/itextpdf/kernel/pdf/PdfReader;Ljava/io/OutputStream;)V
    .locals 2

    const/4 v0, 0x0

    .line 263
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/kernel/pdf/PdfEncryptor;->encrypt(Lcom/itextpdf/kernel/pdf/PdfReader;Ljava/io/OutputStream;Ljava/util/Map;)V

    return-void
.end method

.method public encrypt(Lcom/itextpdf/kernel/pdf/PdfReader;Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfReader;",
            "Ljava/io/OutputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 243
    new-instance v0, Lcom/itextpdf/kernel/pdf/WriterProperties;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/WriterProperties;-><init>()V

    .line 244
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfEncryptor;->properties:Lcom/itextpdf/kernel/pdf/EncryptionProperties;

    iput-object v1, v0, Lcom/itextpdf/kernel/pdf/WriterProperties;->encryptionProperties:Lcom/itextpdf/kernel/pdf/EncryptionProperties;

    .line 245
    new-instance v1, Lcom/itextpdf/kernel/pdf/StampingProperties;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/StampingProperties;-><init>()V

    .line 246
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfEncryptor;->metaInfo:Lcom/itextpdf/commons/actions/contexts/IMetaInfo;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/StampingProperties;->setEventCountingMetaInfo(Lcom/itextpdf/commons/actions/contexts/IMetaInfo;)Lcom/itextpdf/kernel/pdf/DocumentProperties;

    .line 247
    :try_start_0
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfWriter;

    invoke-direct {v2, p2, v0}, Lcom/itextpdf/kernel/pdf/PdfWriter;-><init>(Ljava/io/OutputStream;Lcom/itextpdf/kernel/pdf/WriterProperties;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :try_start_1
    new-instance p2, Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {p2, p1, v2, v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/PdfWriter;Lcom/itextpdf/kernel/pdf/StampingProperties;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 249
    :try_start_2
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentInfo()Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->setMoreInfo(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 250
    :try_start_3
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 247
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p3

    .line 250
    :try_start_6
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    :try_start_7
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p1

    .line 247
    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p2

    .line 250
    :try_start_9
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfWriter;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception p3

    :try_start_a
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    :goto_2
    return-void
.end method

.method public setEncryptionProperties(Lcom/itextpdf/kernel/pdf/EncryptionProperties;)Lcom/itextpdf/kernel/pdf/PdfEncryptor;
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfEncryptor;->properties:Lcom/itextpdf/kernel/pdf/EncryptionProperties;

    return-object p0
.end method

.method public setEventCountingMetaInfo(Lcom/itextpdf/commons/actions/contexts/IMetaInfo;)Lcom/itextpdf/kernel/pdf/PdfEncryptor;
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfEncryptor;->metaInfo:Lcom/itextpdf/commons/actions/contexts/IMetaInfo;

    return-object p0
.end method
