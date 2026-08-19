.class public Lcom/itextpdf/svg/renderers/impl/SymbolSvgNodeRenderer;
.super Lcom/itextpdf/svg/renderers/impl/AbstractContainerSvgNodeRenderer;
.source "SymbolSvgNodeRenderer.java"

# interfaces
.implements Lcom/itextpdf/svg/renderers/INoDrawSvgNodeRenderer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractContainerSvgNodeRenderer;-><init>()V

    return-void
.end method


# virtual methods
.method public createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 34
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/SymbolSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/SymbolSvgNodeRenderer;-><init>()V

    .line 35
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/SymbolSvgNodeRenderer;->deepCopyAttributesAndStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 36
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/SymbolSvgNodeRenderer;->deepCopyChildren(Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;)V

    return-object v0
.end method

.method public getObjectBoundingBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
