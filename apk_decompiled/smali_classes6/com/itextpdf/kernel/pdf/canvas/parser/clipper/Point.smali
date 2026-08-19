.class public abstract Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;
.super Ljava/lang/Object;
.source "Point.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$NumberComparator;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;,
        Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Number;",
        ":",
        "Ljava/lang/Comparable<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final NUMBER_COMPARATOR:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$NumberComparator;


# instance fields
.field protected x:Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected y:Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected z:Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$NumberComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$NumberComparator;-><init>(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$1;)V

    sput-object v0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->NUMBER_COMPARATOR:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$NumberComparator;

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point<",
            "TT;>;)V"
        }
    .end annotation

    .line 45
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->x:Ljava/lang/Number;

    iget-object v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->y:Ljava/lang/Number;

    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->z:Ljava/lang/Number;

    invoke-direct {p0, v0, v1, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->x:Ljava/lang/Number;

    .line 50
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->y:Ljava/lang/Number;

    .line 51
    iput-object p3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->z:Ljava/lang/Number;

    return-void
.end method

.method static arePointsClose(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;D)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point<",
            "+",
            "Ljava/lang/Number;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point<",
            "+",
            "Ljava/lang/Number;",
            ">;D)Z"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->x:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-object v2, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->x:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 119
    iget-object p0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->y:Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    iget-object p0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->y:Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    sub-double/2addr v2, p0

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    cmpg-double p0, v0, p2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static distanceFromLineSqrd(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;)D
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point<",
            "+",
            "Ljava/lang/Number;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point<",
            "+",
            "Ljava/lang/Number;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point<",
            "+",
            "Ljava/lang/Number;",
            ">;)D"
        }
    .end annotation

    .line 130
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->y:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-object v2, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->y:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 131
    iget-object p2, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->x:Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    iget-object p2, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->x:Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    sub-double/2addr v2, v4

    .line 132
    iget-object p2, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->x:Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    mul-double/2addr v4, v0

    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->y:Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    mul-double/2addr p1, v2

    add-double/2addr v4, p1

    .line 133
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->x:Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    mul-double/2addr p1, v0

    iget-object p0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->y:Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v6, v2

    add-double/2addr p1, v6

    sub-double/2addr p1, v4

    mul-double/2addr p1, p1

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    div-double/2addr p1, v0

    return-wide p1
.end method

