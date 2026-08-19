.class public Lcom/itextpdf/signatures/PdfSigner;
.super Ljava/lang/Object;
.source "PdfSigner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/signatures/PdfSigner$ISignatureEvent;,
        Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;
    }
.end annotation


# static fields
.field public static final CERTIFIED_FORM_FILLING:I = 0x2

.field public static final CERTIFIED_FORM_FILLING_AND_ANNOTATIONS:I = 0x3

.field public static final CERTIFIED_NO_CHANGES_ALLOWED:I = 0x1

.field public static final NOT_CERTIFIED:I


# instance fields
.field protected appearance:Lcom/itextpdf/signatures/PdfSignatureAppearance;

.field protected bout:[B

.field protected certificationLevel:I

.field protected closed:Z

.field protected cryptoDictionary:Lcom/itextpdf/signatures/PdfSignature;

.field protected document:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field protected exclusionLocations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            "Lcom/itextpdf/kernel/pdf/PdfLiteral;",
            ">;"
        }
    .end annotation
.end field

.field protected fieldLock:Lcom/itextpdf/forms/PdfSigFieldLock;

.field protected fieldName:Ljava/lang/String;

.field protected originalOS:Ljava/io/OutputStream;

.field protected preClosed:Z

.field protected raf:Ljava/io/RandomAccessFile;

.field protected range:[J

.field protected signDate:Ljava/util/Calendar;

.field protected signatureEvent:Lcom/itextpdf/signatures/PdfSigner$ISignatureEvent;

.field protected tempFile:Ljava/io/File;

.field protected temporaryOS:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfReader;Ljava/io/OutputStream;Lcom/itextpdf/kernel/pdf/StampingProperties;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 237
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/itextpdf/signatures/PdfSigner;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Ljava/io/OutputStream;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/StampingProperties;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfReader;Ljava/io/OutputStream;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/StampingProperties;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 145
    iput v0, p0, Lcom/itextpdf/signatures/PdfSigner;->certificationLevel:I

    .line 205
    iput-boolean v0, p0, Lcom/itextpdf/signatures/PdfSigner;->preClosed:Z

    .line 252
    new-instance v1, Lcom/itextpdf/kernel/pdf/StampingProperties;

    invoke-direct {v1, p4}, Lcom/itextpdf/kernel/pdf/StampingProperties;-><init>(Lcom/itextpdf/kernel/pdf/StampingProperties;)V

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/StampingProperties;->preserveEncryption()Lcom/itextpdf/kernel/pdf/StampingProperties;

    move-result-object p4

    if-nez p3, :cond_0

    .line 254
    new-instance p3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p3, p0, Lcom/itextpdf/signatures/PdfSigner;->temporaryOS:Ljava/io/ByteArrayOutputStream;

    .line 255
    new-instance p3, Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSigner;->temporaryOS:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p3, v1}, Lcom/itextpdf/kernel/pdf/PdfWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1, p3, p4}, Lcom/itextpdf/signatures/PdfSigner;->initDocument(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/PdfWriter;Lcom/itextpdf/kernel/pdf/StampingProperties;)Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    goto :goto_0

    .line 257
    :cond_0
    invoke-static {p3}, Lcom/itextpdf/commons/utils/FileUtil;->createTempFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    iput-object p3, p0, Lcom/itextpdf/signatures/PdfSigner;->tempFile:Ljava/io/File;

    .line 258
    new-instance p3, Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSigner;->tempFile:Ljava/io/File;

    invoke-static {v1}, Lcom/itextpdf/commons/utils/FileUtil;->getFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-direct {p3, v1}, Lcom/itextpdf/kernel/pdf/PdfWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1, p3, p4}, Lcom/itextpdf/signatures/PdfSigner;->initDocument(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/PdfWriter;Lcom/itextpdf/kernel/pdf/StampingProperties;)Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 261
    :goto_0
    iput-object p2, p0, Lcom/itextpdf/signatures/PdfSigner;->originalOS:Ljava/io/OutputStream;

    .line 262
    invoke-static {}, Lcom/itextpdf/commons/utils/DateTimeUtil;->getCurrentTimeCalendar()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->signDate:Ljava/util/Calendar;

    .line 263
    invoke-virtual {p0}, Lcom/itextpdf/signatures/PdfSigner;->getNewSigFieldName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->fieldName:Ljava/lang/String;

    .line 264
    new-instance p1, Lcom/itextpdf/signatures/PdfSignatureAppearance;

    iget-object p2, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    new-instance p3, Lcom/itextpdf/kernel/geom/Rectangle;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p4}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FF)V

    const/4 p4, 0x1

    invoke-direct {p1, p2, p3, p4}, Lcom/itextpdf/signatures/PdfSignatureAppearance;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/Rectangle;I)V

    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->appearance:Lcom/itextpdf/signatures/PdfSignatureAppearance;

    .line 265
    iget-object p2, p0, Lcom/itextpdf/signatures/PdfSigner;->signDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->setSignDate(Ljava/util/Calendar;)Lcom/itextpdf/signatures/PdfSignatureAppearance;

    .line 267
    iput-boolean v0, p0, Lcom/itextpdf/signatures/PdfSigner;->closed:Z

    return-void
.end method

