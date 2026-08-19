.class public Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoElementSelectorItem;
.super Ljava/lang/Object;
.source "CssPseudoElementSelectorItem.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;


# instance fields
.field private pseudoElementName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoElementSelectorItem;->pseudoElementName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSpecificity()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public matches(Lcom/itextpdf/styledxmlparser/node/INode;)Z
    .locals 1

    .line 79
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/css/pseudo/CssPseudoElementNode;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/itextpdf/styledxmlparser/css/pseudo/CssPseudoElementNode;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/pseudo/CssPseudoElementNode;->getPseudoElementName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoElementSelectorItem;->pseudoElementName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoElementSelectorItem;->pseudoElementName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
