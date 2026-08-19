.class public final Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueMatching;
.super Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AttributeWithValueMatching"
.end annotation


# instance fields
.field key:Ljava/lang/String;

.field pattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V
    .locals 0

    .line 303
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;-><init>()V

    .line 304
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/internal/Normalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueMatching;->key:Ljava/lang/String;

    .line 305
    iput-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueMatching;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public matches(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z
    .locals 1

    .line 310
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueMatching;->key:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueMatching;->pattern:Ljava/util/regex/Pattern;

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueMatching;->key:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueMatching;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator$AttributeWithValueMatching;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/util/regex/Pattern;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[{0}~={1}]"

    invoke-static {v1, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
