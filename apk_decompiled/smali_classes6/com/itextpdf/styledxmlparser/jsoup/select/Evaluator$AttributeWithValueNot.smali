.class public final Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueNot;
.super Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeKeyPair;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AttributeWithValueNot"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 221
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeKeyPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public matches(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z
    .locals 1

    .line 226
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueNot;->value:Ljava/lang/String;

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueNot;->key:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueNot;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueNot;->value:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[{0}!={1}]"

    invoke-static {v1, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
