.class public Lcom/itextpdf/layout/hyphenation/HyphenationTree;
.super Lcom/itextpdf/layout/hyphenation/TernaryTree;
.source "HyphenationTree.java"

# interfaces
.implements Lcom/itextpdf/layout/hyphenation/IPatternConsumer;


# instance fields
.field protected classmap:Lcom/itextpdf/layout/hyphenation/TernaryTree;

.field private ivalues:Lcom/itextpdf/layout/hyphenation/TernaryTree;

.field protected stoplist:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List;",
            ">;"
        }
    .end annotation
.end field

.field protected vspace:Lcom/itextpdf/layout/hyphenation/ByteVector;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Lcom/itextpdf/layout/hyphenation/TernaryTree;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->stoplist:Ljava/util/Map;

    .line 62
    new-instance v0, Lcom/itextpdf/layout/hyphenation/TernaryTree;

    invoke-direct {v0}, Lcom/itextpdf/layout/hyphenation/TernaryTree;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->classmap:Lcom/itextpdf/layout/hyphenation/TernaryTree;

    .line 63
    new-instance v0, Lcom/itextpdf/layout/hyphenation/ByteVector;

    invoke-direct {v0}, Lcom/itextpdf/layout/hyphenation/ByteVector;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->vspace:Lcom/itextpdf/layout/hyphenation/ByteVector;

    const/4 v1, 0x1

    .line 66
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/hyphenation/ByteVector;->alloc(I)I

    return-void
.end method

