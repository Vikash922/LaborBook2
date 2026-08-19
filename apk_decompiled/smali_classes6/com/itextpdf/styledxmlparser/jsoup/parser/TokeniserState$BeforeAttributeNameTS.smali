.class final Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$BeforeAttributeNameTS;
.super Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;
.source "TokeniserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BeforeAttributeNameTS"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1073
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V
    .locals 0

    .line 1073
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$BeforeAttributeNameTS;-><init>()V

    return-void
.end method


# virtual methods
.method read(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;)V
    .locals 2

    .line 1082
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->consume()C

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4

    const/16 v1, 0x22

    if-eq v0, v1, :cond_2

    const/16 v1, 0x27

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1

    const v1, 0xffff

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_4

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    const/16 v1, 0xc

    if-eq v0, v1, :cond_4

    const/16 v1, 0xd

    if-eq v0, v1, :cond_4

    packed-switch v0, :pswitch_data_0

    .line 1120
    iget-object v0, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->tagPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->newAttribute()V

    .line 1121
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->unconsume()V

    .line 1122
    sget-object p2, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$BeforeAttributeNameTS;->AttributeName:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 1094
    :pswitch_0
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->unconsume()V

    .line 1095
    invoke-virtual {p1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    .line 1098
    :pswitch_1
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->emitTagPending()V

    .line 1099
    sget-object p2, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$BeforeAttributeNameTS;->Data:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 1108
    :cond_0
    invoke-virtual {p1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->eofError(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    .line 1109
    sget-object p2, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$BeforeAttributeNameTS;->Data:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 1091
    :cond_1
    sget-object p2, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$BeforeAttributeNameTS;->SelfClosingStartTag:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 1114
    :cond_2
    :pswitch_2
    invoke-virtual {p1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    .line 1115
    iget-object p2, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->tagPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;

    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->newAttribute()V

    .line 1116
    iget-object p2, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->tagPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;

    invoke-virtual {p2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->appendAttributeName(C)V

    .line 1117
    sget-object p2, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$BeforeAttributeNameTS;->AttributeName:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 1102
    :cond_3
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->unconsume()V

    .line 1103
    invoke-virtual {p1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    .line 1104
    iget-object p2, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->tagPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;

    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->newAttribute()V

    .line 1105
    sget-object p2, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$BeforeAttributeNameTS;->AttributeName:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1077
    const-string v0, "BeforeAttributeName"

    return-object v0
.end method
