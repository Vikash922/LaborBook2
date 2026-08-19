.class public Lcom/itextpdf/layout/renderer/MaxMaxWidthHandler;
.super Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
.source "MaxMaxWidthHandler.java"


# direct methods
.method public constructor <init>(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;-><init>(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)V

    return-void
.end method


# virtual methods
.method public updateMaxChildWidth(F)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/MaxMaxWidthHandler;->minMaxWidth:Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/MaxMaxWidthHandler;->minMaxWidth:Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    invoke-virtual {v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getChildrenMaxWidth()F

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMaxWidth(F)V

    return-void
.end method

.method public updateMinChildWidth(F)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/MaxMaxWidthHandler;->minMaxWidth:Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/MaxMaxWidthHandler;->minMaxWidth:Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    invoke-virtual {v1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getChildrenMinWidth()F

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->setChildrenMinWidth(F)V

    return-void
.end method
