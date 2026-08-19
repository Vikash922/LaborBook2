.class public Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;
.super Ljava/lang/Object;
.source "WmfImageHelper.java"


# static fields
.field public static wmfFontCorrection:F = 0.86f


# instance fields
.field private plainHeight:F

.field private plainWidth:F

.field private wmf:Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/io/image/ImageData;)V
    .locals 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageData;->getOriginalType()Lcom/itextpdf/io/image/ImageType;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/io/image/ImageType;->WMF:Lcom/itextpdf/io/image/ImageType;

    if-ne v0, v1, :cond_0

    .line 81
    check-cast p1, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;->wmf:Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;

    .line 82
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;->processParameters()V

    return-void

    .line 80
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "WMF image expected"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private processParameters()V
    .locals 9

    const/4 v0, 0x0

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;->wmf:Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;->getData()[B

    move-result-object v1

    if-nez v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;->wmf:Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;->getUrl()Ljava/net/URL;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->openStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;->wmf:Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;->getUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 97
    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;->wmf:Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;->getData()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 98
    :try_start_1
    const-string v0, "Byte array"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 100
    :goto_0
    :try_start_2
    new-instance v2, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;

    invoke-direct {v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;-><init>(Ljava/io/InputStream;)V

    .line 101
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readInt()I

    move-result v3

    const v4, -0x65393229

    if-ne v3, v4, :cond_2

    .line 104
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readWord()I

    .line 105
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v1

    .line 106
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v3

    .line 107
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v4

    .line 108
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readShort()I

    move-result v5

    .line 109
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readWord()I

    move-result v2

    .line 110
    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;->wmf:Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;

    const/16 v7, 0x48

    invoke-virtual {v6, v7, v7}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;->setDpi(II)V

    .line 111
    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;->wmf:Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;

    sub-int/2addr v5, v3

    int-to-float v3, v5

    int-to-float v2, v2

    div-float/2addr v3, v2

    const/high16 v5, 0x42900000    # 72.0f

    mul-float/2addr v3, v5

    invoke-virtual {v6, v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;->setHeight(F)V

    .line 112
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;->wmf:Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;

    sub-int/2addr v4, v1

    int-to-float v1, v4

    div-float/2addr v1, v2

    mul-float/2addr v1, v5

    invoke-virtual {v3, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;->setWidth(F)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    .line 118
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_1
    return-void

    .line 102
    :cond_2
    :try_start_4
    new-instance v2, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v3, "{0} is not a valid placeable windows metafile."

    invoke-direct {v2, v3, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_0
    move-exception v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_2

    :catch_1
    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_2

    .line 114
    :catch_2
    :goto_1
    :try_start_5
    new-instance v1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v2, "WMF image exception."

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_2
    if-eqz v0, :cond_3

    .line 118
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 121
    :catch_3
    :cond_3
    throw v1
.end method


# virtual methods
.method public createFormXObject(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .locals 5

    .line 132
    new-instance v0, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;

    new-instance v1, Lcom/itextpdf/kernel/geom/Rectangle;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;->wmf:Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;->wmf:Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;->getHeight()F

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;-><init>(Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 133
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-direct {v1, v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/xobject/PdfFormXObject;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    const/4 p1, 0x0

    .line 137
    :try_start_0
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;->wmf:Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;->getData()[B

    move-result-object v2

    if-nez v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;->wmf:Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;->getUrl()Ljava/net/URL;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->openStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object p1

    goto :goto_0

    .line 141
    :cond_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageHelper;->wmf:Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/wmf/WmfImageData;->getData()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object p1, v2

    .line 143
    :goto_0
    new-instance v2, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;

    invoke-direct {v2, p1, v1}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;-><init>(Ljava/io/InputStream;Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;)V

    .line 144
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/wmf/MetaDo;->readAll()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 150
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 146
    :try_start_2
    new-instance v1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v2, "WMF image exception."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-eqz p1, :cond_2

    .line 150
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 153
    :catch_2
    :cond_2
    throw v0
.end method
