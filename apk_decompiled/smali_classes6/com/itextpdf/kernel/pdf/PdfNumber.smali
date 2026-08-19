.class public Lcom/itextpdf/kernel/pdf/PdfNumber;
.super Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;
.source "PdfNumber.java"


# instance fields
.field private isDouble:Z

.field private value:D


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;-><init>()V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;-><init>()V

    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->setValue(D)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;-><init>()V

    .line 86
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->setValue(I)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 95
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;-><init>([B)V

    const/4 p1, 0x1

    .line 96
    iput-boolean p1, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->isDouble:Z

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 97
    iput-wide v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->value:D

    return-void
.end method


# virtual methods
.method protected copyContent(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/utils/ICopyFilter;)V
    .locals 0

    .line 263
    invoke-super {p0, p1, p2, p3}, Lcom/itextpdf/kernel/pdf/PdfPrimitiveObject;->copyContent(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/utils/ICopyFilter;)V

    .line 264
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    .line 265
    iget-wide p2, p1, Lcom/itextpdf/kernel/pdf/PdfNumber;->value:D

    iput-wide p2, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->value:D

    .line 266
    iget-boolean p1, p1, Lcom/itextpdf/kernel/pdf/PdfNumber;->isDouble:Z

    iput-boolean p1, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->isDouble:Z

    return-void
.end method

.method public decrement()V
    .locals 4

    .line 194
    iget-wide v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->value:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->value:D

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->setValue(D)V

    return-void
.end method

.method public doubleValue()D
    .locals 2

    .line 126
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->getValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 213
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 216
    :cond_1
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->getValue()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->getValue()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public floatValue()F
    .locals 2

    .line 135
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->getValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method protected generateContent()V
    .locals 2

    .line 245
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->isDouble:Z

    if-eqz v0, :cond_0

    .line 246
    iget-wide v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->value:D

    invoke-static {v0, v1}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(D)[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->content:[B

    goto :goto_0

    .line 248
    :cond_0
    iget-wide v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->value:D

    double-to-int v0, v0

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->content:[B

    :goto_0
    return-void
.end method

.method protected generateValue()V
    .locals 3

    .line 254
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->content:[B

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->value:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 256
    iput-wide v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->value:D

    :goto_0
    const/4 v0, 0x1

    .line 258
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->isDouble:Z

    return-void
.end method

.method public getType()B
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getValue()D
    .locals 2

    .line 115
    iget-wide v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->generateValue()V

    .line 117
    :cond_0
    iget-wide v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->value:D

    return-wide v0
.end method

.method public hasDecimalPoint()Z
    .locals 2

    .line 225
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 230
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->getValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public increment()V
    .locals 4

    .line 187
    iget-wide v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->value:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->value:D

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->setValue(D)V

    return-void
.end method

.method public intValue()I
    .locals 4

    .line 154
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->getValue()D

    move-result-wide v0

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const v0, 0x7fffffff

    return v0

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->getValue()D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method protected isDoubleNumber()Z
    .locals 1

    .line 240
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->isDouble:Z

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 144
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->getValue()D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method protected newInstance()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 236
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>()V

    return-object v0
.end method

.method public setValue(D)V
    .locals 0

    .line 178
    iput-wide p1, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->value:D

    const/4 p1, 0x1

    .line 179
    iput-boolean p1, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->isDouble:Z

    const/4 p1, 0x0

    .line 180
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->content:[B

    return-void
.end method

.method public setValue(I)V
    .locals 2

    int-to-double v0, p1

    .line 167
    iput-wide v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->value:D

    const/4 p1, 0x0

    .line 168
    iput-boolean p1, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->isDouble:Z

    const/4 p1, 0x0

    .line 169
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->content:[B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->content:[B

    if-eqz v0, :cond_0

    .line 200
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->content:[B

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 201
    :cond_0
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumber;->isDouble:Z

    if-eqz v0, :cond_1

    .line 202
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->getValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(D)[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 204
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(I)[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