.method static getUnitNormal(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;
    .locals 6

    .line 138
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->x:Ljava/lang/Number;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->x:Ljava/lang/Number;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-double v0, v0

    .line 139
    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->y:Ljava/lang/Number;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object p0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->y:Ljava/lang/Number;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    sub-long/2addr v2, p0

    long-to-double p0, v2

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    cmpl-double v2, p0, v2

    if-nez v2, :cond_0

    .line 141
    new-instance p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;-><init>()V

    return-object p0

    :cond_0
    mul-double v2, v0, v0

    mul-double v4, p0, p0

    add-double/2addr v2, v4

    .line 144
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double/2addr v4, v2

    mul-double/2addr v0, v4

    mul-double/2addr p0, v4

    .line 148
    new-instance v2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;

    neg-double v0, v0

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$DoublePoint;-><init>(DD)V

    return-object v2
.end method

.method protected static isPt2BetweenPt1AndPt3(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;)Z
    .locals 7

    .line 92
    invoke-virtual {p0, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 95
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->x:Ljava/lang/Number;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object p0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->x:Ljava/lang/Number;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long p0, v3, v5

    if-lez p0, :cond_1

    move p0, v2

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->x:Ljava/lang/Number;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object p1, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->x:Ljava/lang/Number;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    cmp-long p1, v3, p1

    if-gez p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    if-ne p0, p1, :cond_3

    move v1, v2

    :cond_3
    return v1

    .line 97
    :cond_4
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->y:Ljava/lang/Number;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object p0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->y:Ljava/lang/Number;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long p0, v3, v5

    if-lez p0, :cond_5

    move p0, v2

    goto :goto_2

    :cond_5
    move p0, v1

    :goto_2
    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->y:Ljava/lang/Number;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object p1, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->y:Ljava/lang/Number;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    cmp-long p1, v3, p1

    if-gez p1, :cond_6

    move p1, v2

    goto :goto_3

    :cond_6
    move p1, v1

    :goto_3
    if-ne p0, p1, :cond_7

    move v1, v2

    :cond_7
    :goto_4
    return v1
.end method

.method protected static slopesEqual(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Z)Z
    .locals 6

    if-eqz p4, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p4

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v0

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p4

    .line 109
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide p0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    .line 110
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide p1

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v0

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 108
    invoke-virtual {p4, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v2

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    sub-long/2addr v2, v4

    mul-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getX()J

    move-result-wide p0

    sub-long/2addr v2, p0

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide p0

    .line 113
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->getY()J

    move-result-wide p2

    sub-long/2addr p0, p2

    mul-long/2addr v2, p0

    sub-long/2addr v0, v2

    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected static slopesEqual(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Z)Z
    .locals 0

    .line 102
    invoke-static {p0, p1, p1, p2, p3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->slopesEqual(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Z)Z

    move-result p0

    return p0
.end method

.method static slopesNearCollinear(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;D)Z
    .locals 7

    .line 155
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->x:Ljava/lang/Number;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->x:Ljava/lang/Number;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->y:Ljava/lang/Number;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->y:Ljava/lang/Number;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_9

    .line 156
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->x:Ljava/lang/Number;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->x:Ljava/lang/Number;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->x:Ljava/lang/Number;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->x:Ljava/lang/Number;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-ne v0, v3, :cond_3

    .line 157
    invoke-static {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->distanceFromLineSqrd(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;)D

    move-result-wide p0

    cmpg-double p0, p0, p3

    if-gez p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1

    .line 158
    :cond_3
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->x:Ljava/lang/Number;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->x:Ljava/lang/Number;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_4

    move v0, v1

    goto :goto_3

    :cond_4
    move v0, v2

    :goto_3
    iget-object v3, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->x:Ljava/lang/Number;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->x:Ljava/lang/Number;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_5

    move v3, v1

    goto :goto_4

    :cond_5
    move v3, v2

    :goto_4
    if-ne v0, v3, :cond_7

    .line 159
    invoke-static {p1, p0, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->distanceFromLineSqrd(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;)D

    move-result-wide p0

    cmpg-double p0, p0, p3

    if-gez p0, :cond_6

    goto :goto_5

    :cond_6
    move v1, v2

    :goto_5
    return v1

    .line 161
    :cond_7
    invoke-static {p2, p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->distanceFromLineSqrd(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;)D

    move-result-wide p0

    cmpg-double p0, p0, p3

    if-gez p0, :cond_8

    goto :goto_6

    :cond_8
    move v1, v2

    :goto_6
    return v1

    .line 164
    :cond_9
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->y:Ljava/lang/Number;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->y:Ljava/lang/Number;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_a

    move v0, v1

    goto :goto_7

    :cond_a
    move v0, v2

    :goto_7
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->y:Ljava/lang/Number;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->y:Ljava/lang/Number;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_b

    move v3, v1

    goto :goto_8

    :cond_b
    move v3, v2

    :goto_8
    if-ne v0, v3, :cond_d

    .line 165
    invoke-static {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->distanceFromLineSqrd(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;)D

    move-result-wide p0

    cmpg-double p0, p0, p3

    if-gez p0, :cond_c

    goto :goto_9

    :cond_c
    move v1, v2

    :goto_9
    return v1

    .line 166
    :cond_d
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->y:Ljava/lang/Number;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->y:Ljava/lang/Number;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_e

    move v0, v1

    goto :goto_a

    :cond_e
    move v0, v2

    :goto_a
    iget-object v3, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->y:Ljava/lang/Number;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p2, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$LongPoint;->y:Ljava/lang/Number;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_f

    move v3, v1

    goto :goto_b

    :cond_f
    move v3, v2

    :goto_b
    if-ne v0, v3, :cond_11

    .line 167
    invoke-static {p1, p0, p2}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->distanceFromLineSqrd(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;)D

    move-result-wide p0

    cmpg-double p0, p0, p3

    if-gez p0, :cond_10

    goto :goto_c

    :cond_10
    move v1, v2

    :goto_c
    return v1

    .line 169
    :cond_11
    invoke-static {p2, p0, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->distanceFromLineSqrd(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;)D

    move-result-wide p0

    cmpg-double p0, p0, p3

    if-gez p0, :cond_12

    goto :goto_d

    :cond_12
    move v1, v2

    :goto_d
    return v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 59
    :cond_0
    instance-of v1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;

    if-eqz v1, :cond_1

    .line 60
    check-cast p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;

    .line 61
    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->NUMBER_COMPARATOR:Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$NumberComparator;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->x:Ljava/lang/Number;

    iget-object v3, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->x:Ljava/lang/Number;

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$NumberComparator;->compare(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->y:Ljava/lang/Number;

    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->y:Ljava/lang/Number;

    invoke-virtual {v1, v2, p1}, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point$NumberComparator;->compare(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public set(Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point<",
            "TT;>;)V"
        }
    .end annotation

    .line 68
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->x:Ljava/lang/Number;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->x:Ljava/lang/Number;

    .line 69
    iget-object v0, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->y:Ljava/lang/Number;

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->y:Ljava/lang/Number;

    .line 70
    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->z:Ljava/lang/Number;

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->z:Ljava/lang/Number;

    return-void
.end method

.method public setX(Ljava/lang/Number;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->x:Ljava/lang/Number;

    return-void
.end method

.method public setY(Ljava/lang/Number;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->y:Ljava/lang/Number;

    return-void
.end method

.method public setZ(Ljava/lang/Number;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->z:Ljava/lang/Number;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Point [x="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->x:Ljava/lang/Number;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->y:Ljava/lang/Number;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/clipper/Point;->z:Ljava/lang/Number;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
