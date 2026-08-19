.class final Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;
.super Ljava/lang/Object;
.source "Tokeniser.java"


# static fields
.field private static final notCharRefCharsSorted:[C

.field static final replacementChar:C = '\ufffd'

.field static final win1252Extensions:[I

.field static final win1252ExtensionsStart:I = 0x80


# instance fields
.field charPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;

.field private charsBuilder:Ljava/lang/StringBuilder;

.field private charsString:Ljava/lang/String;

.field private final codepointHolder:[I

.field commentPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;

.field dataBuffer:Ljava/lang/StringBuilder;

.field doctypePending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;

.field private emitPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

.field endPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;

.field private final errors:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

.field private isEmitPending:Z

.field private lastStartTag:Ljava/lang/String;

.field private final multipointHolder:[I

.field private final reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

.field startPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;

.field private state:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

.field tagPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x7

    .line 38
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->notCharRefCharsSorted:[C

    const/16 v1, 0x20

    .line 43
    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->win1252Extensions:[I

    .line 53
    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    return-void

    nop

    :array_0
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
        0x3cs
        0x26s
    .end array-data

    nop

    :array_1
    .array-data 4
        0x20ac
        0x81
        0x201a
        0x192
        0x201e
        0x2026
        0x2020
        0x2021
        0x2c6
        0x2030
        0x160
        0x2039
        0x152
        0x8d
        0x17d
        0x8f
        0x90
        0x2018
        0x2019
        0x201c
        0x201d
        0x2022
        0x2013
        0x2014
        0x2dc
        0x2122
        0x161
        0x203a
        0x153
        0x9d
        0x17e
        0x178
    .end array-data
.end method

.method constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;)V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->Data:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->state:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->isEmitPending:Z

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charsBuilder:Ljava/lang/StringBuilder;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    .line 67
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->startPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;

    .line 68
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->endPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;

    .line 69
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;

    .line 70
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->doctypePending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;

    .line 71
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->commentPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;

    const/4 v0, 0x1

    .line 193
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->codepointHolder:[I

    const/4 v0, 0x2

    .line 194
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->multipointHolder:[I

    .line 75
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    .line 76
    iput-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->errors:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    return-void
.end method

.method private characterReferenceError(Ljava/lang/String;)V
    .locals 4

    .line 325
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->errors:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->errors:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseError;

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos()I

    move-result v2

    const-string v3, "Invalid character reference: {0}"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseError;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method advanceTransition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->advance()V

    .line 190
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->state:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    return-void
.end method

.method appropriateEndTagName()Ljava/lang/String;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->lastStartTag:Ljava/lang/String;

    return-object v0
.end method

.method consumeCharacterReference(Ljava/lang/Character;Z)[I
    .locals 7

    .line 196
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_1

    .line 198
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->current()C

    move-result v0

    if-ne p1, v0, :cond_1

    return-object v1

    .line 200
    :cond_1
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->notCharRefCharsSorted:[C

    invoke-virtual {p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->matchesAnySorted([C)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v1

    .line 203
    :cond_2
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->codepointHolder:[I

    .line 204
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->mark()V

    .line 205
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    const-string v2, "#"

    invoke-virtual {v0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->matchConsume(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "missing semicolon"

    const-string v3, ";"

    const/4 v4, 0x0

    if-eqz v0, :cond_b

    .line 206
    iget-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    const-string v0, "X"

    invoke-virtual {p2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->matchConsumeIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    .line 207
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    if-eqz p2, :cond_3

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->consumeHexSequence()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->consumeDigitSequence()Ljava/lang/String;

    move-result-object v0

    .line 208
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    .line 209
    const-string p1, "numeric reference with no numerals"

    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->characterReferenceError(Ljava/lang/String;)V

    .line 210
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->rewindToMark()V

    return-object v1

    .line 214
    :cond_4
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->unmark()V

    .line 215
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {v1, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->matchConsume(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 216
    invoke-direct {p0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->characterReferenceError(Ljava/lang/String;)V

    :cond_5
    if-eqz p2, :cond_6

    const/16 p2, 0x10

    goto :goto_1

    :cond_6
    const/16 p2, 0xa

    :goto_1
    const/4 v1, -0x1

    .line 220
    :try_start_0
    invoke-static {v0, p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move p2, v1

    :goto_2
    if-eq p2, v1, :cond_a

    const v0, 0xd800

    if-lt p2, v0, :cond_7

    const v0, 0xdfff

    if-le p2, v0, :cond_a

    :cond_7
    const v0, 0x10ffff

    if-le p2, v0, :cond_8

    goto :goto_3

    :cond_8
    const/16 v0, 0x80

    if-lt p2, v0, :cond_9

    .line 228
    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->win1252Extensions:[I

    array-length v2, v1

    add-int/2addr v2, v0

    if-ge p2, v2, :cond_9

    .line 229
    const-string v0, "character is not a valid unicode code point"

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->characterReferenceError(Ljava/lang/String;)V

    add-int/lit8 p2, p2, -0x80

    .line 230
    aget p2, v1, p2

    .line 233
    :cond_9
    aput p2, p1, v4

    goto :goto_4

    .line 224
    :cond_a
    :goto_3
    const-string p2, "character outside of valid range"

    invoke-direct {p0, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->characterReferenceError(Ljava/lang/String;)V

    const p2, 0xfffd

    .line 225
    aput p2, p1, v4

    :goto_4
    return-object p1

    .line 238
    :cond_b
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->consumeLetterThenDigitSequence()Ljava/lang/String;

    move-result-object v0

    .line 239
    iget-object v5, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->matches(C)Z

    move-result v5

    .line 241
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->isBaseNamedEntity(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->isNamedEntity(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    if-eqz v5, :cond_c

    goto :goto_5

    .line 244
    :cond_c
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->rewindToMark()V

    if-eqz v5, :cond_d

    .line 246
    const-string p1, "invalid named reference"

    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->characterReferenceError(Ljava/lang/String;)V

    :cond_d
    return-object v1

    :cond_e
    :goto_5
    if-eqz p2, :cond_10

    .line 249
    iget-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->matchesLetter()Z

    move-result p2

    if-nez p2, :cond_f

    iget-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->matchesDigit()Z

    move-result p2

    if-nez p2, :cond_f

    iget-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    const/4 v5, 0x3

    new-array v5, v5, [C

    fill-array-data v5, :array_0

    invoke-virtual {p2, v5}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->matchesAny([C)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 251
    :cond_f
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->rewindToMark()V

    return-object v1

    .line 255
    :cond_10
    iget-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->unmark()V

    .line 256
    iget-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {p2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->matchConsume(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_11

    .line 257
    invoke-direct {p0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->characterReferenceError(Ljava/lang/String;)V

    .line 258
    :cond_11
    iget-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->multipointHolder:[I

    invoke-static {v0, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->codepointsForName(Ljava/lang/String;[I)I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_12

    .line 260
    iget-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->multipointHolder:[I

    aget p2, p2, v4

    aput p2, p1, v4

    return-object p1

    :cond_12
    const/4 p1, 0x2

    if-ne p2, p1, :cond_13

    .line 263
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->multipointHolder:[I

    return-object p1

    .line 265
    :cond_13
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unexpected characters returned for "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->fail(Ljava/lang/String;)V

    .line 266
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->multipointHolder:[I

    return-object p1

    :array_0
    .array-data 2
        0x3ds
        0x2ds
        0x5fs
    .end array-data
.end method

.method createBogusCommentPending()V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->commentPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;->reset()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    .line 291
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->commentPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;->bogus:Z

    return-void
.end method

.method createCommentPending()V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->commentPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;->reset()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    return-void
.end method

.method createDoctypePending()V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->doctypePending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;->reset()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    return-void
.end method

.method createTagPending(Z)Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;
    .locals 1

    if-eqz p1, :cond_0

    .line 272
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->startPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->reset()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->endPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;->reset()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;

    move-object v0, p1

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->tagPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;

    return-object p1
.end method

.method createTempBuffer()V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->reset(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method currentNodeInHtmlNS()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method emit(C)V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 146
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charsBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charsBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charsBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method emit(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)V
    .locals 2

    .line 102
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->isEmitPending:Z

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->isFalse(Z)V

    .line 104
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->emitPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->isEmitPending:Z

    .line 107
    iget-object v0, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->type:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;->StartTag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_0

    .line 108
    check-cast p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;

    .line 109
    iget-object p1, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->tagName:Ljava/lang/String;

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->lastStartTag:Ljava/lang/String;

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->type:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;->EndTag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    if-ne v0, v1, :cond_1

    .line 111
    check-cast p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;

    .line 112
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;->hasAttributes()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 113
    const-string p1, "Attributes incorrectly present on end tag"

    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->error(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method emit(Ljava/lang/String;)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 121
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charsBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charsBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charsBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method emit(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 134
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charsBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charsBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charsBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method emit([C)V
    .locals 0

    .line 157
    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    return-void
.end method

.method emit([I)V
    .locals 7

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, p1, v3

    ushr-int/lit8 v5, v4, 0x10

    if-nez v5, :cond_0

    int-to-char v4, v4

    .line 165
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    ushr-int/lit8 v5, v4, 0xa

    const v6, 0xd7c0

    add-int/2addr v5, v6

    int-to-char v5, v5

    .line 168
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    and-int/lit16 v4, v4, 0x3ff

    const v5, 0xdc00

    add-int/2addr v4, v5

    int-to-char v4, v4

    .line 170
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 173
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [C

    .line 174
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 175
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    aput-char v1, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 177
    :cond_2
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->emit([C)V

    return-void
.end method

.method emitCommentPending()V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->commentPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->emit(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)V

    return-void
.end method

.method emitDoctypePending()V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->doctypePending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Doctype;

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->emit(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)V

    return-void
.end method

.method emitTagPending()V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->tagPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->finaliseTag()V

    .line 278
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->tagPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->emit(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)V

    return-void
.end method

.method eofError(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V
    .locals 4

    .line 320
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->errors:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->errors:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseError;

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos()I

    move-result v2

    const-string v3, "Unexpectedly reached end of file (EOF) in input state [{0}]"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseError;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method error(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V
    .locals 4

    .line 315
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->errors:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->errors:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseError;

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos()I

    move-result v2

    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->current()C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v3, "Unexpected character \'{0}\' in input state [{1}]"

    invoke-direct {v1, v2, v3, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseError;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method error(Ljava/lang/String;)V
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->errors:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;->canAddError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->errors:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;

    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseError;

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->pos()I

    move-result v2

    invoke-direct {v1, v2, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseErrorList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method getState()Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->state:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    return-object v0
.end method

.method isAppropriateEndTagToken()Z
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->lastStartTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->tagPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->lastStartTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method read()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;
    .locals 5

    .line 80
    :goto_0
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->isEmitPending:Z

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->state:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {v0, p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->read(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;)V

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charsBuilder:Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 89
    iput-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;->data(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;

    move-result-object v0

    return-object v0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 92
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;

    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;->data(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;

    move-result-object v0

    .line 93
    iput-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->charsString:Ljava/lang/String;

    return-object v0

    .line 96
    :cond_2
    iput-boolean v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->isEmitPending:Z

    .line 97
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->emitPending:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;

    return-object v0
.end method

.method transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->state:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    return-void
.end method

.method unescapeEntities(Z)Ljava/lang/String;
    .locals 4

    .line 346
    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 347
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 348
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->consumeTo(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->consume()C

    const/4 v1, 0x0

    .line 351
    invoke-virtual {p0, v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->consumeCharacterReference(Ljava/lang/Character;Z)[I

    move-result-object v1

    if-eqz v1, :cond_2

    .line 352
    array-length v3, v1

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 355
    aget v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 356
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    .line 357
    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 353
    :cond_2
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 362
    :cond_3
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
