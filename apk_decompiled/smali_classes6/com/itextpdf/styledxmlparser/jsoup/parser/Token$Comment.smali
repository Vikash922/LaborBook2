.class final Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;
.super Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Comment"
.end annotation


# instance fields
.field bogus:Z

.field private final data:Ljava/lang/StringBuilder;

.field private dataS:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 303
    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$1;)V

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;->data:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 293
    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;->bogus:Z

    .line 304
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;->Comment:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;->type:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    return-void
.end method

.method private ensureData()V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;->dataS:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 330
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;->data:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 331
    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;->dataS:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method final append(C)Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;
    .locals 1

    .line 322
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;->ensureData()V

    .line 323
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;->data:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method final append(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;
    .locals 1

    .line 312
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;->ensureData()V

    .line 313
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;->data:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 314
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;->dataS:Ljava/lang/String;

    goto :goto_0

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;->data:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-object p0
.end method

.method getData()Ljava/lang/String;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;->dataS:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;->data:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method reset()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;->data:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;->reset(Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    .line 298
    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;->dataS:Ljava/lang/String;

    const/4 v0, 0x0

    .line 299
    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;->bogus:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<!--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
