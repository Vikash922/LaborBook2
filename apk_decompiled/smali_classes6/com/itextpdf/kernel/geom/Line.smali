.class public Lcom/itextpdf/kernel/geom/Line;
.super Ljava/lang/Object;
.source "Line.java"

# interfaces
.implements Lcom/itextpdf/kernel/geom/IShape;


# instance fields
.field private final p1:Lcom/itextpdf/kernel/geom/Point;

.field private final p2:Lcom/itextpdf/kernel/geom/Point;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/itextpdf/kernel/geom/Line;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/itextpdf/kernel/geom/Point;

    float-to-double v1, p1

    float-to-double p1, p2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    iput-object v0, p0, Lcom/itextpdf/kernel/geom/Line;->p1:Lcom/itextpdf/kernel/geom/Point;

    .line 73
    new-instance p1, Lcom/itextpdf/kernel/geom/Point;

    float-to-double p2, p3

    float-to-double v0, p4

    invoke-direct {p1, p2, p3, v0, v1}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    iput-object p1, p0, Lcom/itextpdf/kernel/geom/Line;->p2:Lcom/itextpdf/kernel/geom/Point;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/geom/Point;Lcom/itextpdf/kernel/geom/Point;)V
    .locals 4

    .line 82
    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v1

    double-to-float p1, v1

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Point;->getY()D

    move-result-wide v2

    double-to-float p2, v2

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/itextpdf/kernel/geom/Line;-><init>(FFFF)V

    return-void
.end method


# virtual methods
.method public getBasePoints()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Point;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    iget-object v1, p0, Lcom/itextpdf/kernel/geom/Line;->p1:Lcom/itextpdf/kernel/geom/Point;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v1, p0, Lcom/itextpdf/kernel/geom/Line;->p2:Lcom/itextpdf/kernel/geom/Point;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
