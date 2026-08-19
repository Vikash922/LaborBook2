.class public Lcom/itextpdf/svg/utils/TextRectangle;
.super Lcom/itextpdf/kernel/geom/Rectangle;
.source "TextRectangle.java"


# instance fields
.field private textBaseLineYCoordinate:F


# direct methods
.method public constructor <init>(FFFFF)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itextpdf/kernel/geom/Rectangle;-><init>(FFFF)V

    .line 50
    iput p5, p0, Lcom/itextpdf/svg/utils/TextRectangle;->textBaseLineYCoordinate:F

    return-void
.end method


# virtual methods
.method public getTextBaseLineRightPoint()Lcom/itextpdf/kernel/geom/Point;
    .locals 5

    .line 59
    new-instance v0, Lcom/itextpdf/kernel/geom/Point;

    invoke-virtual {p0}, Lcom/itextpdf/svg/utils/TextRectangle;->getRight()F

    move-result v1

    float-to-double v1, v1

    iget v3, p0, Lcom/itextpdf/svg/utils/TextRectangle;->textBaseLineYCoordinate:F

    float-to-double v3, v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/kernel/geom/Point;-><init>(DD)V

    return-object v0
.end method
