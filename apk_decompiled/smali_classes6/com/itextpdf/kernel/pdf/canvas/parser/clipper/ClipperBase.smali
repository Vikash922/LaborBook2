.class public abstract Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;
.super Ljava/lang/Object;
.source "ClipperBase.java"

# interfaces
.implements Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;
    }
.end annotation


# static fields
.field private static final HI_RANGE:J = 0x3fffffffffffffffL

.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final LOW_RANGE:J = 0x3fffffffL


# instance fields
.field protected currentLM:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;

.field private final edges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;",
            ">;>;"
        }
    .end annotation
.end field

.field protected hasOpenPaths:Z

.field protected minimaList:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;

.field protected final preserveCollinear:Z

.field protected useFullRange:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 109
    const-class v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-boolean p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->preserveCollinear:Z

    const/4 p1, 0x0

    .line 114
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->minimaList:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;

    .line 115
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->currentLM:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;

    const/4 p1, 0x0

    .line 116
    iput-boolean p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->hasOpenPaths:Z

    .line 117
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->edges:Ljava/util/List;

    return-void
.end method

.method private disposeLocalMinimaList()V
    .locals 1

    .line 336
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->minimaList:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;

    .line 339
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->minimaList:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 341
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->currentLM:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;

    return-void
.end method

.method private static initEdge(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 55
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 56
    new-instance p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-direct {p1, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->setCurrent(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    const/4 p1, -0x1

    .line 57
    iput p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    return-void
.end method

.method private static initEdge2(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;)V
    .locals 4

    .line 61
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v0

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 62
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->setBot(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    .line 63
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->setTop(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    goto :goto_0

    .line 66
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->setTop(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    .line 67
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->setBot(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    .line 69
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->updateDeltaX()V

    .line 70
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->polyTyp:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    return-void
.end method

.method private insertLocalMinima(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;)V
    .locals 5

    .line 345
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->minimaList:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;

    if-nez v0, :cond_0

    .line 346
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->minimaList:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;

    goto :goto_1

    .line 348
    :cond_0
    iget-wide v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->y:J

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->minimaList:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;

    iget-wide v2, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->y:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->minimaList:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;

    iput-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;

    .line 350
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->minimaList:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;

    goto :goto_1

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->minimaList:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;

    .line 354
    :goto_0
    iget-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;

    if-eqz v1, :cond_2

    iget-wide v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->y:J

    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;

    iget-wide v3, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->y:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 355
    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;

    goto :goto_0

    .line 357
    :cond_2
    iget-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;

    iput-object v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;

    .line 358
    iput-object p1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;

    :goto_1
    return-void
.end method

.method protected static parseFirstLeft(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;
    .locals 1

    :goto_0
    if-eqz p0, :cond_0

    .line 501
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->getPoints()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v0

    if-nez v0, :cond_0

    .line 502
    iget-object p0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->firstLeft:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private processBound(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Z)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;
    .locals 8

    .line 378
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    const-wide v1, -0x381006cc38732053L    # -3.4E38

    const/4 v3, -0x2

    if-ne v0, v3, :cond_7

    move-object v0, p1

    if-eqz p2, :cond_1

    .line 383
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v3

    iget-object v5, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 384
    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_0

    :cond_0
    :goto_1
    if-eq v0, p1, :cond_3

    .line 386
    iget-wide v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->deltaX:D

    cmpl-double v3, v3, v1

    if-nez v3, :cond_3

    .line 387
    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_1

    .line 391
    :cond_1
    :goto_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v3

    iget-object v5, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 392
    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_2

    :cond_2
    :goto_3
    if-eq v0, p1, :cond_3

    .line 394
    iget-wide v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->deltaX:D

    cmpl-double v3, v3, v1

    if-nez v3, :cond_3

    .line 395
    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_3

    :cond_3
    if-ne v0, p1, :cond_5

    if-eqz p2, :cond_4

    .line 400
    iget-object p1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_5

    .line 403
    :cond_4
    iget-object p1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_5

    :cond_5
    if-eqz p2, :cond_6

    .line 409
    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_4

    .line 412
    :cond_6
    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 414
    :goto_4
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;)V

    const/4 v1, 0x0

    .line 415
    iput-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;

    .line 416
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->y:J

    .line 417
    iput-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->leftBound:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 418
    iput-object p1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->rightBound:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    const/4 v1, 0x0

    .line 419
    iput v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    .line 420
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->processBound(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Z)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    move-result-object p1

    .line 421
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->insertLocalMinima(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;)V

    :goto_5
    return-object p1

    .line 426
    :cond_7
    iget-wide v4, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->deltaX:D

    cmpl-double v0, v4, v1

    if-nez v0, :cond_a

    if-eqz p2, :cond_8

    .line 431
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_6

    .line 434
    :cond_8
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 436
    :goto_6
    iget-wide v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->deltaX:D

    cmpl-double v4, v4, v1

    if-nez v4, :cond_9

    .line 438
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_a

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_a

    .line 439
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->reverseHorizontal()V

    goto :goto_7

    .line 441
    :cond_9
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_a

    .line 442
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->reverseHorizontal()V

    :cond_a
    :goto_7
    if-eqz p2, :cond_11

    move-object p2, p1

    .line 447
    :goto_8
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v4

    iget-object v0, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_b

    iget-object v0, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iget v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-eq v0, v3, :cond_b

    .line 448
    iget-object p2, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_8

    .line 450
    :cond_b
    iget-wide v4, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->deltaX:D

    cmpl-double v0, v4, v1

    if-nez v0, :cond_d

    iget-object v0, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iget v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-eq v0, v3, :cond_d

    move-object v0, p2

    .line 455
    :goto_9
    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iget-wide v3, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->deltaX:D

    cmpl-double v3, v3, v1

    if-nez v3, :cond_c

    .line 456
    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_9

    .line 458
    :cond_c
    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    iget-object v5, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_d

    iget-object p2, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    :cond_d
    move-object v0, p1

    :goto_a
    if-eq v0, p2, :cond_f

    .line 461
    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iput-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInLML:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 462
    iget-wide v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->deltaX:D

    cmpl-double v3, v3, v1

    if-nez v3, :cond_e

    if-eq v0, p1, :cond_e

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    iget-object v5, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_e

    .line 463
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->reverseHorizontal()V

    .line 465
    :cond_e
    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_a

    .line 467
    :cond_f
    iget-wide v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->deltaX:D

    cmpl-double v1, v3, v1

    if-nez v1, :cond_10

    if-eq v0, p1, :cond_10

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v1

    iget-object p1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-eqz p1, :cond_10

    .line 468
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->reverseHorizontal()V

    .line 470
    :cond_10
    iget-object p1, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto/16 :goto_e

    :cond_11
    move-object p2, p1

    .line 473
    :goto_b
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v4

    iget-object v0, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_12

    iget-object v0, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iget v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-eq v0, v3, :cond_12

    .line 474
    iget-object p2, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_b

    .line 476
    :cond_12
    iget-wide v4, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->deltaX:D

    cmpl-double v0, v4, v1

    if-nez v0, :cond_15

    iget-object v0, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iget v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-eq v0, v3, :cond_15

    move-object v0, p2

    .line 478
    :goto_c
    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iget-wide v3, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->deltaX:D

    cmpl-double v3, v3, v1

    if-nez v3, :cond_13

    .line 479
    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_c

    .line 481
    :cond_13
    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    iget-object v5, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_14

    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 482
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    iget-object v5, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_15

    :cond_14
    iget-object p2, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    :cond_15
    move-object v0, p1

    :goto_d
    if-eq v0, p2, :cond_17

    .line 486
    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iput-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInLML:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 487
    iget-wide v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->deltaX:D

    cmpl-double v3, v3, v1

    if-nez v3, :cond_16

    if-eq v0, p1, :cond_16

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    iget-object v5, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_16

    .line 488
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->reverseHorizontal()V

    .line 490
    :cond_16
    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_d

    .line 492
    :cond_17
    iget-wide v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->deltaX:D

    cmpl-double v1, v3, v1

    if-nez v1, :cond_18

    if-eq v0, p1, :cond_18

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v1

    iget-object p1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-eqz p1, :cond_18

    .line 493
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->reverseHorizontal()V

    .line 495
    :cond_18
    iget-object p1, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    :goto_e
    return-object p1
.end method

.method private static rangeTest(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Z)Z
    .locals 4

    if-eqz p1, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v0

    const-wide v2, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v0

    neg-long v0, v0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v0

    neg-long v0, v0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    new-instance p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperException;

    const-string p1, "Coordinate outside allowed range."

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v0

    const-wide/32 v2, 0x3fffffff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v0

    neg-long v0, v0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v0

    neg-long v0, v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x1

    .line 78
    invoke-static {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->rangeTest(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Z)Z

    move-result p0

    return p0
.end method

.method private static removeEdge(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iput-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 87
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iput-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 88
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    const/4 v1, 0x0

    .line 89
    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    return-object v0
.end method


# virtual methods
.method public addPath(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;Z)Z
    .locals 10

    if-nez p3, :cond_1

    .line 122
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;->CLIP:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "AddPath: Open paths must be subject."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 126
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    :goto_1
    if-lez v0, :cond_2

    .line 128
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-lez v0, :cond_3

    .line 132
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_4

    const/4 v3, 0x2

    if-lt v0, v3, :cond_5

    :cond_4
    if-nez p3, :cond_6

    if-ge v0, v1, :cond_6

    :cond_5
    return v2

    .line 140
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    add-int/lit8 v4, v0, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v2

    :goto_3
    if-gt v4, v0, :cond_7

    .line 142
    new-instance v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    invoke-direct {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;-><init>()V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 148
    :cond_7
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    new-instance v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-direct {v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->setCurrent(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    .line 149
    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-boolean v5, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->useFullRange:Z

    invoke-static {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->rangeTest(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->useFullRange:Z

    .line 150
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-boolean v5, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->useFullRange:Z

    invoke-static {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->rangeTest(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->useFullRange:Z

    .line 151
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-static {v4, v5, v6, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->initEdge(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    .line 152
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    add-int/lit8 v6, v0, -0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-static {v4, v5, v7, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->initEdge(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    :goto_4
    if-lt v6, v1, :cond_8

    .line 154
    invoke-virtual {p1, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-boolean v4, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->useFullRange:Z

    invoke-static {v0, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->rangeTest(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->useFullRange:Z

    .line 155
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    add-int/lit8 v4, v6, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    add-int/lit8 v5, v6, -0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    invoke-virtual {p1, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-static {v0, v4, v5, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->initEdge(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 157
    :cond_8
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    move-object v0, p1

    move-object v4, v0

    .line 163
    :cond_9
    :goto_5
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v5

    iget-object v6, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    if-nez p3, :cond_a

    iget-object v5, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 164
    :cond_a
    iget-object v4, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-ne p1, v4, :cond_b

    goto :goto_7

    :cond_b
    if-ne p1, v0, :cond_c

    .line 168
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 170
    :cond_c
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->removeEdge(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    move-result-object v4

    :goto_6
    move-object p1, v4

    goto :goto_5

    .line 174
    :cond_d
    iget-object v5, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iget-object v6, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-ne v5, v6, :cond_e

    goto :goto_7

    :cond_e
    if-eqz p3, :cond_11

    .line 177
    iget-object v5, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v6

    iget-object v7, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v7

    iget-boolean v8, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->useFullRange:Z

    invoke-static {v5, v6, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->slopesEqual(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Z)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 178
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->isPreserveCollinear()Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v6

    iget-object v7, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->isPt2BetweenPt1AndPt3(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Z

    move-result v5

    if-nez v5, :cond_11

    :cond_f
    if-ne p1, v0, :cond_10

    .line 184
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 186
    :cond_10
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->removeEdge(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    move-result-object p1

    .line 187
    iget-object v4, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_6

    .line 191
    :cond_11
    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-eq p1, v4, :cond_12

    if-nez p3, :cond_9

    .line 192
    iget-object v5, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-ne v5, v0, :cond_9

    :cond_12
    :goto_7
    if-nez p3, :cond_13

    .line 197
    iget-object v4, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-eq p1, v4, :cond_14

    :cond_13
    if-eqz p3, :cond_15

    iget-object v4, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-ne v4, p1, :cond_15

    :cond_14
    return v2

    :cond_15
    const/4 p1, -0x2

    if-nez p3, :cond_16

    .line 202
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->hasOpenPaths:Z

    .line 203
    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iput p1, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    :cond_16
    move-object v4, v0

    move v5, v1

    .line 209
    :cond_17
    invoke-static {v4, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->initEdge2(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;)V

    .line 210
    iget-object v4, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-eqz v5, :cond_18

    .line 211
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_18

    move v5, v2

    :cond_18
    if-ne v4, v0, :cond_17

    const/4 v6, 0x0

    if-eqz v5, :cond_1c

    if-eqz p3, :cond_19

    return v2

    .line 225
    :cond_19
    iget-object p2, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iput p1, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    .line 226
    new-instance p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;

    invoke-direct {p2, p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;)V

    .line 227
    iput-object v6, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;

    .line 228
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v7

    iput-wide v7, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->y:J

    .line 229
    iput-object v6, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->leftBound:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 230
    iput-object v4, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->rightBound:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 231
    iget-object p3, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->rightBound:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;->RIGHT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;

    iput-object v0, p3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->side:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;

    .line 232
    iget-object p3, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->rightBound:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iput v2, p3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    .line 235
    :goto_8
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v5

    iget-object p3, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v7

    cmp-long p3, v5, v7

    if-eqz p3, :cond_1a

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->reverseHorizontal()V

    .line 236
    :cond_1a
    iget-object p3, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iget p3, p3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-ne p3, p1, :cond_1b

    .line 240
    invoke-direct {p0, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->insertLocalMinima(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;)V

    .line 241
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->edges:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1

    .line 237
    :cond_1b
    iget-object p3, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iput-object p3, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInLML:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 238
    iget-object v4, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_8

    .line 245
    :cond_1c
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->edges:Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object p2, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p2

    iget-object v0, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 252
    iget-object v4, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    :cond_1d
    move-object p2, v6

    .line 256
    :cond_1e
    :goto_9
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->findNextLocMin()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    move-result-object v0

    if-ne v0, p2, :cond_1f

    return v1

    :cond_1f
    if-nez p2, :cond_20

    move-object p2, v0

    .line 266
    :cond_20
    new-instance v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;

    invoke-direct {v3, p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;)V

    .line 267
    iput-object v6, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;

    .line 268
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->y:J

    .line 269
    iget-wide v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->deltaX:D

    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iget-wide v7, v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->deltaX:D

    cmpg-double v4, v4, v7

    if-gez v4, :cond_21

    .line 270
    iget-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iput-object v4, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->leftBound:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 271
    iput-object v0, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->rightBound:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    move v0, v2

    goto :goto_a

    .line 275
    :cond_21
    iput-object v0, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->leftBound:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 276
    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iput-object v0, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->rightBound:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    move v0, v1

    .line 279
    :goto_a
    iget-object v4, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->leftBound:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    sget-object v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;->LEFT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;

    iput-object v5, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->side:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;

    .line 280
    iget-object v4, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->rightBound:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    sget-object v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;->RIGHT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;

    iput-object v5, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->side:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;

    if-nez p3, :cond_22

    .line 283
    iget-object v4, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->leftBound:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iput v2, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    goto :goto_b

    .line 285
    :cond_22
    iget-object v4, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->leftBound:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iget-object v4, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iget-object v5, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->rightBound:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-ne v4, v5, :cond_23

    .line 286
    iget-object v4, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->leftBound:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    const/4 v5, -0x1

    iput v5, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    goto :goto_b

    .line 289
    :cond_23
    iget-object v4, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->leftBound:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iput v1, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    .line 291
    :goto_b
    iget-object v4, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->rightBound:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iget-object v5, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->leftBound:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iget v5, v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    neg-int v5, v5

    iput v5, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    .line 293
    iget-object v4, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->leftBound:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    invoke-direct {p0, v4, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->processBound(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Z)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    move-result-object v4

    .line 294
    iget v5, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-ne v5, p1, :cond_24

    .line 295
    invoke-direct {p0, v4, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->processBound(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Z)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    move-result-object v4

    .line 298
    :cond_24
    iget-object v5, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->rightBound:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    xor-int/lit8 v7, v0, 0x1

    invoke-direct {p0, v5, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->processBound(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Z)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    move-result-object v5

    .line 299
    iget v7, v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-ne v7, p1, :cond_25

    xor-int/lit8 v7, v0, 0x1

    .line 300
    invoke-direct {p0, v5, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->processBound(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Z)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    move-result-object v5

    .line 303
    :cond_25
    iget-object v7, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->leftBound:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iget v7, v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-ne v7, p1, :cond_26

    .line 304
    iput-object v6, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->leftBound:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_c

    .line 306
    :cond_26
    iget-object v7, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->rightBound:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iget v7, v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-ne v7, p1, :cond_27

    .line 307
    iput-object v6, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->rightBound:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 309
    :cond_27
    :goto_c
    invoke-direct {p0, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->insertLocalMinima(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;)V

    if-nez v0, :cond_1e

    move-object v4, v5

    goto/16 :goto_9
.end method

.method public addPaths(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;Z)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 320
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 321
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {p0, v2, p2, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->addPath(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public clear()V
    .locals 1

    .line 329
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->disposeLocalMinimaList()V

    .line 330
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->edges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 331
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->useFullRange:Z

    .line 332
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->hasOpenPaths:Z

    return-void
.end method

.method public isPreserveCollinear()Z
    .locals 1

    .line 363
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->preserveCollinear:Z

    return v0
.end method

.method protected popLocalMinima()V
    .locals 3

    .line 367
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->LOGGER:Ljava/util/logging/Logger;

    const-class v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "popLocalMinima"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->currentLM:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;

    if-nez v0, :cond_0

    return-void

    .line 371
    :cond_0
    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->currentLM:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;

    return-void
.end method

.method protected reset()V
    .locals 5

    .line 507
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->minimaList:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->currentLM:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 515
    iget-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->leftBound:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    .line 517
    new-instance v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->setCurrent(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    .line 518
    sget-object v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;->LEFT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;

    iput-object v3, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->side:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;

    .line 519
    iput v2, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    .line 521
    :cond_1
    iget-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->rightBound:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-eqz v1, :cond_2

    .line 523
    new-instance v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->setCurrent(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    .line 524
    sget-object v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;->RIGHT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;

    iput-object v3, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->side:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;

    .line 525
    iput v2, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    .line 527
    :cond_2
    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;

    goto :goto_0

    :cond_3
    return-void
.end method
