.class Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;
.super Ljava/lang/Object;
.source "LineRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/layout/renderer/LineRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LineSplitIntoGlyphsData"
.end annotation


# instance fields
.field private final insertAfter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/layout/renderer/TextRenderer;",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final lineGlyphs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;",
            ">;"
        }
    .end annotation
.end field

.field private final starterNonTextRenderers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1674
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;->lineGlyphs:Ljava/util/List;

    .line 1675
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;->insertAfter:Ljava/util/Map;

    .line 1676
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;->starterNonTextRenderers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addInsertAfter(Lcom/itextpdf/layout/renderer/TextRenderer;Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1698
    iget-object p1, p0, Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;->starterNonTextRenderers:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1700
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;->insertAfter:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1701
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;->insertAfter:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1703
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;->insertAfter:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public addLineGlyph(Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;)V
    .locals 1

    .line 1692
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;->lineGlyphs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getInsertAfterAndRemove(Lcom/itextpdf/layout/renderer/TextRenderer;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/renderer/TextRenderer;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;"
        }
    .end annotation

    .line 1684
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;->insertAfter:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getLineGlyphs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/LineRenderer$RendererGlyph;",
            ">;"
        }
    .end annotation

    .line 1680
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;->lineGlyphs:Ljava/util/List;

    return-object v0
.end method

.method public getStarterNonTextRenderers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/renderer/IRenderer;",
            ">;"
        }
    .end annotation

    .line 1688
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/LineRenderer$LineSplitIntoGlyphsData;->starterNonTextRenderers:Ljava/util/List;

    return-object v0
.end method