.method private isDocumentPdf2()Z
    .locals 2

    .line 1271
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPdfVersion()Lcom/itextpdf/kernel/pdf/PdfVersion;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_2_0:Lcom/itextpdf/kernel/pdf/PdfVersion;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfVersion;->compareTo(Lcom/itextpdf/kernel/pdf/PdfVersion;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static signDeferred(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/lang/String;Ljava/io/OutputStream;Lcom/itextpdf/signatures/IExternalSignatureContainer;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 758
    new-instance v1, Lcom/itextpdf/signatures/SignatureUtil;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Lcom/itextpdf/signatures/SignatureUtil;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 759
    invoke-virtual {v1, v0}, Lcom/itextpdf/signatures/SignatureUtil;->getSignature(Ljava/lang/String;)Lcom/itextpdf/signatures/PdfSignature;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 764
    invoke-virtual {v1, v0}, Lcom/itextpdf/signatures/SignatureUtil;->signatureCoversWholeDocument(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 770
    invoke-virtual {v3}, Lcom/itextpdf/signatures/PdfSignature;->getByteRange()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 771
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->toLongArray()[J

    move-result-object v1

    .line 773
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_4

    const/4 v0, 0x0

    aget-wide v3, v1, v0

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 777
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfReader;->getSafeFile()Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->createSourceView()Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v2

    .line 778
    new-instance v3, Lcom/itextpdf/io/source/RASInputStream;

    new-instance v4, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v4}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    invoke-virtual {v4, v2, v1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createRanged(Lcom/itextpdf/io/source/IRandomAccessSource;[J)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/io/source/RASInputStream;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    move-object/from16 v4, p3

    .line 779
    invoke-interface {v4, v3}, Lcom/itextpdf/signatures/IExternalSignatureContainer;->sign(Ljava/io/InputStream;)[B

    move-result-object v9

    const/4 v10, 0x2

    .line 780
    aget-wide v3, v1, v10

    const/4 v5, 0x1

    aget-wide v5, v1, v5

    sub-long/2addr v3, v5

    long-to-int v3, v3

    sub-int/2addr v3, v10

    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_3

    .line 784
    div-int/lit8 v11, v3, 0x2

    .line 785
    array-length v3, v9

    if-lt v11, v3, :cond_2

    const-wide/16 v7, 0x0

    const-wide/16 v12, 0x1

    add-long v14, v5, v12

    move-object v3, v2

    move-wide v4, v7

    move-wide v6, v14

    move-object/from16 v8, p2

    .line 788
    invoke-static/range {v3 .. v8}, Lcom/itextpdf/io/util/StreamUtil;->copyBytes(Lcom/itextpdf/io/source/IRandomAccessSource;JJLjava/io/OutputStream;)V

    .line 789
    new-instance v3, Lcom/itextpdf/io/source/ByteBuffer;

    mul-int/lit8 v4, v11, 0x2

    invoke-direct {v3, v4}, Lcom/itextpdf/io/source/ByteBuffer;-><init>(I)V

    .line 790
    array-length v4, v9

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-byte v6, v9, v5

    .line 791
    invoke-virtual {v3, v6}, Lcom/itextpdf/io/source/ByteBuffer;->appendHex(B)Lcom/itextpdf/io/source/ByteBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 793
    :cond_0
    array-length v4, v9

    sub-int/2addr v11, v4

    mul-int/2addr v11, v10

    :goto_1
    if-ge v0, v11, :cond_1

    const/16 v4, 0x30

    .line 795
    invoke-virtual {v3, v4}, Lcom/itextpdf/io/source/ByteBuffer;->append(B)Lcom/itextpdf/io/source/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 797
    :cond_1
    invoke-virtual {v3}, Lcom/itextpdf/io/source/ByteBuffer;->toByteArray()[B

    move-result-object v0

    move-object/from16 v8, p2

    .line 798
    invoke-virtual {v8, v0}, Ljava/io/OutputStream;->write([B)V

    .line 799
    aget-wide v3, v1, v10

    sub-long v4, v3, v12

    const/4 v0, 0x3

    aget-wide v0, v1, v0

    add-long v6, v0, v12

    move-object v3, v2

    invoke-static/range {v3 .. v8}, Lcom/itextpdf/io/util/StreamUtil;->copyBytes(Lcom/itextpdf/io/source/IRandomAccessSource;JJLjava/io/OutputStream;)V

    return-void

    .line 786
    :cond_2
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "Available space is not enough for signature."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 782
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Gap is not a multiple of 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 774
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Single exclusion space supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 765
    :cond_5
    new-instance v1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v2, "Signature with name {0} is not the last. It doesn\'t cover the whole document."

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v0

    .line 767
    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object v0

    throw v0

    .line 761
    :cond_6
    new-instance v1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v2, "There is no field in the document with such name: {0}."

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v0

    .line 762
    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method protected addDeveloperExtension(Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;)V
    .locals 1

    .line 828
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->addDeveloperExtension(Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;)V

    return-void
.end method

.method protected addDocMDP(Lcom/itextpdf/signatures/PdfSignature;)V
    .locals 5

    .line 1163
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 1164
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 1165
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    iget v4, p0, Lcom/itextpdf/signatures/PdfSigner;->certificationLevel:I

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1166
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v4, "1.2"

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1167
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->TransformParams:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1168
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->TransformMethod:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->DocMDP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1169
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->SigRef:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1170
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->TransformParams:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1171
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Data:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v2, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getTrailer()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Root:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1172
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 1173
    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 1174
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Reference:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/signatures/PdfSignature;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/signatures/PdfSignature;

    return-void
.end method

.method protected addFieldMDP(Lcom/itextpdf/signatures/PdfSignature;Lcom/itextpdf/forms/PdfSigFieldLock;)V
    .locals 4

    .line 1185
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 1186
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 1187
    invoke-virtual {p2}, Lcom/itextpdf/forms/PdfSigFieldLock;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->putAll(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 1188
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->TransformParams:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, p2, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1189
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v3, "1.2"

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1190
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->TransformMethod:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->FieldMDP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p2, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1191
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->SigRef:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p2, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1192
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->TransformParams:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p2, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1193
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Data:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getTrailer()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Root:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1194
    invoke-virtual {p1}, Lcom/itextpdf/signatures/PdfSignature;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Reference:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p2

    if-nez p2, :cond_0

    .line 1196
    new-instance p2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {p2}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 1197
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Reference:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1, p2}, Lcom/itextpdf/signatures/PdfSignature;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/signatures/PdfSignature;

    .line 1200
    :cond_0
    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    return-void
.end method

.method protected close(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1087
    :try_start_0
    iget-boolean v0, p0, Lcom/itextpdf/signatures/PdfSigner;->preClosed:Z

    if-eqz v0, :cond_a

    .line 1089
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1090
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1092
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 1093
    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    .line 1094
    iget-object v6, p0, Lcom/itextpdf/signatures/PdfSigner;->exclusionLocations:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfLiteral;

    if-eqz v3, :cond_2

    .line 1097
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1098
    invoke-virtual {v1, v5}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 1099
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfLiteral;->getBytesCount()I

    move-result v6

    if-gt v5, v6, :cond_1

    .line 1102
    iget-object v5, p0, Lcom/itextpdf/signatures/PdfSigner;->tempFile:Ljava/io/File;

    if-nez v5, :cond_0

    .line 1103
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/itextpdf/signatures/PdfSigner;->bout:[B

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfLiteral;->getPosition()J

    move-result-wide v7

    long-to-int v3, v7

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    invoke-static {v5, v4, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1105
    :cond_0
    iget-object v5, p0, Lcom/itextpdf/signatures/PdfSigner;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfLiteral;->getPosition()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1106
    iget-object v3, p0, Lcom/itextpdf/signatures/PdfSigner;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    invoke-virtual {v3, v5, v4, v6}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_0

    .line 1100
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The key is too big."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1096
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The key didn\'t reserve space in preclose"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1109
    :cond_3
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->size()I

    move-result p1

    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->exclusionLocations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ne p1, v0, :cond_9

    .line 1111
    iget-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->tempFile:Ljava/io/File;

    if-nez p1, :cond_4

    .line 1112
    iget-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->originalOS:Ljava/io/OutputStream;

    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->bout:[B

    array-length v1, v0

    invoke-virtual {p1, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2

    .line 1114
    :cond_4
    iget-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->originalOS:Ljava/io/OutputStream;

    if-eqz p1, :cond_6

    .line 1115
    iget-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->raf:Ljava/io/RandomAccessFile;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1116
    iget-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const/16 p1, 0x2000

    .line 1117
    new-array v5, p1, [B

    :goto_1
    cmp-long v6, v2, v0

    if-lez v6, :cond_6

    .line 1119
    iget-object v6, p0, Lcom/itextpdf/signatures/PdfSigner;->raf:Ljava/io/RandomAccessFile;

    int-to-long v7, p1

    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual {v6, v5, v4, v7}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v6

    if-ltz v6, :cond_5

    .line 1122
    iget-object v7, p0, Lcom/itextpdf/signatures/PdfSigner;->originalOS:Ljava/io/OutputStream;

    invoke-virtual {v7, v5, v4, v6}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v6, v6

    sub-long/2addr v2, v6

    goto :goto_1

    .line 1121
    :cond_5
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "unexpected eof"

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1128
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->tempFile:Ljava/io/File;

    if-eqz p1, :cond_7

    .line 1129
    iget-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    .line 1131
    iget-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->originalOS:Ljava/io/OutputStream;

    if-eqz p1, :cond_7

    .line 1132
    iget-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->tempFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 1136
    :cond_7
    iget-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->originalOS:Ljava/io/OutputStream;

    if-eqz p1, :cond_8

    .line 1138
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_8
    return-void

    .line 1110
    :cond_9
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The update dictionary has less keys than required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1088
    :cond_a
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Document must be preClosed."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 1128
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->tempFile:Ljava/io/File;

    if-eqz v0, :cond_b

    .line 1129
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1131
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->originalOS:Ljava/io/OutputStream;

    if-eqz v0, :cond_b

    .line 1132
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1136
    :cond_b
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->originalOS:Ljava/io/OutputStream;

    if-eqz v0, :cond_c

    .line 1138
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1142
    :catch_1
    :cond_c
    throw p1
.end method

.method protected createNewSignatureFormField(Lcom/itextpdf/forms/PdfAcroForm;Ljava/lang/String;)Lcom/itextpdf/forms/PdfSigFieldLock;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1016
    new-instance v0, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSigner;->appearance:Lcom/itextpdf/signatures/PdfSignatureAppearance;

    invoke-virtual {v1}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->getPageRect()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    const/16 v1, 0x84

    .line 1017
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setFlags(I)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 1019
    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-static {v1}, Lcom/itextpdf/forms/fields/PdfFormField;->createSignature(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/forms/fields/PdfSignatureFormField;

    move-result-object v1

    .line 1020
    invoke-virtual {v1, p2}, Lcom/itextpdf/forms/fields/PdfSignatureFormField;->setFieldName(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 1021
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v2, p0, Lcom/itextpdf/signatures/PdfSigner;->cryptoDictionary:Lcom/itextpdf/signatures/PdfSignature;

    invoke-virtual {v2}, Lcom/itextpdf/signatures/PdfSignature;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/itextpdf/forms/fields/PdfSignatureFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 1022
    invoke-virtual {v1, v0}, Lcom/itextpdf/forms/fields/PdfSignatureFormField;->addKid(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 1024
    invoke-virtual {v1}, Lcom/itextpdf/forms/fields/PdfSignatureFormField;->getSigFieldLockDictionary()Lcom/itextpdf/forms/PdfSigFieldLock;

    move-result-object p2

    .line 1026
    iget-object v2, p0, Lcom/itextpdf/signatures/PdfSigner;->fieldLock:Lcom/itextpdf/forms/PdfSigFieldLock;

    if-eqz v2, :cond_0

    .line 1027
    invoke-virtual {v2}, Lcom/itextpdf/forms/PdfSigFieldLock;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-object v2, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {p2, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1028
    sget-object p2, Lcom/itextpdf/kernel/pdf/PdfName;->Lock:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v2, p0, Lcom/itextpdf/signatures/PdfSigner;->fieldLock:Lcom/itextpdf/forms/PdfSigFieldLock;

    invoke-virtual {v2}, Lcom/itextpdf/forms/PdfSigFieldLock;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/itextpdf/forms/fields/PdfSignatureFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 1029
    iget-object p2, p0, Lcom/itextpdf/signatures/PdfSigner;->fieldLock:Lcom/itextpdf/forms/PdfSigFieldLock;

    .line 1032
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/signatures/PdfSigner;->appearance:Lcom/itextpdf/signatures/PdfSignatureAppearance;

    invoke-virtual {v2}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->getPageNumber()I

    move-result v2

    .line 1033
    iget-object v3, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v3, v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->setPage(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 1035
    iget-object v3, p0, Lcom/itextpdf/signatures/PdfSigner;->appearance:Lcom/itextpdf/signatures/PdfSignatureAppearance;

    invoke-virtual {v3}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->isInvisible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1037
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->AP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    goto :goto_0

    .line 1039
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->getAppearanceDictionary()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1041
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 1042
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->AP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v4, v3}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 1044
    :cond_2
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v4, p0, Lcom/itextpdf/signatures/PdfSigner;->appearance:Lcom/itextpdf/signatures/PdfSignatureAppearance;

    invoke-virtual {v4}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->getAppearance()Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1047
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/itextpdf/forms/PdfAcroForm;->addField(Lcom/itextpdf/forms/fields/PdfFormField;Lcom/itextpdf/kernel/pdf/PdfPage;)V

    .line 1049
    invoke-virtual {p1}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isIndirect()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1050
    invoke-virtual {p1}, Lcom/itextpdf/forms/PdfAcroForm;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    goto :goto_1

    .line 1054
    :cond_3
    iget-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    :goto_1
    return-object p2
.end method

.method protected documentContainsCertificationOrApprovalSignatures()Z
    .locals 6

    .line 1207
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Perms:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1209
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->UR3:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1212
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/itextpdf/forms/PdfAcroForm;->getAcroForm(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1214
    invoke-virtual {v1}, Lcom/itextpdf/forms/PdfAcroForm;->getFormFields()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1215
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/forms/fields/PdfFormField;

    invoke-virtual {v3}, Lcom/itextpdf/forms/fields/PdfFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 1216
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Sig:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->FT:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 1218
    :cond_2
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 1221
    :cond_3
    new-instance v4, Lcom/itextpdf/signatures/PdfSignature;

    invoke-direct {v4, v3}, Lcom/itextpdf/signatures/PdfSignature;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 1222
    invoke-virtual {v4}, Lcom/itextpdf/signatures/PdfSignature;->getContents()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/itextpdf/signatures/PdfSignature;->getByteRange()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_1

    .line 1226
    :cond_4
    invoke-virtual {v4}, Lcom/itextpdf/signatures/PdfSignature;->getType()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v4

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->DocTimeStamp:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eq v3, v0, :cond_1

    const/4 v2, 0x1

    :cond_5
    return v2
.end method

.method public getCertificationLevel()I
    .locals 1

    .line 322
    iget v0, p0, Lcom/itextpdf/signatures/PdfSigner;->certificationLevel:I

    return v0
.end method

.method public getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    return-object v0
.end method

.method public getFieldLockDict()Lcom/itextpdf/forms/PdfSigFieldLock;
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->fieldLock:Lcom/itextpdf/forms/PdfSigFieldLock;

    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public getNewSigFieldName()Ljava/lang/String;
    .locals 4

    .line 383
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/itextpdf/forms/PdfAcroForm;->getAcroForm(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object v0

    .line 387
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Signature"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/forms/PdfAcroForm;->getField(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 391
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRangeStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1069
    new-instance v0, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v0}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    .line 1070
    invoke-virtual {p0}, Lcom/itextpdf/signatures/PdfSigner;->getUnderlyingSource()Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/signatures/PdfSigner;->range:[J

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createRanged(Lcom/itextpdf/io/source/IRandomAccessSource;[J)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v0

    .line 1071
    new-instance v1, Lcom/itextpdf/io/source/RASInputStream;

    invoke-direct {v1, v0}, Lcom/itextpdf/io/source/RASInputStream;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    return-object v1
.end method

.method public getSignDate()Ljava/util/Calendar;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->signDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getSignatureAppearance()Lcom/itextpdf/signatures/PdfSignatureAppearance;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->appearance:Lcom/itextpdf/signatures/PdfSignatureAppearance;

    return-object v0
.end method

.method public getSignatureDictionary()Lcom/itextpdf/signatures/PdfSignature;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->cryptoDictionary:Lcom/itextpdf/signatures/PdfSignature;

    return-object v0
.end method

.method public getSignatureEvent()Lcom/itextpdf/signatures/PdfSigner$ISignatureEvent;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->signatureEvent:Lcom/itextpdf/signatures/PdfSigner$ISignatureEvent;

    return-object v0
.end method

.method protected getUnderlyingSource()Lcom/itextpdf/io/source/IRandomAccessSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1152
    new-instance v0, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v0}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    .line 1153
    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSigner;->raf:Ljava/io/RandomAccessFile;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSigner;->bout:[B

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource([B)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource(Ljava/io/RandomAccessFile;)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected getWidgetPageNumber(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;)I
    .locals 3

    .line 1253
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1255
    iget-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPageNumber(Lcom/itextpdf/kernel/pdf/PdfDictionary;)I

    move-result p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 1257
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 1258
    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v1

    .line 1259
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfPage;->isFlushed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1260
    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->containsAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Z

    move-result v1

    if-eqz v1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method protected getWidgetRectangle(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 0

    .line 1242
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->getRectangle()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->toRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p1

    return-object p1
.end method

.method protected initDocument(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/PdfWriter;Lcom/itextpdf/kernel/pdf/StampingProperties;)Lcom/itextpdf/kernel/pdf/PdfDocument;
    .locals 1

    .line 271
    new-instance v0, Lcom/itextpdf/pdfa/PdfAAgnosticPdfDocument;

    invoke-direct {v0, p1, p2, p3}, Lcom/itextpdf/pdfa/PdfAAgnosticPdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/PdfWriter;Lcom/itextpdf/kernel/pdf/StampingProperties;)V

    return-object v0
.end method

.method protected isPreClosed()Z
    .locals 1

    .line 837
    iget-boolean v0, p0, Lcom/itextpdf/signatures/PdfSigner;->preClosed:Z

    return v0
.end method

.method protected populateExistingSignatureFormField(Lcom/itextpdf/forms/PdfAcroForm;)Lcom/itextpdf/forms/PdfSigFieldLock;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 969
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->fieldName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/itextpdf/forms/PdfAcroForm;->getField(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/forms/fields/PdfSignatureFormField;

    .line 970
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSigner;->cryptoDictionary:Lcom/itextpdf/signatures/PdfSignature;

    invoke-virtual {v1}, Lcom/itextpdf/signatures/PdfSignature;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/forms/fields/PdfSignatureFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 972
    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfSignatureFormField;->getSigFieldLockDictionary()Lcom/itextpdf/forms/PdfSigFieldLock;

    move-result-object v0

    if-nez v0, :cond_0

    .line 974
    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSigner;->fieldLock:Lcom/itextpdf/forms/PdfSigFieldLock;

    if-eqz v1, :cond_0

    .line 975
    invoke-virtual {v1}, Lcom/itextpdf/forms/PdfSigFieldLock;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 976
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Lock:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSigner;->fieldLock:Lcom/itextpdf/forms/PdfSigFieldLock;

    invoke-virtual {v1}, Lcom/itextpdf/forms/PdfSigFieldLock;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/forms/fields/PdfSignatureFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 977
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->fieldLock:Lcom/itextpdf/forms/PdfSigFieldLock;

    .line 980
    :cond_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v2, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    iget-object v3, p0, Lcom/itextpdf/signatures/PdfSigner;->appearance:Lcom/itextpdf/signatures/PdfSignatureAppearance;

    invoke-virtual {v3}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->getPageNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/itextpdf/forms/fields/PdfSignatureFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 981
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v2, p0, Lcom/itextpdf/signatures/PdfSigner;->cryptoDictionary:Lcom/itextpdf/signatures/PdfSignature;

    invoke-virtual {v2}, Lcom/itextpdf/signatures/PdfSignature;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/itextpdf/forms/fields/PdfSignatureFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 982
    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfSignatureFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 985
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isNumber()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 986
    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    or-int/lit16 v1, v1, 0x80

    .line 990
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v3, v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p1, v2, v3}, Lcom/itextpdf/forms/fields/PdfSignatureFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 992
    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSigner;->appearance:Lcom/itextpdf/signatures/PdfSignatureAppearance;

    invoke-virtual {v1}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->isInvisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 994
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/forms/fields/PdfSignatureFormField;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/forms/fields/PdfFormField;

    goto :goto_1

    .line 996
    :cond_2
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 997
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v3, p0, Lcom/itextpdf/signatures/PdfSigner;->appearance:Lcom/itextpdf/signatures/PdfSignatureAppearance;

    invoke-virtual {v3}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->getAppearance()Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 998
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->AP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v2, v1}, Lcom/itextpdf/forms/fields/PdfSignatureFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 1001
    :goto_1
    invoke-virtual {p1}, Lcom/itextpdf/forms/fields/PdfSignatureFormField;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    return-object v0
.end method

.method protected preClose(Ljava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 853
    iget-boolean v0, p0, Lcom/itextpdf/signatures/PdfSigner;->preClosed:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    .line 856
    iput-boolean v0, p0, Lcom/itextpdf/signatures/PdfSigner;->preClosed:Z

    .line 857
    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-static {v1, v0}, Lcom/itextpdf/forms/PdfAcroForm;->getAcroForm(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object v1

    .line 858
    new-instance v2, Lcom/itextpdf/signatures/SignatureUtil;

    iget-object v3, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v2, v3}, Lcom/itextpdf/signatures/SignatureUtil;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 859
    invoke-virtual {p0}, Lcom/itextpdf/signatures/PdfSigner;->getFieldName()Ljava/lang/String;

    move-result-object v3

    .line 860
    invoke-virtual {v2, v3}, Lcom/itextpdf/signatures/SignatureUtil;->doesSignatureFieldExist(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x3

    .line 861
    invoke-virtual {v1, v4}, Lcom/itextpdf/forms/PdfAcroForm;->setSignatureFlags(I)Lcom/itextpdf/forms/PdfAcroForm;

    .line 864
    iget-object v5, p0, Lcom/itextpdf/signatures/PdfSigner;->cryptoDictionary:Lcom/itextpdf/signatures/PdfSignature;

    if-eqz v5, :cond_b

    .line 868
    invoke-virtual {v5}, Lcom/itextpdf/signatures/PdfSignature;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-object v6, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    if-eqz v2, :cond_0

    .line 871
    invoke-virtual {p0, v1}, Lcom/itextpdf/signatures/PdfSigner;->populateExistingSignatureFormField(Lcom/itextpdf/forms/PdfAcroForm;)Lcom/itextpdf/forms/PdfSigFieldLock;

    move-result-object v1

    goto :goto_0

    .line 873
    :cond_0
    invoke-virtual {p0, v1, v3}, Lcom/itextpdf/signatures/PdfSigner;->createNewSignatureFormField(Lcom/itextpdf/forms/PdfAcroForm;Ljava/lang/String;)Lcom/itextpdf/forms/PdfSigFieldLock;

    move-result-object v1

    .line 876
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/signatures/PdfSigner;->exclusionLocations:Ljava/util/Map;

    .line 878
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfLiteral;

    const/16 v3, 0x50

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfLiteral;-><init>(I)V

    .line 879
    iget-object v3, p0, Lcom/itextpdf/signatures/PdfSigner;->exclusionLocations:Ljava/util/Map;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->ByteRange:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    iget-object v3, p0, Lcom/itextpdf/signatures/PdfSigner;->cryptoDictionary:Lcom/itextpdf/signatures/PdfSignature;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->ByteRange:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v5, v2}, Lcom/itextpdf/signatures/PdfSignature;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/signatures/PdfSignature;

    .line 881
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 882
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 883
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfLiteral;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v5, v2}, Lcom/itextpdf/kernel/pdf/PdfLiteral;-><init>(I)V

    .line 884
    iget-object v2, p0, Lcom/itextpdf/signatures/PdfSigner;->exclusionLocations:Ljava/util/Map;

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    iget-object v2, p0, Lcom/itextpdf/signatures/PdfSigner;->cryptoDictionary:Lcom/itextpdf/signatures/PdfSignature;

    invoke-virtual {v2, v3, v5}, Lcom/itextpdf/signatures/PdfSignature;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/signatures/PdfSignature;

    goto :goto_1

    .line 887
    :cond_1
    iget p1, p0, Lcom/itextpdf/signatures/PdfSigner;->certificationLevel:I

    if-lez p1, :cond_2

    .line 888
    iget-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->cryptoDictionary:Lcom/itextpdf/signatures/PdfSignature;

    invoke-virtual {p0, p1}, Lcom/itextpdf/signatures/PdfSigner;->addDocMDP(Lcom/itextpdf/signatures/PdfSignature;)V

    :cond_2
    if-eqz v1, :cond_3

    .line 891
    iget-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->cryptoDictionary:Lcom/itextpdf/signatures/PdfSignature;

    invoke-virtual {p0, p1, v1}, Lcom/itextpdf/signatures/PdfSigner;->addFieldMDP(Lcom/itextpdf/signatures/PdfSignature;Lcom/itextpdf/forms/PdfSigFieldLock;)V

    .line 893
    :cond_3
    iget-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->signatureEvent:Lcom/itextpdf/signatures/PdfSigner$ISignatureEvent;

    if-eqz p1, :cond_4

    .line 894
    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSigner;->cryptoDictionary:Lcom/itextpdf/signatures/PdfSignature;

    invoke-interface {p1, v1}, Lcom/itextpdf/signatures/PdfSigner$ISignatureEvent;->getSignatureDictionary(Lcom/itextpdf/signatures/PdfSignature;)V

    .line 897
    :cond_4
    iget p1, p0, Lcom/itextpdf/signatures/PdfSigner;->certificationLevel:I

    if-lez p1, :cond_5

    .line 899
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 900
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DocMDP:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v2, p0, Lcom/itextpdf/signatures/PdfSigner;->cryptoDictionary:Lcom/itextpdf/signatures/PdfSignature;

    invoke-virtual {v2}, Lcom/itextpdf/signatures/PdfSignature;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 901
    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Perms:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, p1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfCatalog;

    .line 902
    iget-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 904
    :cond_5
    iget-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSigner;->cryptoDictionary:Lcom/itextpdf/signatures/PdfSignature;

    invoke-virtual {v1}, Lcom/itextpdf/signatures/PdfSignature;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/pdf/IsoKey;->SIGNATURE:Lcom/itextpdf/kernel/pdf/IsoKey;

    invoke-virtual {p1, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkIsoConformance(Ljava/lang/Object;Lcom/itextpdf/kernel/pdf/IsoKey;)V

    .line 905
    iget-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->cryptoDictionary:Lcom/itextpdf/signatures/PdfSignature;

    invoke-virtual {p1}, Lcom/itextpdf/signatures/PdfSignature;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->flush(Z)V

    .line 906
    iget-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V

    .line 908
    iget-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->exclusionLocations:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->range:[J

    .line 909
    iget-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->exclusionLocations:Ljava/util/Map;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->ByteRange:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfLiteral;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfLiteral;->getPosition()J

    move-result-wide v2

    .line 910
    iget-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->exclusionLocations:Ljava/util/Map;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->ByteRange:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {p1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    iget-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->exclusionLocations:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v5, v0

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/PdfLiteral;

    .line 913
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfLiteral;->getPosition()J

    move-result-wide v7

    .line 914
    iget-object v9, p0, Lcom/itextpdf/signatures/PdfSigner;->range:[J

    add-int/lit8 v10, v5, 0x1

    aput-wide v7, v9, v5

    add-int/lit8 v5, v5, 0x2

    .line 915
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfLiteral;->getBytesCount()I

    move-result v6

    int-to-long v11, v6

    add-long/2addr v11, v7

    aput-wide v11, v9, v10

    goto :goto_2

    .line 917
    :cond_6
    iget-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->range:[J

    array-length v5, p1

    sub-int/2addr v5, v0

    invoke-static {p1, v0, v5}, Ljava/util/Arrays;->sort([JII)V

    .line 918
    :goto_3
    iget-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->range:[J

    array-length v5, p1

    add-int/lit8 v5, v5, -0x2

    if-ge v4, v5, :cond_7

    .line 919
    aget-wide v5, p1, v4

    add-int/lit8 v7, v4, -0x1

    aget-wide v7, p1, v7

    sub-long/2addr v5, v7

    aput-wide v5, p1, v4

    add-int/lit8 v4, v4, 0x2

    goto :goto_3

    .line 921
    :cond_7
    iget-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->tempFile:Ljava/io/File;

    const/16 v4, 0x20

    const/16 v5, 0x5d

    const/16 v6, 0x5b

    if-nez p1, :cond_9

    .line 922
    iget-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->temporaryOS:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->bout:[B

    .line 923
    iget-object v7, p0, Lcom/itextpdf/signatures/PdfSigner;->range:[J

    array-length v8, v7

    sub-int/2addr v8, v0

    array-length p1, p1

    int-to-long v9, p1

    array-length p1, v7

    add-int/lit8 p1, p1, -0x2

    aget-wide v11, v7, p1

    sub-long/2addr v9, v11

    aput-wide v9, v7, v8

    .line 924
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 925
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 926
    invoke-virtual {v0, v6}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(I)V

    move v6, v1

    .line 927
    :goto_4
    iget-object v7, p0, Lcom/itextpdf/signatures/PdfSigner;->range:[J

    array-length v8, v7

    if-ge v6, v8, :cond_8

    .line 928
    aget-wide v8, v7, v6

    invoke-virtual {v0, v8, v9}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeLong(J)Ljava/io/OutputStream;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v7, v4}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 930
    :cond_8
    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(I)V

    .line 931
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v4, p0, Lcom/itextpdf/signatures/PdfSigner;->bout:[B

    long-to-int v2, v2

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    invoke-static {v0, v1, v4, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    .line 934
    :cond_9
    :try_start_0
    invoke-static {p1}, Lcom/itextpdf/commons/utils/FileUtil;->getRandomAccessFile(Ljava/io/File;)Ljava/io/RandomAccessFile;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->raf:Ljava/io/RandomAccessFile;

    .line 935
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    .line 936
    iget-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->range:[J

    array-length v9, p1

    sub-int/2addr v9, v0

    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget-wide v10, p1, v0

    sub-long/2addr v7, v10

    aput-wide v7, p1, v9

    .line 937
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 938
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 939
    invoke-virtual {v0, v6}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(I)V

    move v6, v1

    .line 940
    :goto_5
    iget-object v7, p0, Lcom/itextpdf/signatures/PdfSigner;->range:[J

    array-length v8, v7

    if-ge v6, v8, :cond_a

    .line 941
    aget-wide v8, v7, v6

    invoke-virtual {v0, v8, v9}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeLong(J)Ljava/io/OutputStream;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    invoke-virtual {v7, v4}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 943
    :cond_a
    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write(I)V

    .line 944
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 945
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    invoke-virtual {v0, v2, v1, p1}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_6
    return-void

    :catch_0
    move-exception p1

    .line 948
    :try_start_1
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 952
    :catch_1
    :try_start_2
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 955
    :catch_2
    throw p1

    .line 865
    :cond_b
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "No crypto dictionary defined."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 854
    :cond_c
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Document has been already pre closed."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected processCrl(Ljava/security/cert/Certificate;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/signatures/ICrlClient;",
            ">;)",
            "Ljava/util/Collection<",
            "[B>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 813
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 814
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/signatures/ICrlClient;

    if-nez v2, :cond_1

    goto :goto_0

    .line 818
    :cond_1
    move-object v3, p1

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-interface {v2, v3, v0}, Lcom/itextpdf/signatures/ICrlClient;->getEncoded(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 822
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 824
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method public setCertificationLevel(I)V
    .locals 0

    .line 337
    iput p1, p0, Lcom/itextpdf/signatures/PdfSigner;->certificationLevel:I

    return-void
.end method

.method protected setDocument(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1

    .line 449
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 452
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    return-void

    .line 450
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Document must have reader."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFieldLockDict(Lcom/itextpdf/forms/PdfSigFieldLock;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->fieldLock:Lcom/itextpdf/forms/PdfSigFieldLock;

    return-void
.end method

.method public setFieldName(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_4

    const/16 v0, 0x2e

    .line 402
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_3

    .line 406
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/itextpdf/forms/PdfAcroForm;->getAcroForm(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object v0

    .line 408
    invoke-virtual {v0, p1}, Lcom/itextpdf/forms/PdfAcroForm;->getField(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 409
    invoke-virtual {v0, p1}, Lcom/itextpdf/forms/PdfAcroForm;->getField(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v0

    .line 411
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Sig:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0}, Lcom/itextpdf/forms/fields/PdfFormField;->getFormType()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 416
    invoke-virtual {v0}, Lcom/itextpdf/forms/fields/PdfFormField;->getValue()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    if-nez v1, :cond_0

    .line 420
    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSigner;->appearance:Lcom/itextpdf/signatures/PdfSignatureAppearance;

    invoke-virtual {v1, p1}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->setFieldName(Ljava/lang/String;)Lcom/itextpdf/signatures/PdfSignatureAppearance;

    .line 422
    invoke-virtual {v0}, Lcom/itextpdf/forms/fields/PdfFormField;->getWidgets()Ljava/util/List;

    move-result-object v0

    .line 423
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 424
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    .line 425
    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSigner;->appearance:Lcom/itextpdf/signatures/PdfSignatureAppearance;

    invoke-virtual {p0, v0}, Lcom/itextpdf/signatures/PdfSigner;->getWidgetRectangle(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->setPageRect(Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/signatures/PdfSignatureAppearance;

    .line 426
    iget-object v1, p0, Lcom/itextpdf/signatures/PdfSigner;->appearance:Lcom/itextpdf/signatures/PdfSignatureAppearance;

    invoke-virtual {p0, v0}, Lcom/itextpdf/signatures/PdfSigner;->getWidgetPageNumber(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->setPageNumber(I)Lcom/itextpdf/signatures/PdfSignatureAppearance;

    goto :goto_0

    .line 417
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Field has been already signed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 412
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Field type is not a signature field type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 430
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->fieldName:Ljava/lang/String;

    goto :goto_1

    .line 403
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Field names cannot contain a dot."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method public setOriginalOutputStream(Ljava/io/OutputStream;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->originalOS:Ljava/io/OutputStream;

    return-void
.end method

.method public setSignDate(Ljava/util/Calendar;)V
    .locals 1

    .line 289
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->signDate:Ljava/util/Calendar;

    .line 290
    iget-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->appearance:Lcom/itextpdf/signatures/PdfSignatureAppearance;

    invoke-virtual {v0, p1}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->setSignDate(Ljava/util/Calendar;)Lcom/itextpdf/signatures/PdfSignatureAppearance;

    return-void
.end method

.method public setSignatureEvent(Lcom/itextpdf/signatures/PdfSigner$ISignatureEvent;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/itextpdf/signatures/PdfSigner;->signatureEvent:Lcom/itextpdf/signatures/PdfSigner$ISignatureEvent;

    return-void
.end method

.method public signDetached(Lcom/itextpdf/signatures/IExternalDigest;Lcom/itextpdf/signatures/IExternalSignature;[Ljava/security/cert/Certificate;Ljava/util/Collection;Lcom/itextpdf/signatures/IOcspClient;Lcom/itextpdf/signatures/ITSAClient;ILcom/itextpdf/signatures/PdfSigner$CryptoStandard;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/signatures/IExternalDigest;",
            "Lcom/itextpdf/signatures/IExternalSignature;",
            "[",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/signatures/ICrlClient;",
            ">;",
            "Lcom/itextpdf/signatures/IOcspClient;",
            "Lcom/itextpdf/signatures/ITSAClient;",
            "I",
            "Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v9, 0x0

    .line 505
    move-object v0, v9

    check-cast v0, Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/itextpdf/signatures/PdfSigner;->signDetached(Lcom/itextpdf/signatures/IExternalDigest;Lcom/itextpdf/signatures/IExternalSignature;[Ljava/security/cert/Certificate;Ljava/util/Collection;Lcom/itextpdf/signatures/IOcspClient;Lcom/itextpdf/signatures/ITSAClient;ILcom/itextpdf/signatures/PdfSigner$CryptoStandard;Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;)V

    return-void
.end method

.method public signDetached(Lcom/itextpdf/signatures/IExternalDigest;Lcom/itextpdf/signatures/IExternalSignature;[Ljava/security/cert/Certificate;Ljava/util/Collection;Lcom/itextpdf/signatures/IOcspClient;Lcom/itextpdf/signatures/ITSAClient;ILcom/itextpdf/signatures/PdfSigner$CryptoStandard;Lcom/itextpdf/signatures/SignaturePolicyInfo;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/signatures/IExternalDigest;",
            "Lcom/itextpdf/signatures/IExternalSignature;",
            "[",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/signatures/ICrlClient;",
            ">;",
            "Lcom/itextpdf/signatures/IOcspClient;",
            "Lcom/itextpdf/signatures/ITSAClient;",
            "I",
            "Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;",
            "Lcom/itextpdf/signatures/SignaturePolicyInfo;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 531
    invoke-virtual/range {p9 .. p9}, Lcom/itextpdf/signatures/SignaturePolicyInfo;->toSignaturePolicyIdentifier()Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 530
    invoke-virtual/range {v0 .. v9}, Lcom/itextpdf/signatures/PdfSigner;->signDetached(Lcom/itextpdf/signatures/IExternalDigest;Lcom/itextpdf/signatures/IExternalSignature;[Ljava/security/cert/Certificate;Ljava/util/Collection;Lcom/itextpdf/signatures/IOcspClient;Lcom/itextpdf/signatures/ITSAClient;ILcom/itextpdf/signatures/PdfSigner$CryptoStandard;Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;)V

    return-void
.end method

.method public signDetached(Lcom/itextpdf/signatures/IExternalDigest;Lcom/itextpdf/signatures/IExternalSignature;[Ljava/security/cert/Certificate;Ljava/util/Collection;Lcom/itextpdf/signatures/IOcspClient;Lcom/itextpdf/signatures/ITSAClient;ILcom/itextpdf/signatures/PdfSigner$CryptoStandard;Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/signatures/IExternalDigest;",
            "Lcom/itextpdf/signatures/IExternalSignature;",
            "[",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/signatures/ICrlClient;",
            ">;",
            "Lcom/itextpdf/signatures/IOcspClient;",
            "Lcom/itextpdf/signatures/ITSAClient;",
            "I",
            "Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;",
            "Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    .line 555
    iget-boolean v1, v0, Lcom/itextpdf/signatures/PdfSigner;->closed:Z

    if-nez v1, :cond_d

    .line 559
    iget v1, v0, Lcom/itextpdf/signatures/PdfSigner;->certificationLevel:I

    if-lez v1, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/signatures/PdfSigner;->isDocumentPdf2()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 560
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/signatures/PdfSigner;->documentContainsCertificationOrApprovalSignatures()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 561
    :cond_0
    new-instance v1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v2, "Certification signature creation failed. Document shall not contain any certification or approval signatures before signing with certification signature."

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    const/4 v13, 0x0

    move v1, v13

    const/4 v14, 0x0

    :goto_1
    if-nez v14, :cond_2

    .line 568
    array-length v2, v8

    if-ge v1, v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 569
    aget-object v1, v8, v1

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v3}, Lcom/itextpdf/signatures/PdfSigner;->processCrl(Ljava/security/cert/Certificate;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v14

    move v1, v2

    goto :goto_1

    :cond_2
    if-nez p7, :cond_6

    const/16 v1, 0x2000

    if-eqz v14, :cond_3

    .line 574
    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 575
    array-length v3, v3

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v1, v3

    goto :goto_2

    :cond_3
    if-eqz v9, :cond_4

    add-int/lit16 v1, v1, 0x1060

    :cond_4
    if-eqz p6, :cond_5

    add-int/lit16 v1, v1, 0x1060

    :cond_5
    move v15, v1

    goto :goto_3

    :cond_6
    move/from16 v15, p7

    .line 585
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/signatures/PdfSigner;->getSignatureAppearance()Lcom/itextpdf/signatures/PdfSignatureAppearance;

    move-result-object v1

    .line 586
    aget-object v2, v8, v13

    invoke-virtual {v1, v2}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->setCertificate(Ljava/security/cert/Certificate;)Lcom/itextpdf/signatures/PdfSignatureAppearance;

    .line 587
    sget-object v2, Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;->CADES:Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;

    if-ne v10, v2, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/signatures/PdfSigner;->isDocumentPdf2()Z

    move-result v2

    if-nez v2, :cond_7

    .line 588
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;->ESIC_1_7_EXTENSIONLEVEL2:Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;

    invoke-virtual {v0, v2}, Lcom/itextpdf/signatures/PdfSigner;->addDeveloperExtension(Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;)V

    .line 590
    :cond_7
    invoke-interface/range {p2 .. p2}, Lcom/itextpdf/signatures/IExternalSignature;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v7

    .line 591
    new-instance v2, Lcom/itextpdf/signatures/PdfSignature;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Adobe_PPKLite:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;->CADES:Lcom/itextpdf/signatures/PdfSigner$CryptoStandard;

    if-ne v10, v4, :cond_8

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->ETSI_CAdES_DETACHED:Lcom/itextpdf/kernel/pdf/PdfName;

    goto :goto_4

    :cond_8
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Adbe_pkcs7_detached:Lcom/itextpdf/kernel/pdf/PdfName;

    :goto_4
    invoke-direct {v2, v3, v4}, Lcom/itextpdf/signatures/PdfSignature;-><init>(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 594
    invoke-virtual {v1}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/signatures/PdfSignature;->setReason(Ljava/lang/String;)V

    .line 595
    invoke-virtual {v1}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/signatures/PdfSignature;->setLocation(Ljava/lang/String;)V

    .line 596
    invoke-virtual {v1}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->getSignatureCreator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/signatures/PdfSignature;->setSignatureCreator(Ljava/lang/String;)V

    .line 597
    invoke-virtual {v1}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->getContact()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/itextpdf/signatures/PdfSignature;->setContact(Ljava/lang/String;)V

    .line 598
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfDate;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/signatures/PdfSigner;->getSignDate()Ljava/util/Calendar;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDate;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {v2, v1}, Lcom/itextpdf/signatures/PdfSignature;->setDate(Lcom/itextpdf/kernel/pdf/PdfDate;)V

    .line 599
    iput-object v2, v0, Lcom/itextpdf/signatures/PdfSigner;->cryptoDictionary:Lcom/itextpdf/signatures/PdfSignature;

    .line 601
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 602
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Contents:Lcom/itextpdf/kernel/pdf/PdfName;

    mul-int/lit8 v3, v15, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    invoke-virtual {v0, v1}, Lcom/itextpdf/signatures/PdfSigner;->preClose(Ljava/util/Map;)V

    .line 605
    new-instance v6, Lcom/itextpdf/signatures/PdfPKCS7;

    const/4 v2, 0x0

    move-object v1, v2

    check-cast v1, Ljava/security/PrivateKey;

    const/4 v5, 0x0

    const/16 v16, 0x0

    move-object v1, v6

    move-object/from16 v3, p3

    move-object v4, v7

    move-object v13, v6

    move-object/from16 v6, p1

    move-object v12, v7

    move/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Lcom/itextpdf/signatures/PdfPKCS7;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/signatures/IExternalDigest;Z)V

    if-eqz v11, :cond_9

    .line 607
    invoke-virtual {v13, v11}, Lcom/itextpdf/signatures/PdfPKCS7;->setSignaturePolicy(Lorg/bouncycastle/asn1/esf/SignaturePolicyIdentifier;)V

    .line 609
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/signatures/PdfSigner;->getRangeStream()Ljava/io/InputStream;

    move-result-object v1

    move-object/from16 v2, p1

    .line 610
    invoke-static {v12, v2}, Lcom/itextpdf/signatures/SignUtils;->getMessageDigest(Ljava/lang/String;Lcom/itextpdf/signatures/IExternalDigest;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/itextpdf/signatures/DigestAlgorithms;->digest(Ljava/io/InputStream;Ljava/security/MessageDigest;)[B

    move-result-object v2

    .line 611
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 612
    array-length v1, v8

    const/4 v7, 0x1

    if-le v1, v7, :cond_b

    if-eqz v9, :cond_b

    const/4 v1, 0x0

    .line 613
    :cond_a
    :goto_5
    array-length v3, v8

    sub-int/2addr v3, v7

    if-ge v1, v3, :cond_b

    .line 614
    aget-object v3, v8, v1

    check-cast v3, Ljava/security/cert/X509Certificate;

    add-int/lit8 v1, v1, 0x1

    aget-object v4, v8, v1

    check-cast v4, Ljava/security/cert/X509Certificate;

    const/4 v6, 0x0

    invoke-interface {v9, v3, v4, v6}, Lcom/itextpdf/signatures/IOcspClient;->getEncoded(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_a

    .line 616
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 620
    :cond_b
    invoke-virtual {v13, v2, v10, v5, v14}, Lcom/itextpdf/signatures/PdfPKCS7;->getAuthenticatedAttributeBytes([BLcom/itextpdf/signatures/PdfSigner$CryptoStandard;Ljava/util/Collection;Ljava/util/Collection;)[B

    move-result-object v1

    move-object/from16 v3, p2

    .line 621
    invoke-interface {v3, v1}, Lcom/itextpdf/signatures/IExternalSignature;->sign([B)[B

    move-result-object v1

    .line 622
    invoke-interface/range {p2 .. p2}, Lcom/itextpdf/signatures/IExternalSignature;->getEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v13, v1, v4, v3}, Lcom/itextpdf/signatures/PdfPKCS7;->setExternalDigest([B[BLjava/lang/String;)V

    move-object v1, v13

    move-object/from16 v3, p8

    move-object/from16 v4, p6

    move-object v6, v14

    .line 624
    invoke-virtual/range {v1 .. v6}, Lcom/itextpdf/signatures/PdfPKCS7;->getEncodedPKCS7([BLcom/itextpdf/signatures/PdfSigner$CryptoStandard;Lcom/itextpdf/signatures/ITSAClient;Ljava/util/Collection;Ljava/util/Collection;)[B

    move-result-object v1

    .line 626
    array-length v2, v1

    if-lt v15, v2, :cond_c

    .line 630
    new-array v2, v15, [B

    .line 631
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 633
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 634
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Contents:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {v4, v2}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>([B)V

    invoke-virtual {v4, v7}, Lcom/itextpdf/kernel/pdf/PdfString;->setHexWriting(Z)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 635
    invoke-virtual {v0, v1}, Lcom/itextpdf/signatures/PdfSigner;->close(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 637
    iput-boolean v7, v0, Lcom/itextpdf/signatures/PdfSigner;->closed:Z

    return-void

    .line 627
    :cond_c
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Not enough space"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 556
    :cond_d
    new-instance v1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v2, "This instance of PdfSigner has been already closed."

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public signExternalContainer(Lcom/itextpdf/signatures/IExternalSignatureContainer;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 653
    iget-boolean v0, p0, Lcom/itextpdf/signatures/PdfSigner;->closed:Z

    if-nez v0, :cond_1

    .line 657
    new-instance v0, Lcom/itextpdf/signatures/PdfSignature;

    invoke-direct {v0}, Lcom/itextpdf/signatures/PdfSignature;-><init>()V

    .line 658
    invoke-virtual {p0}, Lcom/itextpdf/signatures/PdfSigner;->getSignatureAppearance()Lcom/itextpdf/signatures/PdfSignatureAppearance;

    move-result-object v1

    .line 659
    invoke-virtual {v1}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/signatures/PdfSignature;->setReason(Ljava/lang/String;)V

    .line 660
    invoke-virtual {v1}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/signatures/PdfSignature;->setLocation(Ljava/lang/String;)V

    .line 661
    invoke-virtual {v1}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->getSignatureCreator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/signatures/PdfSignature;->setSignatureCreator(Ljava/lang/String;)V

    .line 662
    invoke-virtual {v1}, Lcom/itextpdf/signatures/PdfSignatureAppearance;->getContact()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/signatures/PdfSignature;->setContact(Ljava/lang/String;)V

    .line 663
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfDate;

    invoke-virtual {p0}, Lcom/itextpdf/signatures/PdfSigner;->getSignDate()Ljava/util/Calendar;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDate;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {v0, v1}, Lcom/itextpdf/signatures/PdfSignature;->setDate(Lcom/itextpdf/kernel/pdf/PdfDate;)V

    .line 664
    invoke-virtual {v0}, Lcom/itextpdf/signatures/PdfSignature;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-interface {p1, v1}, Lcom/itextpdf/signatures/IExternalSignatureContainer;->modifySigningDictionary(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 665
    iput-object v0, p0, Lcom/itextpdf/signatures/PdfSigner;->cryptoDictionary:Lcom/itextpdf/signatures/PdfSignature;

    .line 667
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 668
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Contents:Lcom/itextpdf/kernel/pdf/PdfName;

    mul-int/lit8 v2, p2, 0x2

    add-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    invoke-virtual {p0, v0}, Lcom/itextpdf/signatures/PdfSigner;->preClose(Ljava/util/Map;)V

    .line 671
    invoke-virtual {p0}, Lcom/itextpdf/signatures/PdfSigner;->getRangeStream()Ljava/io/InputStream;

    move-result-object v0

    .line 672
    invoke-interface {p1, v0}, Lcom/itextpdf/signatures/IExternalSignatureContainer;->sign(Ljava/io/InputStream;)[B

    move-result-object p1

    .line 674
    array-length v0, p1

    if-lt p2, v0, :cond_0

    .line 678
    new-array p2, p2, [B

    .line 679
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 681
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 682
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Contents:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {v1, p2}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>([B)V

    const/4 p2, 0x1

    invoke-virtual {v1, p2}, Lcom/itextpdf/kernel/pdf/PdfString;->setHexWriting(Z)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 683
    invoke-virtual {p0, p1}, Lcom/itextpdf/signatures/PdfSigner;->close(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 685
    iput-boolean p2, p0, Lcom/itextpdf/signatures/PdfSigner;->closed:Z

    return-void

    .line 675
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Not enough space."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 654
    :cond_1
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "This instance of PdfSigner has been already closed."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public timestamp(Lcom/itextpdf/signatures/ITSAClient;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 701
    iget-boolean v0, p0, Lcom/itextpdf/signatures/PdfSigner;->closed:Z

    if-nez v0, :cond_3

    .line 705
    invoke-interface {p1}, Lcom/itextpdf/signatures/ITSAClient;->getTokenSizeEstimate()I

    move-result v0

    .line 706
    invoke-direct {p0}, Lcom/itextpdf/signatures/PdfSigner;->isDocumentPdf2()Z

    move-result v1

    if-nez v1, :cond_0

    .line 707
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;->ESIC_1_7_EXTENSIONLEVEL5:Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;

    invoke-virtual {p0, v1}, Lcom/itextpdf/signatures/PdfSigner;->addDeveloperExtension(Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;)V

    .line 709
    :cond_0
    invoke-virtual {p0, p2}, Lcom/itextpdf/signatures/PdfSigner;->setFieldName(Ljava/lang/String;)V

    .line 711
    new-instance p2, Lcom/itextpdf/signatures/PdfSignature;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Adobe_PPKLite:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->ETSI_RFC3161:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p2, v1, v2}, Lcom/itextpdf/signatures/PdfSignature;-><init>(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 712
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->DocTimeStamp:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, v1, v2}, Lcom/itextpdf/signatures/PdfSignature;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/signatures/PdfSignature;

    .line 713
    iput-object p2, p0, Lcom/itextpdf/signatures/PdfSigner;->cryptoDictionary:Lcom/itextpdf/signatures/PdfSignature;

    .line 715
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 716
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Contents:Lcom/itextpdf/kernel/pdf/PdfName;

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    invoke-virtual {p0, p2}, Lcom/itextpdf/signatures/PdfSigner;->preClose(Ljava/util/Map;)V

    .line 718
    invoke-virtual {p0}, Lcom/itextpdf/signatures/PdfSigner;->getRangeStream()Ljava/io/InputStream;

    move-result-object p2

    .line 719
    invoke-interface {p1}, Lcom/itextpdf/signatures/ITSAClient;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v1

    const/16 v2, 0x1000

    .line 720
    new-array v2, v2, [B

    .line 722
    :goto_0
    invoke-virtual {p2, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_1

    .line 723
    invoke-virtual {v1, v2, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 725
    :cond_1
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p2

    .line 728
    :try_start_0
    invoke-interface {p1, p2}, Lcom/itextpdf/signatures/ITSAClient;->getTimeStampToken([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, v0, 0x2

    .line 733
    array-length v1, p1

    if-lt p2, v1, :cond_2

    .line 736
    new-array p2, v0, [B

    .line 737
    array-length v0, p1

    invoke-static {p1, v4, p2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 739
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 740
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Contents:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {v1, p2}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>([B)V

    const/4 p2, 0x1

    invoke-virtual {v1, p2}, Lcom/itextpdf/kernel/pdf/PdfString;->setHexWriting(Z)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 741
    invoke-virtual {p0, p1}, Lcom/itextpdf/signatures/PdfSigner;->close(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 743
    iput-boolean p2, p0, Lcom/itextpdf/signatures/PdfSigner;->closed:Z

    return-void

    .line 734
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Not enough space"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 730
    new-instance p2, Ljava/security/GeneralSecurityException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 702
    :cond_3
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "This instance of PdfSigner has been already closed."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
