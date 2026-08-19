.class public abstract Lcom/itextpdf/layout/renderer/AbstractWidthHandler;
.super Ljava/lang/Object;
.source "AbstractWidthHandler.java"


# instance fields
.field minMaxWidth:Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;


# direct methods
.method public constructor <init>(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->minMaxWidth:Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;

    return-void
.end method


# virtual methods
.method public abstract updateMaxChildWidth(F)V
.end method

.method public abstract updateMinChildWidth(F)V
.end method

.method public updateMinMaxWidth(Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMaxWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMaxChildWidth(F)V

    .line 60
    invoke-virtual {p1}, Lcom/itextpdf/layout/minmaxwidth/MinMaxWidth;->getMinWidth()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/renderer/AbstractWidthHandler;->updateMinChildWidth(F)V

    :cond_0
    return-void
.end method
