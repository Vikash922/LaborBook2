.class public Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;
.super Ljava/lang/Object;
.source "Jbig2SegmentReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/codec/Jbig2SegmentReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Jbig2Page"
.end annotation


# instance fields
.field public final page:I

.field public pageBitmapHeight:I

.field public pageBitmapWidth:I

.field private final segs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;",
            ">;"
        }
    .end annotation
.end field

.field private final sr:Lcom/itextpdf/io/codec/Jbig2SegmentReader;


# direct methods
.method public constructor <init>(ILcom/itextpdf/io/codec/Jbig2SegmentReader;)V
    .locals 1

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;->segs:Ljava/util/Map;

    const/4 v0, -0x1

    .line 157
    iput v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;->pageBitmapWidth:I

    .line 158
    iput v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;->pageBitmapHeight:I

    .line 161
    iput p1, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;->page:I

    .line 162
    iput-object p2, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;->sr:Lcom/itextpdf/io/codec/Jbig2SegmentReader;

    return-void
.end method


# virtual methods
.method public addSegment(Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;)V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;->segs:Ljava/util/Map;

    iget v1, p1, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->segmentNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getData(Z)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 176
    iget-object v1, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;->segs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 177
    iget-object v3, p0, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Page;->segs:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;

    if-eqz p1, :cond_1

    .line 181
    iget v3, v2, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->type:I

    const/16 v4, 0x33

    if-eq v3, v4, :cond_0

    iget v3, v2, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->type:I

    const/16 v4, 0x31

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    .line 188
    iget-object v3, v2, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->headerData:[B

    invoke-static {v3}, Lcom/itextpdf/io/codec/Jbig2SegmentReader;->copyByteArray([B)[B

    move-result-object v3

    .line 189
    iget-boolean v4, v2, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->page_association_size:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 190
    iget v4, v2, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->page_association_offset:I

    const/4 v6, 0x0

    aput-byte v6, v3, v4

    .line 191
    iget v4, v2, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->page_association_offset:I

    add-int/2addr v4, v5

    aput-byte v6, v3, v4

    .line 192
    iget v4, v2, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->page_association_offset:I

    add-int/lit8 v4, v4, 0x2

    aput-byte v6, v3, v4

    .line 193
    iget v4, v2, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->page_association_offset:I

    add-int/lit8 v4, v4, 0x3

    aput-byte v5, v3, v4

    goto :goto_1

    .line 195
    :cond_2
    iget v4, v2, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->page_association_offset:I

    aput-byte v5, v3, v4

    .line 197
    :goto_1
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_2

    .line 199
    :cond_3
    iget-object v3, v2, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->headerData:[B

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 201
    :goto_2
    iget-object v2, v2, Lcom/itextpdf/io/codec/Jbig2SegmentReader$Jbig2Segment;->data:[B

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    .line 203
    :cond_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 204
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method
