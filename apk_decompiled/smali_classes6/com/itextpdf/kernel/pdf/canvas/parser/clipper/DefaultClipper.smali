.class public Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;
.super Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;
.source "DefaultClipper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper$IntersectNode;
    }
.end annotation


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private activeEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

.field private clipFillType:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

.field private clipType:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;

.field private final ghostJoins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;",
            ">;"
        }
    .end annotation
.end field

.field private final intersectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper$IntersectNode;",
            ">;"
        }
    .end annotation
.end field

.field private final intersectNodeComparer:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper$IntersectNode;",
            ">;"
        }
    .end annotation
.end field

.field private final joins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;",
            ">;"
        }
    .end annotation
.end field

.field private maxima:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;

.field protected final polyOuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;",
            ">;"
        }
    .end annotation
.end field

.field private final reverseSolution:Z

.field private scanbeam:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;

.field private sortedEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

.field private final strictlySimple:Z

.field private subjFillType:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

.field private usingPolyTree:Z

.field public zFillFunction:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$IZFillCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 585
    const-class v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 588
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 593
    :goto_0
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;-><init>(Z)V

    const/4 v0, 0x0

    .line 594
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->scanbeam:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;

    .line 595
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->maxima:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;

    .line 596
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->activeEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 597
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->sortedEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 598
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->intersectList:Ljava/util/List;

    .line 599
    new-instance v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper$1;

    invoke-direct {v3, p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper$1;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;)V

    iput-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->intersectNodeComparer:Ljava/util/Comparator;

    .line 614
    iput-boolean v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->usingPolyTree:Z

    .line 615
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->polyOuts:Ljava/util/List;

    .line 616
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->joins:Ljava/util/List;

    .line 617
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->ghostJoins:Ljava/util/List;

    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 618
    :goto_1
    iput-boolean v3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->reverseSolution:Z

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    .line 619
    :goto_2
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->strictlySimple:Z

    .line 621
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->zFillFunction:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$IZFillCallback;

    return-void
.end method

.method private EdgesAdjacent(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper$IntersectNode;)Z
    .locals 2

    .line 1249
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper$IntersectNode;->edge1:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iget-object v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper$IntersectNode;->Edge2:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper$IntersectNode;->edge1:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper$IntersectNode;->Edge2:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private GetLastOutPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;
    .locals 2

    .line 831
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->polyOuts:Ljava/util/List;

    iget v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    .line 832
    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->side:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;->LEFT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;

    if-ne p1, v1, :cond_0

    .line 833
    iget-object p1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->pts:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    return-object p1

    .line 835
    :cond_0
    iget-object p1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->pts:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    return-object p1
.end method

.method private InsertMaxima(J)V
    .locals 5

    .line 658
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;-><init>()V

    .line 659
    iput-wide p1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;->X:J

    .line 660
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->maxima:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 662
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->maxima:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;

    .line 663
    iput-object v2, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;->Next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;

    .line 664
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->maxima:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;

    iput-object v2, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;->Prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;

    goto :goto_1

    .line 666
    :cond_0
    iget-wide v3, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;->X:J

    cmp-long v1, p1, v3

    if-gez v1, :cond_1

    .line 668
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->maxima:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;

    iput-object p1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;->Next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;

    .line 669
    iput-object v2, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;->Prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;

    .line 670
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->maxima:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;

    goto :goto_1

    .line 674
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->maxima:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;

    .line 675
    :goto_0
    iget-object v2, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;->Next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;->Next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;

    iget-wide v2, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;->X:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_2

    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;->Next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;

    goto :goto_0

    .line 676
    :cond_2
    iget-wide v2, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;->X:J

    cmp-long p1, p1, v2

    if-nez p1, :cond_3

    return-void

    .line 678
    :cond_3
    iget-object p1, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;->Next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;

    iput-object p1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;->Next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;

    .line 679
    iput-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;->Prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;

    .line 680
    iget-object p1, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;->Next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;

    if-eqz p1, :cond_4

    iget-object p1, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;->Next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;

    iput-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;->Prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;

    .line 681
    :cond_4
    iput-object v0, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;->Next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;

    :goto_1
    return-void
.end method

