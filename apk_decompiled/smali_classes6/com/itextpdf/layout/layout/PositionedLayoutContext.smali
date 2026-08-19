.class public Lcom/itextpdf/layout/layout/PositionedLayoutContext;
.super Lcom/itextpdf/layout/layout/LayoutContext;
.source "PositionedLayoutContext.java"


# instance fields
.field private parentOccupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;


# direct methods
.method public constructor <init>(Lcom/itextpdf/layout/layout/LayoutArea;Lcom/itextpdf/layout/layout/LayoutArea;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/layout/LayoutContext;-><init>(Lcom/itextpdf/layout/layout/LayoutArea;)V

    .line 60
    iput-object p2, p0, Lcom/itextpdf/layout/layout/PositionedLayoutContext;->parentOccupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    return-void
.end method


# virtual methods
.method public getParentOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/itextpdf/layout/layout/PositionedLayoutContext;->parentOccupiedArea:Lcom/itextpdf/layout/layout/LayoutArea;

    return-object v0
.end method
