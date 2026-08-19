.class public Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;
.super Ljava/lang/Object;
.source "InputMeta.java"


# instance fields
.field in:Ljava/io/InputStream;

.field length:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->in:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->length:I

    return v0
.end method

.method public readByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->length:I

    .line 121
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readColor()Lcom/itextpdf/kernel/colors/Color;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readByte()I

    move-result v0

    .line 152
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readByte()I

    move-result v1

    .line 153
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readByte()I

    move-result v2

    .line 154
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readByte()I

    .line 155
    new-instance v3, Lcom/itextpdf/kernel/colors/DeviceRgb;

    invoke-direct {v3, v0, v1, v2}, Lcom/itextpdf/kernel/colors/DeviceRgb;-><init>(III)V

    return-object v3
.end method

.method public readInt()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->length:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->length:I

    .line 105
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    .line 109
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 110
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    return v0
.end method

.method public readShort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->readWord()I

    move-result v0

    const/16 v1, 0x7fff

    if-le v0, v1, :cond_0

    const/high16 v1, 0x10000

    sub-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public readWord()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->length:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->length:I

    .line 78
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public skip(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->length:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->length:I

    .line 132
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/wmf/InputMeta;->in:Ljava/io/InputStream;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/itextpdf/io/util/StreamUtil;->skip(Ljava/io/InputStream;J)V

    return-void
.end method
