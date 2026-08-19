.class public Lcom/itextpdf/styledxmlparser/css/media/CssMediaRule;
.super Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;
.source "CssMediaRule.java"


# instance fields
.field private mediaQueries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 68
    const-string v0, "media"

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaQueryParser;->parseMediaQueries(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/media/CssMediaRule;->mediaQueries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCssRuleSets(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/styledxmlparser/node/INode;",
            "Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssRuleSet;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/media/CssMediaRule;->mediaQueries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;

    .line 79
    invoke-virtual {v2, p2}, Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;->matches(Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/media/CssMediaRule;->body:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/css/CssStatement;

    .line 81
    invoke-virtual {v2, p1, p2}, Lcom/itextpdf/styledxmlparser/css/CssStatement;->getCssRuleSets(Lcom/itextpdf/styledxmlparser/node/INode;Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public matchMediaDevice(Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;)Z
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/media/CssMediaRule;->mediaQueries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;

    .line 97
    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/css/media/MediaQuery;->matches(Lcom/itextpdf/styledxmlparser/css/media/MediaDeviceDescription;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
