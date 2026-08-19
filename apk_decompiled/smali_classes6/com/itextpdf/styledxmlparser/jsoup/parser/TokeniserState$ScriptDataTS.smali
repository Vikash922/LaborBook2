.class final Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataTS;
.super Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;
.source "TokeniserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScriptDataTS"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 390
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V
    .locals 0

    .line 390
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataTS;-><init>()V

    return-void
.end method


# virtual methods
.method read(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;)V
    .locals 1

    .line 398
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$ScriptDataTS;->ScriptDataLessthanSign:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    invoke-static {p1, p2, p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->access$6800(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 394
    const-string v0, "ScriptData"

    return-object v0
.end method
