.class public Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;
.super Ljava/lang/Object;
.source "PdfCanvasParser.java"


# instance fields
.field private currentResources:Lcom/itextpdf/kernel/pdf/PdfResources;

.field private tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;


# direct methods
.method public constructor <init>(Lcom/itextpdf/io/source/PdfTokenizer;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/io/source/PdfTokenizer;Lcom/itextpdf/kernel/pdf/PdfResources;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    .line 94
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->currentResources:Lcom/itextpdf/kernel/pdf/PdfResources;

    return-void
.end method


# virtual methods
.method public getTokeniser()Lcom/itextpdf/io/source/PdfTokenizer;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    return-object v0
.end method

.method public nextValidToken()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->nextToken()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

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

.method public parse(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 113
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 115
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 117
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->readObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 118
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Other:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-ne v1, v2, :cond_1

    .line 120
    const-string v1, "BI"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->currentResources:Lcom/itextpdf/kernel/pdf/PdfResources;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ColorSpace:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfResources;->getResource(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/InlineImageParsingUtils;->parse(Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v0

    .line 122
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 123
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfLiteral;

    const-string v1, "EI"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfLiteral;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p1
.end method

.method public readArray()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 178
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->readObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    .line 179
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->EndArray:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-ne v2, v3, :cond_0

    return-object v0

    .line 182
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->EndDic:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 183
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    const-string v3, ">>"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "unexpected {0} was encountered."

    invoke-static {v4, v3}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/io/source/PdfTokenizer;->throwError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    :cond_1
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_0
.end method

.method public readDictionary()Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 156
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->nextValidToken()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 158
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->EndDic:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-ne v1, v2, :cond_0

    return-object v0

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Name:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    if-eq v1, v2, :cond_1

    .line 161
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    .line 162
    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->getStringValue()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 161
    const-string v3, "Dictionary key {0} is not a name."

    invoke-virtual {v1, v3, v2}, Lcom/itextpdf/io/source/PdfTokenizer;->throwError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    :cond_1
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/PdfTokenizer;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->readObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    .line 165
    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 157
    :cond_2
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "Unexpected end of file."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readObject()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->nextValidToken()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer;->getTokenType()Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    move-result-object v0

    .line 199
    sget-object v1, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser$1;->$SwitchMap$com$itextpdf$io$source$PdfTokenizer$TokenType:[I

    invoke-virtual {v0}, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 215
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfLiteral;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->getByteContent()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfLiteral;-><init>([B)V

    return-object v0

    .line 213
    :cond_1
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->getByteContent()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>([B)V

    return-object v0

    .line 210
    :cond_2
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->getByteContent()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>([B)V

    return-object v0

    .line 207
    :cond_3
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfString;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->getDecodedStringContent()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>([B)V

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->isHexString()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfString;->setHexWriting(Z)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    return-object v0

    .line 205
    :cond_4
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->readArray()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    return-object v0

    .line 201
    :cond_5
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->readDictionary()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    return-object v0
.end method

.method public setTokeniser(Lcom/itextpdf/io/source/PdfTokenizer;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/parser/util/PdfCanvasParser;->tokeniser:Lcom/itextpdf/io/source/PdfTokenizer;

    return-void
.end method