.method private calcForeWordsSize(Ljava/util/List;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[C>;I)I"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 421
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private getHyphPointsForWords(Ljava/util/List;II)[I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[C>;II)[I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 396
    new-array v1, v0, [I

    move v2, v0

    .line 397
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 398
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, [C

    .line 399
    array-length v7, v5

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v8, p2

    goto :goto_1

    :cond_0
    move v8, v3

    .line 401
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    if-ne v2, v4, :cond_1

    move v9, p3

    goto :goto_2

    :cond_1
    move v9, v3

    :goto_2
    const/4 v6, 0x0

    move-object v4, p0

    .line 399
    invoke-virtual/range {v4 .. v9}, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->hyphenate([CIIII)Lcom/itextpdf/layout/hyphenation/Hyphenation;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_4

    .line 405
    :cond_2
    array-length v4, v1

    invoke-virtual {v3}, Lcom/itextpdf/layout/hyphenation/Hyphenation;->getHyphenationPoints()[I

    move-result-object v5

    array-length v5, v5

    add-int/2addr v4, v5

    new-array v4, v4, [I

    .line 406
    invoke-virtual {v3}, Lcom/itextpdf/layout/hyphenation/Hyphenation;->getHyphenationPoints()[I

    move-result-object v3

    .line 407
    invoke-direct {p0, p1, v2}, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->calcForeWordsSize(Ljava/util/List;I)I

    move-result v5

    move v6, v0

    .line 408
    :goto_3
    array-length v7, v3

    if-ge v6, v7, :cond_3

    .line 409
    aget v7, v3, v6

    add-int/2addr v7, v5

    aput v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 411
    :cond_3
    array-length v5, v1

    invoke-static {v1, v0, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 412
    array-length v1, v1

    array-length v5, v3

    invoke-static {v3, v0, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v4

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method private getNonLetterBreaks([C)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 369
    new-array v0, v0, [C

    .line 370
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 372
    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_2

    .line 373
    aget-char v5, p1, v3

    aput-char v5, v0, v2

    .line 374
    iget-object v5, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->classmap:Lcom/itextpdf/layout/hyphenation/TernaryTree;

    invoke-virtual {v5, v0, v2}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->find([CI)I

    move-result v5

    if-gez v5, :cond_0

    if-eqz v4, :cond_1

    .line 376
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v4, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private getWordFromCharArray([CII)[C
    .locals 4

    if-nez p2, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p2, 0x1

    :goto_0
    sub-int v0, p3, v0

    .line 386
    new-array v0, v0, [C

    const/4 v1, 0x0

    if-nez p2, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    :goto_1
    if-ge p2, p3, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 389
    aget-char v3, p1, p2

    aput-char v3, v0, v1

    add-int/lit8 p2, p2, 0x1

    move v1, v2

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private isMultiPartWord([CI)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p2, :cond_3

    const/4 v3, 0x2

    .line 332
    new-array v3, v3, [C

    .line 333
    aget-char v4, p1, v1

    aput-char v4, v3, v0

    .line 334
    iget-object v4, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->classmap:Lcom/itextpdf/layout/hyphenation/TernaryTree;

    invoke-virtual {v4, v3, v0}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->find([CI)I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_1

    if-le v2, v4, :cond_0

    return v4

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    if-ne v2, v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private splitOnNonCharacters([C)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)",
            "Ljava/util/List<",
            "[C>;"
        }
    .end annotation

    .line 350
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->getNonLetterBreaks([C)Ljava/util/List;

    move-result-object v0

    .line 351
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 352
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 354
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 355
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    if-nez v3, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v3, -0x1

    .line 357
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_1
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 356
    invoke-direct {p0, p1, v4, v5}, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->getWordFromCharArray([CII)[C

    move-result-object v4

    .line 358
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 360
    :cond_2
    array-length v2, p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v4

    if-le v2, v4, :cond_3

    .line 361
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    array-length v2, p1

    invoke-direct {p0, p1, v0, v2}, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->getWordFromCharArray([CII)[C

    move-result-object p1

    .line 363
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v1
.end method


# virtual methods
.method public addClass(Ljava/lang/String;)V
    .locals 5

    .line 574
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 575
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x2

    .line 576
    new-array v2, v2, [C

    const/4 v3, 0x1

    .line 577
    aput-char v0, v2, v3

    move v3, v0

    .line 578
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 579
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v2, v0

    .line 580
    iget-object v4, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->classmap:Lcom/itextpdf/layout/hyphenation/TernaryTree;

    invoke-virtual {v4, v2, v0, v1}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->insert([CIC)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addException(Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->stoplist:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addPattern(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 608
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->ivalues:Lcom/itextpdf/layout/hyphenation/TernaryTree;

    invoke-virtual {v0, p2}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->find(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 610
    invoke-virtual {p0, p2}, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->packValues(Ljava/lang/String;)I

    move-result v0

    .line 611
    iget-object v1, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->ivalues:Lcom/itextpdf/layout/hyphenation/TernaryTree;

    int-to-char v2, v0

    invoke-virtual {v1, p2, v2}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->insert(Ljava/lang/String;C)V

    :cond_0
    int-to-char p2, v0

    .line 613
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->insert(Ljava/lang/String;C)V

    return-void
.end method

.method public findPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 160
    invoke-super {p0, p1}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->find(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 162
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->unpackValues(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 164
    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method protected getValues(I)[B
    .locals 4

    .line 194
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 195
    iget-object v1, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->vspace:Lcom/itextpdf/layout/hyphenation/ByteVector;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, p1}, Lcom/itextpdf/layout/hyphenation/ByteVector;->get(I)B

    move-result p1

    :goto_0
    if-eqz p1, :cond_1

    ushr-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, -0x1

    int-to-char v1, v1

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit8 p1, p1, 0xf

    int-to-char p1, p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    int-to-char p1, p1

    .line 204
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 205
    iget-object p1, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->vspace:Lcom/itextpdf/layout/hyphenation/ByteVector;

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p1, v2}, Lcom/itextpdf/layout/hyphenation/ByteVector;->get(I)B

    move-result p1

    move v2, v1

    goto :goto_0

    .line 207
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    new-array v1, p1, [B

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p1, :cond_2

    .line 209
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-object v1
.end method

.method protected hstrcmp([CI[CI)I
    .locals 3

    .line 177
    :goto_0
    aget-char v0, p1, p2

    aget-char v1, p3, p4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    if-nez v0, :cond_0

    return v2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    return v2

    :cond_2
    sub-int/2addr v0, v1

    return v0
.end method

.method public hyphenate(Ljava/lang/String;II)Lcom/itextpdf/layout/hyphenation/Hyphenation;
    .locals 6

    .line 319
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 320
    array-length p1, v1

    invoke-direct {p0, v1, p1}, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->isMultiPartWord([CI)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 321
    invoke-direct {p0, v1}, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->splitOnNonCharacters([C)Ljava/util/List;

    move-result-object p1

    .line 322
    new-instance v0, Lcom/itextpdf/layout/hyphenation/Hyphenation;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    .line 323
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->getHyphPointsForWords(Ljava/util/List;II)[I

    move-result-object p1

    invoke-direct {v0, v2, p1}, Lcom/itextpdf/layout/hyphenation/Hyphenation;-><init>(Ljava/lang/String;[I)V

    return-object v0

    :cond_0
    const/4 v2, 0x0

    .line 325
    array-length v3, v1

    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->hyphenate([CIIII)Lcom/itextpdf/layout/hyphenation/Hyphenation;

    move-result-object p1

    return-object p1
.end method

.method public hyphenate([CIIII)Lcom/itextpdf/layout/hyphenation/Hyphenation;
    .locals 10

    add-int/lit8 v0, p3, 0x3

    .line 464
    new-array v0, v0, [C

    const/4 v1, 0x2

    .line 467
    new-array v1, v1, [C

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v5, p3

    move v6, v2

    move v7, v6

    move v4, v3

    :goto_0
    const/4 v8, 0x0

    if-gt v4, p3, :cond_3

    add-int v9, p2, v4

    sub-int/2addr v9, v3

    .line 472
    aget-char v9, p1, v9

    aput-char v9, v1, v2

    .line 473
    iget-object v9, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->classmap:Lcom/itextpdf/layout/hyphenation/TernaryTree;

    invoke-virtual {v9, v1, v2}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->find([CI)I

    move-result v9

    if-gez v9, :cond_1

    add-int/lit8 v8, v7, 0x1

    if-ne v4, v8, :cond_0

    move v7, v8

    goto :goto_1

    :cond_0
    move v6, v3

    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_1
    if-nez v6, :cond_2

    sub-int v8, v4, v7

    int-to-char v9, v9

    .line 487
    aput-char v9, v0, v8

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v8

    :cond_3
    add-int p2, p4, p5

    if-ge v5, p2, :cond_4

    return-object v8

    :cond_4
    add-int/lit8 p2, v5, 0x1

    .line 499
    new-array p3, p2, [I

    .line 503
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v3, v5}, Ljava/lang/String;-><init>([CII)V

    .line 504
    iget-object v4, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->stoplist:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 506
    iget-object p2, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->stoplist:Ljava/util/Map;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    move v0, v2

    move v1, v0

    move v3, v1

    .line 508
    :goto_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_a

    .line 509
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 512
    instance-of v6, v4, Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 513
    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v1, v4

    if-lt v1, p4, :cond_5

    sub-int v4, v5, p5

    if-ge v1, v4, :cond_5

    add-int/lit8 v4, v3, 0x1

    add-int v6, v1, v7

    .line 515
    aput v6, p3, v3

    move v3, v4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    const/16 v1, 0x2e

    .line 523
    aput-char v1, v0, v2

    .line 526
    aput-char v1, v0, p2

    add-int/lit8 v1, v5, 0x2

    .line 529
    aput-char v2, v0, v1

    add-int/lit8 v1, v5, 0x3

    .line 532
    new-array v1, v1, [B

    move v4, v2

    :goto_4
    if-ge v4, p2, :cond_7

    .line 534
    invoke-virtual {p0, v0, v4, v1}, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->searchPatterns([CI[B)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    move p2, v2

    move v0, p2

    :goto_5
    if-ge v0, v5, :cond_9

    add-int/lit8 v4, v0, 0x1

    .line 542
    aget-byte v6, v1, v4

    and-int/2addr v6, v3

    if-ne v6, v3, :cond_8

    if-lt v0, p4, :cond_8

    sub-int v6, v5, p5

    if-gt v0, v6, :cond_8

    add-int/lit8 v6, p2, 0x1

    .line 544
    aput v0, p3, p2

    move p2, v6

    :cond_8
    move v0, v4

    goto :goto_5

    :cond_9
    move v3, p2

    :cond_a
    if-lez v3, :cond_b

    .line 552
    new-array p2, v3, [I

    .line 553
    invoke-static {p3, v2, p2, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 554
    new-instance p3, Lcom/itextpdf/layout/hyphenation/Hyphenation;

    new-instance p4, Ljava/lang/String;

    invoke-direct {p4, p1, v7, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p3, p4, p2}, Lcom/itextpdf/layout/hyphenation/Hyphenation;-><init>(Ljava/lang/String;[I)V

    return-object p3

    :cond_b
    return-object v8
.end method

.method public loadPatterns(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/layout/hyphenation/HyphenationException;
        }
    .end annotation

    .line 139
    new-instance v0, Lcom/itextpdf/layout/hyphenation/PatternParser;

    invoke-direct {v0, p0}, Lcom/itextpdf/layout/hyphenation/PatternParser;-><init>(Lcom/itextpdf/layout/hyphenation/IPatternConsumer;)V

    .line 140
    new-instance v1, Lcom/itextpdf/layout/hyphenation/TernaryTree;

    invoke-direct {v1}, Lcom/itextpdf/layout/hyphenation/TernaryTree;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->ivalues:Lcom/itextpdf/layout/hyphenation/TernaryTree;

    .line 142
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/layout/hyphenation/PatternParser;->parse(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->trimToSize()V

    .line 147
    iget-object p1, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->vspace:Lcom/itextpdf/layout/hyphenation/ByteVector;

    invoke-virtual {p1}, Lcom/itextpdf/layout/hyphenation/ByteVector;->trimToSize()V

    .line 148
    iget-object p1, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->classmap:Lcom/itextpdf/layout/hyphenation/TernaryTree;

    invoke-virtual {p1}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->trimToSize()V

    const/4 p1, 0x0

    .line 151
    iput-object p1, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->ivalues:Lcom/itextpdf/layout/hyphenation/TernaryTree;

    return-void
.end method

.method public loadPatterns(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/layout/hyphenation/HyphenationException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->loadPatterns(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method protected packValues(Ljava/lang/String;)I
    .locals 10

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    shr-int/lit8 v1, v0, 0x1

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    shr-int/lit8 v1, v0, 0x1

    add-int/2addr v1, v2

    .line 82
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->vspace:Lcom/itextpdf/layout/hyphenation/ByteVector;

    invoke-virtual {v3, v1}, Lcom/itextpdf/layout/hyphenation/ByteVector;->alloc(I)I

    move-result v3

    .line 83
    iget-object v4, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->vspace:Lcom/itextpdf/layout/hyphenation/ByteVector;

    invoke-virtual {v4}, Lcom/itextpdf/layout/hyphenation/ByteVector;->getArray()[B

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v0, :cond_2

    shr-int/lit8 v7, v6, 0x1

    .line 86
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v8, v8, -0x2f

    and-int/lit8 v8, v8, 0xf

    int-to-byte v8, v8

    and-int/lit8 v9, v6, 0x1

    if-ne v9, v2, :cond_1

    add-int/2addr v7, v3

    .line 88
    aget-byte v9, v4, v7

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    goto :goto_2

    :cond_1
    add-int/2addr v7, v3

    shl-int/lit8 v8, v8, 0x4

    int-to-byte v8, v8

    .line 91
    aput-byte v8, v4, v7

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    sub-int/2addr v1, v2

    add-int/2addr v1, v3

    .line 96
    aput-byte v5, v4, v1

    return v3
.end method

.method protected searchPatterns([CI[B)V
    .locals 8

    .line 245
    aget-char v0, p1, p2

    .line 246
    iget-char v1, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->root:C

    move v2, p2

    :cond_0
    :goto_0
    if-lez v1, :cond_a

    .line 248
    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->sc:[C

    array-length v3, v3

    if-ge v1, v3, :cond_a

    .line 249
    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->sc:[C

    aget-char v3, v3, v1

    const/4 v4, 0x0

    const v5, 0xffff

    if-ne v3, v5, :cond_3

    .line 250
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->kv:Lcom/itextpdf/layout/hyphenation/CharVector;

    invoke-virtual {v0}, Lcom/itextpdf/layout/hyphenation/CharVector;->getArray()[C

    move-result-object v0

    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->lo:[C

    aget-char v3, v3, v1

    invoke-virtual {p0, p1, v2, v0, v3}, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->hstrcmp([CI[CI)I

    move-result p1

    if-nez p1, :cond_2

    .line 253
    iget-object p1, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->eq:[C

    aget-char p1, p1, v1

    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->getValues(I)[B

    move-result-object p1

    .line 255
    :goto_1
    array-length v0, p1

    if-ge v4, v0, :cond_2

    .line 256
    array-length v0, p3

    if-ge p2, v0, :cond_1

    aget-byte v0, p1, v4

    aget-byte v1, p3, p2

    if-le v0, v1, :cond_1

    .line 257
    aput-byte v0, p3, p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-void

    .line 264
    :cond_3
    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->sc:[C

    aget-char v3, v3, v1

    sub-int v3, v0, v3

    if-nez v3, :cond_8

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 269
    aget-char v0, p1, v2

    .line 270
    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->eq:[C

    aget-char v1, v3, v1

    move v3, v1

    :goto_2
    if-lez v3, :cond_0

    .line 275
    iget-object v6, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->sc:[C

    array-length v6, v6

    if-ge v3, v6, :cond_0

    .line 278
    iget-object v6, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->sc:[C

    aget-char v6, v6, v3

    if-ne v6, v5, :cond_5

    goto :goto_0

    .line 281
    :cond_5
    iget-object v6, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->sc:[C

    aget-char v6, v6, v3

    if-nez v6, :cond_7

    .line 282
    iget-object v5, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->eq:[C

    aget-char v3, v5, v3

    invoke-virtual {p0, v3}, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->getValues(I)[B

    move-result-object v3

    move v5, p2

    .line 284
    :goto_3
    array-length v6, v3

    if-ge v4, v6, :cond_0

    .line 285
    array-length v6, p3

    if-ge v5, v6, :cond_6

    aget-byte v6, v3, v4

    aget-byte v7, p3, v5

    if-le v6, v7, :cond_6

    .line 286
    aput-byte v6, p3, v5

    :cond_6
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 292
    :cond_7
    iget-object v6, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->lo:[C

    aget-char v3, v6, v3

    goto :goto_2

    :cond_8
    if-gez v3, :cond_9

    .line 302
    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->lo:[C

    aget-char v1, v3, v1

    goto/16 :goto_0

    :cond_9
    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->hi:[C

    aget-char v1, v3, v1

    goto/16 :goto_0

    :cond_a
    :goto_4
    return-void
.end method

.method protected unpackValues(I)Ljava/lang/String;
    .locals 3

    .line 106
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 107
    iget-object v1, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->vspace:Lcom/itextpdf/layout/hyphenation/ByteVector;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, p1}, Lcom/itextpdf/layout/hyphenation/ByteVector;->get(I)B

    move-result p1

    :goto_0
    if-eqz p1, :cond_1

    ushr-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0x2f

    int-to-char v1, v1

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit8 p1, p1, 0xf

    int-to-char p1, p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x2f

    int-to-char p1, p1

    .line 116
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 117
    iget-object p1, p0, Lcom/itextpdf/layout/hyphenation/HyphenationTree;->vspace:Lcom/itextpdf/layout/hyphenation/ByteVector;

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p1, v2}, Lcom/itextpdf/layout/hyphenation/ByteVector;->get(I)B

    move-result p1

    move v2, v1

    goto :goto_0

    .line 119
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
