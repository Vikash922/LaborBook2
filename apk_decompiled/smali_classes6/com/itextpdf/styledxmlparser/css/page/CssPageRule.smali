.class public Lcom/itextpdf/styledxmlparser/css/page/CssPageRule;
.super Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;
.source "CssPageRule.java"


# instance fields
.field private pageSelectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 71
    const-string v0, "page"

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/styledxmlparser/css/CssNestedAtRule;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/page/CssPageRule;->pageSelectors:Ljava/util/List;

    .line 74
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 75
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 76
    aget-object v2, p1, v1

    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->removeDoubleSpacesAndTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_0
    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 79
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/css/page/CssPageRule;->pageSelectors:Ljava/util/List;

    new-instance v4, Lcom/itextpdf/styledxmlparser/css/selector/CssPageSelector;

    invoke-direct {v4, v2}, Lcom/itextpdf/styledxmlparser/css/selector/CssPageSelector;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public addBodyCssDeclarations(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;)V"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/page/CssPageRule;->pageSelectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;

    .line 101
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/css/page/CssPageRule;->body:Ljava/util/List;

    new-instance v3, Lcom/itextpdf/styledxmlparser/css/page/CssNonStandardRuleSet;

    invoke-direct {v3, v1, p1}, Lcom/itextpdf/styledxmlparser/css/page/CssNonStandardRuleSet;-><init>(Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addStatementToBody(Lcom/itextpdf/styledxmlparser/css/CssStatement;)V
    .locals 2

    .line 110
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/css/page/CssMarginRule;

    if-eqz v0, :cond_0

    .line 111
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/styledxmlparser/css/page/CssMarginRule;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/page/CssPageRule;->pageSelectors:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/css/page/CssMarginRule;->setPageSelectors(Ljava/util/List;)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/page/CssPageRule;->body:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addStatementsToBody(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/styledxmlparser/css/CssStatement;",
            ">;)V"
        }
    .end annotation

    .line 121
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/css/CssStatement;

    .line 122
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/css/page/CssPageRule;->addStatementToBody(Lcom/itextpdf/styledxmlparser/css/CssStatement;)V

    goto :goto_0

    :cond_0
    return-void
.end method
