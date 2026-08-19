.class public abstract Lcom/itextpdf/layout/element/AbstractElement;
.super Lcom/itextpdf/layout/ElementPropertyContainer;
.source "AbstractElement.java"

# interfaces
.implements Lcom/itextpdf/layout/element/IAbstractElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/itextpdf/layout/element/IElement;",
        ">",
        "Lcom/itextpdf/layout/ElementPropertyContainer<",
        "TT;>;",
        "Lcom/itextpdf/layout/element/IAbstractElement;"
    }
.end annotation


# instance fields
.field protected childElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/element/IElement;",
            ">;"
        }
    .end annotation
.end field

.field protected nextRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

.field protected styles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itextpdf/layout/Style;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/itextpdf/layout/ElementPropertyContainer;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/element/AbstractElement;->childElements:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addStyle(Lcom/itextpdf/layout/Style;)Lcom/itextpdf/layout/element/IElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/layout/Style;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 139
    iget-object v0, p0, Lcom/itextpdf/layout/element/AbstractElement;->styles:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/element/AbstractElement;->styles:Ljava/util/Set;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/element/AbstractElement;->styles:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/IElement;

    return-object p1

    .line 137
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Style can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createRendererSubTree()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 3

    .line 86
    invoke-virtual {p0}, Lcom/itextpdf/layout/element/AbstractElement;->getRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/itextpdf/layout/element/AbstractElement;->childElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/element/IElement;

    .line 88
    invoke-interface {v2}, Lcom/itextpdf/layout/element/IElement;->createRendererSubTree()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/itextpdf/layout/renderer/IRenderer;->addChild(Lcom/itextpdf/layout/renderer/IRenderer;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/element/IElement;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/itextpdf/layout/element/AbstractElement;->childElements:Ljava/util/List;

    return-object v0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(I)TT1;"
        }
    .end annotation

    .line 109
    invoke-super {p0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/itextpdf/layout/element/AbstractElement;->styles:Ljava/util/Set;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_2

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->hasProperty(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 111
    iget-object v1, p0, Lcom/itextpdf/layout/element/AbstractElement;->styles:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/Style;

    .line 112
    invoke-virtual {v2, p1}, Lcom/itextpdf/layout/Style;->getProperty(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 113
    invoke-virtual {v2, p1}, Lcom/itextpdf/layout/Style;->hasProperty(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    move-object v0, v3

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/itextpdf/layout/element/AbstractElement;->nextRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0}, Lcom/itextpdf/layout/renderer/IRenderer;->getNextRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/layout/element/AbstractElement;->nextRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    return-object v0

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/layout/element/AbstractElement;->makeNewRenderer()Lcom/itextpdf/layout/renderer/IRenderer;

    move-result-object v0

    return-object v0
.end method

.method public hasProperty(I)Z
    .locals 3

    .line 95
    invoke-super {p0, p1}, Lcom/itextpdf/layout/ElementPropertyContainer;->hasProperty(I)Z

    move-result v0

    .line 96
    iget-object v1, p0, Lcom/itextpdf/layout/element/AbstractElement;->styles:Ljava/util/Set;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_1

    if-nez v0, :cond_1

    .line 97
    iget-object v1, p0, Lcom/itextpdf/layout/element/AbstractElement;->styles:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/Style;

    .line 98
    invoke-virtual {v2, p1}, Lcom/itextpdf/layout/Style;->hasProperty(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/itextpdf/layout/element/AbstractElement;->childElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract makeNewRenderer()Lcom/itextpdf/layout/renderer/IRenderer;
.end method

.method public setAction(Lcom/itextpdf/kernel/pdf/action/PdfAction;)Lcom/itextpdf/layout/element/IElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/action/PdfAction;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 174
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/AbstractElement;->setProperty(ILjava/lang/Object;)V

    .line 175
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/IElement;

    return-object p1
.end method

.method public setNextRenderer(Lcom/itextpdf/layout/renderer/IRenderer;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/itextpdf/layout/element/AbstractElement;->nextRenderer:Lcom/itextpdf/layout/renderer/IRenderer;

    return-void
.end method

.method public setPageNumber(I)Lcom/itextpdf/layout/element/IElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/16 v0, 0x33

    .line 189
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/element/AbstractElement;->setProperty(ILjava/lang/Object;)V

    .line 190
    move-object p1, p0

    check-cast p1, Lcom/itextpdf/layout/element/IElement;

    return-object p1
.end method
