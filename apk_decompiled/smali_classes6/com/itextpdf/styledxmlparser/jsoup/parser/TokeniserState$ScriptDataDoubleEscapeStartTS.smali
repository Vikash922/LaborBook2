.class final Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataDoubleEscapeStartTS;
.super Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;
.source "TokeniserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScriptDataDoubleEscapeStartTS"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 926
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V
    .locals 0

    .line 926
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataDoubleEscapeStartTS;-><init>()V

    return-void
.end method


# virtual methods
.method read(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;)V
    .locals 2

    .line 934
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataDoubleEscapeStartTS;->ScriptDataDoubleEscaped:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataDoubleEscapeStartTS;->ScriptDataEscaped:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    invoke-static {p1, p2, v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->access$7200(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 930
    const-string v0, "ScriptDataDoubleEscapeStart"

    return-object v0
.end method
