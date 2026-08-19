.class public Lcom/itextpdf/styledxmlparser/css/selector/CssPageMarginBoxSelector;
.super Ljava/lang/Object;
.source "CssPageMarginBoxSelector.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;


# instance fields
.field private pageMarginBoxName:Ljava/lang/String;

.field private pageSelector:Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/selector/CssPageMarginBoxSelector;->pageMarginBoxName:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/itextpdf/styledxmlparser/css/selector/CssPageMarginBoxSelector;->pageSelector:Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;

    return-void
.end method


# virtual methods
.method public calculateSpecificity()I
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/CssPageMarginBoxSelector;->pageSelector:Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;

    invoke-interface {v0}, Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;->calculateSpecificity()I

    move-result v0

    return v0
.end method

.method public matches(Lcom/itextpdf/styledxmlparser/node/INode;)Z
    .locals 3

    .line 83
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/css/page/PageMarginBoxContextNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 86
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/styledxmlparser/css/page/PageMarginBoxContextNode;

    .line 87
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/css/selector/CssPageMarginBoxSelector;->pageMarginBoxName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/page/PageMarginBoxContextNode;->getMarginBoxName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/INode;->parentNode()Lcom/itextpdf/styledxmlparser/node/INode;

    move-result-object p1

    .line 89
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/CssPageMarginBoxSelector;->pageSelector:Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;

    invoke-interface {v0, p1}, Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;->matches(Lcom/itextpdf/styledxmlparser/node/INode;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method
