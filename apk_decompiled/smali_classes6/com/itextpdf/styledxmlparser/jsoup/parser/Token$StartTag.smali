.class final Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;
.super Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StartTag"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 251
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;-><init>()V

    .line 252
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;->StartTag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->type:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    return-void
.end method


# virtual methods
.method nameAttr(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->tagName:Ljava/lang/String;

    .line 264
    iput-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    .line 265
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->tagName:Ljava/lang/String;

    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->normalName:Ljava/lang/String;

    return-object p0
.end method

.method reset()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;
    .locals 1

    .line 257
    invoke-super {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->reset()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    const/4 v0, 0x0

    .line 258
    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 271
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->hasAttributes()Z

    move-result v0

    const-string v1, ">"

    const-string v2, "<"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->toStringName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 274
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->toStringName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
