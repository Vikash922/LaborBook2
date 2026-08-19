.class public Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;
.super Ljava/lang/Object;
.source "GetBufferedRandomAccessSource.java"

# interfaces
.implements Lcom/itextpdf/io/source/IRandomAccessSource;


# instance fields
.field private final getBuffer:[B

.field private getBufferEnd:J

.field private getBufferStart:J

.field private final source:Lcom/itextpdf/io/source/IRandomAccessSource;


# direct methods
.method public constructor <init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V
    .locals 6

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 52
    iput-wide v0, p0, Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;->getBufferStart:J

    .line 53
    iput-wide v0, p0, Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;->getBufferEnd:J

    .line 60
    iput-object p1, p0, Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;->source:Lcom/itextpdf/io/source/IRandomAccessSource;

    .line 61
    invoke-interface {p1}, Lcom/itextpdf/io/source/IRandomAccessSource;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    div-long/2addr v2, v4

    const-wide/16 v4, 0x1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide/16 v4, 0x1000

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p1, v2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;->getBuffer:[B

    .line 62
    iput-wide v0, p0, Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;->getBufferStart:J

    .line 63
    iput-wide v0, p0, Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;->getBufferEnd:J

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;->source:Lcom/itextpdf/io/source/IRandomAccessSource;

    invoke-interface {v0}, Lcom/itextpdf/io/source/IRandomAccessSource;->close()V

    const-wide/16 v0, -0x1

    .line 100
    iput-wide v0, p0, Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;->getBufferStart:J

    .line 101
    iput-wide v0, p0, Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;->getBufferEnd:J

    return-void
.end method

.method public get(J)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget-wide v0, p0, Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;->getBufferStart:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;->getBufferEnd:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;->source:Lcom/itextpdf/io/source/IRandomAccessSource;

    iget-object v4, p0, Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;->getBuffer:[B

    const/4 v5, 0x0

    array-length v6, v4

    move-wide v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/itextpdf/io/source/IRandomAccessSource;->get(J[BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return v1

    .line 74
    :cond_1
    iput-wide p1, p0, Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;->getBufferStart:J

    int-to-long v0, v0

    add-long/2addr v0, p1

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 75
    iput-wide v0, p0, Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;->getBufferEnd:J

    .line 77
    :cond_2
    iget-wide v0, p0, Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;->getBufferStart:J

    sub-long/2addr p1, v0

    long-to-int p1, p1

    .line 78
    iget-object p2, p0, Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;->getBuffer:[B

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public get(J[BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;->source:Lcom/itextpdf/io/source/IRandomAccessSource;

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/itextpdf/io/source/IRandomAccessSource;->get(J[BII)I

    move-result p1

    return p1
.end method

.method public length()J
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/itextpdf/io/source/GetBufferedRandomAccessSource;->source:Lcom/itextpdf/io/source/IRandomAccessSource;

    invoke-interface {v0}, Lcom/itextpdf/io/source/IRandomAccessSource;->length()J

    move-result-wide v0

    return-wide v0
.end method
