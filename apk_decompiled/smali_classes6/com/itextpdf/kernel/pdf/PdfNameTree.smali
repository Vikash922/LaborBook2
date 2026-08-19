.class public Lcom/itextpdf/kernel/pdf/PdfNameTree;
.super Ljava/lang/Object;
.source "PdfNameTree.java"


# static fields
.field private static final NODE_SIZE:I = 0x28


# instance fields
.field private catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

.field private items:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;"
        }
    .end annotation
.end field

.field private modified:Z

.field private treeType:Lcom/itextpdf/kernel/pdf/PdfName;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfCatalog;Lcom/itextpdf/kernel/pdf/PdfName;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->items:Ljava/util/Map;

    .line 74
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->treeType:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 75
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    .line 76
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfNameTree;->getNames()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->items:Ljava/util/Map;

    return-void
.end method

.method private getDestArray(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 267
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfArray;

    return-object p1

    .line 269
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 270
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method private iterateItems(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/kernel/pdf/PdfString;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfString;",
            ")",
            "Lcom/itextpdf/kernel/pdf/PdfString;"
        }
    .end annotation

    .line 239
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Names:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 241
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result p1

    if-ge v2, p1, :cond_3

    if-nez p3, :cond_0

    add-int/lit8 p1, v2, 0x1

    .line 244
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsString(I)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v2

    move-object v4, v2

    move v2, p1

    move-object p1, p3

    move-object p3, v4

    goto :goto_1

    :cond_0
    move-object p1, v1

    .line 249
    :goto_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 250
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-interface {p2, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    move-object p3, p1

    goto :goto_0

    :cond_1
    return-object p3

    .line 255
    :cond_2
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 256
    :goto_2
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 257
    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 258
    invoke-direct {p0, v0, p2, p3}, Lcom/itextpdf/kernel/pdf/PdfNameTree;->iterateItems(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object p3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-object v1
.end method

.method private readTree(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;"
        }
    .end annotation

    .line 231
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 233
    invoke-direct {p0, p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfNameTree;->iterateItems(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/kernel/pdf/PdfString;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public addEntry(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->items:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfObject;

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 139
    :cond_0
    const-class v0, Lcom/itextpdf/kernel/pdf/PdfNameTree;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 140
    const-string v1, "Name \"{0}\" already exists in the name tree; old value will be replaced by the new one."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->modified:Z

    .line 144
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->items:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public buildTree()Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 16

    move-object/from16 v0, p0

    .line 167
    iget-object v1, v0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->items:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 168
    iget-object v2, v0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->items:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 169
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 170
    array-length v2, v1

    const/4 v4, 0x0

    const/16 v5, 0x28

    if-gt v2, v5, :cond_1

    .line 171
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 172
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v5}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 173
    array-length v6, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v7, v1, v3

    .line 174
    new-instance v8, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {v8, v7, v4}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 175
    iget-object v8, v0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->items:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfObject;

    invoke-virtual {v5, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 177
    :cond_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Names:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object v2

    .line 181
    :cond_1
    array-length v2, v1

    add-int/lit8 v2, v2, 0x27

    div-int/2addr v2, v5

    new-array v6, v2, [Lcom/itextpdf/kernel/pdf/PdfDictionary;

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v2, :cond_3

    mul-int/lit8 v8, v7, 0x28

    add-int/lit8 v9, v8, 0x28

    .line 184
    array-length v10, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 185
    new-instance v10, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v10}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 186
    new-instance v11, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v11}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 187
    new-instance v12, Lcom/itextpdf/kernel/pdf/PdfString;

    aget-object v13, v1, v8

    invoke-direct {v12, v13, v4}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 188
    new-instance v12, Lcom/itextpdf/kernel/pdf/PdfString;

    add-int/lit8 v13, v9, -0x1

    aget-object v13, v1, v13

    invoke-direct {v12, v13, v4}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 189
    sget-object v12, Lcom/itextpdf/kernel/pdf/PdfName;->Limits:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v10, v12, v11}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 190
    new-instance v11, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v11}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    :goto_2
    if-ge v8, v9, :cond_2

    .line 192
    new-instance v12, Lcom/itextpdf/kernel/pdf/PdfString;

    aget-object v13, v1, v8

    invoke-direct {v12, v13, v4}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 193
    iget-object v12, v0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->items:Ljava/util/Map;

    aget-object v13, v1, v8

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/kernel/pdf/PdfObject;

    invoke-virtual {v11, v12}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 195
    :cond_2
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Names:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v10, v8, v11}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 196
    iget-object v8, v0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v8

    invoke-virtual {v10, v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 197
    aput-object v10, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    move v7, v5

    :goto_3
    if-gt v2, v5, :cond_5

    .line 202
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_4

    .line 204
    aget-object v4, v6, v3

    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 205
    :cond_4
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 206
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object v2

    :cond_5
    mul-int/2addr v7, v5

    .line 210
    array-length v8, v1

    add-int/2addr v8, v7

    add-int/lit8 v8, v8, -0x1

    div-int/2addr v8, v7

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v8, :cond_7

    mul-int/lit8 v10, v9, 0x28

    add-int/lit8 v11, v10, 0x28

    .line 213
    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 214
    new-instance v12, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v12}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    iget-object v13, v0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v13}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 215
    new-instance v13, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v13}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 216
    new-instance v14, Lcom/itextpdf/kernel/pdf/PdfString;

    mul-int v15, v9, v7

    aget-object v15, v1, v15

    invoke-direct {v14, v15, v4}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 217
    new-instance v14, Lcom/itextpdf/kernel/pdf/PdfString;

    add-int/lit8 v15, v9, 0x1

    mul-int v3, v15, v7

    array-length v5, v1

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v1, v3

    invoke-direct {v14, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 218
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Limits:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v12, v3, v13}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 219
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    :goto_6
    if-ge v10, v11, :cond_6

    .line 221
    aget-object v5, v6, v10

    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 223
    :cond_6
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v12, v5, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 224
    aput-object v12, v6, v9

    move v9, v15

    const/16 v5, 0x28

    goto :goto_5

    :cond_7
    move v2, v8

    goto/16 :goto_3
.end method

.method public getNames()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->items:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->items:Ljava/util/Map;

    return-object v0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Names:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 91
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->treeType:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 93
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfNameTree;->readTree(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->items:Ljava/util/Map;

    .line 96
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 97
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->items:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 98
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 99
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->treeType:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Dests:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 100
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->items:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfObject;

    invoke-direct {p0, v2}, Lcom/itextpdf/kernel/pdf/PdfNameTree;->getDestArray(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 102
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->items:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 104
    :cond_2
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->items:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 105
    :cond_3
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->items:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 106
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->items:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 111
    :cond_4
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->treeType:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Dests:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 112
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Dests:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 114
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 115
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 116
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/itextpdf/kernel/pdf/PdfNameTree;->getDestArray(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_1

    .line 120
    :cond_5
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->items:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 124
    :cond_6
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->items:Ljava/util/Map;

    return-object v0
.end method

.method public isModified()Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->modified:Z

    return v0
.end method

.method public setModified()V
    .locals 1

    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfNameTree;->modified:Z

    return-void
.end method
