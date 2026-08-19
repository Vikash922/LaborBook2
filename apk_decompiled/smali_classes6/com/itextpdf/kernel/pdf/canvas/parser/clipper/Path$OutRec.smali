.class Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;
.super Ljava/lang/Object;
.source "Path.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OutRec"
.end annotation


# instance fields
.field Idx:I

.field bottomPt:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

.field firstLeft:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

.field isHole:Z

.field isOpen:Z

.field polyNode:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

.field protected pts:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public area()D
    .locals 9

    .line 238
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->pts:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 244
    :cond_0
    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v5

    add-long/2addr v3, v5

    long-to-double v3, v3

    iget-object v5, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-double v5, v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    .line 245
    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 247
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->pts:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    if-ne v0, v3, :cond_0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v1, v3

    return-wide v1
.end method

.method public fixHoleLinkage()V
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->firstLeft:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isHole:Z

    iget-boolean v2, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isHole:Z

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->pts:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 259
    iget-boolean v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isHole:Z

    iget-boolean v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isHole:Z

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->pts:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    if-nez v1, :cond_2

    .line 260
    :cond_1
    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->firstLeft:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    goto :goto_0

    .line 262
    :cond_2
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->firstLeft:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    :cond_3
    :goto_1
    return-void
.end method

.method public getPoints()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->pts:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    return-object v0
.end method

.method public setPoints(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->pts:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    return-void
.end method
