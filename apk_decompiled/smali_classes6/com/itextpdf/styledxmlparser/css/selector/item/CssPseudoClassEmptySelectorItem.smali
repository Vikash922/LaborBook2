.class Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassEmptySelectorItem;
.super Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassSelectorItem;
.source "CssPseudoClassEmptySelectorItem.java"


# static fields
.field private static final instance:Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassEmptySelectorItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassEmptySelectorItem;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassEmptySelectorItem;-><init>()V

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassEmptySelectorItem;->instance:Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassEmptySelectorItem;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 56
    const-string v0, "empty"

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassSelectorItem;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassEmptySelectorItem;
    .locals 1

    .line 60
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassEmptySelectorItem;->instance:Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassEmptySelectorItem;

    return-object v0
.end method


# virtual methods
.method public matches(Lcom/itextpdf/styledxmlparser/node/INode;)Z
    .locals 4

    .line 65
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/ICustomElementNode;

    if-nez v0, :cond_5

    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/IDocumentNode;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/INode;->childNodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 71
    :cond_1
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/INode;->childNodes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/node/INode;

    .line 72
    instance-of v3, v0, Lcom/itextpdf/styledxmlparser/node/ITextNode;

    if-eqz v3, :cond_3

    check-cast v0, Lcom/itextpdf/styledxmlparser/node/ITextNode;

    invoke-interface {v0}, Lcom/itextpdf/styledxmlparser/node/ITextNode;->wholeText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    return v1

    :cond_4
    return v2

    :cond_5
    :goto_0
    return v1
.end method
