.class public final Lcom/itextpdf/kernel/font/Type3Glyph;
.super Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
.source "Type3Glyph.java"


# static fields
.field private static final D_0_STR:Ljava/lang/String; = "d0\n"

.field private static final D_1_STR:Ljava/lang/String; = "d1\n"

.field private static final d0:[B

.field private static final d1:[B


# instance fields
.field private isColor:Z

.field private llx:F

.field private lly:F

.field private urx:F

.field private ury:F

.field private wx:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-string v0, "d0\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/font/Type3Glyph;->d0:[B

    .line 64
    const-string v0, "d1\n"

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/font/Type3Glyph;->d1:[B

    return-void
.end method

.method constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;FFFFFZ)V
    .locals 7

    .line 79
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>()V

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    const/4 p1, 0x0

    .line 71
    iput-boolean p1, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->isColor:Z

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    .line 80
    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/kernel/font/Type3Glyph;->writeMetrics(FFFFFZ)V

    return-void
.end method

.method constructor <init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, v0, p2}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    const/4 p2, 0x0

    .line 71
    iput-boolean p2, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->isColor:Z

    .line 91
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object p2

    if-eqz p2, :cond_0

    .line 92
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/font/Type3Glyph;->fillBBFromBytes([B)V

    :cond_0
    return-void
.end method

.method private fillBBFromBytes([B)V
    .locals 7

    .line 199
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 200
    const-string p1, "d0\n"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    .line 201
    const-string v1, "d1\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    .line 202
    const-string v3, " "

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eq p1, v6, :cond_0

    .line 203
    iput-boolean v4, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->isColor:Z

    sub-int/2addr p1, v4

    .line 204
    invoke-virtual {v0, v5, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 205
    array-length v0, p1

    if-ne v0, v2, :cond_1

    .line 206
    aget-object p1, p1, v5

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->wx:F

    goto :goto_0

    :cond_0
    if-eq v1, v6, :cond_1

    .line 208
    iput-boolean v5, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->isColor:Z

    sub-int/2addr v1, v4

    .line 209
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 210
    array-length v0, p1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 211
    aget-object v0, p1, v5

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->wx:F

    .line 212
    aget-object v0, p1, v2

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->llx:F

    const/4 v0, 0x3

    .line 213
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->lly:F

    const/4 v0, 0x4

    .line 214
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->urx:F

    const/4 v0, 0x5

    .line 215
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->ury:F

    :cond_1
    :goto_0
    return-void
.end method

.method private writeMetrics(FFFFFZ)V
    .locals 1

    .line 141
    iput-boolean p6, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->isColor:Z

    .line 142
    iput p1, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->wx:F

    .line 144
    iput p2, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->llx:F

    .line 145
    iput p3, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->lly:F

    .line 146
    iput p4, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->urx:F

    .line 147
    iput p5, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->ury:F

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 150
    iget-object p2, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object p2

    .line 151
    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 152
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 154
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 155
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object p2, Lcom/itextpdf/kernel/font/Type3Glyph;->d0:[B

    .line 156
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    goto :goto_0

    .line 158
    :cond_0
    iget-object p6, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->contentStream:Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {p6}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object p6

    .line 159
    invoke-virtual {p6, p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 160
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 162
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 163
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 164
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 165
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 166
    invoke-virtual {p1, p3}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 167
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 168
    invoke-virtual {p1, p4}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 169
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 170
    invoke-virtual {p1, p5}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeFloat(F)Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 171
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeSpace()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    sget-object p2, Lcom/itextpdf/kernel/font/Type3Glyph;->d1:[B

    .line 172
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->writeBytes([B)Ljava/io/OutputStream;

    :goto_0
    return-void
.end method


# virtual methods
.method public addImageWithTransformationMatrix(Lcom/itextpdf/io/image/ImageData;FFFFFFZ)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .locals 2

    .line 192
    iget-boolean v0, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->isColor:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageData;->isMask()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageData;->getBpc()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/itextpdf/io/image/ImageData;->getBpc()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string p2, "Not colorized type3 fonts accept only mask images."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 195
    :cond_1
    :goto_0
    invoke-super/range {p0 .. p8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->addImageWithTransformationMatrix(Lcom/itextpdf/io/image/ImageData;FFFFFFZ)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    move-result-object p1

    return-object p1
.end method

.method public getLlx()F
    .locals 1

    .line 101
    iget v0, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->llx:F

    return v0
.end method

.method public getLly()F
    .locals 1

    .line 105
    iget v0, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->lly:F

    return v0
.end method

.method public getUrx()F
    .locals 1

    .line 109
    iget v0, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->urx:F

    return v0
.end method

.method public getUry()F
    .locals 1

    .line 113
    iget v0, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->ury:F

    return v0
.end method

.method public getWx()F
    .locals 1

    .line 97
    iget v0, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->wx:F

    return v0
.end method

.method public isColor()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/itextpdf/kernel/font/Type3Glyph;->isColor:Z

    return v0
.end method
