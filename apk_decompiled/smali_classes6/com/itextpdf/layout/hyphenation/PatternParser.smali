.class public Lcom/itextpdf/layout/hyphenation/PatternParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "PatternParser.java"


# static fields
.field static final ELEM_CLASSES:I = 0x1

.field static final ELEM_EXCEPTIONS:I = 0x2

.field static final ELEM_HYPHEN:I = 0x4

.field static final ELEM_PATTERNS:I = 0x3


# instance fields
.field private consumer:Lcom/itextpdf/layout/hyphenation/IPatternConsumer;

.field private currElement:I

.field private errMsg:Ljava/lang/String;

.field private exception:Ljava/util/ArrayList;

.field private hasClasses:Z

.field private hyphenChar:C

.field private parser:Lorg/xml/sax/XMLReader;

.field private token:Ljava/lang/StringBuilder;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->token:Ljava/lang/StringBuilder;

    .line 62
    invoke-static {}, Lcom/itextpdf/layout/hyphenation/PatternParser;->createParser()Lorg/xml/sax/XMLReader;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->parser:Lorg/xml/sax/XMLReader;

    .line 63
    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 64
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->parser:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    const/16 v0, 0x2d

    .line 67
    iput-char v0, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->hyphenChar:C

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/hyphenation/IPatternConsumer;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/itextpdf/layout/hyphenation/PatternParser;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->consumer:Lcom/itextpdf/layout/hyphenation/IPatternConsumer;

    return-void
.end method

