.class final Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$AttributeNameTS;
.super Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;
.source "TokeniserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AttributeNameTS"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1127
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$1;)V
    .locals 0

    .line 1127
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$AttributeNameTS;-><init>()V

    return-void
.end method


# virtual methods
.method read(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;)V
    .locals 2

    .line 1136
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$AttributeNameTS;->attributeNameCharsSorted:[C

    invoke-virtual {p2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->consumeToAnySorted([C)Ljava/lang/String;

    move-result-object v0

    .line 1137
    iget-object v1, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->tagPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;

    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->appendAttributeName(Ljava/lang/String;)V

    .line 1139
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->consume()C

    move-result p2

    if-eqz p2, :cond_4

    const/16 v0, 0x20

    if-eq p2, v0, :cond_3

    const/16 v0, 0x22

    if-eq p2, v0, :cond_2

    const/16 v0, 0x27

    if-eq p2, v0, :cond_2

    const/16 v0, 0x2f

    if-eq p2, v0, :cond_1

    const v0, 0xffff

    if-eq p2, v0, :cond_0

    const/16 v0, 0x9

    if-eq p2, v0, :cond_3

    const/16 v0, 0xa

    if-eq p2, v0, :cond_3

    const/16 v0, 0xc

    if-eq p2, v0, :cond_3

    const/16 v0, 0xd

    if-eq p2, v0, :cond_3

    packed-switch p2, :pswitch_data_0

    .line 1173
    iget-object p1, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->tagPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;

    invoke-virtual {p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->appendAttributeName(C)V

    goto :goto_0

    .line 1155
    :pswitch_0
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->emitTagPending()V

    .line 1156
    sget-object p2, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$AttributeNameTS;->Data:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 1152
    :pswitch_1
    sget-object p2, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$AttributeNameTS;->BeforeAttributeValue:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 1163
    :cond_0
    invoke-virtual {p1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->eofError(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    .line 1164
    sget-object p2, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$AttributeNameTS;->Data:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 1149
    :cond_1
    sget-object p2, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$AttributeNameTS;->SelfClosingStartTag:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 1169
    :cond_2
    :pswitch_2
    invoke-virtual {p1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    .line 1170
    iget-object p1, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->tagPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;

    invoke-virtual {p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->appendAttributeName(C)V

    goto :goto_0

    .line 1146
    :cond_3
    sget-object p2, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState$AttributeNameTS;->AfterAttributeName:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 1159
    :cond_4
    invoke-virtual {p1, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    .line 1160
    iget-object p1, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->tagPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;

    const p2, 0xfffd

    invoke-virtual {p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->appendAttributeName(C)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1131
    const-string v0, "AttributeName"

    return-object v0
.end method
