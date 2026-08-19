.class public Lcom/itextpdf/layout/hyphenation/HyphenationTreeCache;
.super Ljava/lang/Object;
.source "HyphenationTreeCache.java"


# instance fields
.field private hyphenTrees:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/layout/hyphenation/HyphenationTree;",
            ">;"
        }
    .end annotation
.end field

.field private missingHyphenationTrees:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTreeCache;->hyphenTrees:Ljava/util/Map;

    return-void
.end method

.method public static constructLlccKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 68
    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static constructUserKey(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 85
    invoke-static {p0, p1}, Lcom/itextpdf/layout/hyphenation/HyphenationTreeCache;->constructLlccKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x5f

    const/16 v0, 0x2d

    .line 86
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 87
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public cache(Ljava/lang/String;Lcom/itextpdf/layout/hyphenation/HyphenationTree;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTreeCache;->hyphenTrees:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getHyphenationTree(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/layout/hyphenation/HyphenationTree;
    .locals 2

    .line 43
    invoke-static {p1, p2}, Lcom/itextpdf/layout/hyphenation/HyphenationTreeCache;->constructLlccKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTreeCache;->hyphenTrees:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    iget-object p1, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTreeCache;->hyphenTrees:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/hyphenation/HyphenationTree;

    return-object p1

    .line 52
    :cond_1
    iget-object p2, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTreeCache;->hyphenTrees:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 53
    iget-object p2, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTreeCache;->hyphenTrees:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/layout/hyphenation/HyphenationTree;

    return-object p1

    :cond_2
    return-object v0
.end method

.method public isMissing(Ljava/lang/String;)Z
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTreeCache;->missingHyphenationTrees:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public noteMissing(Ljava/lang/String;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTreeCache;->missingHyphenationTrees:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTreeCache;->missingHyphenationTrees:Ljava/util/Set;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTreeCache;->missingHyphenationTrees:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
