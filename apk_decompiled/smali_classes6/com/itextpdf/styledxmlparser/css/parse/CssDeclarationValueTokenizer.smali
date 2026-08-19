.class public Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;
.super Ljava/lang/Object;
.source "CssDeclarationValueTokenizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;,
        Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;
    }
.end annotation


# instance fields
.field private functionDepth:I

.field private inString:Z

.field private index:I

.field private src:Ljava/lang/String;

.field private stringQuote:C


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->index:I

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->functionDepth:I

    .line 71
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->src:Ljava/lang/String;

    return-void
.end method

.method private getNextToken()Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;
    .locals 8

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    iget v1, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->index:I

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->src:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 112
    :cond_0
    iget-boolean v1, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->inString:Z

    if-eqz v1, :cond_9

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :cond_1
    :goto_0
    move v4, v2

    .line 115
    :goto_1
    iget v5, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->index:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->index:I

    iget-object v6, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->src:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_13

    .line 116
    iget-object v5, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->src:Ljava/lang/String;

    iget v6, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->index:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eqz v4, :cond_6

    .line 118
    invoke-direct {p0, v5}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->isHexDigit(C)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const/4 v7, 0x6

    if-ge v6, v7, :cond_2

    .line 119
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 120
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_5

    .line 121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x10

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 122
    invoke-static {v4}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 123
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 125
    :cond_3
    const-string v4, "\ufffd"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 128
    iget-char v4, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->stringQuote:C

    if-ne v5, v4, :cond_4

    .line 129
    iput-boolean v2, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->inString:Z

    .line 130
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;->STRING:Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;

    invoke-direct {v1, v0, v2}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;-><init>(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;)V

    return-object v1

    .line 131
    :cond_4
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 132
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 136
    :cond_5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 139
    :cond_6
    iget-char v6, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->stringQuote:C

    if-ne v5, v6, :cond_7

    .line 140
    iput-boolean v2, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->inString:Z

    .line 141
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;->STRING:Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;

    invoke-direct {v1, v0, v2}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;-><init>(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;)V

    return-object v1

    :cond_7
    const/16 v6, 0x5c

    if-ne v5, v6, :cond_8

    move v4, v3

    goto/16 :goto_1

    .line 145
    :cond_8
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 149
    :cond_9
    :goto_3
    iget v1, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->index:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->index:I

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->src:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_13

    .line 150
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->src:Ljava/lang/String;

    iget v2, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_a

    .line 152
    iget v2, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->functionDepth:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->functionDepth:I

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_a
    const/16 v2, 0x29

    if-ne v1, v2, :cond_b

    .line 155
    iget v2, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->functionDepth:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->functionDepth:I

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    iget v1, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->functionDepth:I

    if-nez v1, :cond_9

    .line 158
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;->FUNCTION:Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;

    invoke-direct {v1, v0, v2}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;-><init>(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;)V

    return-object v1

    :cond_b
    const/16 v2, 0x22

    if-eq v1, v2, :cond_12

    const/16 v2, 0x27

    if-ne v1, v2, :cond_c

    goto :goto_5

    :cond_c
    const/16 v2, 0x2c

    if-ne v1, v2, :cond_e

    .line 164
    iget-boolean v2, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->inString:Z

    if-nez v2, :cond_e

    iget v2, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->functionDepth:I

    if-nez v2, :cond_e

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_d

    .line 166
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;

    const-string v1, ","

    sget-object v2, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;->COMMA:Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;-><init>(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;)V

    return-object v0

    .line 168
    :cond_d
    iget v1, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->index:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->index:I

    .line 169
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;->UNKNOWN:Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;

    invoke-direct {v1, v0, v2}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;-><init>(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;)V

    return-object v1

    .line 171
    :cond_e
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 172
    iget v2, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->functionDepth:I

    if-lez v2, :cond_f

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    :cond_f
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->functionDepth:I

    if-lez v2, :cond_10

    sget-object v2, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;->FUNCTION:Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;

    goto :goto_4

    :cond_10
    sget-object v2, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;->UNKNOWN:Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;

    :goto_4
    invoke-direct {v1, v0, v2}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;-><init>(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;)V

    return-object v1

    .line 177
    :cond_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 161
    :cond_12
    :goto_5
    iput-char v1, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->stringQuote:C

    .line 162
    iput-boolean v3, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->inString:Z

    .line 163
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;->FUNCTION:Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;

    invoke-direct {v1, v0, v2}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;-><init>(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;)V

    return-object v1

    .line 181
    :cond_13
    new-instance v1, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;->FUNCTION:Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;

    invoke-direct {v1, v0, v2}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;-><init>(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;)V

    return-object v1
.end method

.method private isHexDigit(C)Z
    .locals 1

    const/16 v0, 0x2f

    if-ge v0, p1, :cond_0

    const/16 v0, 0x3a

    if-lt p1, v0, :cond_2

    :cond_0
    const/16 v0, 0x40

    if-ge v0, p1, :cond_1

    const/16 v0, 0x47

    if-lt p1, v0, :cond_2

    :cond_1
    const/16 v0, 0x60

    if-ge v0, p1, :cond_3

    const/16 v0, 0x67

    if-ge p1, v0, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private processFunctionToken(Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;Ljava/lang/StringBuilder;)V
    .locals 1

    .line 201
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->isString()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-char v0, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->stringQuote:C

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget-char p1, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->stringQuote:C

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method


# virtual methods
.method public getNextValidToken()Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;
    .locals 3

    .line 80
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->getNextToken()Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->isString()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->getNextToken()Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_3

    .line 84
    iget v1, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->functionDepth:I

    if-lez v1, :cond_3

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    if-eqz v0, :cond_1

    .line 86
    iget v2, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->functionDepth:I

    if-lez v2, :cond_1

    .line 87
    invoke-direct {p0, v0, v1}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->processFunctionToken(Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;Ljava/lang/StringBuilder;)V

    .line 88
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->getNextToken()Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 90
    iput v2, p0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->functionDepth:I

    .line 91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    .line 93
    invoke-direct {p0, v0, v1}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer;->processFunctionToken(Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;Ljava/lang/StringBuilder;)V

    .line 95
    :cond_2
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;->FUNCTION:Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$Token;-><init>(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/css/parse/CssDeclarationValueTokenizer$TokenType;)V

    :cond_3
    return-object v0
.end method
