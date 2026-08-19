.class public Lcom/itextpdf/svg/renderers/impl/DefsSvgNodeRenderer;
.super Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;
.source "DefsSvgNodeRenderer.java"

# interfaces
.implements Lcom/itextpdf/svg/renderers/INoDrawSvgNodeRenderer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/itextpdf/svg/renderers/impl/AbstractBranchSvgNodeRenderer;-><init>()V

    return-void
.end method


# virtual methods
.method public createDeepCopy()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 39
    new-instance v0, Lcom/itextpdf/svg/renderers/impl/DefsSvgNodeRenderer;

    invoke-direct {v0}, Lcom/itextpdf/svg/renderers/impl/DefsSvgNodeRenderer;-><init>()V

    .line 40
    invoke-virtual {p0, v0}, Lcom/itextpdf/svg/renderers/impl/DefsSvgNodeRenderer;->deepCopyAttributesAndStyles(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    return-object v0
.end method

.method protected doDraw(Lcom/itextpdf/svg/renderers/SvgDrawContext;)V
    .locals 1

    .line 34
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "The renderer cannot be drawn."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getObjectBoundingBox(Lcom/itextpdf/svg/renderers/SvgDrawContext;)Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
