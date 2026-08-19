.class Lcom/itextpdf/io/source/GroupedRandomAccessSource;
.super Ljava/lang/Object;
.source "GroupedRandomAccessSource.java"

# interfaces
.implements Lcom/itextpdf/io/source/IRandomAccessSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;
    }
.end annotation


# instance fields
.field private currentSourceEntry:Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

.field private final size:J

.field private final sources:[Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;


# direct methods
.method public constructor <init>([Lcom/itextpdf/io/source/IRandomAccessSource;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    array-length v0, p1

    new-array v0, v0, [Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

    iput-object v0, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->sources:[Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 80
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 81
    iget-object v3, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->sources:[Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

    new-instance v4, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

    aget-object v5, p1, v2

    invoke-direct {v4, v2, v5, v0, v1}, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;-><init>(ILcom/itextpdf/io/source/IRandomAccessSource;J)V

    aput-object v4, v3, v2

    .line 82
    aget-object v3, p1, v2

    invoke-interface {v3}, Lcom/itextpdf/io/source/IRandomAccessSource;->length()J

    move-result-wide v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    :cond_0
    iput-wide v0, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->size:J

    .line 85
    iget-object v0, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->sources:[Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->currentSourceEntry:Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

    .line 86
    iget-object p1, p1, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;->source:Lcom/itextpdf/io/source/IRandomAccessSource;

    invoke-virtual {p0, p1}, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->sourceInUse(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    return-void
.end method

.method private getSourceEntryForOffset(J)Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    iget-wide v0, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->size:J

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    return-object v1

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->currentSourceEntry:Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

    iget-wide v2, v0, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;->firstByte:J

    cmp-long v0, p1, v2

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->currentSourceEntry:Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

    iget-wide v2, v0, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;->lastByte:J

    cmp-long v0, p1, v2

    if-gtz v0, :cond_1

    .line 119
    iget-object p1, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->currentSourceEntry:Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

    return-object p1

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->currentSourceEntry:Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

    iget-object v0, v0, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;->source:Lcom/itextpdf/io/source/IRandomAccessSource;

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->sourceReleased(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->getStartingSourceIndex(J)I

    move-result v0

    .line 125
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->sources:[Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 126
    aget-object v2, v2, v0

    iget-wide v2, v2, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;->firstByte:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->sources:[Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

    aget-object v2, v2, v0

    iget-wide v2, v2, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;->lastByte:J

    cmp-long v2, p1, v2

    if-gtz v2, :cond_2

    .line 127
    iget-object p1, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->sources:[Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->currentSourceEntry:Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

    .line 128
    iget-object p1, p1, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;->source:Lcom/itextpdf/io/source/IRandomAccessSource;

    invoke-virtual {p0, p1}, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->sourceInUse(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    .line 129
    iget-object p1, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->currentSourceEntry:Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

    return-object p1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    const-string v0, "Closing of one of the grouped sources failed."

    const-class v1, Lcom/itextpdf/io/source/GroupedRandomAccessSource;

    .line 219
    iget-object v2, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->sources:[Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 221
    :try_start_0
    iget-object v6, v6, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;->source:Lcom/itextpdf/io/source/IRandomAccessSource;

    invoke-interface {v6}, Lcom/itextpdf/io/source/IRandomAccessSource;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    .line 230
    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v7

    .line 231
    invoke-interface {v7, v0, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v6

    if-nez v4, :cond_0

    move-object v4, v6

    goto :goto_1

    .line 226
    :cond_0
    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v7

    .line 227
    invoke-interface {v7, v0, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    return-void

    .line 235
    :cond_2
    throw v4
.end method

.method public get(J)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->getSourceEntryForOffset(J)Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 165
    :cond_0
    iget-object v1, v0, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;->source:Lcom/itextpdf/io/source/IRandomAccessSource;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;->offsetN(J)J

    move-result-wide p1

    invoke-interface {v1, p1, p2}, Lcom/itextpdf/io/source/IRandomAccessSource;->get(J)I

    move-result p1

    return p1
.end method

.method public get(J[BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->getSourceEntryForOffset(J)Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 178
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;->offsetN(J)J

    move-result-wide v2

    move v8, p5

    move-wide v3, v2

    :goto_0
    if-lez v8, :cond_4

    if-nez v0, :cond_1

    goto :goto_1

    .line 187
    :cond_1
    iget-object v2, v0, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;->source:Lcom/itextpdf/io/source/IRandomAccessSource;

    invoke-interface {v2}, Lcom/itextpdf/io/source/IRandomAccessSource;->length()J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-lez v2, :cond_2

    goto :goto_1

    .line 190
    :cond_2
    iget-object v2, v0, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;->source:Lcom/itextpdf/io/source/IRandomAccessSource;

    move-object v5, p3

    move v6, p4

    move v7, v8

    invoke-interface/range {v2 .. v7}, Lcom/itextpdf/io/source/IRandomAccessSource;->get(J[BII)I

    move-result v0

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    add-int/2addr p4, v0

    int-to-long v2, v0

    add-long/2addr p1, v2

    sub-int/2addr v8, v0

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->getSourceEntryForOffset(J)Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

    move-result-object v0

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_4
    :goto_1
    if-ne v8, p5, :cond_5

    goto :goto_2

    :cond_5
    sub-int v1, p5, v8

    :goto_2
    return v1
.end method

.method protected getStartingSourceIndex(J)I
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->currentSourceEntry:Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

    iget-wide v0, v0, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;->firstByte:J

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    .line 101
    iget-object p1, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->currentSourceEntry:Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

    iget p1, p1, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;->index:I

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public length()J
    .locals 2

    .line 209
    iget-wide v0, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->size:J

    return-wide v0
.end method

.method protected sourceInUse(Lcom/itextpdf/io/source/IRandomAccessSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected sourceReleased(Lcom/itextpdf/io/source/IRandomAccessSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
