.class Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassFirstOfTypeSelectorItem;
.super Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassChildSelectorItem;
.source "CssPseudoClassFirstOfTypeSelectorItem.java"


# static fields
.field private static final instance:Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassFirstOfTypeSelectorItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassFirstOfTypeSelectorItem;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassFirstOfTypeSelectorItem;-><init>()V

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassFirstOfTypeSelectorItem;->instance:Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassFirstOfTypeSelectorItem;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 56
    const-string v0, "first-of-type"

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassChildSelectorItem;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassFirstOfTypeSelectorItem;
    .locals 1

    .line 60
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassFirstOfTypeSelectorItem;->instance:Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassFirstOfTypeSelectorItem;

    return-object v0
.end method


# virtual methods
.method public matches(Lcom/itextpdf/styledxmlparser/node/INode;)Z
    .locals 3

    .line 65
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/ICustomElementNode;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/IDocumentNode;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassFirstOfTypeSelectorItem;->getAllSiblingsOfNodeType(Lcom/itextpdf/styledxmlparser/node/INode;)Ljava/util/List;

    move-result-object v0

    .line 69
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method
