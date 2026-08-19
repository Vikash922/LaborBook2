.class public Lcom/itextpdf/io/font/cmap/CMapContentParser;
.super Ljava/lang/Object;
.source "CMapContentParser.java"


# static fields
.field public static final COMMAND_TYPE:I = 0xc8


# instance fields
.field private tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;


# direct methods
.method public constructor <init>(Lcom/itextpdf/io/source/PdfTokenizer;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/itextpdf/io/font/cmap/CMapContentParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    return-void
.end method

.method public static decodeCMapObject(Lcom/itextpdf/io/font/cmap/CMapObject;)Ljava/lang/String;
    .locals 1

    .line 246
    invoke-virtual {p0}, Lcom/itextpdf/io/font/cmap/CMapObject;->isHexString()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/itextpdf/io/font/cmap/CMapObject;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const-string v0, "UnicodeBigUnmarked"

    invoke-static {p0, v0}, Lcom/itextpdf/io/font/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/io/font/cmap/CMapObject;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method protected static decodeName([B)Ljava/lang/String;
    .locals 4

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 209
    :goto_0
    :try_start_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 210
    aget-byte v2, p0, v1

    int-to-char v2, v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 212
    aget-byte v2, p0, v2

    add-int/lit8 v1, v1, 0x2

    .line 213
    aget-byte v3, p0, v1

    .line 214
    invoke-static {v2}, Lcom/itextpdf/io/source/ByteBuffer;->getHex(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    invoke-static {v3}, Lcom/itextpdf/io/source/ByteBuffer;->getHex(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-char v2, v2

    .line 217
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    :catch_0
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toHex(I)Ljava/lang/String;
    .locals 3

    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_0

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/itextpdf/io/font/cmap/CMapContentParser;->toHex4(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ">"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sub-int/2addr p0, v0

    .line 240
    div-int/lit16 v0, p0, 0x400

    const v1, 0xd800

    add-int/2addr v0, v1

    .line 241
    rem-int/lit16 p0, p0, 0x400

    const v1, 0xdc00

    add-int/2addr p0, v1

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[<"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/itextpdf/io/font/cmap/CMapContentParser;->toHex4(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/itextpdf/io/font/cmap/CMapContentParser;->toHex4(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ">]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toHex4(I)Ljava/lang/String;
    .locals 2

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0000"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 227
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public nextValidToken()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapContentParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->nextToken()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapContentParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Comment:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public parse(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/cmap/CMapObject;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/io/font/cmap/CMapContentParser;->readObject()Lcom/itextpdf/io/font/cmap/CMapObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 88
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {v0}, Lcom/itextpdf/io/font/cmap/CMapObject;->isLiteral()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method

.method public readArray()Lcom/itextpdf/io/font/cmap/CMapObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/io/font/cmap/CMapContentParser;->readObject()Lcom/itextpdf/io/font/cmap/CMapObject;

    move-result-object v1

    .line 135
    invoke-virtual {v1}, Lcom/itextpdf/io/font/cmap/CMapObject;->isToken()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    invoke-virtual {v1}, Lcom/itextpdf/io/font/cmap/CMapObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    new-instance v1, Lcom/itextpdf/io/font/cmap/CMapObject;

    const/4 v2, 0x6

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/io/font/cmap/CMapObject;-><init>(ILjava/lang/Object;)V

    return-object v1

    .line 139
    :cond_0
    invoke-virtual {v1}, Lcom/itextpdf/io/font/cmap/CMapObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ">>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    iget-object v2, p0, Lcom/itextpdf/io/font/cmap/CMapContentParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Unexpected \'>>\'."

    invoke-virtual {v2, v4, v3}, Lcom/itextpdf/io/source/PdfTokenizer;->throwError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public readDictionary()Lcom/itextpdf/io/font/cmap/CMapObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 103
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/io/font/cmap/CMapContentParser;->nextValidToken()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 105
    iget-object v1, p0, Lcom/itextpdf/io/font/cmap/CMapContentParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->EndDic:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-ne v1, v2, :cond_0

    .line 123
    new-instance v1, Lcom/itextpdf/io/font/cmap/CMapObject;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/io/font/cmap/CMapObject;-><init>(ILjava/lang/Object;)V

    return-object v1

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/io/font/cmap/CMapContentParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Other:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/itextpdf/io/font/cmap/CMapContentParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->getStringValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "def"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/io/font/cmap/CMapContentParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Name:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-ne v1, v2, :cond_4

    .line 111
    iget-object v1, p0, Lcom/itextpdf/io/font/cmap/CMapContentParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->getStringValue()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-virtual {p0}, Lcom/itextpdf/io/font/cmap/CMapContentParser;->readObject()Lcom/itextpdf/io/font/cmap/CMapObject;

    move-result-object v2

    .line 113
    invoke-virtual {v2}, Lcom/itextpdf/io/font/cmap/CMapObject;->isToken()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 114
    invoke-virtual {v2}, Lcom/itextpdf/io/font/cmap/CMapObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ">>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 115
    iget-object v3, p0, Lcom/itextpdf/io/font/cmap/CMapContentParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    const-string v5, "Unexpected \'>>\'."

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Lcom/itextpdf/io/source/PdfTokenizer;->throwError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    :cond_2
    invoke-virtual {v2}, Lcom/itextpdf/io/font/cmap/CMapObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 118
    iget-object v3, p0, Lcom/itextpdf/io/font/cmap/CMapContentParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    const-string v5, "Unexpected close bracket."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v4}, Lcom/itextpdf/io/source/PdfTokenizer;->throwError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    :cond_3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 110
    :cond_4
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "Dictionary key {0} is not a name."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/itextpdf/io/font/cmap/CMapContentParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->getStringValue()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object v0

    throw v0

    .line 104
    :cond_5
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "Unexpected end of file."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readObject()Lcom/itextpdf/io/font/cmap/CMapObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lcom/itextpdf/io/font/cmap/CMapContentParser;->nextValidToken()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapContentParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v0

    .line 157
    sget-object v2, Lcom/itextpdf/io/font/cmap/CMapContentParser$1;->$SwitchMap$com$itextpdf$io$source$PdfTokenizer$TokenType:[I

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x0

    const/16 v3, 0x8

    packed-switch v0, :pswitch_data_0

    .line 187
    new-instance v0, Lcom/itextpdf/io/font/cmap/CMapObject;

    const-string v1, ""

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/io/font/cmap/CMapObject;-><init>(ILjava/lang/Object;)V

    return-object v0

    .line 185
    :pswitch_0
    new-instance v0, Lcom/itextpdf/io/font/cmap/CMapObject;

    const-string v1, ">>"

    invoke-direct {v0, v3, v1}, Lcom/itextpdf/io/font/cmap/CMapObject;-><init>(ILjava/lang/Object;)V

    return-object v0

    .line 183
    :pswitch_1
    new-instance v0, Lcom/itextpdf/io/font/cmap/CMapObject;

    const-string v1, "]"

    invoke-direct {v0, v3, v1}, Lcom/itextpdf/io/font/cmap/CMapObject;-><init>(ILjava/lang/Object;)V

    return-object v0

    .line 181
    :pswitch_2
    new-instance v0, Lcom/itextpdf/io/font/cmap/CMapObject;

    iget-object v1, p0, Lcom/itextpdf/io/font/cmap/CMapContentParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->getStringValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/io/font/cmap/CMapObject;-><init>(ILjava/lang/Object;)V

    return-object v0

    .line 173
    :pswitch_3
    new-instance v0, Lcom/itextpdf/io/font/cmap/CMapObject;

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/io/font/cmap/CMapObject;-><init>(ILjava/lang/Object;)V

    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/io/font/cmap/CMapContentParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/cmap/CMapObject;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/high16 v1, -0x80000000

    .line 177
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/cmap/CMapObject;->setValue(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    .line 171
    :pswitch_4
    new-instance v0, Lcom/itextpdf/io/font/cmap/CMapObject;

    iget-object v1, p0, Lcom/itextpdf/io/font/cmap/CMapContentParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->getByteContent()[B

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/io/font/cmap/CMapContentParser;->decodeName([B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/io/font/cmap/CMapObject;-><init>(ILjava/lang/Object;)V

    return-object v0

    .line 164
    :pswitch_5
    iget-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapContentParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->isHexString()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 165
    new-instance v0, Lcom/itextpdf/io/font/cmap/CMapObject;

    iget-object v2, p0, Lcom/itextpdf/io/font/cmap/CMapContentParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/PdfTokenizer;->getByteContent()[B

    move-result-object v2

    invoke-static {v2, v1}, Lcom/itextpdf/io/source/PdfTokenizer;->decodeStringContent([BZ)[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/io/font/cmap/CMapObject;-><init>(ILjava/lang/Object;)V

    goto :goto_1

    .line 167
    :cond_1
    new-instance v0, Lcom/itextpdf/io/font/cmap/CMapObject;

    iget-object v3, p0, Lcom/itextpdf/io/font/cmap/CMapContentParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/PdfTokenizer;->getByteContent()[B

    move-result-object v3

    invoke-static {v3, v2}, Lcom/itextpdf/io/source/PdfTokenizer;->decodeStringContent([BZ)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/io/font/cmap/CMapObject;-><init>(ILjava/lang/Object;)V

    :goto_1
    return-object v0

    .line 161
    :pswitch_6
    invoke-virtual {p0}, Lcom/itextpdf/io/font/cmap/CMapContentParser;->readArray()Lcom/itextpdf/io/font/cmap/CMapObject;

    move-result-object v0

    return-object v0

    .line 159
    :pswitch_7
    invoke-virtual {p0}, Lcom/itextpdf/io/font/cmap/CMapContentParser;->readDictionary()Lcom/itextpdf/io/font/cmap/CMapObject;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
