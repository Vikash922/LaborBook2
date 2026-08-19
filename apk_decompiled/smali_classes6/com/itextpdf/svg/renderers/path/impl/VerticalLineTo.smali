.class public Lcom/itextpdf/svg/renderers/path/impl/VerticalLineTo;
.super Lcom/itextpdf/svg/renderers/path/impl/LineTo;
.source "VerticalLineTo.java"


# static fields
.field static final ARGUMENT_SIZE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, v0}, Lcom/itextpdf/svg/renderers/path/impl/VerticalLineTo;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/itextpdf/svg/renderers/path/impl/LineTo;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public setCoordinates([Ljava/lang/String;Lcom/itextpdf/kernel/geom/Point;)V
    .locals 3

    const/4 v0, 0x2

    .line 72
    new-array v0, v0, [Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Lcom/itextpdf/svg/renderers/path/impl/VerticalLineTo;->isRelative()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "0"

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/itextpdf/kernel/geom/Point;->getX()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/itextpdf/svg/utils/SvgCssUtils;->convertDoubleToString(D)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 75
    aget-object p1, p1, v2

    aput-object p1, v0, v1

    .line 76
    invoke-super {p0, v0, p2}, Lcom/itextpdf/svg/renderers/path/impl/LineTo;->setCoordinates([Ljava/lang/String;Lcom/itextpdf/kernel/geom/Point;)V

    return-void
.end method
