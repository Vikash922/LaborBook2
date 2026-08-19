.class public Lcom/itextpdf/styledxmlparser/css/selector/item/CssSeparatorSelectorItem;
.super Ljava/lang/Object;
.source "CssSeparatorSelectorItem.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/selector/item/ICssSelectorItem;


# instance fields
.field private separator:C


# direct methods
.method public constructor <init>(C)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-char p1, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssSeparatorSelectorItem;->separator:C

    return-void
.end method


# virtual methods
.method public getSeparator()C
    .locals 1

    .line 87
    iget-char v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssSeparatorSelectorItem;->separator:C

    return v0
.end method

.method public getSpecificity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public matches(Lcom/itextpdf/styledxmlparser/node/INode;)Z
    .locals 1

    .line 78
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Separator item is not supposed to be matched against an element"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 95
    iget-char v0, p0, Lcom/itextpdf/styledxmlparser/css/selector/item/CssSeparatorSelectorItem;->separator:C

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const-string v0, " "

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, " {0} "

    invoke-static {v1, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
