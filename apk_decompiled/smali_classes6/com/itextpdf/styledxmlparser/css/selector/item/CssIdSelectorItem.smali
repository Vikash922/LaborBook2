.class public Lcom/itextpdf/styledxmlparser/css/selector/item/CssIdSelectorItem;
.super Ljava/lang/Object;
.source "CssIdSelectorItem.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;


# instance fields
.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssIdSelectorItem;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSpecificity()I
    .locals 1

    const/high16 v0, 0x100000

    return v0
.end method

.method public matches(Lcom/itextpdf/styledxmlparser/node/INode;)Z
    .locals 2

    .line 81
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/ICustomElementNode;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/IDocumentNode;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    check-cast p1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    .line 85
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssIdSelectorItem;->id:Ljava/lang/String;

    const-string v1, "id"

    invoke-interface {p1, v1}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssIdSelectorItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
