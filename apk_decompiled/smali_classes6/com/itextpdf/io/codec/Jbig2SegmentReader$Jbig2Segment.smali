.class public Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;
.super Ljava/lang/Object;
.source "Jbig2SegmentReader.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/codec/Jbig2SegmentReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Jbig2Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;",
        ">;"
    }
.end annotation


# instance fields
.field public countOfReferredToSegments:I

.field public data:[B

.field public dataLength:J

.field public deferredNonRetain:Z

.field public headerData:[B

.field public page:I

.field public page_association_offset:I

.field public page_association_size:Z

.field public referredToSegmentNumbers:[I

.field public final segmentNumber:I

.field public segmentRetentionFlags:[Z

.field public type:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 127
    iput-wide v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->dataLength:J

    const/4 v0, -0x1

    .line 128
    iput v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->page:I

    const/4 v1, 0x0

    .line 129
    iput-object v1, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->referredToSegmentNumbers:[I

    .line 130
    iput-object v1, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->segmentRetentionFlags:[Z

    .line 131
    iput v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->type:I

    const/4 v2, 0x0

    .line 132
    iput-boolean v2, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->deferredNonRetain:Z

    .line 133
    iput v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->countOfReferredToSegments:I

    .line 134
    iput-object v1, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->data:[B

    .line 135
    iput-object v1, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->headerData:[B

    .line 136
    iput-boolean v2, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->page_association_size:Z

    .line 137
    iput v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->page_association_offset:I

    .line 140
    iput p1, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->segmentNumber:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;)I
    .locals 1

    .line 144
    iget v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->segmentNumber:I

    iget p1, p1, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->segmentNumber:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 124
    check-cast p1, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;

    invoke-virtual {p0, p1}, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->compareTo(Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;)I

    move-result p1

    return p1
.end method
