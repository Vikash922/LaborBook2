.class public Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;
.super Ljava/lang/Object;
.source "KeyVal.java"


# instance fields
.field private contentType:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private stream:Ljava/io/InputStream;

.field private value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "Data key must not be empty"

    invoke-static {p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v0, "Data value must not be null"

    invoke-static {p2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;->key:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;->value:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;
    .locals 1

    .line 34
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;
    .locals 1

    .line 38
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0, p2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;->inputStream(Ljava/io/InputStream;)Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public contentType(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;
    .locals 0

    .line 84
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 85
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public contentType()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public hasInputStream()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;->stream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public inputStream(Ljava/io/InputStream;)Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;->value:Ljava/lang/String;

    const-string v1, "Data input stream must not be null"

    invoke-static {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;->stream:Ljava/io/InputStream;

    return-object p0
.end method

.method public inputStream()Ljava/io/InputStream;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;->stream:Ljava/io/InputStream;

    return-object v0
.end method

.method public key(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;
    .locals 1

    .line 50
    const-string v0, "Data key must not be empty"

    invoke-static {p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;->key:Ljava/lang/String;

    return-object p0
.end method

.method public key()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;->key:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;
    .locals 1

    .line 60
    const-string v0, "Data value must not be null"

    invoke-static {p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;->value:Ljava/lang/String;

    return-object p0
.end method

.method public value()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/helper/KeyVal;->value:Ljava/lang/String;

    return-object v0
.end method
