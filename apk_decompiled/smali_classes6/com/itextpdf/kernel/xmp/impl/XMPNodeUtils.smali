.class public final Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;
.super Ljava/lang/Object;
.source "XMPNodeUtils.java"

# interfaces
.implements Lcom/itextpdf/kernel/xmp/XMPConst;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final CLT_FIRST_ITEM:I = 0x5

.field static final CLT_MULTIPLE_GENERIC:I = 0x3

.field static final CLT_NO_VALUES:I = 0x0

.field static final CLT_SINGLE_GENERIC:I = 0x2

.field static final CLT_SPECIFIC_MATCH:I = 0x1

.field static final CLT_XDEFAULT:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static appendLangItem(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 801
    new-instance v0, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    const-string v1, "[]"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    .line 802
    new-instance p2, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    const-string v1, "xml:lang"

    invoke-direct {p2, v1, p1, v2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    .line 803
    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->addQualifier(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    .line 805
    const-string p1, "x-default"

    invoke-virtual {p2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 807
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->addChild(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 811
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->addChild(ILcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    :goto_0
    return-void
.end method

.method static chooseLocalizedText(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 840
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v0

    const/16 v1, 0x66

    if-eqz v0, :cond_b

    .line 844
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->hasChildren()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 846
    new-instance p0, Ljava/lang/Integer;

    invoke-direct {p0, v2}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {p0, v3}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 854
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v0

    move-object v4, v3

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_7

    .line 856
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 859
    invoke-virtual {v5}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 863
    invoke-virtual {v5}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->hasQualifier()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 864
    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getQualifier(I)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "xml:lang"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 870
    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getQualifier(I)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 873
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 875
    new-instance p0, Ljava/lang/Integer;

    invoke-direct {p0, v6}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {p0, v5}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz p1, :cond_4

    .line 877
    invoke-virtual {v7, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-nez v3, :cond_3

    move-object v3, v5

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 886
    :cond_4
    const-string v6, "x-default"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v4, v5

    goto :goto_0

    .line 866
    :cond_5
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p1, "Alt-text array item has no language qualifier"

    invoke-direct {p0, p1, v1}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 861
    :cond_6
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p1, "Alt-text array item is not simple"

    invoke-direct {p0, p1, v1}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_7
    if-ne v2, v6, :cond_8

    .line 895
    new-instance p0, Ljava/lang/Integer;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {p0, v3}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_8
    if-le v2, v6, :cond_9

    .line 899
    new-instance p0, Ljava/lang/Integer;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {p0, v3}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_9
    if-eqz v4, :cond_a

    .line 903
    new-instance p0, Ljava/lang/Integer;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {p0, v4}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 908
    :cond_a
    new-instance p1, Ljava/lang/Integer;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v6}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getChild(I)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 842
    :cond_b
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p1, "Localized text array is not alt-text"

    invoke-direct {p0, p1, v1}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method static deleteNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V
    .locals 2

    .line 318
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getParent()Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v0

    .line 320
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isQualifier()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->removeQualifier(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->removeChild(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    .line 332
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->hasChildren()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 334
    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getParent()Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->removeChild(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    :cond_1
    return-void
.end method

.method static detectAltText(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V
    .locals 2

    .line 768
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 771
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 773
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 774
    invoke-virtual {v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->getHasLanguage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 783
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->setArrayAltText(Z)Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    .line 784
    invoke-static {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->normalizeLangArray(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    :cond_1
    return-void
.end method

.method static findChildNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/itextpdf/kernel/xmp/impl/XMPNode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 171
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isStruct()Z

    move-result v0

    if-nez v0, :cond_2

    .line 173
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->isImplicit()Z

    move-result v0

    const/16 v2, 0x66

    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    .line 185
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->setStruct(Z)Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    goto :goto_0

    .line 180
    :cond_0
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p1, "Named children not allowed for arrays"

    invoke-direct {p0, p1, v2}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 175
    :cond_1
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p1, "Named children only allowed for schemas and structs"

    invoke-direct {p0, p1, v2}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 189
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->findChildByName(Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    .line 193
    new-instance p2, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    invoke-direct {p2}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;-><init>()V

    .line 194
    new-instance v0, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    invoke-direct {v0, p1, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    .line 195
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->setImplicit(Z)V

    .line 196
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->addChild(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    :cond_3
    return-object v0
.end method

.method private static findIndexedItem(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;Z)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    const/16 v0, 0x66

    .line 589
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 590
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt p1, v2, :cond_1

    if-eqz p2, :cond_0

    .line 602
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getChildrenLength()I

    move-result p2

    add-int/2addr p2, v2

    if-ne p1, p2, :cond_0

    .line 605
    new-instance p2, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    const-string v0, "[]"

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    .line 606
    invoke-virtual {p2, v2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->setImplicit(Z)V

    .line 607
    invoke-virtual {p0, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->addChild(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    :cond_0
    return p1

    .line 593
    :cond_1
    :try_start_1
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p1, "Array index must be larger than zero"

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 599
    :catch_0
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p1, "Array index not digits."

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method static findNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;ZLcom/itextpdf/kernel/xmp/options/PropertyOptions;)Lcom/itextpdf/kernel/xmp/impl/XMPNode;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    if-eqz p1, :cond_a

    .line 222
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;->size()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 234
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPathSegment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-static {p0, v1, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->isImplicit()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 241
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->setImplicit(Z)V

    move-object v2, p0

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    const/4 v3, 0x1

    move v4, v3

    .line 249
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 251
    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPathSegment;

    move-result-object v5

    invoke-static {p0, v5, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->followXPathStep(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPathSegment;Z)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p0

    if-nez p0, :cond_3

    if-eqz p2, :cond_2

    .line 257
    invoke-static {v2}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->deleteNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    :cond_2
    return-object v1

    .line 261
    :cond_3
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->isImplicit()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 264
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->setImplicit(Z)V

    if-ne v4, v3, :cond_4

    .line 269
    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPathSegment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPathSegment;->isAlias()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 270
    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPathSegment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPathSegment;->getAliasForm()I

    move-result v5

    if-eqz v5, :cond_4

    .line 272
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v5

    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPathSegment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPathSegment;->getAliasForm()I

    move-result v6

    invoke-virtual {v5, v6, v3}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->setOption(IZ)V

    goto :goto_2

    .line 275
    :cond_4
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;->size()I

    move-result v5

    sub-int/2addr v5, v3

    if-ge v4, v5, :cond_5

    .line 276
    invoke-virtual {p1, v4}, Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPath;->getSegment(I)Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPathSegment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPathSegment;->getKind()I

    move-result v5

    if-ne v5, v3, :cond_5

    .line 277
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 279
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->setStruct(Z)Lcom/itextpdf/kernel/xmp/options/PropertyOptions;
    :try_end_0
    .catch Lcom/itextpdf/kernel/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_2
    if-nez v2, :cond_6

    move-object v2, p0

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    if-eqz v2, :cond_8

    .line 303
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->mergeWith(Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    .line 304
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->setOptions(Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    :cond_8
    return-object p0

    :catch_0
    move-exception p0

    if-eqz v2, :cond_9

    .line 294
    invoke-static {v2}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->deleteNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    .line 296
    :cond_9
    throw p0

    .line 224
    :cond_a
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p1, "Empty XMPPath"

    const/16 p2, 0x66

    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method private static findQualifierNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/itextpdf/kernel/xmp/impl/XMPNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 561
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->findQualifierByName(Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 565
    new-instance v0, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    const/4 p2, 0x0

    invoke-direct {v0, p1, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    const/4 p1, 0x1

    .line 566
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->setImplicit(Z)V

    .line 568
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->addQualifier(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    :cond_0
    return-object v0
.end method

.method static findSchemaNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/kernel/xmp/impl/XMPNode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 121
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->findChildByName(Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v0

    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    .line 125
    new-instance v0, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    new-instance p3, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    invoke-direct {p3}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;-><init>()V

    const/4 v1, 0x1

    .line 127
    invoke-virtual {p3, v1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->setSchemaNode(Z)Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object p3

    invoke-direct {v0, p1, p3}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    .line 128
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->setImplicit(Z)V

    .line 131
    invoke-static {}, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/itextpdf/kernel/xmp/XMPSchemaRegistry;

    move-result-object p3

    invoke-interface {p3, p1}, Lcom/itextpdf/kernel/xmp/XMPSchemaRegistry;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    if-eqz p2, :cond_0

    .line 134
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_0

    .line 136
    invoke-static {}, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/itextpdf/kernel/xmp/XMPSchemaRegistry;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/itextpdf/kernel/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 141
    :cond_0
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p1, "Unregistered schema namespace URI"

    const/16 p2, 0x65

    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 146
    :cond_1
    :goto_0
    invoke-virtual {v0, p3}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->addChild(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    :cond_2
    return-object v0
.end method

.method static findSchemaNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/itextpdf/kernel/xmp/impl/XMPNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 97
    invoke-static {p0, p1, v0, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->findSchemaNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p0

    return-object p0
.end method

.method private static followXPathStep(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPathSegment;Z)Lcom/itextpdf/kernel/xmp/impl/XMPNode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 483
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPathSegment;->getKind()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 487
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->findChildNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p0

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 492
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 491
    invoke-static {p0, p1, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->findQualifierNode(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;Z)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p0

    goto :goto_1

    .line 498
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isArray()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 505
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->findIndexedItem(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;Z)I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p2, 0x4

    if-ne v0, p2, :cond_3

    .line 509
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getChildrenLength()I

    move-result p1

    goto :goto_0

    :cond_3
    const/4 p2, 0x6

    const/4 v2, 0x0

    if-ne v0, p2, :cond_4

    .line 513
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itextpdf/kernel/xmp/impl/Utils;->splitNameAndValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 514
    aget-object p2, p1, v2

    .line 515
    aget-object p1, p1, v1

    .line 516
    invoke-static {p0, p2, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->lookupFieldSelector(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_4
    const/4 p2, 0x5

    if-ne v0, p2, :cond_6

    .line 520
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/itextpdf/kernel/xmp/impl/Utils;->splitNameAndValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 521
    aget-object v0, p2, v2

    .line 522
    aget-object p2, p2, v1

    .line 524
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/xpath/XMPPathSegment;->getAliasForm()I

    move-result p1

    .line 523
    invoke-static {p0, v0, p2, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->lookupQualSelector(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    :goto_0
    if-gt v1, p1, :cond_5

    .line 532
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getChildrenLength()I

    move-result p2

    if-gt p1, p2, :cond_5

    .line 534
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getChild(I)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p0

    goto :goto_1

    :cond_5
    const/4 p0, 0x0

    :goto_1
    return-object p0

    .line 528
    :cond_6
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p1, "Unknown array indexing step in FollowXPathStep"

    const/16 p2, 0x9

    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 500
    :cond_7
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p1, "Indexing applied to non-array"

    const/16 p2, 0x66

    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method private static lookupFieldSelector(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x1

    move v2, v1

    .line 630
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v3

    if-gt v2, v3, :cond_4

    if-gez v0, :cond_4

    .line 632
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getChild(I)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v3

    .line 634
    invoke-virtual {v3}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isStruct()Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v1

    .line 640
    :goto_1
    invoke-virtual {v3}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v5

    if-gt v4, v5, :cond_2

    .line 642
    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getChild(I)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v5

    .line 643
    invoke-virtual {v5}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_2

    .line 647
    :cond_0
    invoke-virtual {v5}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v2

    goto :goto_3

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 636
    :cond_3
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p1, "Field selector must be used on array of struct"

    const/16 p2, 0x66

    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_4
    return v0
.end method

.method static lookupLanguageItem(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 925
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    move v1, v0

    .line 930
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v2

    if-gt v1, v2, :cond_2

    .line 932
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getChild(I)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v2

    .line 933
    invoke-virtual {v2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->hasQualifier()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getQualifier(I)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "xml:lang"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 937
    :cond_0
    invoke-virtual {v2, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getQualifier(I)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0

    .line 927
    :cond_3
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p1, "Language item must be used on array"

    const/16 v0, 0x66

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method private static lookupQualSelector(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 676
    const-string v0, "xml:lang"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 678
    invoke-static {p2}, Lcom/itextpdf/kernel/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 679
    invoke-static {p0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->lookupLanguageItem(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_0

    and-int/lit16 p2, p3, 0x1000

    if-lez p2, :cond_0

    .line 682
    new-instance p1, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    const-string p2, "[]"

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    .line 683
    new-instance p2, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    const-string v1, "x-default"

    invoke-direct {p2, v0, v1, p3}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    .line 684
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->addQualifier(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    .line 685
    invoke-virtual {p0, v2, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->addChild(ILcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    return v2

    :cond_0
    return p1

    .line 695
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getChildrenLength()I

    move-result p3

    if-ge v2, p3, :cond_4

    .line 697
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getChild(I)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p3

    .line 699
    invoke-virtual {p3}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateQualifier()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 701
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 702
    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 703
    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, -0x1

    return p0
.end method

.method static normalizeLangArray(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V
    .locals 6

    .line 726
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    move v1, v0

    .line 732
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v2

    if-gt v1, v2, :cond_2

    .line 734
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getChild(I)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v2

    .line 735
    invoke-virtual {v2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->hasQualifier()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getQualifier(I)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "x-default"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 740
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->removeChild(I)V

    .line 741
    invoke-virtual {p0, v3, v2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->addChild(ILcom/itextpdf/kernel/xmp/impl/XMPNode;)V
    :try_end_0
    .catch Lcom/itextpdf/kernel/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-ne v1, v0, :cond_2

    .line 751
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getChild(I)Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object p0

    invoke-virtual {v2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method static serializeNodeValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move-object p0, v0

    goto :goto_0

    .line 420
    :cond_0
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 422
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/itextpdf/kernel/xmp/XMPUtils;->convertFromBoolean(Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 424
    :cond_1
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 426
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/itextpdf/kernel/xmp/XMPUtils;->convertFromInteger(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 428
    :cond_2
    instance-of v1, p0, Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 430
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/itextpdf/kernel/xmp/XMPUtils;->convertFromLong(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 432
    :cond_3
    instance-of v1, p0, Ljava/lang/Double;

    if-eqz v1, :cond_4

    .line 434
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/itextpdf/kernel/xmp/XMPUtils;->convertFromDouble(D)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 436
    :cond_4
    instance-of v1, p0, Lcom/itextpdf/kernel/xmp/XMPDateTime;

    if-eqz v1, :cond_5

    .line 438
    check-cast p0, Lcom/itextpdf/kernel/xmp/XMPDateTime;

    invoke-static {p0}, Lcom/itextpdf/kernel/xmp/XMPUtils;->convertFromDate(Lcom/itextpdf/kernel/xmp/XMPDateTime;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 440
    :cond_5
    instance-of v1, p0, Ljava/util/GregorianCalendar;

    if-eqz v1, :cond_6

    .line 442
    check-cast p0, Ljava/util/GregorianCalendar;

    invoke-static {p0}, Lcom/itextpdf/kernel/xmp/XMPDateTimeFactory;->createFromCalendar(Ljava/util/Calendar;)Lcom/itextpdf/kernel/xmp/XMPDateTime;

    move-result-object p0

    .line 443
    invoke-static {p0}, Lcom/itextpdf/kernel/xmp/XMPUtils;->convertFromDate(Lcom/itextpdf/kernel/xmp/XMPDateTime;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 445
    :cond_6
    instance-of v1, p0, [B

    if-eqz v1, :cond_7

    .line 447
    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0}, Lcom/itextpdf/kernel/xmp/XMPUtils;->encodeBase64([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 451
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_8

    .line 454
    invoke-static {p0}, Lcom/itextpdf/kernel/xmp/impl/Utils;->removeControlChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method static setNodeValue(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/lang/Object;)V
    .locals 2

    .line 347
    invoke-static {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->serializeNodeValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 348
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isQualifier()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "xml:lang"

    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 354
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/kernel/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 350
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->setValue(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method static verifySetOptions(Lcom/itextpdf/kernel/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/itextpdf/kernel/xmp/options/PropertyOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    if-nez p0, :cond_0

    .line 375
    new-instance p0, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    invoke-direct {p0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;-><init>()V

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 380
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->setArrayAlternate(Z)Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    .line 383
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 385
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->setArrayOrdered(Z)Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    .line 388
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isArrayOrdered()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 390
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->setArray(Z)Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    .line 393
    :cond_3
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_4

    goto :goto_0

    .line 395
    :cond_4
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p1, "Structs and arrays can\'t have values"

    const/16 v0, 0x67

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 399
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->getOptions()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->assertConsistency(I)V

    return-object p0
.end method
