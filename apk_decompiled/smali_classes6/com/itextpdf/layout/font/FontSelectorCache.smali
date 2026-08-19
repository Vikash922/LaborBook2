.class Lcom/itextpdf/layout/font/FontSelectorCache;
.super Ljava/lang/Object;
.source "FontSelectorCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/layout/font/FontSelectorCache$FontSetSelectors;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final caches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/itextpdf/layout/font/FontSelectorCache$FontSetSelectors;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultFontSet:Lcom/itextpdf/layout/font/FontSet;

.field private final defaultSelectors:Lcom/itextpdf/layout/font/FontSelectorCache$FontSetSelectors;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/itextpdf/layout/font/FontSet;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/font/FontSelectorCache;->caches:Ljava/util/Map;

    .line 56
    new-instance v0, Lcom/itextpdf/layout/font/FontSelectorCache$FontSetSelectors;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/layout/font/FontSelectorCache$FontSetSelectors;-><init>(Lcom/itextpdf/layout/font/FontSelectorCache$1;)V

    iput-object v0, p0, Lcom/itextpdf/layout/font/FontSelectorCache;->defaultSelectors:Lcom/itextpdf/layout/font/FontSelectorCache$FontSetSelectors;

    .line 57
    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/font/FontSelectorCache$FontSetSelectors;->update(Lcom/itextpdf/layout/font/FontSet;)Z

    .line 58
    iput-object p1, p0, Lcom/itextpdf/layout/font/FontSelectorCache;->defaultFontSet:Lcom/itextpdf/layout/font/FontSet;

    return-void
.end method

.method private update(Lcom/itextpdf/layout/font/FontSelectorCache$FontSetSelectors;Lcom/itextpdf/layout/font/FontSet;)Z
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontSelectorCache;->defaultSelectors:Lcom/itextpdf/layout/font/FontSelectorCache$FontSetSelectors;

    iget-object v1, p0, Lcom/itextpdf/layout/font/FontSelectorCache;->defaultFontSet:Lcom/itextpdf/layout/font/FontSet;

    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/font/FontSelectorCache$FontSetSelectors;->update(Lcom/itextpdf/layout/font/FontSet;)Z

    move-result v0

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p1, p2}, Lcom/itextpdf/layout/font/FontSelectorCache$FontSetSelectors;->update(Lcom/itextpdf/layout/font/FontSet;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method get(Lcom/itextpdf/layout/font/FontSelectorKey;)Lcom/itextpdf/layout/font/FontSelector;
    .locals 2

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, v0, v0}, Lcom/itextpdf/layout/font/FontSelectorCache;->update(Lcom/itextpdf/layout/font/FontSelectorCache$FontSetSelectors;Lcom/itextpdf/layout/font/FontSet;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontSelectorCache;->defaultSelectors:Lcom/itextpdf/layout/font/FontSelectorCache$FontSetSelectors;

    iget-object v0, v0, Lcom/itextpdf/layout/font/FontSelectorCache$FontSetSelectors;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/font/FontSelector;

    return-object p1
.end method

.method get(Lcom/itextpdf/layout/font/FontSelectorKey;Lcom/itextpdf/layout/font/FontSet;)Lcom/itextpdf/layout/font/FontSelector;
    .locals 4

    if-nez p2, :cond_0

    .line 71
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/font/FontSelectorCache;->get(Lcom/itextpdf/layout/font/FontSelectorKey;)Lcom/itextpdf/layout/font/FontSelector;

    move-result-object p1

    return-object p1

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontSelectorCache;->caches:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/itextpdf/layout/font/FontSet;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/font/FontSelectorCache$FontSetSelectors;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontSelectorCache;->caches:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/itextpdf/layout/font/FontSet;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lcom/itextpdf/layout/font/FontSelectorCache$FontSetSelectors;

    invoke-direct {v3, v1}, Lcom/itextpdf/layout/font/FontSelectorCache$FontSetSelectors;-><init>(Lcom/itextpdf/layout/font/FontSelectorCache$1;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v3

    .line 77
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/itextpdf/layout/font/FontSelectorCache;->update(Lcom/itextpdf/layout/font/FontSelectorCache$FontSetSelectors;Lcom/itextpdf/layout/font/FontSet;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-object v1

    .line 80
    :cond_2
    iget-object p2, v0, Lcom/itextpdf/layout/font/FontSelectorCache$FontSetSelectors;->map:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/font/FontSelector;

    return-object p1
.end method

.method put(Lcom/itextpdf/layout/font/FontSelectorKey;Lcom/itextpdf/layout/font/FontSelector;)V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, v0, v0}, Lcom/itextpdf/layout/font/FontSelectorCache;->update(Lcom/itextpdf/layout/font/FontSelectorCache$FontSetSelectors;Lcom/itextpdf/layout/font/FontSet;)Z

    .line 88
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontSelectorCache;->defaultSelectors:Lcom/itextpdf/layout/font/FontSelectorCache$FontSetSelectors;

    iget-object v0, v0, Lcom/itextpdf/layout/font/FontSelectorCache$FontSetSelectors;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method put(Lcom/itextpdf/layout/font/FontSelectorKey;Lcom/itextpdf/layout/font/FontSelector;Lcom/itextpdf/layout/font/FontSet;)V
    .locals 4

    if-nez p3, :cond_0

    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/layout/font/FontSelectorCache;->put(Lcom/itextpdf/layout/font/FontSelectorKey;Lcom/itextpdf/layout/font/FontSelector;)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontSelectorCache;->caches:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/itextpdf/layout/font/FontSet;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/font/FontSelectorCache$FontSetSelectors;

    if-nez v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontSelectorCache;->caches:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/itextpdf/layout/font/FontSet;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/itextpdf/layout/font/FontSelectorCache$FontSetSelectors;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/itextpdf/layout/font/FontSelectorCache$FontSetSelectors;-><init>(Lcom/itextpdf/layout/font/FontSelectorCache$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 100
    :cond_1
    invoke-direct {p0, v0, p3}, Lcom/itextpdf/layout/font/FontSelectorCache;->update(Lcom/itextpdf/layout/font/FontSelectorCache$FontSetSelectors;Lcom/itextpdf/layout/font/FontSet;)Z

    .line 101
    iget-object p3, v0, Lcom/itextpdf/layout/font/FontSelectorCache$FontSetSelectors;->map:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
