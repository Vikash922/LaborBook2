.class public Lcom/itextpdf/io/source/WindowRandomAccessSource;
.super Ljava/lang/Object;
.source "WindowRandomAccessSource.java"

# interfaces
.implements Lcom/itextpdf/io/source/IRandomAccessSource;


# instance fields
.field private final length:J

.field private final offset:J

.field private final source:Lcom/itextpdf/io/source/IRandomAccessSource;


# direct methods
.method public constructor <init>(Lcom/itextpdf/io/source/IRandomAccessSource;J)V
    .locals 8

    .line 73
    invoke-interface {p1}, Lcom/itextpdf/io/source/IRandomAccessSource;->length()J

    move-result-wide v0

    sub-long v6, v0, p2

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/itextpdf/io/source/WindowRandomAccessSource;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/io/source/IRandomAccessSource;JJ)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/itextpdf/io/source/WindowRandomAccessSource;->source:Lcom/itextpdf/io/source/IRandomAccessSource;

    .line 84
    iput-wide p2, p0, Lcom/itextpdf/io/source/WindowRandomAccessSource;->offset:J

    .line 85
    iput-wide p4, p0, Lcom/itextpdf/io/source/WindowRandomAccessSource;->length:J

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/itextpdf/io/source/WindowRandomAccessSource;->source:Lcom/itextpdf/io/source/IRandomAccessSource;

    invoke-interface {v0}, Lcom/itextpdf/io/source/IRandomAccessSource;->close()V

    return-void
.end method

.method public get(J)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-wide v0, p0, Lcom/itextpdf/io/source/WindowRandomAccessSource;->length:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/source/WindowRandomAccessSource;->source:Lcom/itextpdf/io/source/IRandomAccessSource;

    iget-wide v1, p0, Lcom/itextpdf/io/source/WindowRandomAccessSource;->offset:J

    add-long/2addr v1, p1

    invoke-interface {v0, v1, v2}, Lcom/itextpdf/io/source/IRandomAccessSource;->get(J)I

    move-result p1

    return p1
.end method

.method public get(J[BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget-wide v0, p0, Lcom/itextpdf/io/source/WindowRandomAccessSource;->length:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    int-to-long v2, p5

    sub-long/2addr v0, p1

    .line 105
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 106
    iget-object v2, p0, Lcom/itextpdf/io/source/WindowRandomAccessSource;->source:Lcom/itextpdf/io/source/IRandomAccessSource;

    iget-wide v3, p0, Lcom/itextpdf/io/source/WindowRandomAccessSource;->offset:J

    add-long/2addr v3, p1

    long-to-int v7, v0

    move-object v5, p3

    move v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/itextpdf/io/source/IRandomAccessSource;->get(J[BII)I

    move-result p1

    return p1
.end method

.method public length()J
    .locals 2

    .line 114
    iget-wide v0, p0, Lcom/itextpdf/io/source/WindowRandomAccessSource;->length:J

    return-wide v0
.end method
