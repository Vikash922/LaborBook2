.class public Lcom/itextpdf/styledxmlparser/css/selector/item/CssTagSelectorItem;
.super Ljava/lang/Object;
.source "CssTagSelectorItem.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;


# instance fields
.field private isUniversal:Z

.field private tagName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssTagSelectorItem;->tagName:Ljava/lang/String;

    .line 69
    const-string v0, "*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssTagSelectorItem;->isUniversal:Z

    return-void
.end method


# virtual methods
.method public getSpecificity()I
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssTagSelectorItem;->isUniversal:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public matches(Lcom/itextpdf/styledxmlparser/node/INode;)Z
    .locals 2

    .line 85
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/ICustomElementNode;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/IDocumentNode;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    check-cast p1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    .line 89
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssTagSelectorItem;->isUniversal:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssTagSelectorItem;->tagName:Ljava/lang/String;

    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssTagSelectorItem;->tagName:Ljava/lang/String;

    return-object v0
.end method
