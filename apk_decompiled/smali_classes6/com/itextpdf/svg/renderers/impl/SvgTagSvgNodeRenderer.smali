.class public Lcom/itextpdf/svg/renderers/impl/SvgTagSvgNodeRenderer;
.super Lcom/itextpdf/svg/renderers/impl/AbstractContainerSvgNodeRenderer;
.source "SvgTagSvgNodeRenderer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractContainerSvgNodeRenderer;-><init>()V

    return-void
.end method


# virtual methods
.method public createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 56
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/SvgTagSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/SvgTagSvgNodeRenderer;-><init>()V

    .line 57
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/SvgTagSvgNodeRenderer;->deepCopyAttributesAndStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    .line 58
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/SvgTagSvgNodeRenderer;->deepCopyChildren(Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;)V

    return-object v0
.end method

.method public getObjectBoundingBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
