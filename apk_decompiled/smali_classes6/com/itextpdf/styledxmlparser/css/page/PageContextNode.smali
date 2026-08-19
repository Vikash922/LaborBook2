.class public Lcom/itextpdf/styledxmlparser/css/page/PageContextNode;
.super Lcom/itextpdf/styledxmlparser/css/CssContextNode;
.source "PageContextNode.java"


# instance fields
.field private pageClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pageTypeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/css/page/PageContextNode;-><init>(Lcom/itextpdf/styledxmlparser/node/INode;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/styledxmlparser/node/INode;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/css/CssContextNode;-><init>(Lcom/itextpdf/styledxmlparser/node/INode;)V

    .line 77
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/page/PageContextNode;->pageClasses:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addPageClass(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/page/PageContextNode;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/page/PageContextNode;->pageClasses:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getPageClasses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/page/PageContextNode;->pageClasses:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPageTypeName()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/page/PageContextNode;->pageTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public setPageTypeName(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/page/PageContextNode;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/page/PageContextNode;->pageTypeName:Ljava/lang/String;

    return-object p0
.end method
