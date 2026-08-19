.class final Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$RawTextLessThanSignTS;
.super Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;
.source "TokeniserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RawTextLessThanSignTS"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 633
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V
    .locals 0

    .line 633
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$RawTextLessThanSignTS;-><init>()V

    return-void
.end method


# virtual methods
.method read(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;)V
    .locals 1

    const/16 v0, 0x2f

    .line 641
    invoke-virtual {p2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->matches(C)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 642
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->createTempBuffer()V

    .line 643
    sget-object p2, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$RawTextLessThanSignTS;->RawtextEndTagOpen:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->advanceTransition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x3c

    .line 645
    invoke-virtual {p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->emit(C)V

    .line 646
    sget-object p2, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$RawTextLessThanSignTS;->Rawtext:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 637
    const-string v0, "RawtextLessthanSign"

    return-object v0
.end method
