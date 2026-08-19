.class Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;
.super Ljava/lang/Object;
.source "GroupedRandomAccessSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/source/GroupedRandomAccessSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SourceEntry"
.end annotation


# instance fields
.field final firstByte:J

.field final index:I

.field final lastByte:J

.field final source:Lcom/itextpdf/io/source/IRandomAccessSource;


# direct methods
.method public constructor <init>(ILcom/itextpdf/io/source/IRandomAccessSource;J)V
    .locals 0

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput p1, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;->index:I

    .line 268
    iput-object p2, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;->source:Lcom/itextpdf/io/source/IRandomAccessSource;

    .line 269
    iput-wide p3, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;->firstByte:J

    .line 270
    invoke-interface {p2}, Lcom/itextpdf/io/source/IRandomAccessSource;->length()J

    move-result-wide p1

    add-long/2addr p3, p1

    const-wide/16 p1, 0x1

    sub-long/2addr p3, p1

    iput-wide p3, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;->lastByte:J

    return-void
.end method


# virtual methods
.method public offsetN(J)J
    .locals 2

    .line 279
    iget-wide v0, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;->firstByte:J

    sub-long/2addr p1, v0

    return-wide p1
.end method