.method static createParser()Lorg/xml/sax/XMLReader;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 116
    :try_start_0
    invoke-static {v0, v1}, Lcom/itextpdf/kernel/utils/XmlProcessorCreator;->createSafeXMLReader(ZZ)Lorg/xml/sax/XMLReader;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 122
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t create XMLReader: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getExceptionWord(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 215
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 216
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 217
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 218
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 220
    :cond_0
    check-cast v2, Lcom/itextpdf/layout/hyphenation/Hyphen;

    iget-object v3, v2, Lcom/itextpdf/layout/hyphenation/Hyphen;->noBreak:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 221
    iget-object v2, v2, Lcom/itextpdf/layout/hyphenation/Hyphen;->noBreak:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static getInterletterValues(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "a"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 233
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 235
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 236
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 237
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const/16 v3, 0x30

    .line 240
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 243
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLocationString(Lorg/xml/sax/SAXParseException;)Ljava/lang/String;
    .locals 4

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v2, 0x2f

    .line 413
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 415
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 417
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v1, 0x3a

    .line 419
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 425
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static getPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 175
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 176
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private normalizeException(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 184
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 185
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 186
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 187
    check-cast v3, Ljava/lang/String;

    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v5, v1

    .line 189
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 190
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 191
    iget-char v7, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->hyphenChar:C

    if-eq v6, v7, :cond_0

    .line 192
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 194
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 197
    iget-char v6, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->hyphenChar:C

    const/4 v7, 0x1

    new-array v7, v7, [C

    aput-char v6, v7, v1

    .line 200
    new-instance v6, Lcom/itextpdf/layout/hyphenation/Hyphen;

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>([C)V

    const/4 v7, 0x0

    invoke-direct {v6, v8, v7, v7}, Lcom/itextpdf/layout/hyphenation/Hyphen;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 203
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 204
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 207
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private readToken(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 130
    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_0

    .line 131
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_2

    move v2, v1

    .line 139
    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    sub-int v3, v2, v1

    .line 140
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v3, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 142
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 143
    iget-object v1, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->token:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 144
    iget-object p1, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->token:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 145
    iget-object v1, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->token:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-object p1

    :cond_2
    move v1, v0

    .line 150
    :goto_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 151
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move v4, v0

    .line 156
    :goto_3
    iget-object v2, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->token:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    .line 158
    :goto_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    sub-int v3, v2, v1

    .line 159
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v3, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 161
    :cond_5
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    if-eqz v4, :cond_6

    .line 163
    iget-object p1, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->token:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 164
    iget-object v1, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->token:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-object p1

    .line 167
    :cond_6
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->token:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 350
    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 351
    invoke-direct {p0, v0}, Lcom/itextpdf/layout/hyphenation/PatternParser;->readToken(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    .line 354
    iget p2, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->currElement:I

    const/4 p3, 0x1

    if-eq p2, p3, :cond_2

    const/4 p3, 0x2

    if-eq p2, p3, :cond_1

    const/4 p3, 0x3

    if-eq p2, p3, :cond_0

    goto :goto_1

    .line 366
    :cond_0
    iget-object p2, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->consumer:Lcom/itextpdf/layout/hyphenation/IPatternConsumer;

    invoke-static {p1}, Lcom/itextpdf/layout/hyphenation/PatternParser;->getPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 367
    invoke-static {p1}, Lcom/itextpdf/layout/hyphenation/PatternParser;->getInterletterValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 366
    invoke-interface {p2, p3, p1}, Lcom/itextpdf/layout/hyphenation/IPatternConsumer;->addPattern(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 359
    :cond_1
    iget-object p2, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->exception:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    iget-object p1, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->exception:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/itextpdf/layout/hyphenation/PatternParser;->normalizeException(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->exception:Ljava/util/ArrayList;

    .line 361
    iget-object p2, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->consumer:Lcom/itextpdf/layout/hyphenation/IPatternConsumer;

    invoke-direct {p0, p1}, Lcom/itextpdf/layout/hyphenation/PatternParser;->getExceptionWord(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->exception:Ljava/util/ArrayList;

    .line 362
    invoke-virtual {p3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;

    .line 361
    invoke-interface {p2, p1, p3}, Lcom/itextpdf/layout/hyphenation/IPatternConsumer;->addException(Ljava/lang/String;Ljava/util/List;)V

    .line 363
    iget-object p1, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->exception:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 356
    :cond_2
    iget-object p2, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->consumer:Lcom/itextpdf/layout/hyphenation/IPatternConsumer;

    invoke-interface {p2, p1}, Lcom/itextpdf/layout/hyphenation/IPatternConsumer;->addClass(Ljava/lang/String;)V

    .line 372
    :goto_1
    invoke-direct {p0, v0}, Lcom/itextpdf/layout/hyphenation/PatternParser;->readToken(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 308
    iget-object p1, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->token:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-lez p1, :cond_3

    .line 309
    iget-object p1, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->token:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 310
    iget v2, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->currElement:I

    if-eq v2, v1, :cond_2

    if-eq v2, v0, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 321
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->consumer:Lcom/itextpdf/layout/hyphenation/IPatternConsumer;

    invoke-static {p1}, Lcom/itextpdf/layout/hyphenation/PatternParser;->getPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 322
    invoke-static {p1}, Lcom/itextpdf/layout/hyphenation/PatternParser;->getInterletterValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 321
    invoke-interface {v2, v3, p1}, Lcom/itextpdf/layout/hyphenation/IPatternConsumer;->addPattern(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :cond_1
    iget-object v2, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->exception:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object p1, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->exception:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/itextpdf/layout/hyphenation/PatternParser;->normalizeException(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->exception:Ljava/util/ArrayList;

    .line 317
    iget-object v2, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->consumer:Lcom/itextpdf/layout/hyphenation/IPatternConsumer;

    invoke-direct {p0, p1}, Lcom/itextpdf/layout/hyphenation/PatternParser;->getExceptionWord(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->exception:Ljava/util/ArrayList;

    .line 318
    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 317
    invoke-interface {v2, p1, v3}, Lcom/itextpdf/layout/hyphenation/IPatternConsumer;->addException(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 312
    :cond_2
    iget-object v2, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->consumer:Lcom/itextpdf/layout/hyphenation/IPatternConsumer;

    invoke-interface {v2, p1}, Lcom/itextpdf/layout/hyphenation/IPatternConsumer;->addClass(Ljava/lang/String;)V

    .line 330
    :goto_0
    iget p1, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->currElement:I

    if-eq p1, p3, :cond_3

    .line 331
    iget-object p1, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->token:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 334
    :cond_3
    iget p1, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->currElement:I

    if-ne p1, v1, :cond_4

    .line 335
    iput-boolean v1, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->hasClasses:Z

    :cond_4
    if-ne p1, p3, :cond_5

    .line 338
    iput v0, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->currElement:I

    goto :goto_1

    .line 340
    :cond_5
    iput p2, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->currElement:I

    :goto_1
    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 2

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Error] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/itextpdf/layout/hyphenation/PatternParser;->getLocationString(Lorg/xml/sax/SAXParseException;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->errMsg:Ljava/lang/String;

    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Fatal Error] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/itextpdf/layout/hyphenation/PatternParser;->getLocationString(Lorg/xml/sax/SAXParseException;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 401
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->errMsg:Ljava/lang/String;

    .line 402
    throw p1
.end method

.method protected getExternalClasses()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->parser:Lorg/xml/sax/XMLReader;

    .line 249
    invoke-static {}, Lcom/itextpdf/layout/hyphenation/PatternParser;->createParser()Lorg/xml/sax/XMLReader;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->parser:Lorg/xml/sax/XMLReader;

    .line 250
    invoke-interface {v1, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 251
    iget-object v1, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->parser:Lorg/xml/sax/XMLReader;

    invoke-interface {v1, p0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 252
    const-string v1, "com/itextpdf/hyph/external/classes.xml"

    invoke-static {v1}, Lcom/itextpdf/io/util/ResourceUtil;->getResourceStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 253
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->parser:Lorg/xml/sax/XMLReader;

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->parser:Lorg/xml/sax/XMLReader;

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 257
    :try_start_1
    new-instance v2, Lorg/xml/sax/SAXException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    :goto_0
    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->parser:Lorg/xml/sax/XMLReader;

    .line 260
    throw v1
.end method

.method public parse(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/layout/hyphenation/HyphenationException;
        }
    .end annotation

    .line 97
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 98
    invoke-virtual {v0, p2}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 100
    :try_start_0
    iget-object p1, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->parser:Lorg/xml/sax/XMLReader;

    invoke-interface {p1, v0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 106
    :catch_0
    new-instance p1, Lcom/itextpdf/layout/hyphenation/HyphenationException;

    iget-object p2, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->errMsg:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/itextpdf/layout/hyphenation/HyphenationException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    .line 104
    new-instance p2, Lcom/itextpdf/layout/hyphenation/HyphenationException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/itextpdf/layout/hyphenation/HyphenationException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_2
    move-exception p1

    .line 102
    new-instance p2, Lcom/itextpdf/layout/hyphenation/HyphenationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "File not found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/itextpdf/layout/hyphenation/HyphenationException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public parse(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/layout/hyphenation/HyphenationException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/hyphenation/PatternParser;->parse(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 273
    const-string p1, "hyphen-char"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 274
    const-string p1, "value"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 275
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-ne p2, v0, :cond_7

    .line 276
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->hyphenChar:C

    goto/16 :goto_0

    .line 278
    :cond_0
    const-string p1, "classes"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 279
    iput v0, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->currElement:I

    goto :goto_0

    .line 280
    :cond_1
    const-string p1, "patterns"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 281
    iget-boolean p1, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->hasClasses:Z

    if-nez p1, :cond_2

    .line 282
    invoke-virtual {p0}, Lcom/itextpdf/layout/hyphenation/PatternParser;->getExternalClasses()V

    :cond_2
    const/4 p1, 0x3

    .line 284
    iput p1, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->currElement:I

    goto :goto_0

    .line 285
    :cond_3
    const-string p1, "exceptions"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 286
    iget-boolean p1, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->hasClasses:Z

    if-nez p1, :cond_4

    .line 287
    invoke-virtual {p0}, Lcom/itextpdf/layout/hyphenation/PatternParser;->getExternalClasses()V

    :cond_4
    const/4 p1, 0x2

    .line 289
    iput p1, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->currElement:I

    .line 290
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->exception:Ljava/util/ArrayList;

    goto :goto_0

    .line 291
    :cond_5
    const-string p1, "hyphen"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 292
    iget-object p1, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->token:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_6

    .line 293
    iget-object p1, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->exception:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->token:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_6
    iget-object p1, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->exception:Ljava/util/ArrayList;

    new-instance p2, Lcom/itextpdf/layout/hyphenation/Hyphen;

    const-string v0, "pre"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "no"

    .line 296
    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "post"

    .line 297
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, v0, v1, p4}, Lcom/itextpdf/layout/hyphenation/Hyphen;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x4

    .line 298
    iput p1, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->currElement:I

    .line 300
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->token:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 2

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Warning] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/itextpdf/layout/hyphenation/PatternParser;->getLocationString(Lorg/xml/sax/SAXParseException;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 386
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->errMsg:Ljava/lang/String;

    return-void
.end method
