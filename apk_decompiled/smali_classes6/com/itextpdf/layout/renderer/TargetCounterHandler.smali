.class public Lcom/itextpdf/layout/renderer/TargetCounterHandler;
.super Ljava/lang/Object;
.source "TargetCounterHandler.java"


# instance fields
.field private previousRenderersPages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private renderersPages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TargetCounterHandler;->renderersPages:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TargetCounterHandler;->previousRenderersPages:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/renderer/TargetCounterHandler;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TargetCounterHandler;->renderersPages:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TargetCounterHandler;->previousRenderersPages:Ljava/util/Map;

    .line 48
    iget-object v0, p1, Lcom/itextpdf/layout/renderer/TargetCounterHandler;->renderersPages:Ljava/util/Map;

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TargetCounterHandler;->renderersPages:Ljava/util/Map;

    .line 49
    iget-object p1, p1, Lcom/itextpdf/layout/renderer/TargetCounterHandler;->previousRenderersPages:Ljava/util/Map;

    iput-object p1, p0, Lcom/itextpdf/layout/renderer/TargetCounterHandler;->previousRenderersPages:Ljava/util/Map;

    return-void
.end method

.method public static addPageByID(Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 3

    const/16 v0, 0x7e

    .line 63
    invoke-interface {p0, v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 65
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/TargetCounterHandler;->getTargetCounterHandler(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/TargetCounterHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 66
    invoke-interface {p0}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 67
    invoke-interface {p0}, Lcom/itextpdf/layout/renderer/IRenderer;->getOccupiedArea()Lcom/itextpdf/layout/layout/LayoutArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/layout/layout/LayoutArea;->getPageNumber()I

    move-result p0

    .line 68
    iget-object v1, v1, Lcom/itextpdf/layout/renderer/TargetCounterHandler;->renderersPages:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getPageByID(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    .line 81
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/TargetCounterHandler;->getTargetCounterHandler(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/TargetCounterHandler;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 82
    :cond_0
    iget-object p0, p0, Lcom/itextpdf/layout/renderer/TargetCounterHandler;->previousRenderersPages:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    :goto_0
    return-object p0
.end method

.method private static getTargetCounterHandler(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/TargetCounterHandler;
    .locals 1

    .line 120
    :goto_0
    invoke-interface {p0}, Lcom/itextpdf/layout/renderer/IRenderer;->getParent()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    invoke-interface {p0}, Lcom/itextpdf/layout/renderer/IRenderer;->getParent()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object p0

    goto :goto_0

    .line 123
    :cond_0
    instance-of v0, p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;

    if-eqz v0, :cond_1

    .line 124
    check-cast p0, Lcom/itextpdf/layout/renderer/DocumentRenderer;

    invoke-virtual {p0}, Lcom/itextpdf/layout/renderer/DocumentRenderer;->getTargetCounterHandler()Lcom/itextpdf/layout/renderer/TargetCounterHandler;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isValueDefinedForThisId(Lcom/itextpdf/layout/renderer/IRenderer;Ljava/lang/String;)Z
    .locals 0

    .line 93
    invoke-static {p0}, Lcom/itextpdf/layout/renderer/TargetCounterHandler;->getTargetCounterHandler(Lcom/itextpdf/layout/renderer/IRenderer;)Lcom/itextpdf/layout/renderer/TargetCounterHandler;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 94
    iget-object p0, p0, Lcom/itextpdf/layout/renderer/TargetCounterHandler;->renderersPages:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public isRelayoutRequired()Z
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/itextpdf/layout/renderer/TargetCounterHandler;->renderersPages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 104
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/itextpdf/layout/renderer/TargetCounterHandler;->previousRenderersPages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public prepareHandlerToRelayout()V
    .locals 2

    .line 115
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/itextpdf/layout/renderer/TargetCounterHandler;->renderersPages:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/itextpdf/layout/renderer/TargetCounterHandler;->previousRenderersPages:Ljava/util/Map;

    return-void
.end method
