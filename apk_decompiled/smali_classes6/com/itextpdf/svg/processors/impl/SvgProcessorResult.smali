.class public Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;
.super Ljava/lang/Object;
.source "SvgProcessorResult.java"

# interfaces
.implements Lcom/itextpdf/svg/processors/ISvgProcessorResult;


# instance fields
.field private final context:Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

.field private final namedObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private final root:Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;",
            ">;",
            "Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;",
            "Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;",
            ")V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;->namedObjects:Ljava/util/Map;

    .line 72
    iput-object p2, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;->root:Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    if-eqz p3, :cond_0

    .line 76
    iput-object p3, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;->context:Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    return-void

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameters cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    check-cast p1, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;

    .line 113
    invoke-virtual {p1}, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;->getNamedObjects()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;->getNamedObjects()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;->getRootRenderer()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;->getRootRenderer()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public getContext()Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;->context:Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    return-object v0
.end method

.method public getFontProvider()Lcom/itextpdf/layout/font/FontProvider;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;->context:Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    invoke-virtual {v0}, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->getFontProvider()Lcom/itextpdf/layout/font/FontProvider;

    move-result-object v0

    return-object v0
.end method

.method public getNamedObjects()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;->namedObjects:Ljava/util/Map;

    return-object v0
.end method

.method public getRootRenderer()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;->root:Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    return-object v0
.end method

.method public getTempFonts()Lcom/itextpdf/layout/font/FontSet;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;->context:Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;

    invoke-virtual {v0}, Lcom/itextpdf/svg/processors/impl/SvgProcessorContext;->getTempFonts()Lcom/itextpdf/layout/font/FontSet;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 118
    invoke-virtual {p0}, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;->getNamedObjects()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/itextpdf/svg/processors/impl/SvgProcessorResult;->getRootRenderer()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2b

    add-int/2addr v0, v1

    return v0
.end method
