.class public Lcom/itextpdf/io/font/otf/OpenTypeFeature;
.super Ljava/lang/Object;
.source "OpenTypeFeature.java"


# instance fields
.field private openTypeReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

.field private records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/FeatureRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/itextpdf/io/font/otf/OpenTypeFeature;->openTypeReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeFeature;->records:Ljava/util/List;

    .line 56
    iget-object v0, p1, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 57
    invoke-virtual {p1, p2}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readTagAndLocations(I)[Lcom/itextpdf/io/font/otf/TagAndLocation;

    move-result-object p2

    .line 58
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 60
    iget-object v3, p1, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget v4, v2, Lcom/itextpdf/io/font/otf/TagAndLocation;->location:I

    int-to-long v4, v4

    const-wide/16 v6, 0x2

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 61
    iget-object v3, p1, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v3

    .line 62
    new-instance v4, Lcom/itextpdf/io/font/otf/FeatureRecord;

    invoke-direct {v4}, Lcom/itextpdf/io/font/otf/FeatureRecord;-><init>()V

    .line 63
    iget-object v2, v2, Lcom/itextpdf/io/font/otf/TagAndLocation;->tag:Ljava/lang/String;

    iput-object v2, v4, Lcom/itextpdf/io/font/otf/FeatureRecord;->tag:Ljava/lang/String;

    .line 64
    invoke-virtual {p1, v3}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(I)[I

    move-result-object v2

    iput-object v2, v4, Lcom/itextpdf/io/font/otf/FeatureRecord;->lookups:[I

    .line 65
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/OpenTypeFeature;->records:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getRecord(I)Lcom/itextpdf/io/font/otf/FeatureRecord;
    .locals 1

    if-ltz p1, :cond_1

    .line 74
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeFeature;->records:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeFeature;->records:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/io/font/otf/FeatureRecord;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/FeatureRecord;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/OpenTypeFeature;->records:Ljava/util/List;

    return-object v0
.end method
