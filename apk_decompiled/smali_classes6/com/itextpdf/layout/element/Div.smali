.class public Lcom/itextpdf/layout/element/Div;
.super Lcom/itextpdf/layout/element/BlockElement;
.source "Div.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itextpdf/layout/element/BlockElement<",
        "Lcom/itextpdf/layout/element/Div;",
        ">;"
    }
.end annotation


# instance fields
.field protected tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/itextpdf/layout/element/BlockElement;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/itextpdf/layout/element/AreaBreak;)Lcom/itextpdf/layout/element/Div;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/itextpdf/layout/element/Div;->childElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public add(Lcom/itextpdf/layout/element/IBlockElement;)Lcom/itextpdf/layout/element/Div;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/itextpdf/layout/element/Div;->childElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public add(Lcom/itextpdf/layout/element/Image;)Lcom/itextpdf/layout/element/Div;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/itextpdf/layout/element/Div;->childElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/itextpdf/layout/element/Div;->tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    const-string v1, "Div"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/layout/element/Div;->tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/element/Div;->tagProperties:Lcom/itextpdf/kernel/pdf/tagutils/DefaultAccessibilityProperties;

    return-object v0
.end method

.method protected makeNewRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 1

    .line 131
    new-instance v0, Lcom/itextpdf/layout/renderer/DivRenderer;

    invoke-direct {v0, p0}, Lcom/itextpdf/layout/renderer/DivRenderer;-><init>(Lcom/itextpdf/layout/element/Div;)V

    return-object v0
.end method

.method public setFillAvailableArea(Z)Lcom/itextpdf/layout/element/Div;
    .locals 1

    const/16 v0, 0x56

    .line 113
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Div;->setProperty(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setFillAvailableAreaOnSplit(Z)Lcom/itextpdf/layout/element/Div;
    .locals 1

    const/16 v0, 0x57

    .line 125
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/Div;->setProperty(ILjava/lang/Object;)V

    return-object p0
.end method
