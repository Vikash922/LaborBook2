.class final Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;
.super Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Doctype"
.end annotation


# instance fields
.field forceQuirks:Z

.field final name:Ljava/lang/StringBuilder;

.field pubSysKey:Ljava/lang/String;

.field final publicIdentifier:Ljava/lang/StringBuilder;

.field final systemIdentifier:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$1;)V

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->name:Ljava/lang/StringBuilder;

    .line 57
    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->pubSysKey:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->publicIdentifier:Ljava/lang/StringBuilder;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->systemIdentifier:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->forceQuirks:Z

    .line 63
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;->Doctype:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->type:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    return-void
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPubSysKey()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->pubSysKey:Ljava/lang/String;

    return-object v0
.end method

.method getPublicIdentifier()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->publicIdentifier:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemIdentifier()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->systemIdentifier:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isForceQuirks()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->forceQuirks:Z

    return v0
.end method

.method reset()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->name:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->reset(Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->pubSysKey:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->publicIdentifier:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->reset(Ljava/lang/StringBuilder;)V

    .line 71
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->systemIdentifier:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->reset(Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->forceQuirks:Z

    return-object p0
.end method
