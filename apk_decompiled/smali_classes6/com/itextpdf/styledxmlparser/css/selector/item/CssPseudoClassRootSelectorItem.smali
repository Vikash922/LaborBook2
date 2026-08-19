.class Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassRootSelectorItem;
.super Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassSelectorItem;
.source "CssPseudoClassRootSelectorItem.java"


# static fields
.field private static final instance:Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassRootSelectorItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassRootSelectorItem;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassRootSelectorItem;-><init>()V

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassRootSelectorItem;->instance:Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassRootSelectorItem;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 56
    const-string v0, "root"

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassSelectorItem;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassRootSelectorItem;
    .locals 1

    .line 60
    sget-object v0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassRootSelectorItem;->instance:Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassRootSelectorItem;

    return-object v0
.end method


# virtual methods
.method public matches(Lcom/itextpdf/styledxmlparser/node/INode;)Z
    .locals 1

    .line 65
    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/IElementNode;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/ICustomElementNode;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/itextpdf/styledxmlparser/node/IDocumentNode;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    invoke-interface {p1}, Lcom/itextpdf/styledxmlparser/node/INode;->parentNode()Lcom/itextpdf/styledxmlparser/node/INode;

    move-result-object p1

    instance-of p1, p1, Lcom/itextpdf/styledxmlparser/node/IDocumentNode;

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
