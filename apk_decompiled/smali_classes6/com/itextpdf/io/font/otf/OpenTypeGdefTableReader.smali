.class public Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;
.super Ljava/lang/Object;
.source "OpenTypeGdefTableReader.java"


# static fields
.field static final FLAG_IGNORE_BASE:I = 0x2

.field static final FLAG_IGNORE_LIGATURE:I = 0x4

.field static final FLAG_IGNORE_MARK:I = 0x8


# instance fields
.field private glyphClass:Lcom/itextpdf/io/font/otf/OtfClass;

.field private markAttachmentClass:Lcom/itextpdf/io/font/otf/OtfClass;

.field private final rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

.field private final tableLocation:I


# direct methods
.method public constructor <init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;I)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    .line 61
    iput p2, p0, Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;->tableLocation:I

    return-void
.end method


# virtual methods
.method public getGlyphClassTable()Lcom/itextpdf/io/font/otf/OtfClass;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;->glyphClass:Lcom/itextpdf/io/font/otf/OtfClass;

    return-object v0
.end method

.method public isSkip(II)Z
    .locals 5

    .line 85
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;->glyphClass:Lcom/itextpdf/io/font/otf/OtfClass;

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    and-int/lit8 v3, p2, 0xe

    if-eqz v3, :cond_2

    .line 86
    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/otf/OtfClass;->getOtfClass(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_0

    return v2

    :cond_0
    if-ne v0, v1, :cond_1

    and-int/lit8 v3, p2, 0x8

    if-eqz v3, :cond_1

    return v2

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_2

    return v2

    :cond_2
    shr-int/lit8 p2, p2, 0x8

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    .line 102
    iget-object v3, p0, Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;->glyphClass:Lcom/itextpdf/io/font/otf/OtfClass;

    if-eqz v3, :cond_5

    .line 103
    invoke-virtual {v3, p1}, Lcom/itextpdf/io/font/otf/OtfClass;->getOtfClass(I)I

    move-result v3

    .line 105
    iget-object v4, p0, Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;->markAttachmentClass:Lcom/itextpdf/io/font/otf/OtfClass;

    if-eqz v4, :cond_3

    invoke-virtual {v4, p1}, Lcom/itextpdf/io/font/otf/OtfClass;->getOtfClass(I)I

    move-result p1

    goto :goto_0

    :cond_3
    move p1, v0

    :goto_0
    if-ne v3, v1, :cond_4

    if-eq p1, p2, :cond_4

    goto :goto_1

    :cond_4
    move v2, v0

    :goto_1
    return v2

    :cond_5
    return v0
.end method

.method public readTable()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;->tableLocation:I

    if-lez v0, :cond_1

    .line 66
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 68
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedInt()J

    .line 69
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v0

    .line 71
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    .line 73
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    .line 74
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    if-lez v0, :cond_0

    .line 76
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget v3, p0, Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;->tableLocation:I

    add-int/2addr v0, v3

    invoke-static {v2, v0}, Lcom/itextpdf/io/font/otf/OtfClass;->create(Lcom/itextpdf/io/source/RandomAccessFileOrArray;I)Lcom/itextpdf/io/font/otf/OtfClass;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;->glyphClass:Lcom/itextpdf/io/font/otf/OtfClass;

    :cond_0
    if-lez v1, :cond_1

    .line 79
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget v2, p0, Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;->tableLocation:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/itextpdf/io/font/otf/OtfClass;->create(Lcom/itextpdf/io/source/RandomAccessFileOrArray;I)Lcom/itextpdf/io/font/otf/OtfClass;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;->markAttachmentClass:Lcom/itextpdf/io/font/otf/OtfClass;

    :cond_1
    return-void
.end method
