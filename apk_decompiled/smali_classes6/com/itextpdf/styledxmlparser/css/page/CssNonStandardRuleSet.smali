.class Lcom/itextpdf/styledxmlparser/css/page/CssNonStandardRuleSet;
.super Lcom/itextpdf/styledxmlparser/css/CssRuleSet;
.source "CssNonStandardRuleSet.java"


# direct methods
.method public constructor <init>(Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/css/CssDeclaration;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/css/CssRuleSet;-><init>(Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 72
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/page/CssNonStandardRuleSet;->getNormalDeclarations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, ";\n"

    if-ge v2, v3, :cond_1

    if-lez v2, :cond_0

    .line 74
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/page/CssNonStandardRuleSet;->getNormalDeclarations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    .line 77
    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/page/CssNonStandardRuleSet;->getImportantDeclarations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    if-gtz v1, :cond_2

    .line 80
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/page/CssNonStandardRuleSet;->getNormalDeclarations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 81
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_3
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/page/CssNonStandardRuleSet;->getImportantDeclarations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;

    .line 84
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/css/CssDeclaration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " !important"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 86
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
