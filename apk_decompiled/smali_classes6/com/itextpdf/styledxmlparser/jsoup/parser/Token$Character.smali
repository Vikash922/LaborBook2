.class Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;
.super Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Character"
.end annotation


# instance fields
.field private data:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 345
    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$1;)V

    .line 346
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;->Character:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;->type:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    return-void
.end method


# virtual methods
.method data(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;->data:Ljava/lang/String;

    return-object p0
.end method

.method getData()Ljava/lang/String;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;->data:Ljava/lang/String;

    return-object v0
.end method

.method reset()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;
    .locals 1

    const/4 v0, 0x0

    .line 351
    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;->data:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 366
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
