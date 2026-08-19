.class public Lcom/itextpdf/styledxmlparser/css/page/PageMarginBoxContextNode;
.super Lcom/itextpdf/styledxmlparser/css/CssContextNode;
.source "PageMarginBoxContextNode.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/node/ICustomElementNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/styledxmlparser/css/page/PageMarginBoxContextNode$AttributesStub;
    }
.end annotation


# static fields
.field public static final PAGE_MARGIN_BOX_TAG:Ljava/lang/String; = "_064ef03_page-margin-box"


# instance fields
.field private containingBlockForMarginBox:Lcom/itextpdf/kernel/geom/Rectangle;

.field private marginBoxName:Ljava/lang/String;

.field private pageMarginBoxRectangle:Lcom/itextpdf/kernel/geom/Rectangle;


# direct methods
.method public constructor <init>(Lcom/itextpdf/styledxmlparser/node/INode;Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/css/CssContextNode;-><init>(Lcom/itextpdf/styledxmlparser/node/INode;)V

    .line 79
    iput-object p2, p0, Lcom/itextpdf/styledxmlparser/css/page/PageMarginBoxContextNode;->marginBoxName:Ljava/lang/String;

    .line 80
    instance-of p1, p1, Lcom/itextpdf/styledxmlparser/css/page/PageContextNode;

    if-eqz p1, :cond_0

    return-void

    .line 81
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Page-margin-box context node shall have a page context node as parent."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addAdditionalHtmlStyles(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 154
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getAdditionalHtmlStyles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAttributes()Lcom/itextpdf/styledxmlparser/node/IAttributes;
    .locals 2

    .line 139
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/page/PageMarginBoxContextNode$AttributesStub;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/css/page/PageMarginBoxContextNode$AttributesStub;-><init>(Lcom/itextpdf/styledxmlparser/css/page/PageMarginBoxContextNode$1;)V

    return-object v0
.end method

.method public getContainingBlockForMarginBox()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/page/PageMarginBoxContextNode;->containingBlockForMarginBox:Lcom/itextpdf/kernel/geom/Rectangle;

    return-object v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .line 159
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getMarginBoxName()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/page/PageMarginBoxContextNode;->marginBoxName:Ljava/lang/String;

    return-object v0
.end method

.method public getPageMarginBoxRectangle()Lcom/itextpdf/kernel/geom/Rectangle;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/page/PageMarginBoxContextNode;->pageMarginBoxRectangle:Lcom/itextpdf/kernel/geom/Rectangle;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 134
    const-string v0, "_064ef03_page-margin-box"

    return-object v0
.end method

.method public setContainingBlockForMarginBox(Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/page/PageMarginBoxContextNode;->containingBlockForMarginBox:Lcom/itextpdf/kernel/geom/Rectangle;

    return-void
.end method

.method public setPageMarginBoxRectangle(Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/page/PageMarginBoxContextNode;->pageMarginBoxRectangle:Lcom/itextpdf/kernel/geom/Rectangle;

    return-void
.end method