.method private addEdgeToSEL(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V
    .locals 3

    .line 687
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->LOGGER:Ljava/util/logging/Logger;

    const-class v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "addEdgeToSEL"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->sortedEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 692
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->sortedEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 693
    iput-object v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 694
    iput-object v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_0

    .line 697
    :cond_0
    iput-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 698
    iput-object v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 699
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->sortedEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iput-object p1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 700
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->sortedEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    :goto_0
    return-void
.end method

.method private addGhostJoin(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V
    .locals 1

    .line 705
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;-><init>()V

    .line 706
    iput-object p1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;->outPt1:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 707
    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;->setOffPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    .line 708
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->ghostJoins:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addJoin(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V
    .locals 3

    .line 714
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->LOGGER:Ljava/util/logging/Logger;

    const-class v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "addJoin"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;-><init>()V

    .line 716
    iput-object p1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;->outPt1:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 717
    iput-object p2, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;->outPt2:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 718
    invoke-virtual {v0, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;->setOffPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    .line 719
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->joins:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addLocalMaxPoly(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V
    .locals 1

    .line 725
    invoke-direct {p0, p1, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addOutPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 726
    iget v0, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    if-nez v0, :cond_0

    .line 727
    invoke-direct {p0, p2, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addOutPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 729
    :cond_0
    iget p3, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    iget v0, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-ne p3, v0, :cond_1

    const/4 p3, -0x1

    .line 730
    iput p3, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    .line 731
    iput p3, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    goto :goto_0

    .line 733
    :cond_1
    iget p3, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    iget v0, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-ge p3, v0, :cond_2

    .line 734
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->appendPolygon(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    goto :goto_0

    .line 737
    :cond_2
    invoke-direct {p0, p2, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->appendPolygon(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    :goto_0
    return-void
.end method

.method private addLocalMinPoly(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;
    .locals 6

    .line 744
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->LOGGER:Ljava/util/logging/Logger;

    const-class v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "addLocalMinPoly"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->isHorizontal()Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->deltaX:D

    iget-wide v2, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->deltaX:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    .line 761
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addOutPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v0

    .line 762
    iget v1, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    iput v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    .line 763
    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;->RIGHT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;

    iput-object v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->side:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;

    .line 764
    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;->LEFT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;

    iput-object v1, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->side:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;

    .line 766
    iget-object v1, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-ne v1, p1, :cond_1

    .line 767
    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_2

    .line 770
    :cond_1
    iget-object p1, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_2

    .line 748
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addOutPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v0

    .line 749
    iget v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    iput v1, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    .line 750
    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;->LEFT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;

    iput-object v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->side:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;

    .line 751
    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;->RIGHT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;

    iput-object v1, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->side:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;

    .line 753
    iget-object v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-ne v1, p2, :cond_3

    .line 754
    iget-object p2, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_1

    .line 757
    :cond_3
    iget-object p2, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    :goto_1
    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    :goto_2
    if-eqz p1, :cond_4

    .line 774
    iget v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-ltz v1, :cond_4

    .line 775
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->topX(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;J)J

    move-result-wide v1

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v3

    invoke-static {p2, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->topX(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;J)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->useFullRange:Z

    .line 776
    invoke-static {p2, p1, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->slopesEqual(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    if-eqz v1, :cond_4

    iget v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    if-eqz v1, :cond_4

    .line 778
    invoke-direct {p0, p1, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addOutPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object p1

    .line 779
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addJoin(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    :cond_4
    return-object v0
.end method

.method private addOutPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;
    .locals 6

    .line 785
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->LOGGER:Ljava/util/logging/Logger;

    const-class v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "addOutPt"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    iget v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v1, :cond_2

    .line 788
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->createOutRec()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    move-result-object v0

    .line 789
    iget v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isOpen:Z

    .line 790
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;-><init>()V

    .line 791
    iput-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->pts:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 792
    iget v2, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->Idx:I

    iput v2, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->idx:I

    .line 793
    iput-object p2, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->pt:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    .line 794
    iput-object v1, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 795
    iput-object v1, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 796
    iget-boolean p2, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isOpen:Z

    if-nez p2, :cond_1

    .line 797
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->setHoleState(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;)V

    .line 798
    :cond_1
    iget p2, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->Idx:I

    iput p2, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    return-object v1

    .line 802
    :cond_2
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->polyOuts:Ljava/util/List;

    iget v4, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    .line 804
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->getPoints()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v4

    .line 805
    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->side:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;

    sget-object v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;->LEFT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;

    if-ne p1, v5, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    .line 806
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "op="

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPointCount()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 807
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    if-eqz v2, :cond_4

    .line 808
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v4

    :cond_4
    if-nez v2, :cond_5

    .line 811
    iget-object p1, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 812
    iget-object p1, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    return-object p1

    .line 815
    :cond_5
    new-instance p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    invoke-direct {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;-><init>()V

    .line 816
    iget v0, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->Idx:I

    iput v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->idx:I

    .line 817
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-direct {v0, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->setPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    .line 818
    iput-object v4, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 819
    iget-object p2, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    iput-object p2, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 820
    iget-object p2, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    iput-object p1, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 821
    iput-object p1, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    if-eqz v2, :cond_6

    .line 823
    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->setPoints(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;)V

    :cond_6
    return-object p1
.end method

.method private appendPolygon(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V
    .locals 10

    .line 840
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->LOGGER:Ljava/util/logging/Logger;

    const-class v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appendPolygon"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->polyOuts:Ljava/util/List;

    iget v2, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    .line 844
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->polyOuts:Ljava/util/List;

    iget v3, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    .line 845
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 846
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 849
    invoke-static {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->isParam1RightOfParam2(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    goto :goto_0

    .line 852
    :cond_0
    invoke-static {v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->isParam1RightOfParam2(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    goto :goto_0

    .line 856
    :cond_1
    invoke-static {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getLowerMostRec(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    move-result-object v3

    .line 859
    :goto_0
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->getPoints()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v4

    .line 860
    iget-object v5, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 861
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->getPoints()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v6

    .line 862
    iget-object v7, v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 864
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "p1_lft.getPointCount() = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPointCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 865
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "p1_rt.getPointCount() = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPointCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 866
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "p2_lft.getPointCount() = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPointCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 867
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "p2_rt.getPointCount() = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPointCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 871
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->side:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;

    sget-object v8, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;->LEFT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;

    if-ne v0, v8, :cond_3

    .line 872
    iget-object v0, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->side:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;

    sget-object v8, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;->LEFT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;

    if-ne v0, v8, :cond_2

    .line 874
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->reversePolyPtLinks()V

    .line 875
    iput-object v4, v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 876
    iput-object v6, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 877
    iput-object v7, v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 878
    iput-object v5, v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 879
    invoke-virtual {v1, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->setPoints(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;)V

    goto :goto_1

    .line 883
    :cond_2
    iput-object v4, v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 884
    iput-object v7, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 885
    iput-object v5, v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 886
    iput-object v6, v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 887
    invoke-virtual {v1, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->setPoints(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;)V

    .line 889
    :goto_1
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;->LEFT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;

    goto :goto_3

    .line 892
    :cond_3
    iget-object v0, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->side:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;

    sget-object v8, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;->RIGHT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;

    if-ne v0, v8, :cond_4

    .line 894
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->reversePolyPtLinks()V

    .line 895
    iput-object v7, v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 896
    iput-object v5, v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 897
    iput-object v4, v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 898
    iput-object v6, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    goto :goto_2

    .line 902
    :cond_4
    iput-object v6, v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 903
    iput-object v5, v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 904
    iput-object v7, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 905
    iput-object v4, v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 907
    :goto_2
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;->RIGHT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;

    :goto_3
    const/4 v4, 0x0

    .line 909
    iput-object v4, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->bottomPt:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 910
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 911
    iget-object v3, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->firstLeft:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    if-eq v3, v1, :cond_5

    .line 912
    iget-object v3, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->firstLeft:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    iput-object v3, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->firstLeft:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    .line 914
    :cond_5
    iget-boolean v3, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isHole:Z

    iput-boolean v3, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isHole:Z

    .line 916
    :cond_6
    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->setPoints(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;)V

    .line 917
    iput-object v4, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->bottomPt:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 919
    iput-object v1, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->firstLeft:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    .line 921
    iget v3, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    .line 922
    iget v4, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    const/4 v5, -0x1

    .line 924
    iput v5, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    .line 925
    iput v5, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    .line 927
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->activeEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    :goto_4
    if-eqz p1, :cond_8

    .line 929
    iget p2, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-ne p2, v4, :cond_7

    .line 930
    iput v3, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    .line 931
    iput-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->side:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;

    goto :goto_5

    .line 934
    :cond_7
    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_4

    .line 936
    :cond_8
    :goto_5
    iget p1, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->Idx:I

    iput p1, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->Idx:I

    return-void
.end method

.method private buildIntersectList(J)V
    .locals 9

    .line 942
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->activeEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-nez v0, :cond_0

    return-void

    .line 948
    :cond_0
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->sortedEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    :goto_0
    if-eqz v0, :cond_1

    .line 950
    iget-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iput-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 951
    iget-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iput-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 952
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v1

    invoke-static {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->topX(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->setX(Ljava/lang/Number;)V

    .line 953
    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    move p2, p1

    :goto_1
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 958
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->sortedEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-eqz p2, :cond_4

    const/4 v1, 0x0

    move v2, v1

    .line 961
    :goto_2
    iget-object v3, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-eqz v3, :cond_3

    .line 962
    iget-object v3, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 963
    new-array v4, p1, [Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    .line 964
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v5

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    .line 965
    invoke-direct {p0, p2, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->intersectPoint(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;[Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    .line 966
    new-instance v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper$IntersectNode;

    invoke-direct {v2, p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper$IntersectNode;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper$1;)V

    .line 967
    iput-object p2, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper$IntersectNode;->edge1:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 968
    iput-object v3, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper$IntersectNode;->Edge2:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 969
    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper$IntersectNode;->setPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    .line 970
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->intersectList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 972
    invoke-direct {p0, p2, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->swapPositionsInSEL(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    move v2, p1

    goto :goto_2

    :cond_2
    move-object p2, v3

    goto :goto_2

    .line 979
    :cond_3
    iget-object v1, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-eqz v1, :cond_4

    .line 980
    iget-object p2, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iput-object v0, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    move p2, v2

    goto :goto_1

    .line 986
    :cond_4
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->sortedEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    return-void
.end method

.method private buildResult(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;)V
    .locals 7

    .line 992
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->clear()V

    const/4 v0, 0x0

    move v1, v0

    .line 993
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->polyOuts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 994
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->polyOuts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    .line 995
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->getPoints()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 998
    :cond_0
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->getPoints()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v2

    iget-object v2, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 999
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPointCount()I

    move-result v3

    .line 1000
    sget-object v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->LOGGER:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cnt = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    goto :goto_2

    .line 1004
    :cond_1
    new-instance v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-direct {v4, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;-><init>(I)V

    move v5, v0

    :goto_1
    if-ge v5, v3, :cond_2

    .line 1006
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 1007
    iget-object v2, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1009
    :cond_2
    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private buildResult2(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;)V
    .locals 8

    .line 1014
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;->Clear()V

    const/4 v0, 0x0

    move v1, v0

    .line 1017
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->polyOuts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1018
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->polyOuts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    .line 1019
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->getPoints()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->getPoints()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPointCount()I

    move-result v3

    goto :goto_1

    :cond_0
    move v3, v0

    .line 1020
    :goto_1
    iget-boolean v4, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isOpen:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_3

    :cond_1
    iget-boolean v4, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isOpen:Z

    if-nez v4, :cond_2

    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    goto :goto_3

    .line 1023
    :cond_2
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->fixHoleLinkage()V

    .line 1024
    new-instance v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    invoke-direct {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;-><init>()V

    .line 1025
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;->getAllPolys()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1026
    iput-object v4, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->polyNode:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    .line 1027
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->getPoints()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v2

    iget-object v2, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move v5, v0

    :goto_2
    if-ge v5, v3, :cond_3

    .line 1029
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->getPolygon()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move-result-object v6

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 1030
    iget-object v2, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1035
    :cond_4
    :goto_4
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->polyOuts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 1036
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->polyOuts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    .line 1037
    iget-object v2, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->polyNode:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    if-nez v2, :cond_5

    goto :goto_5

    .line 1040
    :cond_5
    iget-boolean v2, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isOpen:Z

    if-eqz v2, :cond_6

    .line 1041
    iget-object v2, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->polyNode:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->setOpen(Z)V

    .line 1042
    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->polyNode:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;->addChild(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;)V

    goto :goto_5

    .line 1044
    :cond_6
    iget-object v2, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->firstLeft:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    if-eqz v2, :cond_7

    iget-object v2, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->firstLeft:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    iget-object v2, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->polyNode:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    if-eqz v2, :cond_7

    .line 1045
    iget-object v2, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->firstLeft:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    iget-object v2, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->polyNode:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->polyNode:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;->addChild(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;)V

    goto :goto_5

    .line 1048
    :cond_7
    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->polyNode:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;->addChild(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;)V

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    return-void
.end method

.method private copyAELToSEL()V
    .locals 2

    .line 1054
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->activeEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 1055
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->sortedEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    :goto_0
    if-eqz v0, :cond_0

    .line 1057
    iget-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iput-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 1058
    iget-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iput-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 1059
    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createOutRec()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;
    .locals 2

    .line 1064
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;-><init>()V

    const/4 v1, -0x1

    .line 1065
    iput v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->Idx:I

    const/4 v1, 0x0

    .line 1066
    iput-boolean v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isHole:Z

    .line 1067
    iput-boolean v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isOpen:Z

    const/4 v1, 0x0

    .line 1068
    iput-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->firstLeft:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    .line 1069
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->setPoints(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;)V

    .line 1070
    iput-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->bottomPt:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 1071
    iput-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->polyNode:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyNode;

    .line 1072
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->polyOuts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1073
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->polyOuts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->Idx:I

    return-object v0
.end method

.method private deleteFromAEL(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V
    .locals 6

    .line 1078
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->LOGGER:Ljava/util/logging/Logger;

    const-class v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "deleteFromAEL"

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    iget-object v2, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 1081
    iget-object v4, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-nez v2, :cond_0

    if-nez v4, :cond_0

    .line 1082
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->activeEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-eq p1, v5, :cond_0

    return-void

    :cond_0
    if-eqz v2, :cond_1

    .line 1086
    iput-object v4, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_0

    .line 1089
    :cond_1
    iput-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->activeEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    :goto_0
    if-eqz v4, :cond_2

    .line 1092
    iput-object v2, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    :cond_2
    const/4 v2, 0x0

    .line 1094
    iput-object v2, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 1095
    iput-object v2, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 1096
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Ljava/util/logging/Logger;->exiting(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private deleteFromSEL(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V
    .locals 3

    .line 1100
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->LOGGER:Ljava/util/logging/Logger;

    const-class v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deleteFromSEL"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 1103
    iget-object v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 1104
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->sortedEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 1108
    iput-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_0

    .line 1111
    :cond_1
    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->sortedEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    :goto_0
    if-eqz v1, :cond_2

    .line 1114
    iput-object v0, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    :cond_2
    const/4 v0, 0x0

    .line 1116
    iput-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 1117
    iput-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    return-void
.end method

.method private doHorzSegmentsOverlap(JJJJ)Z
    .locals 3

    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    move-wide v1, p1

    move-wide p1, p3

    move-wide p3, v1

    :cond_0
    cmp-long v0, p5, p7

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move-wide v1, p5

    move-wide p5, p7

    move-wide p7, v1

    :goto_0
    cmp-long p1, p1, p5

    if-gez p1, :cond_2

    cmp-long p1, p7, p3

    if-gez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private doMaxima(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V
    .locals 4

    .line 1135
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getMaximaPair()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1137
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-ltz v0, :cond_0

    .line 1138
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addOutPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 1140
    :cond_0
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->deleteFromAEL(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    return-void

    .line 1144
    :cond_1
    iget-object v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    :goto_0
    if-eqz v1, :cond_2

    if-eq v1, v0, :cond_2

    .line 1146
    new-instance v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    .line 1147
    invoke-direct {p0, p1, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->intersectEdges(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    .line 1148
    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->setTop(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    .line 1149
    invoke-direct {p0, p1, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->swapPositionsInAEL(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    .line 1150
    iget-object v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_0

    .line 1153
    :cond_2
    iget v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    iget v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-ne v1, v2, :cond_3

    .line 1154
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->deleteFromAEL(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    .line 1155
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->deleteFromAEL(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    goto :goto_1

    .line 1157
    :cond_3
    iget v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-ltz v1, :cond_5

    iget v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-ltz v1, :cond_5

    .line 1158
    iget v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-ltz v1, :cond_4

    .line 1159
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addLocalMaxPoly(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    .line 1161
    :cond_4
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->deleteFromAEL(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    .line 1162
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->deleteFromAEL(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    goto :goto_1

    .line 1165
    :cond_5
    iget v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    if-nez v1, :cond_8

    .line 1166
    iget v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-ltz v1, :cond_6

    .line 1167
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addOutPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 1168
    iput v2, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    .line 1170
    :cond_6
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->deleteFromAEL(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    .line 1172
    iget v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-ltz v1, :cond_7

    .line 1173
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addOutPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 1174
    iput v2, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    .line 1176
    :cond_7
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->deleteFromAEL(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    :goto_1
    return-void

    .line 1179
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DoMaxima error"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private doSimplePolygons()V
    .locals 6

    const/4 v0, 0x0

    .line 1187
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->polyOuts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 1188
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->polyOuts:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    .line 1189
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->getPoints()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1190
    iget-boolean v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isOpen:Z

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 1195
    :cond_0
    iget-object v3, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 1196
    :goto_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->getPoints()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v4

    if-eq v3, v4, :cond_5

    .line 1197
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v4

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1199
    iget-object v4, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 1200
    iget-object v5, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 1201
    iput-object v5, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 1202
    iput-object v1, v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 1203
    iput-object v4, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 1204
    iput-object v3, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 1206
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->setPoints(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;)V

    .line 1207
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->createOutRec()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    move-result-object v4

    .line 1208
    invoke-virtual {v4, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->setPoints(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;)V

    .line 1209
    invoke-direct {p0, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->updateOutPtIdxs(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;)V

    .line 1210
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->getPoints()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v3

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->getPoints()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->poly2ContainsPoly1(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1212
    iget-boolean v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isHole:Z

    xor-int/lit8 v3, v3, 0x1

    iput-boolean v3, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isHole:Z

    .line 1213
    iput-object v0, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->firstLeft:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    .line 1214
    iget-boolean v3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->usingPolyTree:Z

    if-eqz v3, :cond_3

    .line 1215
    invoke-direct {p0, v4, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->fixupFirstLefts2(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;)V

    goto :goto_2

    .line 1218
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->getPoints()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v3

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->getPoints()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->poly2ContainsPoly1(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1220
    iget-boolean v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isHole:Z

    iput-boolean v3, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isHole:Z

    .line 1221
    iget-boolean v3, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isHole:Z

    xor-int/lit8 v3, v3, 0x1

    iput-boolean v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isHole:Z

    .line 1222
    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->firstLeft:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    iput-object v3, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->firstLeft:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    .line 1223
    iput-object v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->firstLeft:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    .line 1224
    iget-boolean v3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->usingPolyTree:Z

    if-eqz v3, :cond_3

    .line 1225
    invoke-direct {p0, v0, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->fixupFirstLefts2(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;)V

    goto :goto_2

    .line 1230
    :cond_2
    iget-boolean v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isHole:Z

    iput-boolean v3, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isHole:Z

    .line 1231
    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->firstLeft:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    iput-object v3, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->firstLeft:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    .line 1232
    iget-boolean v3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->usingPolyTree:Z

    if-eqz v3, :cond_3

    .line 1233
    invoke-direct {p0, v0, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->fixupFirstLefts1(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;)V

    :cond_3
    :goto_2
    move-object v3, v1

    .line 1238
    :cond_4
    iget-object v3, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    goto/16 :goto_1

    .line 1240
    :cond_5
    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 1242
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->getPoints()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v3

    if-ne v1, v3, :cond_0

    :cond_6
    :goto_3
    move v0, v2

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private executeInternal()Z
    .locals 9

    .line 1332
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->reset()V

    .line 1333
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->currentLM:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1377
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->joins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1378
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->ghostJoins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return v1

    .line 1336
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->popScanbeam()J

    move-result-wide v2

    .line 1338
    :cond_1
    invoke-direct {p0, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->insertLocalMinimaIntoAEL(J)V

    .line 1339
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->processHorizontals()V

    .line 1340
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->ghostJoins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1341
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->scanbeam:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;

    if-nez v0, :cond_2

    goto :goto_1

    .line 1343
    :cond_2
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->popScanbeam()J

    move-result-wide v2

    .line 1344
    invoke-direct {p0, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->processIntersections(J)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 1346
    :cond_3
    invoke-direct {p0, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->processEdgesAtTopOfScanbeam(J)V

    .line 1348
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->scanbeam:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->currentLM:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;

    if-nez v0, :cond_1

    :goto_1
    move v0, v1

    .line 1351
    :goto_2
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->polyOuts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_7

    .line 1352
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->polyOuts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    .line 1353
    iget-object v4, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->pts:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    if-eqz v4, :cond_6

    iget-boolean v4, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isOpen:Z

    if-eqz v4, :cond_4

    goto :goto_4

    .line 1355
    :cond_4
    iget-boolean v4, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isHole:Z

    iget-boolean v5, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->reverseSolution:Z

    xor-int/2addr v4, v5

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->area()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-lez v5, :cond_5

    goto :goto_3

    :cond_5
    move v3, v1

    :goto_3
    if-ne v4, v3, :cond_6

    .line 1356
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->getPoints()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->reversePolyPtLinks()V

    :cond_6
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1359
    :cond_7
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->joinCommonEdges()V

    .line 1361
    :goto_5
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->polyOuts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 1362
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->polyOuts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    .line 1363
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->getPoints()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v2

    if-nez v2, :cond_8

    goto :goto_6

    .line 1365
    :cond_8
    iget-boolean v2, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isOpen:Z

    if-eqz v2, :cond_9

    .line 1366
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->fixupOutPolyline(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;)V

    goto :goto_6

    .line 1368
    :cond_9
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->fixupOutPolygon(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;)V

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1371
    :cond_a
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->strictlySimple:Z

    if-eqz v0, :cond_b

    .line 1372
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->doSimplePolygons()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1377
    :cond_b
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->joins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1378
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->ghostJoins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return v3

    :catchall_0
    move-exception v0

    .line 1377
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->joins:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1378
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->ghostJoins:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1379
    throw v0
.end method

.method private fixupFirstLefts1(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;)V
    .locals 4

    const/4 v0, 0x0

    .line 1385
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->polyOuts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1386
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->polyOuts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    .line 1387
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->getPoints()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->firstLeft:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    if-nez v2, :cond_0

    goto :goto_1

    .line 1390
    :cond_0
    iget-object v2, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->firstLeft:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    invoke-static {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->parseFirstLeft(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    move-result-object v2

    .line 1391
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1392
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->getPoints()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->getPoints()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->poly2ContainsPoly1(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1393
    iput-object p2, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->firstLeft:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private fixupFirstLefts2(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;)V
    .locals 3

    .line 1400
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->polyOuts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    .line 1401
    iget-object v2, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->firstLeft:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    if-ne v2, p1, :cond_0

    .line 1402
    iput-object p2, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->firstLeft:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private fixupIntersectionOrder()Z
    .locals 7

    .line 1411
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->intersectList:Ljava/util/List;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->intersectNodeComparer:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1413
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->copyAELToSEL()V

    .line 1414
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->intersectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 1416
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->intersectList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper$IntersectNode;

    invoke-direct {p0, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->EdgesAdjacent(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper$IntersectNode;)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    :goto_1
    if-ge v3, v0, :cond_0

    .line 1418
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->intersectList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper$IntersectNode;

    invoke-direct {p0, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->EdgesAdjacent(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper$IntersectNode;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    if-ne v3, v0, :cond_1

    return v1

    .line 1425
    :cond_1
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->intersectList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper$IntersectNode;

    .line 1426
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->intersectList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1427
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->intersectList:Ljava/util/List;

    invoke-interface {v5, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1430
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->intersectList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper$IntersectNode;

    iget-object v3, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper$IntersectNode;->edge1:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->intersectList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper$IntersectNode;

    iget-object v4, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper$IntersectNode;->Edge2:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    invoke-direct {p0, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->swapPositionsInSEL(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private fixupOutPolygon(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;)V
    .locals 8

    const/4 v0, 0x0

    .line 1460
    iput-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->bottomPt:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 1461
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->getPoints()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v1

    .line 1462
    iget-boolean v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->preserveCollinear:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->strictlySimple:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    move-object v3, v0

    .line 1464
    :goto_2
    iget-object v4, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    if-eq v4, v1, :cond_7

    iget-object v4, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    iget-object v5, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    if-ne v4, v5, :cond_2

    goto :goto_4

    .line 1469
    :cond_2
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v4

    iget-object v5, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v4

    iget-object v5, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 1470
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v4

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v5

    iget-object v6, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v6

    iget-boolean v7, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->useFullRange:Z

    invoke-static {v4, v5, v6, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->slopesEqual(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v2, :cond_6

    iget-object v4, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 1471
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v4

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v5

    iget-object v6, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->isPt2BetweenPt1AndPt3(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    if-ne v1, v3, :cond_4

    .line 1487
    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->setPoints(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;)V

    return-void

    :cond_4
    if-nez v3, :cond_5

    move-object v3, v1

    .line 1484
    :cond_5
    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    goto :goto_2

    .line 1473
    :cond_6
    :goto_3
    iget-object v3, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    iget-object v4, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    iput-object v4, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 1474
    iget-object v3, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    iget-object v4, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    iput-object v4, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 1475
    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    goto :goto_1

    .line 1465
    :cond_7
    :goto_4
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->setPoints(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;)V

    return-void
.end method

.method private fixupOutPolyline(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;)V
    .locals 4

    .line 1439
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->pts:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 1440
    iget-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    :cond_0
    :goto_0
    if-eq v0, v1, :cond_2

    .line 1443
    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 1444
    iget-object v2, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->pt:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    iget-object v3, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->pt:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-ne v0, v1, :cond_1

    .line 1446
    iget-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 1447
    :cond_1
    iget-object v2, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 1448
    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    iput-object v3, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 1449
    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    iput-object v2, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-object v0, v2

    goto :goto_0

    .line 1453
    :cond_2
    iget-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->pts:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    :cond_3
    return-void
.end method

.method private static getHorzDirection(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;[Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$Direction;[J[J)V
    .locals 4

    .line 61
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v2

    aput-wide v2, p2, v1

    .line 63
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v2

    aput-wide v2, p3, v1

    .line 64
    sget-object p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$Direction;->LEFT_TO_RIGHT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$Direction;

    aput-object p0, p1, v1

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v2

    aput-wide v2, p2, v1

    .line 68
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v2

    aput-wide v2, p3, v1

    .line 69
    sget-object p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$Direction;->RIGHT_TO_LEFT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$Direction;

    aput-object p0, p1, v1

    :goto_0
    return-void
.end method

.method private getOutRec(I)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;
    .locals 2

    .line 1491
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->polyOuts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    .line 1492
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->polyOuts:Ljava/util/List;

    iget v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->Idx:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 1493
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->polyOuts:Ljava/util/List;

    iget p1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->Idx:I

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private static getOverlap(JJJJ[J[J)Z
    .locals 2

    cmp-long v0, p0, p2

    const/4 v1, 0x0

    if-gez v0, :cond_1

    cmp-long v0, p4, p6

    if-gez v0, :cond_0

    .line 76
    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    aput-wide p0, p8, v1

    .line 77
    invoke-static {p2, p3, p6, p7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    aput-wide p0, p9, v1

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {p0, p1, p6, p7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    aput-wide p0, p8, v1

    .line 81
    invoke-static {p2, p3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    aput-wide p0, p9, v1

    goto :goto_0

    :cond_1
    cmp-long v0, p4, p6

    if-gez v0, :cond_2

    .line 86
    invoke-static {p2, p3, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    aput-wide p2, p8, v1

    .line 87
    invoke-static {p0, p1, p6, p7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    aput-wide p0, p9, v1

    goto :goto_0

    .line 90
    :cond_2
    invoke-static {p2, p3, p6, p7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    aput-wide p2, p8, v1

    .line 91
    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    aput-wide p0, p9, v1

    .line 94
    :goto_0
    aget-wide p0, p8, v1

    aget-wide p2, p9, v1

    cmp-long p0, p0, p2

    if-gez p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private insertEdgeIntoAEL(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V
    .locals 4

    .line 1499
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->LOGGER:Ljava/util/logging/Logger;

    const-class v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "insertEdgeIntoAEL"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->activeEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    const-string v2, "Edge "

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 1502
    iput-object v3, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 1503
    iput-object v3, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 1504
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " -> null"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 1505
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->activeEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    .line 1507
    invoke-static {v1, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->doesE2InsertBeforeE1(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1508
    iput-object v3, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 1509
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->activeEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iput-object p2, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 1510
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " -> "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iget v1, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 1511
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->activeEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iput-object p1, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 1512
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->activeEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_1

    .line 1515
    :cond_1
    const-string v1, "activeEdges unchanged"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    if-nez p2, :cond_2

    .line 1517
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->activeEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 1519
    :cond_2
    :goto_0
    iget-object v0, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 1520
    invoke-static {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->doesE2InsertBeforeE1(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1521
    iget-object p2, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_0

    .line 1523
    :cond_3
    iget-object v0, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iput-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 1524
    iget-object v0, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-eqz v0, :cond_4

    .line 1525
    iget-object v0, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iput-object p1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 1527
    :cond_4
    iput-object p2, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 1528
    iput-object p1, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    :goto_1
    return-void
.end method

.method private insertLocalMinimaIntoAEL(J)V
    .locals 15

    move-object v9, p0

    .line 1535
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->LOGGER:Ljava/util/logging/Logger;

    const-class v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "insertLocalMinimaIntoAEL"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    :cond_0
    :goto_0
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->currentLM:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;

    if-eqz v0, :cond_d

    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->currentLM:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;

    iget-wide v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->y:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_d

    .line 1538
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->currentLM:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;

    iget-object v10, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->leftBound:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 1539
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->currentLM:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;

    iget-object v11, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->rightBound:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 1540
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->popLocalMinima()V

    const/4 v0, 0x0

    if-nez v10, :cond_2

    .line 1544
    invoke-direct {p0, v11, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->insertEdgeIntoAEL(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    .line 1545
    invoke-direct {p0, v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->updateWindingCount(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    .line 1546
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->clipFillType:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->subjFillType:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    iget-object v3, v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->clipType:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;

    invoke-virtual {v11, v1, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->isContributing(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1547
    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-direct {p0, v11, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addOutPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v0

    :cond_1
    :goto_1
    move-object v12, v0

    goto :goto_2

    :cond_2
    if-nez v11, :cond_4

    .line 1551
    invoke-direct {p0, v10, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->insertEdgeIntoAEL(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    .line 1552
    invoke-direct {p0, v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->updateWindingCount(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    .line 1553
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->clipFillType:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->subjFillType:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    iget-object v3, v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->clipType:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;

    invoke-virtual {v10, v1, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->isContributing(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1554
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-direct {p0, v10, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addOutPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v0

    .line 1556
    :cond_3
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->insertScanbeam(J)V

    goto :goto_1

    .line 1559
    :cond_4
    invoke-direct {p0, v10, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->insertEdgeIntoAEL(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    .line 1560
    invoke-direct {p0, v11, v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->insertEdgeIntoAEL(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    .line 1561
    invoke-direct {p0, v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->updateWindingCount(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    .line 1562
    iget v1, v10, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    iput v1, v11, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    .line 1563
    iget v1, v10, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt2:I

    iput v1, v11, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt2:I

    .line 1564
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->clipFillType:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    iget-object v2, v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->subjFillType:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    iget-object v3, v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->clipType:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;

    invoke-virtual {v10, v1, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->isContributing(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1565
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-direct {p0, v10, v11, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addLocalMinPoly(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v0

    .line 1567
    :cond_5
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->insertScanbeam(J)V

    goto :goto_1

    :goto_2
    if-eqz v11, :cond_7

    .line 1571
    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1572
    invoke-direct {p0, v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addEdgeToSEL(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    goto :goto_3

    .line 1575
    :cond_6
    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->insertScanbeam(J)V

    :cond_7
    :goto_3
    if-eqz v10, :cond_0

    if-nez v11, :cond_8

    goto/16 :goto_0

    :cond_8
    if-eqz v12, :cond_a

    .line 1584
    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->ghostJoins:Ljava/util/List;

    .line 1585
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    iget v0, v11, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    move v13, v0

    .line 1586
    :goto_4
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->ghostJoins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_a

    .line 1589
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->ghostJoins:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;

    .line 1590
    iget-object v0, v14, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;->outPt1:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v1

    invoke-virtual {v14}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;->getOffPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v5

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->doHorzSegmentsOverlap(JJJJ)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1591
    iget-object v0, v14, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;->outPt1:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    invoke-virtual {v14}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;->getOffPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v1

    invoke-direct {p0, v0, v12, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addJoin(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 1596
    :cond_a
    iget v0, v10, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-ltz v0, :cond_b

    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-eqz v0, :cond_b

    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 1597
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v0

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iget v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-ltz v0, :cond_b

    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iget-boolean v1, v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->useFullRange:Z

    .line 1599
    invoke-static {v0, v10, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->slopesEqual(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, v10, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    if-eqz v0, :cond_b

    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iget v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    if-eqz v0, :cond_b

    .line 1601
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addOutPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v0

    .line 1602
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v1

    invoke-direct {p0, v12, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addJoin(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    .line 1605
    :cond_b
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-eq v0, v11, :cond_0

    .line 1607
    iget v0, v11, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-ltz v0, :cond_c

    iget-object v0, v11, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iget v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-ltz v0, :cond_c

    iget-object v0, v11, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iget-boolean v1, v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->useFullRange:Z

    .line 1608
    invoke-static {v0, v11, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->slopesEqual(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, v11, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    if-eqz v0, :cond_c

    iget-object v0, v11, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iget v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    if-eqz v0, :cond_c

    .line 1610
    iget-object v0, v11, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addOutPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v0

    .line 1611
    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v1

    invoke-direct {p0, v12, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addJoin(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    .line 1614
    :cond_c
    iget-object v0, v10, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-eqz v0, :cond_0

    :goto_5
    if-eq v0, v11, :cond_0

    .line 1619
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v1

    invoke-direct {p0, v11, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->intersectEdges(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    .line 1620
    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_5

    :cond_d
    return-void
.end method

.method private insertScanbeam(J)V
    .locals 3

    .line 629
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->scanbeam:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;

    if-nez v0, :cond_0

    .line 631
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->scanbeam:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;

    const/4 v1, 0x0

    .line 632
    iput-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;

    .line 633
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->scanbeam:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;

    iput-wide p1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;->y:J

    goto :goto_1

    .line 635
    :cond_0
    iget-wide v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;->y:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 637
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;)V

    .line 638
    iput-wide p1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;->y:J

    .line 639
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->scanbeam:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;

    iput-object p1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;

    .line 640
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->scanbeam:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;

    goto :goto_1

    .line 644
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->scanbeam:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;

    .line 645
    :goto_0
    iget-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;

    iget-wide v1, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;->y:J

    cmp-long v1, p1, v1

    if-gtz v1, :cond_2

    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;

    goto :goto_0

    .line 646
    :cond_2
    iget-wide v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;->y:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_3

    return-void

    .line 647
    :cond_3
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;

    invoke-direct {v1, p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;)V

    .line 648
    iput-wide p1, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;->y:J

    .line 649
    iget-object p1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;

    iput-object p1, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;

    .line 650
    iput-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;

    :goto_1
    return-void
.end method

.method private intersectEdges(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V
    .locals 9

    .line 1662
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->LOGGER:Ljava/util/logging/Logger;

    const-class v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "insersectEdges"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1668
    :goto_0
    iget v3, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-ltz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 1670
    :goto_1
    invoke-direct {p0, p3, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->setZ(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    .line 1673
    iget v4, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    if-eqz v4, :cond_29

    iget v4, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    if-nez v4, :cond_2

    goto/16 :goto_d

    .line 1717
    :cond_2
    iget-object v4, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->polyTyp:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    iget-object v5, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->polyTyp:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    if-ne v4, v5, :cond_6

    .line 1718
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->clipFillType:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->subjFillType:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    invoke-virtual {p1, v1, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->isEvenOddFillType(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1719
    iget v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    .line 1720
    iget v4, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    iput v4, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    .line 1721
    iput v1, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    goto :goto_5

    .line 1724
    :cond_3
    iget v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    iget v4, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    add-int/2addr v1, v4

    if-nez v1, :cond_4

    .line 1725
    iget v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    neg-int v1, v1

    iput v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    goto :goto_2

    .line 1728
    :cond_4
    iget v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    iget v4, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    add-int/2addr v1, v4

    iput v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    .line 1730
    :goto_2
    iget v1, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    iget v4, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    sub-int/2addr v1, v4

    if-nez v1, :cond_5

    .line 1731
    iget v1, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    neg-int v1, v1

    iput v1, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    goto :goto_5

    .line 1734
    :cond_5
    iget v1, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    iget v4, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    sub-int/2addr v1, v4

    iput v1, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    goto :goto_5

    .line 1739
    :cond_6
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->clipFillType:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->subjFillType:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    invoke-virtual {p2, v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->isEvenOddFillType(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1740
    iget v4, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt2:I

    iget v5, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    add-int/2addr v4, v5

    iput v4, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt2:I

    goto :goto_4

    .line 1743
    :cond_7
    iget v4, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt2:I

    if-nez v4, :cond_8

    move v4, v2

    goto :goto_3

    :cond_8
    move v4, v1

    :goto_3
    iput v4, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt2:I

    .line 1745
    :goto_4
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->clipFillType:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->subjFillType:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    invoke-virtual {p1, v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->isEvenOddFillType(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1746
    iget v1, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt2:I

    iget v4, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    sub-int/2addr v1, v4

    iput v1, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt2:I

    goto :goto_5

    .line 1749
    :cond_9
    iget v4, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt2:I

    if-nez v4, :cond_a

    move v1, v2

    :cond_a
    iput v1, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt2:I

    .line 1754
    :goto_5
    iget-object v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->polyTyp:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    sget-object v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;->SUBJECT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    if-ne v1, v4, :cond_b

    .line 1755
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->subjFillType:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    .line 1756
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->clipFillType:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    goto :goto_6

    .line 1759
    :cond_b
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->clipFillType:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    .line 1760
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->subjFillType:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    .line 1762
    :goto_6
    iget-object v5, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->polyTyp:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    sget-object v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;->SUBJECT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    if-ne v5, v6, :cond_c

    .line 1763
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->subjFillType:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    .line 1764
    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->clipFillType:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    goto :goto_7

    .line 1767
    :cond_c
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->clipFillType:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    .line 1768
    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->subjFillType:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    .line 1772
    :goto_7
    sget-object v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper$2;->$SwitchMap$com$itextpdf$kernel$pdf$canvas$parser$clipper$IClipper$PolyFillType:[I

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;->ordinal()I

    move-result v1

    aget v1, v7, v1

    const/4 v7, 0x2

    if-eq v1, v2, :cond_e

    if-eq v1, v7, :cond_d

    .line 1780
    iget v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    goto :goto_8

    .line 1777
    :cond_d
    iget v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    neg-int v1, v1

    goto :goto_8

    .line 1774
    :cond_e
    iget v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    .line 1783
    :goto_8
    sget-object v8, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper$2;->$SwitchMap$com$itextpdf$kernel$pdf$canvas$parser$clipper$IClipper$PolyFillType:[I

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;->ordinal()I

    move-result v5

    aget v5, v8, v5

    if-eq v5, v2, :cond_10

    if-eq v5, v7, :cond_f

    .line 1791
    iget v5, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    goto :goto_9

    .line 1788
    :cond_f
    iget v5, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    neg-int v5, v5

    goto :goto_9

    .line 1785
    :cond_10
    iget v5, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    :goto_9
    if-eqz v0, :cond_15

    if-eqz v3, :cond_15

    if-eqz v1, :cond_11

    if-ne v1, v2, :cond_13

    :cond_11
    if-eqz v5, :cond_12

    if-ne v5, v2, :cond_13

    .line 1796
    :cond_12
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->polyTyp:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    iget-object v1, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->polyTyp:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->clipType:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;->XOR:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;

    if-eq v0, v1, :cond_14

    .line 1797
    :cond_13
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addLocalMaxPoly(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    goto/16 :goto_c

    .line 1800
    :cond_14
    invoke-direct {p0, p1, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addOutPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 1801
    invoke-direct {p0, p2, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addOutPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 1802
    invoke-static {p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->swapSides(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    .line 1803
    invoke-static {p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->swapPolyIndexes(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    goto/16 :goto_c

    :cond_15
    if-eqz v0, :cond_17

    if-eqz v5, :cond_16

    if-ne v5, v2, :cond_28

    .line 1808
    :cond_16
    invoke-direct {p0, p1, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addOutPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 1809
    invoke-static {p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->swapSides(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    .line 1810
    invoke-static {p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->swapPolyIndexes(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    goto/16 :goto_c

    :cond_17
    if-eqz v3, :cond_19

    if-eqz v1, :cond_18

    if-ne v1, v2, :cond_28

    .line 1816
    :cond_18
    invoke-direct {p0, p2, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addOutPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 1817
    invoke-static {p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->swapSides(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    .line 1818
    invoke-static {p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->swapPolyIndexes(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    goto/16 :goto_c

    :cond_19
    if-eqz v1, :cond_1a

    if-ne v1, v2, :cond_28

    :cond_1a
    if-eqz v5, :cond_1b

    if-ne v5, v2, :cond_28

    .line 1824
    :cond_1b
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper$2;->$SwitchMap$com$itextpdf$kernel$pdf$canvas$parser$clipper$IClipper$PolyFillType:[I

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v2, :cond_1d

    if-eq v0, v7, :cond_1c

    .line 1832
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt2:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    goto :goto_a

    .line 1829
    :cond_1c
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt2:I

    neg-int v0, v0

    goto :goto_a

    .line 1826
    :cond_1d
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt2:I

    .line 1835
    :goto_a
    sget-object v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper$2;->$SwitchMap$com$itextpdf$kernel$pdf$canvas$parser$clipper$IClipper$PolyFillType:[I

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v2, :cond_1f

    if-eq v3, v7, :cond_1e

    .line 1843
    iget v3, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt2:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    goto :goto_b

    .line 1840
    :cond_1e
    iget v3, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt2:I

    neg-int v3, v3

    goto :goto_b

    .line 1837
    :cond_1f
    iget v3, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt2:I

    .line 1847
    :goto_b
    iget-object v4, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->polyTyp:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    iget-object v6, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->polyTyp:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    if-eq v4, v6, :cond_20

    .line 1848
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addLocalMinPoly(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    goto :goto_c

    :cond_20
    if-ne v1, v2, :cond_27

    if-ne v5, v2, :cond_27

    .line 1851
    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper$2;->$SwitchMap$com$itextpdf$kernel$pdf$canvas$parser$clipper$IClipper$ClipType:[I

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->clipType:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;->ordinal()I

    move-result v4

    aget v1, v1, v4

    if-eq v1, v2, :cond_26

    if-eq v1, v7, :cond_25

    const/4 v2, 0x3

    if-eq v1, v2, :cond_22

    const/4 v0, 0x4

    if-eq v1, v0, :cond_21

    goto :goto_c

    .line 1868
    :cond_21
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addLocalMinPoly(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    goto :goto_c

    .line 1863
    :cond_22
    iget-object v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->polyTyp:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;->CLIP:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    if-ne v1, v2, :cond_23

    if-lez v0, :cond_23

    if-gtz v3, :cond_24

    :cond_23
    iget-object v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->polyTyp:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;->SUBJECT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    if-ne v1, v2, :cond_28

    if-gtz v0, :cond_28

    if-gtz v3, :cond_28

    .line 1864
    :cond_24
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addLocalMinPoly(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    goto :goto_c

    :cond_25
    if-gtz v0, :cond_28

    if-gtz v3, :cond_28

    .line 1859
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addLocalMinPoly(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    goto :goto_c

    :cond_26
    if-lez v0, :cond_28

    if-lez v3, :cond_28

    .line 1854
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addLocalMinPoly(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    goto :goto_c

    .line 1873
    :cond_27
    invoke-static {p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->swapSides(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    :cond_28
    :goto_c
    return-void

    .line 1676
    :cond_29
    :goto_d
    iget v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    if-nez v1, :cond_2a

    iget v1, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    if-nez v1, :cond_2a

    return-void

    .line 1679
    :cond_2a
    iget-object v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->polyTyp:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    iget-object v4, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->polyTyp:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    const/4 v5, -0x1

    if-ne v1, v4, :cond_2c

    iget v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    iget v4, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    if-eq v1, v4, :cond_2c

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->clipType:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;

    sget-object v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;->UNION:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;

    if-ne v1, v4, :cond_2c

    .line 1681
    iget v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    if-nez v1, :cond_2b

    if-eqz v3, :cond_30

    .line 1683
    invoke-direct {p0, p1, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addOutPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    if-eqz v0, :cond_30

    .line 1685
    iput v5, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    goto :goto_e

    :cond_2b
    if-eqz v0, :cond_30

    .line 1691
    invoke-direct {p0, p2, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addOutPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    if-eqz v3, :cond_30

    .line 1693
    iput v5, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    goto :goto_e

    .line 1698
    :cond_2c
    iget-object v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->polyTyp:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    iget-object v4, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->polyTyp:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    if-eq v1, v4, :cond_30

    .line 1699
    iget v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    if-nez v1, :cond_2e

    iget v1, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ne v1, v2, :cond_2e

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->clipType:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;

    sget-object v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;->UNION:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;

    if-ne v1, v4, :cond_2d

    iget v1, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt2:I

    if-nez v1, :cond_2e

    .line 1700
    :cond_2d
    invoke-direct {p0, p1, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addOutPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    if-eqz v0, :cond_30

    .line 1702
    iput v5, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    goto :goto_e

    .line 1705
    :cond_2e
    iget v0, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    if-nez v0, :cond_30

    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ne v0, v2, :cond_30

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->clipType:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;->UNION:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;

    if-ne v0, v1, :cond_2f

    iget p1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt2:I

    if-nez p1, :cond_30

    .line 1706
    :cond_2f
    invoke-direct {p0, p2, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addOutPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    if-eqz v3, :cond_30

    .line 1708
    iput v5, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    :cond_30
    :goto_e
    return-void
.end method

.method private intersectPoint(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;[Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V
    .locals 11

    .line 1879
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p3, v1

    .line 1884
    iget-wide v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->deltaX:D

    iget-wide v3, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->deltaX:D

    cmpl-double p3, v1, v3

    if-nez p3, :cond_0

    .line 1885
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->setY(Ljava/lang/Number;)V

    .line 1886
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->topX(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->setX(Ljava/lang/Number;)V

    return-void

    .line 1890
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getDelta()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p3, v1, v3

    if-nez p3, :cond_2

    .line 1891
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->setX(Ljava/lang/Number;)V

    .line 1892
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->isHorizontal()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1893
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->setY(Ljava/lang/Number;)V

    goto/16 :goto_0

    .line 1896
    :cond_1
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    long-to-double v3, v3

    iget-wide v5, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->deltaX:D

    div-double/2addr v3, v5

    sub-double/2addr v1, v3

    .line 1897
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    long-to-double v3, v3

    iget-wide v5, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->deltaX:D

    div-double/2addr v3, v5

    add-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->setY(Ljava/lang/Number;)V

    goto/16 :goto_0

    .line 1900
    :cond_2
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getDelta()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v1

    cmp-long p3, v1, v3

    if-nez p3, :cond_4

    .line 1901
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->setX(Ljava/lang/Number;)V

    .line 1902
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->isHorizontal()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 1903
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->setY(Ljava/lang/Number;)V

    goto/16 :goto_0

    .line 1906
    :cond_3
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    long-to-double v3, v3

    iget-wide v5, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->deltaX:D

    div-double/2addr v3, v5

    sub-double/2addr v1, v3

    .line 1907
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    long-to-double v3, v3

    iget-wide v5, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->deltaX:D

    div-double/2addr v3, v5

    add-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->setY(Ljava/lang/Number;)V

    goto :goto_0

    .line 1911
    :cond_4
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v3

    long-to-double v3, v3

    iget-wide v5, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->deltaX:D

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    .line 1912
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v5

    long-to-double v5, v5

    iget-wide v7, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->deltaX:D

    mul-double/2addr v5, v7

    sub-double/2addr v3, v5

    sub-double v5, v3, v1

    .line 1913
    iget-wide v7, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->deltaX:D

    iget-wide v9, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->deltaX:D

    sub-double/2addr v7, v9

    div-double/2addr v5, v7

    .line 1914
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->setY(Ljava/lang/Number;)V

    .line 1915
    iget-wide v7, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->deltaX:D

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    iget-wide v9, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->deltaX:D

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpg-double p3, v7, v9

    if-gez p3, :cond_5

    .line 1916
    iget-wide v3, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->deltaX:D

    mul-double/2addr v3, v5

    add-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->setX(Ljava/lang/Number;)V

    goto :goto_0

    .line 1919
    :cond_5
    iget-wide v1, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->deltaX:D

    mul-double/2addr v1, v5

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->setX(Ljava/lang/Number;)V

    .line 1923
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v3

    cmp-long p3, v1, v3

    if-ltz p3, :cond_6

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v3

    cmp-long p3, v1, v3

    if-gez p3, :cond_9

    .line 1924
    :cond_6
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v3

    cmp-long p3, v1, v3

    if-lez p3, :cond_7

    .line 1925
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->setY(Ljava/lang/Number;)V

    goto :goto_1

    .line 1928
    :cond_7
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->setY(Ljava/lang/Number;)V

    .line 1930
    :goto_1
    iget-wide v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->deltaX:D

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    iget-wide v3, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->deltaX:D

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpg-double p3, v1, v3

    if-gez p3, :cond_8

    .line 1931
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->topX(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->setX(Ljava/lang/Number;)V

    goto :goto_2

    .line 1934
    :cond_8
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v1

    invoke-static {p2, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->topX(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->setX(Ljava/lang/Number;)V

    .line 1938
    :cond_9
    :goto_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v3

    cmp-long p3, v1, v3

    if-lez p3, :cond_b

    .line 1939
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->setY(Ljava/lang/Number;)V

    .line 1941
    iget-wide v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->deltaX:D

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    iget-wide v3, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->deltaX:D

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpl-double p3, v1, v3

    if-lez p3, :cond_a

    .line 1942
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v1

    invoke-static {p2, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->topX(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->setX(Ljava/lang/Number;)V

    goto :goto_3

    .line 1945
    :cond_a
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->topX(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->setX(Ljava/lang/Number;)V

    :cond_b
    :goto_3
    return-void
.end method

.method private static isParam1RightOfParam2(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;)Z
    .locals 0

    .line 99
    :cond_0
    iget-object p0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->firstLeft:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0
.end method

.method private static isPointInPolygon(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;)I
    .locals 23

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v0

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v2

    .line 115
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v6

    move-object/from16 v9, p1

    const/4 v10, 0x0

    .line 117
    :goto_0
    iget-object v9, v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 118
    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v11

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v11

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v13

    invoke-virtual {v13}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v13

    cmp-long v15, v13, v2

    const/16 v16, -0x1

    const/16 v17, 0x1

    if-nez v15, :cond_3

    cmp-long v18, v11, v0

    if-eqz v18, :cond_2

    cmp-long v19, v6, v2

    if-nez v19, :cond_3

    if-lez v18, :cond_0

    move/from16 v8, v17

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    cmp-long v18, v4, v0

    if-gez v18, :cond_1

    move-object/from16 v18, v9

    move/from16 v9, v17

    goto :goto_2

    :cond_1
    move-object/from16 v18, v9

    const/4 v9, 0x0

    :goto_2
    if-ne v8, v9, :cond_4

    :cond_2
    return v16

    :cond_3
    move-object/from16 v18, v9

    :cond_4
    cmp-long v8, v6, v2

    if-gez v8, :cond_5

    move/from16 v8, v17

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    :goto_3
    if-gez v15, :cond_6

    move/from16 v9, v17

    goto :goto_4

    :cond_6
    const/4 v9, 0x0

    :goto_4
    if-eq v8, v9, :cond_f

    cmp-long v8, v4, v0

    const-wide/16 v19, 0x0

    if-ltz v8, :cond_b

    cmp-long v8, v11, v0

    if-lez v8, :cond_7

    rsub-int/lit8 v10, v10, 0x1

    move-wide/from16 v21, v0

    move-object/from16 v1, v18

    move-object/from16 v0, p1

    goto :goto_a

    :cond_7
    sub-long/2addr v4, v0

    long-to-double v4, v4

    sub-long v8, v13, v2

    long-to-double v8, v8

    mul-double/2addr v4, v8

    sub-long v8, v11, v0

    long-to-double v8, v8

    move-wide/from16 v21, v0

    sub-long v0, v6, v2

    long-to-double v0, v0

    mul-double/2addr v8, v0

    sub-double/2addr v4, v8

    cmpl-double v0, v4, v19

    if-nez v0, :cond_8

    return v16

    :cond_8
    if-lez v0, :cond_9

    move/from16 v0, v17

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    :goto_5
    cmp-long v1, v13, v6

    if-lez v1, :cond_a

    move/from16 v1, v17

    goto :goto_6

    :cond_a
    const/4 v1, 0x0

    :goto_6
    if-ne v0, v1, :cond_10

    rsub-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_9

    :cond_b
    move-wide/from16 v21, v0

    cmp-long v0, v11, v21

    if-lez v0, :cond_10

    sub-long v4, v4, v21

    long-to-double v0, v4

    sub-long v4, v13, v2

    long-to-double v4, v4

    mul-double/2addr v0, v4

    sub-long v4, v11, v21

    long-to-double v4, v4

    sub-long v8, v6, v2

    long-to-double v8, v8

    mul-double/2addr v4, v8

    sub-double/2addr v0, v4

    cmpl-double v0, v0, v19

    if-nez v0, :cond_c

    return v16

    :cond_c
    if-lez v0, :cond_d

    move/from16 v0, v17

    goto :goto_7

    :cond_d
    const/4 v0, 0x0

    :goto_7
    cmp-long v1, v13, v6

    if-lez v1, :cond_e

    move/from16 v1, v17

    goto :goto_8

    :cond_e
    const/4 v1, 0x0

    :goto_8
    if-ne v0, v1, :cond_10

    rsub-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_f
    move-wide/from16 v21, v0

    :cond_10
    :goto_9
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    :goto_a
    if-ne v0, v1, :cond_11

    return v10

    :cond_11
    move-object v9, v1

    move-wide v4, v11

    move-wide v6, v13

    move-wide/from16 v0, v21

    goto/16 :goto_0
.end method

.method private joinCommonEdges()V
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    .line 1951
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->joins:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_12

    .line 1952
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->joins:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;

    .line 1954
    iget-object v3, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;->outPt1:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    iget v3, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->idx:I

    invoke-direct {p0, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->getOutRec(I)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    move-result-object v3

    .line 1955
    iget-object v4, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;->outPt2:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    iget v4, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->idx:I

    invoke-direct {p0, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->getOutRec(I)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    move-result-object v4

    .line 1957
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->getPoints()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v5

    if-eqz v5, :cond_11

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->getPoints()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v5

    if-nez v5, :cond_0

    goto/16 :goto_7

    .line 1960
    :cond_0
    iget-boolean v5, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isOpen:Z

    if-nez v5, :cond_11

    iget-boolean v5, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isOpen:Z

    if-eqz v5, :cond_1

    goto/16 :goto_7

    :cond_1
    if-ne v3, v4, :cond_2

    goto :goto_1

    .line 1968
    :cond_2
    invoke-static {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->isParam1RightOfParam2(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v4

    goto :goto_2

    .line 1971
    :cond_3
    invoke-static {v4, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->isParam1RightOfParam2(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;)Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_1
    move-object v5, v3

    goto :goto_2

    .line 1975
    :cond_4
    invoke-static {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getLowerMostRec(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    move-result-object v5

    .line 1978
    :goto_2
    invoke-direct {p0, v2, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->joinPoints(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;)Z

    move-result v6

    if-nez v6, :cond_5

    goto/16 :goto_7

    :cond_5
    const/4 v6, 0x0

    if-ne v3, v4, :cond_f

    .line 1985
    iget-object v4, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;->outPt1:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->setPoints(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;)V

    .line 1986
    iput-object v6, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->bottomPt:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 1987
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->createOutRec()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    move-result-object v4

    .line 1988
    iget-object v5, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;->outPt2:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->setPoints(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;)V

    .line 1991
    invoke-direct {p0, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->updateOutPtIdxs(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;)V

    .line 1995
    iget-boolean v5, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->usingPolyTree:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_8

    move v5, v0

    .line 1996
    :goto_3
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->polyOuts:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    if-ge v5, v7, :cond_8

    .line 1997
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->polyOuts:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    .line 1998
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->getPoints()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v8

    if-eqz v8, :cond_7

    iget-object v8, v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->firstLeft:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    invoke-static {v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->parseFirstLeft(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    move-result-object v8

    if-ne v8, v3, :cond_7

    iget-boolean v8, v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isHole:Z

    iget-boolean v9, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isHole:Z

    if-ne v8, v9, :cond_6

    goto :goto_4

    .line 2001
    :cond_6
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->getPoints()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v8

    iget-object v9, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;->outPt2:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    invoke-static {v8, v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->poly2ContainsPoly1(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2002
    iput-object v4, v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->firstLeft:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    :cond_7
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2007
    :cond_8
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->getPoints()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v2

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->getPoints()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->poly2ContainsPoly1(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;)Z

    move-result v2

    const-wide/16 v7, 0x0

    if-eqz v2, :cond_b

    .line 2009
    iget-boolean v2, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isHole:Z

    xor-int/2addr v2, v6

    iput-boolean v2, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isHole:Z

    .line 2010
    iput-object v3, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->firstLeft:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    .line 2013
    iget-boolean v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->usingPolyTree:Z

    if-eqz v2, :cond_9

    .line 2014
    invoke-direct {p0, v4, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->fixupFirstLefts2(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;)V

    .line 2017
    :cond_9
    iget-boolean v2, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isHole:Z

    iget-boolean v3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->reverseSolution:Z

    xor-int/2addr v2, v3

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->area()D

    move-result-wide v9

    cmpl-double v3, v9, v7

    if-lez v3, :cond_a

    goto :goto_5

    :cond_a
    move v6, v0

    :goto_5
    if-ne v2, v6, :cond_11

    .line 2018
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->getPoints()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->reversePolyPtLinks()V

    goto :goto_7

    .line 2022
    :cond_b
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->getPoints()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v2

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->getPoints()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->poly2ContainsPoly1(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2024
    iget-boolean v2, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isHole:Z

    iput-boolean v2, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isHole:Z

    .line 2025
    iget-boolean v2, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isHole:Z

    xor-int/2addr v2, v6

    iput-boolean v2, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isHole:Z

    .line 2026
    iget-object v2, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->firstLeft:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    iput-object v2, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->firstLeft:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    .line 2027
    iput-object v4, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->firstLeft:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    .line 2030
    iget-boolean v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->usingPolyTree:Z

    if-eqz v2, :cond_c

    .line 2031
    invoke-direct {p0, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->fixupFirstLefts2(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;)V

    .line 2034
    :cond_c
    iget-boolean v2, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isHole:Z

    iget-boolean v4, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->reverseSolution:Z

    xor-int/2addr v2, v4

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->area()D

    move-result-wide v4

    cmpl-double v4, v4, v7

    if-lez v4, :cond_d

    goto :goto_6

    :cond_d
    move v6, v0

    :goto_6
    if-ne v2, v6, :cond_11

    .line 2035
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->getPoints()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->reversePolyPtLinks()V

    goto :goto_7

    .line 2040
    :cond_e
    iget-boolean v2, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isHole:Z

    iput-boolean v2, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isHole:Z

    .line 2041
    iget-object v2, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->firstLeft:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    iput-object v2, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->firstLeft:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    .line 2044
    iget-boolean v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->usingPolyTree:Z

    if-eqz v2, :cond_11

    .line 2045
    invoke-direct {p0, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->fixupFirstLefts1(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;)V

    goto :goto_7

    .line 2053
    :cond_f
    invoke-virtual {v4, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->setPoints(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;)V

    .line 2054
    iput-object v6, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->bottomPt:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 2055
    iget v2, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->Idx:I

    iput v2, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->Idx:I

    .line 2057
    iget-boolean v2, v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isHole:Z

    iput-boolean v2, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isHole:Z

    if-ne v5, v4, :cond_10

    .line 2059
    iget-object v2, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->firstLeft:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    iput-object v2, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->firstLeft:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    .line 2061
    :cond_10
    iput-object v3, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->firstLeft:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    .line 2064
    iget-boolean v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->usingPolyTree:Z

    if-eqz v2, :cond_11

    .line 2065
    invoke-direct {p0, v4, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->fixupFirstLefts2(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;)V

    :cond_11
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_12
    return-void
.end method

.method private static joinHorz(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Z)Z
    .locals 7

    .line 162
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    sget-object p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$Direction;->RIGHT_TO_LEFT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$Direction;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$Direction;->LEFT_TO_RIGHT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$Direction;

    .line 163
    :goto_0
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v0

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v2

    cmp-long p3, v0, v2

    if-lez p3, :cond_1

    sget-object p3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$Direction;->RIGHT_TO_LEFT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$Direction;

    goto :goto_1

    :cond_1
    sget-object p3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$Direction;->LEFT_TO_RIGHT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$Direction;

    :goto_1
    const/4 v0, 0x0

    if-ne p1, p3, :cond_2

    return v0

    .line 173
    :cond_2
    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$Direction;->LEFT_TO_RIGHT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$Direction;

    if-ne p1, v1, :cond_5

    .line 174
    :goto_2
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v1

    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_3

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_3

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v1

    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 175
    iget-object p0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    goto :goto_2

    :cond_3
    if-eqz p5, :cond_4

    .line 177
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v1

    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    .line 178
    iget-object p0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    :cond_4
    xor-int/lit8 v1, p5, 0x1

    .line 180
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->duplicate(Z)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v1

    .line 181
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 183
    invoke-virtual {v1, p4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->setPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    xor-int/lit8 p0, p5, 0x1

    .line 184
    invoke-virtual {v1, p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->duplicate(Z)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object p0

    goto :goto_4

    .line 188
    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v1

    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_6

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_6

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v1

    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_6

    .line 189
    iget-object p0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    goto :goto_3

    :cond_6
    if-nez p5, :cond_7

    .line 191
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v1

    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_7

    .line 192
    iget-object p0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 194
    :cond_7
    invoke-virtual {p0, p5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->duplicate(Z)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v1

    .line 195
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 197
    invoke-virtual {v1, p4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->setPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    .line 198
    invoke-virtual {v1, p5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->duplicate(Z)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object p0

    :goto_4
    move-object v6, v1

    move-object v1, p0

    move-object p0, v6

    .line 202
    :cond_8
    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$Direction;->LEFT_TO_RIGHT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$Direction;

    if-ne p3, v2, :cond_b

    .line 203
    :goto_5
    iget-object p3, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v2

    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    cmp-long p3, v2, v4

    if-gtz p3, :cond_9

    iget-object p3, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    cmp-long p3, v2, v4

    if-ltz p3, :cond_9

    iget-object p3, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v2

    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v4

    cmp-long p3, v2, v4

    if-nez p3, :cond_9

    .line 204
    iget-object p2, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    goto :goto_5

    :cond_9
    if-eqz p5, :cond_a

    .line 206
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v2

    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    cmp-long p3, v2, v4

    if-eqz p3, :cond_a

    .line 207
    iget-object p2, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    :cond_a
    xor-int/lit8 p3, p5, 0x1

    .line 209
    invoke-virtual {p2, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->duplicate(Z)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object p3

    .line 210
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 212
    invoke-virtual {p3, p4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->setPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    xor-int/lit8 p2, p5, 0x1

    .line 213
    invoke-virtual {p3, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->duplicate(Z)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object p2

    goto :goto_7

    .line 218
    :cond_b
    :goto_6
    iget-object p3, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v2

    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    cmp-long p3, v2, v4

    if-ltz p3, :cond_c

    iget-object p3, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    cmp-long p3, v2, v4

    if-gtz p3, :cond_c

    iget-object p3, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v2

    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v4

    cmp-long p3, v2, v4

    if-nez p3, :cond_c

    .line 219
    iget-object p2, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    goto :goto_6

    :cond_c
    if-nez p5, :cond_d

    .line 221
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v2

    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    cmp-long p3, v2, v4

    if-eqz p3, :cond_d

    .line 222
    iget-object p2, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 224
    :cond_d
    invoke-virtual {p2, p5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->duplicate(Z)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object p3

    .line 225
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 227
    invoke-virtual {p3, p4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->setPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    .line 228
    invoke-virtual {p3, p5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->duplicate(Z)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object p2

    :goto_7
    move-object v6, p3

    move-object p3, p2

    move-object p2, v6

    .line 234
    :cond_e
    sget-object p4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$Direction;->LEFT_TO_RIGHT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$Direction;

    const/4 v2, 0x1

    if-ne p1, p4, :cond_f

    move v0, v2

    :cond_f
    if-ne v0, p5, :cond_10

    .line 235
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 236
    iput-object p0, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 237
    iput-object p3, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 238
    iput-object v1, p3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    goto :goto_8

    .line 241
    :cond_10
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 242
    iput-object p0, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 243
    iput-object p3, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 244
    iput-object v1, p3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    :goto_8
    return v2
.end method

.method private joinPoints(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 250
    iget-object v4, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;->outPt1:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 251
    iget-object v5, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;->outPt2:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 260
    iget-object v6, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;->outPt1:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;->getOffPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v8

    cmp-long v6, v6, v8

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    move v6, v8

    :goto_0
    if-eqz v6, :cond_8

    .line 262
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;->getOffPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v9

    iget-object v10, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;->outPt1:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;->getOffPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v9

    iget-object v10, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;->outPt2:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    if-eq v2, v3, :cond_1

    return v8

    .line 267
    :cond_1
    iget-object v2, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;->outPt1:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    iget-object v2, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    :goto_1
    if-eq v2, v4, :cond_2

    .line 268
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;->getOffPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 269
    iget-object v2, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    goto :goto_1

    .line 271
    :cond_2
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;->getOffPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v9

    cmp-long v2, v2, v9

    if-lez v2, :cond_3

    move v2, v7

    goto :goto_2

    :cond_3
    move v2, v8

    .line 272
    :goto_2
    iget-object v3, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;->outPt2:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    iget-object v3, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    :goto_3
    if-eq v3, v5, :cond_4

    .line 273
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;->getOffPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 274
    iget-object v3, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    goto :goto_3

    .line 276
    :cond_4
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;->getOffPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v11

    cmp-long v3, v9, v11

    if-lez v3, :cond_5

    move v3, v7

    goto :goto_4

    :cond_5
    move v3, v8

    :goto_4
    if-ne v2, v3, :cond_6

    return v8

    :cond_6
    if-eqz v2, :cond_7

    .line 281
    invoke-virtual {v4, v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->duplicate(Z)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v2

    .line 282
    invoke-virtual {v5, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->duplicate(Z)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v3

    .line 283
    iput-object v5, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 284
    iput-object v4, v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 285
    iput-object v3, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 286
    iput-object v2, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 287
    iput-object v4, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;->outPt1:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 288
    iput-object v2, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;->outPt2:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    return v7

    .line 292
    :cond_7
    invoke-virtual {v4, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->duplicate(Z)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v2

    .line 293
    invoke-virtual {v5, v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->duplicate(Z)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v3

    .line 294
    iput-object v5, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 295
    iput-object v4, v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 296
    iput-object v3, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 297
    iput-object v2, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 298
    iput-object v4, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;->outPt1:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 299
    iput-object v2, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;->outPt2:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    return v7

    :cond_8
    if-eqz v6, :cond_15

    move-object v2, v4

    .line 308
    :goto_5
    iget-object v3, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v9

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v11

    cmp-long v3, v9, v11

    if-nez v3, :cond_9

    iget-object v3, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    if-eq v3, v4, :cond_9

    iget-object v3, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    if-eq v3, v5, :cond_9

    .line 309
    iget-object v2, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    goto :goto_5

    :cond_9
    move-object v9, v4

    .line 311
    :goto_6
    iget-object v3, v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v3

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v10

    cmp-long v3, v3, v10

    if-nez v3, :cond_a

    iget-object v3, v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    if-eq v3, v2, :cond_a

    iget-object v3, v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    if-eq v3, v5, :cond_a

    .line 312
    iget-object v9, v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    goto :goto_6

    .line 314
    :cond_a
    iget-object v3, v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    if-eq v3, v2, :cond_14

    iget-object v3, v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    if-ne v3, v5, :cond_b

    goto/16 :goto_b

    :cond_b
    move-object v10, v5

    .line 319
    :goto_7
    iget-object v3, v10, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v3

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v11

    cmp-long v3, v3, v11

    if-nez v3, :cond_c

    iget-object v3, v10, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    if-eq v3, v5, :cond_c

    iget-object v3, v10, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    if-eq v3, v9, :cond_c

    .line 320
    iget-object v10, v10, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    goto :goto_7

    :cond_c
    move-object v11, v5

    .line 322
    :goto_8
    iget-object v3, v11, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v3

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_d

    iget-object v3, v11, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    if-eq v3, v10, :cond_d

    iget-object v3, v11, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    if-eq v3, v2, :cond_d

    .line 323
    iget-object v11, v11, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    goto :goto_8

    .line 325
    :cond_d
    iget-object v3, v11, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    if-eq v3, v10, :cond_14

    iget-object v3, v11, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    if-ne v3, v2, :cond_e

    goto/16 :goto_b

    .line 329
    :cond_e
    new-array v3, v7, [J

    new-array v4, v7, [J

    .line 331
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v12

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v14

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v16

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v18

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    invoke-static/range {v12 .. v21}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->getOverlap(JJJJ[J[J)Z

    move-result v5

    if-nez v5, :cond_f

    return v8

    .line 334
    :cond_f
    aget-wide v5, v3, v8

    .line 335
    aget-wide v3, v4, v8

    .line 342
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v12

    cmp-long v12, v12, v5

    if-ltz v12, :cond_11

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v12

    cmp-long v12, v12, v3

    if-gtz v12, :cond_11

    .line 343
    new-instance v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    .line 344
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v12

    cmp-long v4, v4, v12

    if-lez v4, :cond_10

    goto :goto_9

    :cond_10
    move v7, v8

    :goto_9
    move-object v12, v3

    move v13, v7

    goto/16 :goto_a

    .line 346
    :cond_11
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v12

    cmp-long v12, v12, v5

    if-ltz v12, :cond_12

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v12

    cmp-long v12, v12, v3

    if-gtz v12, :cond_12

    .line 347
    new-instance v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    .line 348
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v12

    cmp-long v4, v4, v12

    if-lez v4, :cond_10

    goto :goto_9

    .line 350
    :cond_12
    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v12

    cmp-long v5, v12, v5

    if-ltz v5, :cond_13

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-gtz v3, :cond_13

    .line 351
    new-instance v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    .line 352
    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v12

    cmp-long v4, v4, v12

    if-lez v4, :cond_10

    goto :goto_9

    .line 355
    :cond_13
    new-instance v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    .line 356
    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v12

    cmp-long v4, v4, v12

    if-lez v4, :cond_10

    goto/16 :goto_9

    .line 358
    :goto_a
    iput-object v2, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;->outPt1:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 359
    iput-object v10, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;->outPt2:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-object v8, v2

    .line 360
    invoke-static/range {v8 .. v13}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->joinHorz(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Z)Z

    move-result v1

    return v1

    :cond_14
    :goto_b
    return v8

    .line 368
    :cond_15
    iget-object v6, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 369
    :goto_c
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v9

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    if-eq v6, v4, :cond_16

    .line 370
    iget-object v6, v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    goto :goto_c

    .line 372
    :cond_16
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v9

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v11

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-gtz v9, :cond_18

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v9

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;->getOffPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v11

    iget-boolean v12, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->useFullRange:Z

    invoke-static {v9, v10, v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->slopesEqual(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Z)Z

    move-result v9

    if-nez v9, :cond_17

    goto :goto_d

    :cond_17
    move v9, v8

    goto :goto_e

    :cond_18
    :goto_d
    move v9, v7

    :goto_e
    if-eqz v9, :cond_1b

    .line 374
    iget-object v6, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 375
    :goto_f
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v10

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    if-eq v6, v4, :cond_19

    .line 376
    iget-object v6, v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    goto :goto_f

    .line 378
    :cond_19
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v10

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-gtz v10, :cond_1a

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v10

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;->getOffPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v12

    iget-boolean v13, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->useFullRange:Z

    invoke-static {v10, v11, v12, v13}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->slopesEqual(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Z)Z

    move-result v10

    if-nez v10, :cond_1b

    :cond_1a
    return v8

    .line 383
    :cond_1b
    iget-object v10, v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 384
    :goto_10
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v11

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c

    if-eq v10, v5, :cond_1c

    .line 385
    iget-object v10, v10, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    goto :goto_10

    .line 387
    :cond_1c
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v11

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v11

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v13

    invoke-virtual {v13}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v13

    cmp-long v11, v11, v13

    if-gtz v11, :cond_1e

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v11

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;->getOffPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v13

    iget-boolean v14, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->useFullRange:Z

    invoke-static {v11, v12, v13, v14}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->slopesEqual(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Z)Z

    move-result v11

    if-nez v11, :cond_1d

    goto :goto_11

    :cond_1d
    move v11, v8

    goto :goto_12

    :cond_1e
    :goto_11
    move v11, v7

    :goto_12
    if-eqz v11, :cond_21

    .line 389
    iget-object v10, v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 390
    :goto_13
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v12

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1f

    if-eq v10, v5, :cond_1f

    .line 391
    iget-object v10, v10, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    goto :goto_13

    .line 393
    :cond_1f
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v12

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v14

    invoke-virtual {v14}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-gtz v12, :cond_20

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v12

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;->getOffPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v14

    iget-boolean v15, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->useFullRange:Z

    invoke-static {v12, v13, v14, v15}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->slopesEqual(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Z)Z

    move-result v12

    if-nez v12, :cond_21

    :cond_20
    return v8

    :cond_21
    if-eq v6, v4, :cond_24

    if-eq v10, v5, :cond_24

    if-eq v6, v10, :cond_24

    if-ne v2, v3, :cond_22

    if-ne v9, v11, :cond_22

    goto :goto_14

    :cond_22
    if-eqz v9, :cond_23

    .line 403
    invoke-virtual {v4, v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->duplicate(Z)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v2

    .line 404
    invoke-virtual {v5, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->duplicate(Z)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v3

    .line 405
    iput-object v5, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 406
    iput-object v4, v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 407
    iput-object v3, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 408
    iput-object v2, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 409
    iput-object v4, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;->outPt1:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 410
    iput-object v2, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;->outPt2:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    return v7

    .line 414
    :cond_23
    invoke-virtual {v4, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->duplicate(Z)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v2

    .line 415
    invoke-virtual {v5, v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->duplicate(Z)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v3

    .line 416
    iput-object v5, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 417
    iput-object v4, v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 418
    iput-object v3, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 419
    iput-object v2, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 420
    iput-object v4, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;->outPt1:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 421
    iput-object v2, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Join;->outPt2:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    return v7

    :cond_24
    :goto_14
    return v8
.end method

.method private static minkowski(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;ZZ)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;
    .locals 17

    move-object/from16 v0, p1

    .line 429
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->size()I

    move-result v1

    .line 430
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->size()I

    move-result v2

    .line 431
    new-instance v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;

    invoke-direct {v3, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;-><init>(I)V

    const/4 v4, 0x0

    if-eqz p2, :cond_1

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_3

    .line 434
    new-instance v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-direct {v6, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;-><init>(I)V

    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    .line 436
    new-instance v14, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v9

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v11

    add-long v10, v9, v11

    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v12

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v8

    add-long/2addr v12, v8

    const-wide/16 v15, 0x0

    move-object v9, v14

    move-object v8, v14

    move-wide v14, v15

    invoke-direct/range {v9 .. v15}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJJ)V

    invoke-virtual {v6, v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 438
    :cond_0
    invoke-virtual {v3, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_2
    if-ge v5, v2, :cond_3

    .line 443
    new-instance v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-direct {v6, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;-><init>(I)V

    .line 444
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    .line 445
    new-instance v14, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v9

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v11

    sub-long v10, v9, v11

    invoke-virtual {v0, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v12

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v8

    sub-long/2addr v12, v8

    const-wide/16 v15, 0x0

    move-object v9, v14

    move-object v8, v14

    move-wide v14, v15

    invoke-direct/range {v9 .. v15}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJJ)V

    invoke-virtual {v6, v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 447
    :cond_2
    invoke-virtual {v3, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 451
    :cond_3
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;

    add-int v5, v2, p3

    add-int/lit8 v6, v1, 0x1

    mul-int/2addr v5, v6

    invoke-direct {v0, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;-><init>(I)V

    move v5, v4

    :goto_4
    add-int/lit8 v6, v2, -0x1

    add-int v6, v6, p3

    if-ge v5, v6, :cond_6

    move v6, v4

    :goto_5
    if-ge v6, v1, :cond_5

    .line 454
    new-instance v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;-><init>(I)V

    .line 455
    rem-int v8, v5, v2

    invoke-virtual {v3, v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    rem-int v10, v6, v1

    invoke-virtual {v9, v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v5, 0x1

    .line 456
    rem-int/2addr v9, v2

    invoke-virtual {v3, v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v11, v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 457
    invoke-virtual {v3, v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    add-int/lit8 v6, v6, 0x1

    rem-int v10, v6, v1

    invoke-virtual {v9, v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 458
    invoke-virtual {v3, v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {v8, v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->add(Ljava/lang/Object;)Z

    .line 459
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->orientation()Z

    move-result v8

    if-nez v8, :cond_4

    .line 460
    invoke-static {v7}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 462
    :cond_4
    invoke-virtual {v0, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    return-object v0
.end method

.method public static minkowskiDiff(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 469
    invoke-static {p0, p1, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->minkowski(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;ZZ)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;

    move-result-object p0

    .line 470
    new-instance p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;

    invoke-direct {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;-><init>()V

    .line 471
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;->SUBJECT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    invoke-virtual {p1, p0, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addPaths(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;Z)Z

    .line 472
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;->UNION:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;->NON_ZERO:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;->NON_ZERO:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    invoke-virtual {p1, v0, p0, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->execute(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;)Z

    return-object p0
.end method

.method public static minkowskiSum(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;Z)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;
    .locals 2

    const/4 v0, 0x1

    .line 477
    invoke-static {p0, p1, v0, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->minkowski(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;ZZ)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;

    move-result-object p0

    .line 478
    new-instance p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;

    invoke-direct {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;-><init>()V

    .line 479
    sget-object p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;->SUBJECT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    invoke-virtual {p1, p0, p2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addPaths(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;Z)Z

    .line 480
    sget-object p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;->UNION:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;

    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;->NON_ZERO:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;->NON_ZERO:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    invoke-virtual {p1, p2, p0, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->execute(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;)Z

    return-object p0
.end method

.method public static minkowskiSum(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;Z)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;
    .locals 7

    .line 485
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;-><init>()V

    .line 486
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 487
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 488
    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    const/4 v5, 0x1

    invoke-static {p0, v4, v5, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->minkowski(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;ZZ)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;

    move-result-object v4

    .line 489
    sget-object v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;->SUBJECT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    invoke-virtual {v1, v4, v6, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addPaths(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;Z)Z

    if-eqz p2, :cond_0

    .line 491
    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v4, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;->TranslatePath(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;

    move-result-object v4

    .line 492
    sget-object v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;->CLIP:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    invoke-virtual {v1, v4, v6, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addPath(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;Z)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 495
    :cond_1
    sget-object p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;->UNION:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;

    sget-object p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;->NON_ZERO:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    sget-object p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;->NON_ZERO:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    invoke-virtual {v1, p0, v0, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->execute(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;)Z

    return-object v0
.end method

.method private static poly2ContainsPoly1(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;)Z
    .locals 3

    move-object v0, p0

    .line 503
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->isPointInPolygon(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_2

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 507
    :cond_2
    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    if-ne v0, p0, :cond_0

    return v2
.end method

.method private popScanbeam()J
    .locals 3

    .line 2072
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->LOGGER:Ljava/util/logging/Logger;

    const-class v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "popBeam"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;)V

    .line 2074
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->scanbeam:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;

    iget-wide v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;->y:J

    .line 2075
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->scanbeam:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;

    iget-object v2, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;

    iput-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->scanbeam:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;

    return-wide v0
.end method

.method private processEdgesAtTopOfScanbeam(J)V
    .locals 13

    .line 2080
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->LOGGER:Ljava/util/logging/Logger;

    const-class v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "processEdgesAtTopOfScanbeam"

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;)V

    .line 2082
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->activeEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    :goto_0
    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_9

    long-to-double v5, p1

    .line 2086
    invoke-virtual {v0, v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->isMaxima(D)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2089
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getMaximaPair()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 2090
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->isHorizontal()Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    move v7, v4

    goto :goto_2

    :cond_1
    :goto_1
    move v7, v2

    :cond_2
    :goto_2
    if-eqz v7, :cond_5

    .line 2094
    iget-boolean v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->strictlySimple:Z

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->InsertMaxima(J)V

    .line 2095
    :cond_3
    iget-object v2, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2096
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->doMaxima(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    if-nez v2, :cond_4

    .line 2098
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->activeEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_0

    .line 2101
    :cond_4
    iget-object v0, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_0

    .line 2106
    :cond_5
    invoke-virtual {v0, v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->isIntermediate(D)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInLML:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->isHorizontal()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2107
    new-array v2, v2, [Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    aput-object v0, v2, v4

    .line 2108
    invoke-direct {p0, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->updateEdgeIntoAEL([Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    .line 2109
    aget-object v0, v2, v4

    .line 2110
    iget v2, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-ltz v2, :cond_6

    .line 2111
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addOutPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 2113
    :cond_6
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addEdgeToSEL(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    goto :goto_3

    .line 2116
    :cond_7
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v2

    invoke-static {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->topX(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->setX(Ljava/lang/Number;)V

    .line 2117
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->setY(Ljava/lang/Number;)V

    .line 2122
    :goto_3
    iget-boolean v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->strictlySimple:Z

    if-eqz v2, :cond_8

    .line 2123
    iget-object v2, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2124
    iget v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-ltz v4, :cond_8

    iget v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    if-eqz v4, :cond_8

    if-eqz v2, :cond_8

    iget v4, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-ltz v4, :cond_8

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_8

    iget v4, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    if-eqz v4, :cond_8

    .line 2126
    new-instance v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    .line 2128
    invoke-direct {p0, v4, v2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->setZ(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    .line 2130
    invoke-direct {p0, v2, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addOutPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v2

    .line 2131
    invoke-direct {p0, v0, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addOutPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v5

    .line 2132
    invoke-direct {p0, v2, v5, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addJoin(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    .line 2136
    :cond_8
    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto/16 :goto_0

    .line 2141
    :cond_9
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->processHorizontals()V

    const/4 v0, 0x0

    .line 2142
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->maxima:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;

    .line 2145
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->activeEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    :goto_4
    if-eqz v5, :cond_d

    long-to-double v6, p1

    .line 2147
    invoke-virtual {v5, v6, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->isIntermediate(D)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2149
    iget v6, v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-ltz v6, :cond_a

    .line 2150
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addOutPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v6

    goto :goto_5

    :cond_a
    move-object v6, v0

    .line 2152
    :goto_5
    new-array v7, v2, [Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    aput-object v5, v7, v4

    .line 2153
    invoke-direct {p0, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->updateEdgeIntoAEL([Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    .line 2154
    aget-object v5, v7, v4

    .line 2157
    iget-object v7, v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2158
    iget-object v8, v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-eqz v7, :cond_b

    .line 2159
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v9

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    if-eqz v6, :cond_b

    iget v9, v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-ltz v9, :cond_b

    .line 2160
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v9

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v9

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v11

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-lez v9, :cond_b

    iget-boolean v9, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->useFullRange:Z

    invoke-static {v5, v7, v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->slopesEqual(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Z)Z

    move-result v9

    if-eqz v9, :cond_b

    iget v9, v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    if-eqz v9, :cond_b

    iget v9, v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    if-eqz v9, :cond_b

    .line 2162
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addOutPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v7

    .line 2163
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addJoin(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    goto :goto_6

    :cond_b
    if-eqz v8, :cond_c

    .line 2165
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v7

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    if-eqz v6, :cond_c

    iget v7, v8, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-ltz v7, :cond_c

    .line 2166
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v9

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v11

    cmp-long v7, v9, v11

    if-lez v7, :cond_c

    iget-boolean v7, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->useFullRange:Z

    invoke-static {v5, v8, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->slopesEqual(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Z)Z

    move-result v7

    if-eqz v7, :cond_c

    iget v7, v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    if-eqz v7, :cond_c

    iget v7, v8, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    if-eqz v7, :cond_c

    .line 2168
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v7

    invoke-direct {p0, v8, v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addOutPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v7

    .line 2169
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addJoin(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    .line 2172
    :cond_c
    :goto_6
    iget-object v5, v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto/16 :goto_4

    .line 2174
    :cond_d
    sget-object p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Ljava/util/logging/Logger;->exiting(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private processHorizontal(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V
    .locals 26

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    .line 2178
    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->LOGGER:Ljava/util/logging/Logger;

    const-class v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "isHorizontal"

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x1

    .line 2179
    new-array v11, v10, [Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$Direction;

    .line 2180
    new-array v12, v10, [J

    new-array v13, v10, [J

    .line 2181
    iget v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    const/4 v14, 0x0

    if-ltz v1, :cond_0

    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->polyOuts:Ljava/util/List;

    iget v2, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    iget-boolean v1, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isOpen:Z

    if-eqz v1, :cond_0

    move v15, v10

    goto :goto_0

    :cond_0
    move v15, v14

    .line 2183
    :goto_0
    invoke-static {v0, v11, v12, v13}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->getHorzDirection(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;[Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$Direction;[J[J)V

    move-object v7, v0

    .line 2186
    :goto_1
    iget-object v1, v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInLML:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-eqz v1, :cond_1

    iget-object v1, v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInLML:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2187
    iget-object v7, v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInLML:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_1

    .line 2189
    :cond_1
    iget-object v1, v7, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInLML:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 2190
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getMaximaPair()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    move-result-object v1

    move-object v8, v1

    goto :goto_2

    :cond_2
    move-object v8, v2

    .line 2193
    :goto_2
    iget-object v1, v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->maxima:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;

    if-eqz v1, :cond_6

    .line 2197
    aget-object v3, v11, v14

    sget-object v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$Direction;->LEFT_TO_RIGHT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$Direction;

    if-ne v3, v4, :cond_4

    :goto_3
    if-eqz v1, :cond_3

    .line 2199
    iget-wide v3, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;->X:J

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_3

    .line 2200
    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;->Next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_6

    .line 2201
    iget-wide v3, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;->X:J

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_6

    goto :goto_5

    .line 2206
    :cond_4
    :goto_4
    iget-object v3, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;->Next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;

    if-eqz v3, :cond_5

    iget-object v3, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;->Next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;

    iget-wide v3, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;->X:J

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_5

    .line 2207
    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;->Next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;

    goto :goto_4

    .line 2208
    :cond_5
    iget-wide v3, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;->X:J

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_6

    :goto_5
    move-object v1, v2

    :cond_6
    move-object v5, v0

    :goto_6
    if-ne v5, v7, :cond_7

    move/from16 v16, v10

    goto :goto_7

    :cond_7
    move/from16 v16, v14

    .line 2215
    :goto_7
    aget-object v0, v11, v14

    invoke-virtual {v5, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getNextInAEL(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$Direction;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    move-result-object v0

    move-object v6, v0

    :goto_8
    if-eqz v6, :cond_18

    if-eqz v1, :cond_b

    .line 2223
    aget-object v0, v11, v14

    sget-object v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$Direction;->LEFT_TO_RIGHT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$Direction;

    if-ne v0, v3, :cond_9

    :goto_9
    if-eqz v1, :cond_b

    .line 2225
    iget-wide v3, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;->X:J

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v17

    cmp-long v0, v3, v17

    if-gez v0, :cond_b

    .line 2227
    iget v0, v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-ltz v0, :cond_8

    if-nez v15, :cond_8

    .line 2228
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-wide v3, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;->X:J

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v17

    move-object/from16 v19, v11

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v10

    invoke-direct {v0, v3, v4, v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJ)V

    invoke-direct {v9, v5, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addOutPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    goto :goto_a

    :cond_8
    move-object/from16 v19, v11

    .line 2229
    :goto_a
    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;->Next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;

    move-object/from16 v11, v19

    const/4 v10, 0x1

    goto :goto_9

    :cond_9
    move-object/from16 v19, v11

    :goto_b
    if-eqz v1, :cond_c

    .line 2234
    iget-wide v3, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;->X:J

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v10

    cmp-long v0, v3, v10

    if-lez v0, :cond_c

    .line 2236
    iget v0, v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-ltz v0, :cond_a

    if-nez v15, :cond_a

    .line 2237
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    iget-wide v3, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;->X:J

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v10

    invoke-direct {v0, v3, v4, v10, v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJ)V

    invoke-direct {v9, v5, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addOutPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 2238
    :cond_a
    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;->Prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;

    goto :goto_b

    :cond_b
    move-object/from16 v19, v11

    :cond_c
    move-object v10, v1

    .line 2244
    aget-object v0, v19, v14

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$Direction;->LEFT_TO_RIGHT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$Direction;

    if-ne v0, v1, :cond_d

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v0

    aget-wide v3, v13, v14

    cmp-long v0, v0, v3

    if-gtz v0, :cond_f

    :cond_d
    aget-object v0, v19, v14

    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$Direction;->RIGHT_TO_LEFT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$Direction;

    if-ne v0, v1, :cond_e

    .line 2245
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v0

    aget-wide v3, v12, v14

    cmp-long v0, v0, v3

    if-gez v0, :cond_e

    goto :goto_c

    .line 2248
    :cond_e
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v0

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-nez v0, :cond_10

    iget-object v0, v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInLML:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-eqz v0, :cond_10

    iget-wide v0, v6, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->deltaX:D

    iget-object v3, v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInLML:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iget-wide v3, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->deltaX:D

    cmpg-double v0, v0, v3

    if-gez v0, :cond_10

    :cond_f
    :goto_c
    move-object v11, v5

    move-object/from16 v21, v7

    move-object v1, v10

    move/from16 v22, v15

    goto/16 :goto_11

    .line 2251
    :cond_10
    iget v0, v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-ltz v0, :cond_14

    if-nez v15, :cond_14

    .line 2253
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-direct {v9, v5, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addOutPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v11

    .line 2254
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->sortedEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    move-object v3, v0

    :goto_d
    if-eqz v3, :cond_13

    .line 2257
    iget v0, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-ltz v0, :cond_11

    .line 2258
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v1

    .line 2259
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v20

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v22

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v24

    move-object/from16 v0, p0

    move-object v14, v3

    move-wide/from16 v3, v20

    move-object/from16 p1, v5

    move-object/from16 v20, v10

    move-object v10, v6

    move-wide/from16 v5, v22

    move-object/from16 v21, v7

    move/from16 v22, v15

    move-object v15, v8

    move-wide/from16 v7, v24

    .line 2258
    invoke-direct/range {v0 .. v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->doHorzSegmentsOverlap(JJJJ)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2261
    invoke-direct {v9, v14}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->GetLastOutPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v0

    .line 2262
    invoke-virtual {v14}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v1

    invoke-direct {v9, v0, v11, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addJoin(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    goto :goto_e

    :cond_11
    move-object v14, v3

    move-object/from16 p1, v5

    move-object/from16 v21, v7

    move-object/from16 v20, v10

    move/from16 v22, v15

    move-object v10, v6

    move-object v15, v8

    .line 2264
    :cond_12
    :goto_e
    iget-object v3, v14, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    move-object/from16 v5, p1

    move-object v6, v10

    move-object v8, v15

    move-object/from16 v10, v20

    move-object/from16 v7, v21

    move/from16 v15, v22

    const/4 v14, 0x0

    goto :goto_d

    :cond_13
    move-object/from16 p1, v5

    move-object/from16 v21, v7

    move-object/from16 v20, v10

    move/from16 v22, v15

    move-object v10, v6

    move-object v15, v8

    .line 2266
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-direct {v9, v11, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addGhostJoin(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    move-object v2, v11

    goto :goto_f

    :cond_14
    move-object/from16 p1, v5

    move-object/from16 v21, v7

    move-object/from16 v20, v10

    move/from16 v22, v15

    move-object v10, v6

    move-object v15, v8

    :goto_f
    if-ne v10, v15, :cond_16

    if-eqz v16, :cond_16

    move-object/from16 v11, p1

    .line 2273
    iget v0, v11, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-ltz v0, :cond_15

    .line 2274
    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-direct {v9, v11, v15, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addLocalMaxPoly(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    .line 2275
    :cond_15
    invoke-direct {v9, v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->deleteFromAEL(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    .line 2276
    invoke-direct {v9, v15}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->deleteFromAEL(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    return-void

    :cond_16
    move-object/from16 v11, p1

    const/4 v0, 0x0

    .line 2280
    aget-object v1, v19, v0

    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$Direction;->LEFT_TO_RIGHT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$Direction;

    if-ne v1, v0, :cond_17

    .line 2282
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v5

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJ)V

    .line 2283
    invoke-direct {v9, v11, v10, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->intersectEdges(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    goto :goto_10

    .line 2287
    :cond_17
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v5

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;-><init>(JJ)V

    .line 2288
    invoke-direct {v9, v10, v11, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->intersectEdges(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    :goto_10
    const/4 v0, 0x0

    .line 2290
    aget-object v1, v19, v0

    invoke-virtual {v10, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getNextInAEL(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$Direction;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    move-result-object v6

    .line 2291
    invoke-direct {v9, v11, v10}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->swapPositionsInAEL(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    move-object v5, v11

    move-object v8, v15

    move-object/from16 v11, v19

    move-object/from16 v1, v20

    move-object/from16 v7, v21

    move/from16 v15, v22

    const/4 v10, 0x1

    const/4 v14, 0x0

    goto/16 :goto_8

    :cond_18
    move-object/from16 v21, v7

    move-object/from16 v19, v11

    move/from16 v22, v15

    move-object v11, v5

    :goto_11
    move-object v15, v8

    .line 2297
    iget-object v0, v11, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInLML:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-eqz v0, :cond_1b

    iget-object v0, v11, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInLML:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->isHorizontal()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_12

    :cond_19
    const/4 v0, 0x1

    .line 2299
    new-array v3, v0, [Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    const/4 v0, 0x0

    .line 2300
    aput-object v11, v3, v0

    .line 2301
    invoke-direct {v9, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->updateEdgeIntoAEL([Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    .line 2302
    aget-object v5, v3, v0

    .line 2304
    iget v0, v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-ltz v0, :cond_1a

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-direct {v9, v5, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addOutPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    :cond_1a
    move-object/from16 v0, v19

    .line 2305
    invoke-static {v5, v0, v12, v13}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->getHorzDirection(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;[Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$Direction;[J[J)V

    move-object v11, v0

    move-object v8, v15

    move-object/from16 v7, v21

    move/from16 v15, v22

    const/4 v10, 0x1

    const/4 v14, 0x0

    goto/16 :goto_6

    .line 2309
    :cond_1b
    :goto_12
    iget v0, v11, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-ltz v0, :cond_1e

    if-nez v2, :cond_1e

    .line 2311
    invoke-direct {v9, v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->GetLastOutPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v10

    .line 2312
    iget-object v0, v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->sortedEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    move-object v12, v0

    :goto_13
    if-eqz v12, :cond_1d

    .line 2315
    iget v0, v12, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-ltz v0, :cond_1c

    .line 2316
    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v1

    .line 2317
    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v5

    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v7

    move-object/from16 v0, p0

    .line 2316
    invoke-direct/range {v0 .. v8}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->doHorzSegmentsOverlap(JJJJ)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2319
    invoke-direct {v9, v12}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->GetLastOutPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v0

    .line 2320
    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v1

    invoke-direct {v9, v0, v10, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addJoin(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    .line 2322
    :cond_1c
    iget-object v12, v12, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_13

    .line 2324
    :cond_1d
    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-direct {v9, v10, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addGhostJoin(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    .line 2327
    :cond_1e
    iget-object v0, v11, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInLML:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-eqz v0, :cond_22

    .line 2328
    iget v0, v11, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-ltz v0, :cond_21

    .line 2329
    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-direct {v9, v11, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addOutPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v0

    const/4 v1, 0x1

    .line 2331
    new-array v1, v1, [Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    const/4 v2, 0x0

    aput-object v11, v1, v2

    .line 2332
    invoke-direct {v9, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->updateEdgeIntoAEL([Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    .line 2333
    aget-object v1, v1, v2

    .line 2335
    iget v2, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    if-nez v2, :cond_1f

    return-void

    .line 2339
    :cond_1f
    iget-object v2, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2340
    iget-object v3, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-eqz v2, :cond_20

    .line 2341
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v4

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    iget v4, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    if-eqz v4, :cond_20

    iget v4, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-ltz v4, :cond_20

    .line 2342
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_20

    iget-boolean v4, v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->useFullRange:Z

    .line 2343
    invoke-static {v1, v2, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->slopesEqual(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Z)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 2344
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v3

    invoke-direct {v9, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addOutPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v2

    .line 2345
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v1

    invoke-direct {v9, v0, v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addJoin(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    goto :goto_14

    :cond_20
    if-eqz v3, :cond_24

    .line 2347
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget v2, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    if-eqz v2, :cond_24

    iget v2, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-ltz v2, :cond_24

    .line 2348
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getCurrent()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-lez v2, :cond_24

    iget-boolean v2, v9, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->useFullRange:Z

    .line 2349
    invoke-static {v1, v3, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->slopesEqual(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Z)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2350
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v2

    invoke-direct {v9, v3, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addOutPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v2

    .line 2351
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v1

    invoke-direct {v9, v0, v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addJoin(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    goto :goto_14

    :cond_21
    const/4 v0, 0x1

    .line 2355
    new-array v0, v0, [Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    const/4 v1, 0x0

    aput-object v11, v0, v1

    .line 2356
    invoke-direct {v9, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->updateEdgeIntoAEL([Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    .line 2357
    aget-object v0, v0, v1

    goto :goto_14

    .line 2361
    :cond_22
    iget v0, v11, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-ltz v0, :cond_23

    .line 2362
    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-direct {v9, v11, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addOutPt(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 2364
    :cond_23
    invoke-direct {v9, v11}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->deleteFromAEL(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    :cond_24
    :goto_14
    return-void
.end method

.method private processHorizontals()V
    .locals 3

    .line 2371
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->LOGGER:Ljava/util/logging/Logger;

    const-class v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "processHorizontals"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;)V

    .line 2373
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->sortedEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    :goto_0
    if-eqz v0, :cond_0

    .line 2375
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->deleteFromSEL(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    .line 2376
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->processHorizontal(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    .line 2377
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->sortedEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private processIntersectList()V
    .locals 5

    const/4 v0, 0x0

    .line 2411
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->intersectList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2412
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->intersectList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper$IntersectNode;

    .line 2414
    iget-object v2, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper$IntersectNode;->edge1:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iget-object v3, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper$IntersectNode;->Edge2:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper$IntersectNode;->getPt()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->intersectEdges(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    .line 2415
    iget-object v2, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper$IntersectNode;->edge1:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper$IntersectNode;->Edge2:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    invoke-direct {p0, v2, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->swapPositionsInAEL(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2418
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->intersectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private processIntersections(J)Z
    .locals 3

    .line 2384
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->LOGGER:Ljava/util/logging/Logger;

    const-class v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "processIntersections"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;)V

    .line 2386
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->activeEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 2390
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->buildIntersectList(J)V

    .line 2391
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->intersectList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 2394
    :cond_1
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->intersectList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eq p1, v1, :cond_3

    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->fixupIntersectionOrder()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 2395
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->processIntersectList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2406
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->sortedEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    return v1

    :catch_0
    move-exception p1

    .line 2402
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->sortedEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2403
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->intersectList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 2404
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "ProcessIntersections error"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private setHoleState(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;)V
    .locals 3

    .line 2439
    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 2441
    iget v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-ltz v1, :cond_0

    iget v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    if-eqz v1, :cond_0

    xor-int/lit8 v0, v0, 0x1

    .line 2443
    iget-object v1, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->firstLeft:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    if-nez v1, :cond_0

    .line 2444
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->polyOuts:Ljava/util/List;

    iget v2, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    iput-object v1, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->firstLeft:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;

    .line 2447
    :cond_0
    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const/4 p1, 0x1

    .line 2450
    iput-boolean p1, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->isHole:Z

    :cond_2
    return-void
.end method

.method private setZ(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V
    .locals 6

    .line 2455
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getZ()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->zFillFunction:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$IZFillCallback;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2458
    :cond_0
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2459
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getZ()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->setZ(Ljava/lang/Number;)V

    goto :goto_0

    .line 2461
    :cond_1
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2462
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getZ()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->setZ(Ljava/lang/Number;)V

    goto :goto_0

    .line 2464
    :cond_2
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2465
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getZ()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->setZ(Ljava/lang/Number;)V

    goto :goto_0

    .line 2467
    :cond_3
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2468
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getZ()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->setZ(Ljava/lang/Number;)V

    goto :goto_0

    .line 2471
    :cond_4
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->zFillFunction:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$IZFillCallback;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v1

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object v4

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$IZFillCallback;->zFill(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public static simplifyPolygon(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;
    .locals 1

    .line 518
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;->EVEN_ODD:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    invoke-static {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->simplifyPolygon(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;

    move-result-object p0

    return-object p0
.end method

.method public static simplifyPolygon(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;
    .locals 4

    .line 522
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;-><init>()V

    .line 523
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;-><init>(I)V

    .line 525
    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;->SUBJECT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addPath(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;Z)Z

    .line 526
    sget-object p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;->UNION:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;

    invoke-virtual {v1, p0, v0, p1, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->execute(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;)Z

    return-object v0
.end method

.method public static simplifyPolygons(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;
    .locals 1

    .line 531
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;->EVEN_ODD:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    invoke-static {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->simplifyPolygons(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;

    move-result-object p0

    return-object p0
.end method

.method public static simplifyPolygons(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;
    .locals 4

    .line 535
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;-><init>()V

    .line 536
    new-instance v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;-><init>(I)V

    .line 538
    sget-object v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;->SUBJECT:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->addPaths(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;Z)Z

    .line 539
    sget-object p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;->UNION:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;

    invoke-virtual {v1, p0, v0, p1, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->execute(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;)Z

    return-object v0
.end method

.method private swapPositionsInAEL(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V
    .locals 6

    .line 2476
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->LOGGER:Ljava/util/logging/Logger;

    const-class v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "swapPositionsInAEL"

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;)V

    .line 2479
    iget-object v2, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iget-object v4, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-eq v2, v4, :cond_d

    iget-object v2, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iget-object v4, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-ne v2, v4, :cond_0

    goto/16 :goto_2

    .line 2483
    :cond_0
    iget-object v2, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-ne v2, p2, :cond_3

    .line 2484
    iget-object v2, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-eqz v2, :cond_1

    .line 2486
    iput-object p1, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2488
    :cond_1
    iget-object v4, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-eqz v4, :cond_2

    .line 2490
    iput-object p2, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2492
    :cond_2
    iput-object v4, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2493
    iput-object p1, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2494
    iput-object p2, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2495
    iput-object v2, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_0

    .line 2497
    :cond_3
    iget-object v2, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-ne v2, p1, :cond_6

    .line 2498
    iget-object v2, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-eqz v2, :cond_4

    .line 2500
    iput-object p2, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2502
    :cond_4
    iget-object v4, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-eqz v4, :cond_5

    .line 2504
    iput-object p1, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2506
    :cond_5
    iput-object v4, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2507
    iput-object p2, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2508
    iput-object p1, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2509
    iput-object v2, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_0

    .line 2512
    :cond_6
    iget-object v2, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2513
    iget-object v4, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2514
    iget-object v5, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iput-object v5, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2515
    iget-object v5, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-eqz v5, :cond_7

    .line 2516
    iget-object v5, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iput-object p1, v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2518
    :cond_7
    iget-object v5, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iput-object v5, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2519
    iget-object v5, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-eqz v5, :cond_8

    .line 2520
    iget-object v5, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iput-object p1, v5, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2522
    :cond_8
    iput-object v2, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2523
    iget-object v2, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-eqz v2, :cond_9

    .line 2524
    iget-object v2, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iput-object p2, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2526
    :cond_9
    iput-object v4, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2527
    iget-object v2, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-eqz v2, :cond_a

    .line 2528
    iget-object v2, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iput-object p2, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2532
    :cond_a
    :goto_0
    iget-object v2, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-nez v2, :cond_b

    .line 2533
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->activeEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_1

    .line 2535
    :cond_b
    iget-object p1, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-nez p1, :cond_c

    .line 2536
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->activeEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2539
    :cond_c
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Ljava/util/logging/Logger;->exiting(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_2
    return-void
.end method

.method private swapPositionsInSEL(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V
    .locals 3

    .line 2545
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-nez v0, :cond_0

    return-void

    .line 2548
    :cond_0
    iget-object v0, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-nez v0, :cond_1

    return-void

    .line 2552
    :cond_1
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-ne v0, p2, :cond_4

    .line 2553
    iget-object v0, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-eqz v0, :cond_2

    .line 2555
    iput-object p1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2557
    :cond_2
    iget-object v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-eqz v1, :cond_3

    .line 2559
    iput-object p2, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2561
    :cond_3
    iput-object v1, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2562
    iput-object p1, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2563
    iput-object p2, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2564
    iput-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_0

    .line 2566
    :cond_4
    iget-object v0, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-ne v0, p1, :cond_7

    .line 2567
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-eqz v0, :cond_5

    .line 2569
    iput-object p2, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2571
    :cond_5
    iget-object v1, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-eqz v1, :cond_6

    .line 2573
    iput-object p1, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2575
    :cond_6
    iput-object v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2576
    iput-object p2, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2577
    iput-object p1, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2578
    iput-object v0, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_0

    .line 2581
    :cond_7
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2582
    iget-object v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2583
    iget-object v2, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iput-object v2, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2584
    iget-object v2, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-eqz v2, :cond_8

    .line 2585
    iget-object v2, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iput-object p1, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2587
    :cond_8
    iget-object v2, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iput-object v2, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2588
    iget-object v2, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-eqz v2, :cond_9

    .line 2589
    iget-object v2, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iput-object p1, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2591
    :cond_9
    iput-object v0, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2592
    iget-object v0, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-eqz v0, :cond_a

    .line 2593
    iget-object v0, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iput-object p2, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2595
    :cond_a
    iput-object v1, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2596
    iget-object v0, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-eqz v0, :cond_b

    .line 2597
    iget-object v0, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iput-object p2, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2601
    :cond_b
    :goto_0
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-nez v0, :cond_c

    .line 2602
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->sortedEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_1

    .line 2604
    :cond_c
    iget-object p1, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInSEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-nez p1, :cond_d

    .line 2605
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->sortedEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    :cond_d
    :goto_1
    return-void
.end method

.method private updateEdgeIntoAEL([Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V
    .locals 6

    const/4 v0, 0x0

    .line 2610
    aget-object v1, p1, v0

    .line 2611
    iget-object v2, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInLML:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    if-eqz v2, :cond_3

    .line 2614
    iget-object v2, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2615
    iget-object v3, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2616
    iget-object v4, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInLML:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iget v5, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    iput v5, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->outIdx:I

    if-eqz v2, :cond_0

    .line 2618
    iget-object v4, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInLML:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iput-object v4, v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_0

    .line 2621
    :cond_0
    iget-object v4, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInLML:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iput-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->activeEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    :goto_0
    if-eqz v3, :cond_1

    .line 2624
    iget-object v4, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInLML:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iput-object v4, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2626
    :cond_1
    iget-object v4, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInLML:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iget-object v5, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->side:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;

    iput-object v5, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->side:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge$Side;

    .line 2627
    iget-object v4, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInLML:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iget v5, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    iput v5, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    .line 2628
    iget-object v4, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInLML:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iget v5, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    iput v5, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    .line 2629
    iget-object v4, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInLML:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    iget v5, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt2:I

    iput v5, v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt2:I

    .line 2630
    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInLML:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    aput-object v1, p1, v0

    .line 2631
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getBot()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->setCurrent(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)V

    .line 2632
    iput-object v2, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2633
    iput-object v3, v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2634
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->isHorizontal()Z

    move-result p1

    if-nez p1, :cond_2

    .line 2635
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->getTop()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->insertScanbeam(J)V

    :cond_2
    return-void

    .line 2612
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "UpdateEdgeIntoAEL: invalid call"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private updateOutPtIdxs(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;)V
    .locals 2

    .line 2640
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->getPoints()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v0

    .line 2642
    :cond_0
    iget v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->Idx:I

    iput v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->idx:I

    .line 2643
    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;->prev:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    .line 2645
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutRec;->getPoints()Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$OutPt;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void
.end method

.method private updateWindingCount(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;)V
    .locals 7

    .line 2649
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->LOGGER:Ljava/util/logging/Logger;

    const-class v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "updateWindingCount"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;)V

    .line 2651
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    :goto_0
    if-eqz v0, :cond_1

    .line 2653
    iget-object v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->polyTyp:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    iget-object v2, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->polyTyp:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    if-nez v1, :cond_1

    .line 2654
    :cond_0
    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 2657
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    iget v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    :goto_1
    iput v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    .line 2658
    iput v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt2:I

    .line 2659
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->activeEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto/16 :goto_7

    .line 2661
    :cond_3
    iget v3, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->clipType:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;

    sget-object v4, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;->UNION:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;

    if-eq v3, v4, :cond_4

    .line 2662
    iput v2, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    .line 2663
    iget v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt2:I

    iput v3, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt2:I

    .line 2664
    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto/16 :goto_7

    .line 2666
    :cond_4
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->clipFillType:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->subjFillType:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    invoke-virtual {p1, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->isEvenOddFillType(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2668
    iget v3, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    if-nez v3, :cond_7

    .line 2671
    iget-object v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    move v4, v2

    :goto_2
    if-eqz v3, :cond_6

    .line 2673
    iget-object v5, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->polyTyp:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    iget-object v6, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->polyTyp:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyType;

    if-ne v5, v6, :cond_5

    iget v5, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    if-eqz v5, :cond_5

    xor-int/lit8 v4, v4, 0x1

    .line 2676
    :cond_5
    iget-object v3, v3, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->prevInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_2

    :cond_6
    xor-int/lit8 v3, v4, 0x1

    .line 2678
    iput v3, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    goto :goto_3

    .line 2681
    :cond_7
    iget v3, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    iput v3, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    .line 2683
    :goto_3
    iget v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt2:I

    iput v3, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt2:I

    .line 2684
    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_7

    .line 2688
    :cond_8
    iget v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    iget v4, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    mul-int/2addr v3, v4

    if-gez v3, :cond_c

    .line 2691
    iget v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v2, :cond_a

    .line 2694
    iget v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    iget v4, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    mul-int/2addr v3, v4

    if-gez v3, :cond_9

    .line 2695
    iget v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    iput v3, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    goto :goto_6

    .line 2698
    :cond_9
    iget v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    iget v4, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    add-int/2addr v3, v4

    iput v3, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    goto :goto_6

    .line 2703
    :cond_a
    iget v3, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    if-nez v3, :cond_b

    move v3, v2

    goto :goto_4

    :cond_b
    iget v3, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    :goto_4
    iput v3, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    goto :goto_6

    .line 2709
    :cond_c
    iget v3, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    if-nez v3, :cond_e

    .line 2710
    iget v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    if-gez v3, :cond_d

    iget v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    sub-int/2addr v3, v2

    goto :goto_5

    :cond_d
    iget v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    add-int/2addr v3, v2

    :goto_5
    iput v3, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    goto :goto_6

    .line 2712
    :cond_e
    iget v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    iget v4, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    mul-int/2addr v3, v4

    if-gez v3, :cond_f

    .line 2713
    iget v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    iput v3, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    goto :goto_6

    .line 2716
    :cond_f
    iget v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    iget v4, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    add-int/2addr v3, v4

    iput v3, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt:I

    .line 2719
    :goto_6
    iget v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt2:I

    iput v3, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt2:I

    .line 2720
    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2724
    :goto_7
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->clipFillType:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->subjFillType:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    invoke-virtual {p1, v3, v4}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->isEvenOddAltFillType(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;)Z

    move-result v3

    if-eqz v3, :cond_12

    :goto_8
    if-eq v0, p1, :cond_13

    .line 2727
    iget v3, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    if-eqz v3, :cond_11

    .line 2728
    iget v3, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt2:I

    if-nez v3, :cond_10

    move v3, v2

    goto :goto_9

    :cond_10
    move v3, v1

    :goto_9
    iput v3, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt2:I

    .line 2730
    :cond_11
    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_8

    :cond_12
    :goto_a
    if-eq v0, p1, :cond_13

    .line 2736
    iget v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt2:I

    iget v2, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windDelta:I

    add-int/2addr v1, v2

    iput v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->windCnt2:I

    .line 2737
    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;->nextInAEL:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    goto :goto_a

    :cond_13
    return-void
.end method


# virtual methods
.method public execute(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;)Z
    .locals 1

    .line 1274
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;->EVEN_ODD:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->execute(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;)Z

    move-result p1

    return p1
.end method

.method public execute(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;)Z
    .locals 0

    .line 1258
    invoke-virtual {p0, p1, p2, p3, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->execute(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;)Z

    move-result p1

    return p1
.end method

.method public execute(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;)Z
    .locals 1

    .line 1279
    monitor-enter p0

    .line 1281
    :try_start_0
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->hasOpenPaths:Z

    if-nez v0, :cond_1

    .line 1285
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;->clear()V

    .line 1286
    iput-object p3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->subjFillType:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    .line 1287
    iput-object p4, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->clipFillType:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    .line 1288
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->clipType:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;

    const/4 p1, 0x0

    .line 1289
    iput-boolean p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->usingPolyTree:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1292
    :try_start_1
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->executeInternal()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1295
    invoke-direct {p0, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->buildResult(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Paths;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1300
    :cond_0
    :try_start_2
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->polyOuts:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->polyOuts:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 1302
    throw p1

    .line 1282
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Error: PolyTree struct is needed for open path clipping."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 1303
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public execute(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;)Z
    .locals 1

    .line 1263
    sget-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;->EVEN_ODD:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->execute(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;)Z

    move-result p1

    return p1
.end method

.method public execute(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;)Z
    .locals 0

    .line 1269
    invoke-virtual {p0, p1, p2, p3, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->execute(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;)Z

    move-result p1

    return p1
.end method

.method public execute(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;)Z
    .locals 0

    .line 1308
    monitor-enter p0

    .line 1309
    :try_start_0
    iput-object p3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->subjFillType:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    .line 1310
    iput-object p4, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->clipFillType:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$PolyFillType;

    .line 1311
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->clipType:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/IClipper$ClipType;

    const/4 p1, 0x1

    .line 1312
    iput-boolean p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->usingPolyTree:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1315
    :try_start_1
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->executeInternal()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1318
    invoke-direct {p0, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->buildResult2(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/PolyTree;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1322
    :cond_0
    :try_start_2
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->polyOuts:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 1324
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 1322
    iget-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->polyOuts:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 1323
    throw p1

    :catchall_1
    move-exception p1

    .line 1325
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method protected reset()V
    .locals 3

    .line 2425
    invoke-super {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase;->reset()V

    const/4 v0, 0x0

    .line 2426
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->scanbeam:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$Scanbeam;

    .line 2427
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->maxima:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Path$Maxima;

    .line 2428
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->activeEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2429
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->sortedEdges:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Edge;

    .line 2430
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->minimaList:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;

    :goto_0
    if-eqz v0, :cond_0

    .line 2432
    iget-wide v1, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->y:J

    invoke-direct {p0, v1, v2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/DefaultClipper;->insertScanbeam(J)V

    .line 2433
    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;->next:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/ClipperBase$LocalMinima;

    goto :goto_0

    :cond_0
    return-void
.end method
