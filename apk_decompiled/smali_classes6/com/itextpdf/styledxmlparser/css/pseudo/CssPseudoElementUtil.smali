.class public Lcom/itextpdf/styledxmlparser/css/pseudo/CssPseudoElementUtil;
.super Ljava/lang/Object;
.source "CssPseudoElementUtil.java"


# static fields
.field private static final TAG_NAME_PREFIX:Ljava/lang/String; = "pseudo-element::"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPseudoElementTagName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pseudo-element::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hasBeforeAfterElements(Lcom/itextpdf/styledxmlparser/node/IElementNode;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 75
    instance-of v0, p0, Lcom/itextpdf/styledxmlparser/css/pseudo/CssPseudoElementNode;

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/itextpdf/styledxmlparser/node/IElementNode;->name()Ljava/lang/String;

    move-result-object p0

    const-string v0, "pseudo-element::"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
