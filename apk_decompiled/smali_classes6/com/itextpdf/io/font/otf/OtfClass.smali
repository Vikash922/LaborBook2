.class public Lcom/itextpdf/io/font/otf/OtfClass;
.super Ljava/lang/Object;
.source "OtfClass.java"


# static fields
.field public static final GLYPH_BASE:I = 0x1

.field public static final GLYPH_LIGATURE:I = 0x2

.field public static final GLYPH_MARK:I = 0x3


# instance fields
.field private mapClass:Lcom/itextpdf/io/util/IntHashtable;


# direct methods
.method private constructor <init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/itextpdf/io/util/IntHashtable;

    invoke-direct {v0}, Lcom/itextpdf/io/util/IntHashtable;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/otf/OtfClass;->mapClass:Lcom/itextpdf/io/util/IntHashtable;

    int-to-long v0, p2

    .line 65
    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 66
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 68
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result p2

    .line 69
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v0

    add-int/2addr v0, p2

    :goto_0
    if-ge p2, v0, :cond_2

    .line 72
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    .line 73
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/OtfClass;->mapClass:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v2, p2, v1}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 76
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result p2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_2

    .line 78
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    .line 79
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v2

    .line 80
    invoke-virtual {p1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v3

    :goto_2
    if-gt v1, v2, :cond_1

    .line 82
    iget-object v4, p0, Lcom/itextpdf/io/font/otf/OtfClass;->mapClass:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v4, v1, v3}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void

    .line 86
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid class format "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static create(Lcom/itextpdf/io/source/RandomAccessFileOrArray;I)Lcom/itextpdf/io/font/otf/OtfClass;
    .locals 1

    .line 93
    :try_start_0
    new-instance v0, Lcom/itextpdf/io/font/otf/OtfClass;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/io/font/otf/OtfClass;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 95
    const-class p1, Lcom/itextpdf/io/font/otf/OtfClass;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    .line 96
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "OpenType GDEF table error: {0}"

    invoke-static {v0, p0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getOtfClass(I)I
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OtfClass;->mapClass:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/util/IntHashtable;->get(I)I

    move-result p1

    return p1
.end method

.method public getOtfClass(IZ)I
    .locals 0

    if-eqz p2, :cond_1

    .line 116
    iget-object p2, p0, Lcom/itextpdf/io/font/otf/OtfClass;->mapClass:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {p2, p1}, Lcom/itextpdf/io/util/IntHashtable;->containsKey(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 117
    iget-object p2, p0, Lcom/itextpdf/io/font/otf/OtfClass;->mapClass:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {p2, p1}, Lcom/itextpdf/io/util/IntHashtable;->get(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1

    .line 122
    :cond_1
    iget-object p2, p0, Lcom/itextpdf/io/font/otf/OtfClass;->mapClass:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {p2, p1}, Lcom/itextpdf/io/util/IntHashtable;->get(I)I

    move-result p1

    return p1
.end method

.method public hasClass(I)Z
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OtfClass;->mapClass:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/util/IntHashtable;->containsKey(I)Z

    move-result p1

    return p1
.end method

.method public isMarkOtfClass(I)Z
    .locals 1

    .line 107
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/otf/OtfClass;->hasClass(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/otf/OtfClass;->getOtfClass(I)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
