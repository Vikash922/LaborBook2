.class public abstract Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassSelectorItem;
.super Ljava/lang/Object;
.source "CssPseudoClassSelectorItem.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassSelectorItem$AlwaysNotApplySelectorItem;,
        Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassSelectorItem$AlwaysApplySelectorItem;
    }
.end annotation


# instance fields
.field protected arguments:Ljava/lang/String;

.field private pseudoClass:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 69
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassSelectorItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassSelectorItem;->pseudoClass:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassSelectorItem;->arguments:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassSelectorItem;
    .locals 3

    const/16 v0, 0x28

    .line 78
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 83
    const-string v0, ""

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 85
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 86
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object p0, v1

    .line 88
    :goto_0
    invoke-static {p0, v0}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassSelectorItem;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassSelectorItem;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassSelectorItem;
    .locals 3

    .line 92
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "last-of-type"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "first-of-type"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "last-child"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "visited"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "disabled"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "hover"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "focus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "empty"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "root"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_9
    const-string v0, "link"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_a
    const-string v0, "not"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_b
    const-string v0, "target"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_c
    const-string v0, "nth-of-type"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_d
    const-string v0, "active"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_e
    const-string v0, "nth-child"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_f
    const-string v0, "first-child"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_0

    :cond_f
    const/4 v1, 0x0

    :goto_0
    const/4 v0, 0x0

    packed-switch v1, :pswitch_data_0

    return-object v0

    .line 102
    :pswitch_0
    invoke-static {}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassLastOfTypeSelectorItem;->getInstance()Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassLastOfTypeSelectorItem;

    move-result-object p0

    return-object p0

    .line 98
    :pswitch_1
    invoke-static {}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassFirstOfTypeSelectorItem;->getInstance()Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassFirstOfTypeSelectorItem;

    move-result-object p0

    return-object p0

    .line 100
    :pswitch_2
    invoke-static {}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassLastChildSelectorItem;->getInstance()Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassLastChildSelectorItem;

    move-result-object p0

    return-object p0

    .line 126
    :pswitch_3
    invoke-static {}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassDisabledSelectorItem;->getInstance()Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassDisabledSelectorItem;

    move-result-object p0

    return-object p0

    .line 94
    :pswitch_4
    invoke-static {}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassEmptySelectorItem;->getInstance()Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassEmptySelectorItem;

    move-result-object p0

    return-object p0

    .line 116
    :pswitch_5
    invoke-static {}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassRootSelectorItem;->getInstance()Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassRootSelectorItem;

    move-result-object p0

    return-object p0

    .line 118
    :pswitch_6
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassSelectorItem$AlwaysApplySelectorItem;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassSelectorItem$AlwaysApplySelectorItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 108
    :pswitch_7
    new-instance p0, Lcom/itextpdf/styledxmlparser/css/selector/CssSelector;

    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/css/selector/CssSelector;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/css/selector/CssSelector;->getSelectorItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;

    .line 110
    instance-of v2, v1, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNotSelectorItem;

    if-nez v2, :cond_11

    instance-of v1, v1, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoElementSelectorItem;

    if-eqz v1, :cond_10

    :cond_11
    return-object v0

    .line 114
    :cond_12
    new-instance p1, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNotSelectorItem;

    invoke-direct {p1, p0}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNotSelectorItem;-><init>(Lcom/itextpdf/styledxmlparser/css/selector/ICssSelector;)V

    return-object p1

    .line 106
    :pswitch_8
    new-instance p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNthOfTypeSelectorItem;

    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNthOfTypeSelectorItem;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 124
    :pswitch_9
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassSelectorItem$AlwaysNotApplySelectorItem;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassSelectorItem$AlwaysNotApplySelectorItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 104
    :pswitch_a
    new-instance p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNthChildSelectorItem;

    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassNthChildSelectorItem;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 96
    :pswitch_b
    invoke-static {}, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassFirstChildSelectorItem;->getInstance()Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassFirstChildSelectorItem;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7f5fe841 -> :sswitch_f
        -0x6899dd0f -> :sswitch_e
        -0x54d080fa -> :sswitch_d
        -0x357f41fb -> :sswitch_c
        -0x34818e6f -> :sswitch_b
        0x1aad3 -> :sswitch_a
        0x32affa -> :sswitch_9
        0x3580e2 -> :sswitch_8
        0x5c2854d -> :sswitch_7
        0x5d154d8 -> :sswitch_6
        0x5edc93c -> :sswitch_5
        0x10263a7c -> :sswitch_4
        0x1bd2332a -> :sswitch_3
        0x31d1d325 -> :sswitch_2
        0x4d10b753 -> :sswitch_1
        0x78c13139 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_9
        :pswitch_9
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getPseudoClass()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassSelectorItem;->pseudoClass:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecificity()I
    .locals 1

    const/16 v0, 0x400

    return v0
.end method

.method public matches(Lcom/itextpdf/styledxmlparser/node/INode;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassSelectorItem;->pseudoClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassSelectorItem;->arguments:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssPseudoClassSelectorItem;->arguments:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
