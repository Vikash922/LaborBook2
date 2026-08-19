.class public Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererFactory;
.super Ljava/lang/Object;
.source "DefaultSvgNodeRendererFactory.java"

# interfaces
.implements Lcom/itextpdf/svg/renderers/factories/ISvgNodeRendererFactory;


# instance fields
.field private final ignoredTags:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final rendererMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$ISvgNodeRendererCreator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererFactory;->rendererMap:Ljava/util/Map;

    .line 70
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererFactory;->ignoredTags:Ljava/util/Collection;

    .line 76
    new-instance v2, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper;

    invoke-direct {v2}, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper;-><init>()V

    .line 77
    invoke-virtual {v2}, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper;->getMapping()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 78
    invoke-virtual {v2}, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper;->getIgnoredTags()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public createSvgNodeRendererForTag(Lcom/itextpdf/styledxmlparser/node/IElementNode;Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;
    .locals 2

    if-eqz p1, :cond_2

    .line 89
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererFactory;->rendererMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$ISvgNodeRendererCreator;

    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p2

    .line 93
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->name()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Could not find implementation for tag {0}"

    invoke-static {v0, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 97
    :cond_0
    invoke-interface {v0}, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererMapper$ISvgNodeRendererCreator;->create()Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 100
    instance-of v0, p1, Lcom/itextpdf/svg/renderers/INoDrawSvgNodeRenderer;

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/itextpdf/svg/renderers/impl/DefsSvgNodeRenderer;

    if-nez v0, :cond_1

    .line 101
    invoke-interface {p1, p2}, Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;->setParent(Lcom/itextpdf/svg/renderers/ISvgNodeRenderer;)V

    :cond_1
    return-object p1

    .line 86
    :cond_2
    new-instance p1, Lcom/itextpdf/svg/exceptions/SvgProcessingException;

    const-string p2, "Tag parameter must not be null"

    invoke-direct {p1, p2}, Lcom/itextpdf/svg/exceptions/SvgProcessingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isTagIgnored(Lcom/itextpdf/styledxmlparser/node/IElementNode;)Z
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/itextpdf/svg/renderers/factories/DefaultSvgNodeRendererFactory;->ignoredTags:Ljava/util/Collection;

    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
