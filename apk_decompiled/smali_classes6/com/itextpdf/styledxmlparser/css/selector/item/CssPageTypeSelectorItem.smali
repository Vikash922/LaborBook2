.class public Lcom/itextpdf/styledxmlparser/css/selector/item/CssPageTypeSelectorItem;
.super Ljava/lang/Object;
.source "CssPageTypeSelectorItem.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;


# instance fields
.field private pageTypeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPageTypeSelectorItem;->pageTypeName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSpecificity()I
    .locals 1

    const/high16 v0, 0x100000

    return v0
.end method

.method public matches(Lcom/itextpdf/styledxmlparser/node/INode;)Z
    .locals 3

    .line 79
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/css/page/PageContextNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPageTypeSelectorItem;->pageTypeName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "auto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPageTypeSelectorItem;->pageTypeName:Ljava/lang/String;

    check-cast p1, Lcom/itextpdf/styledxmlparser/css/page/PageContextNode;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/page/PageContextNode;->getPageTypeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
