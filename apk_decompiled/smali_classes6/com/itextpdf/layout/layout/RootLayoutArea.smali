.class public Lcom/itextpdf/layout/layout/RootLayoutArea;
.super Lcom/itextpdf/layout/layout/LayoutArea;
.source "RootLayoutArea.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected emptyArea:Z


# direct methods
.method public constructor <init>(ILcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/layout/layout/LayoutArea;-><init>(ILcom/itextpdf/kernel/geom/Rectangle;)V

    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Lcom/itextpdf/layout/layout/RootLayoutArea;->emptyArea:Z

    return-void
.end method


# virtual methods
.method public clone()Lcom/itextpdf/layout/layout/LayoutArea;
    .locals 2

    .line 95
    invoke-super {p0}, Lcom/itextpdf/layout/layout/LayoutArea;->clone()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/layout/RootLayoutArea;

    .line 96
    iget-boolean v1, p0, Lcom/itextpdf/layout/layout/RootLayoutArea;->emptyArea:Z

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/layout/RootLayoutArea;->setEmptyArea(Z)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/itextpdf/layout/layout/RootLayoutArea;->clone()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v0

    return-object v0
.end method

.method public isEmptyArea()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/itextpdf/layout/layout/RootLayoutArea;->emptyArea:Z

    return v0
.end method

.method public setEmptyArea(Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/itextpdf/layout/layout/RootLayoutArea;->emptyArea:Z

    return-void
.end method
