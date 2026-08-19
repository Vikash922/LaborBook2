.class public Lcom/itextpdf/kernel/pdf/PdfNumTree;
.super Ljava/lang/Object;
.source "PdfNumTree.java"


# static fields
.field private static final NODE_SIZE:I = 0x28


# instance fields
.field private catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

.field private items:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;"
        }
    .end annotation
.end field

.field private treeType:Lcom/itextpdf/kernel/pdf/PdfName;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfCatalog;Lcom/itextpdf/kernel/pdf/PdfName;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumTree;->items:Ljava/util/Map;

    .line 68
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfNumTree;->treeType:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 69
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfNumTree;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    return-void
.end method

.method private iterateItems(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfNumber;)Lcom/itextpdf/kernel/pdf/PdfNumber;
    .locals 6

    .line 168
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Nums:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 170
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result p1

    if-ge v2, p1, :cond_3

    if-nez p2, :cond_0

    add-int/lit8 p1, v2, 0x1

    .line 173
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    move-object v5, v2

    move v2, p1

    move-object p1, p2

    move-object p2, v5

    goto :goto_1

    :cond_0
    move-object p1, v1

    .line 178
    :goto_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 179
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfNumTree;->items:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    invoke-interface {v3, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    move-object p2, p1

    goto :goto_0

    :cond_1
    return-object p2

    .line 184
    :cond_2
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 185
    :goto_2
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 186
    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 187
    invoke-direct {p0, v0, p2}, Lcom/itextpdf/kernel/pdf/PdfNumTree;->iterateItems(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfNumber;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-object v1
.end method

.method private readTree(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 163
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfNumTree;->iterateItems(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfNumber;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    :cond_0
    return-void
.end method


# virtual methods
.method public addEntry(ILcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumTree;->items:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public buildTree()Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 16

    move-object/from16 v0, p0

    .line 98
    iget-object v1, v0, Lcom/itextpdf/kernel/pdf/PdfNumTree;->items:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Integer;

    .line 99
    iget-object v2, v0, Lcom/itextpdf/kernel/pdf/PdfNumTree;->items:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    .line 100
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 101
    array-length v2, v1

    const/16 v4, 0x28

    if-gt v2, v4, :cond_1

    .line 102
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 103
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v4}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    const/4 v3, 0x0

    .line 104
    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_0

    .line 105
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfNumber;

    aget-object v6, v1, v3

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 106
    iget-object v5, v0, Lcom/itextpdf/kernel/pdf/PdfNumTree;->items:Ljava/util/Map;

    aget-object v6, v1, v3

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfObject;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 108
    :cond_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Nums:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object v2

    .line 112
    :cond_1
    array-length v2, v1

    add-int/lit8 v2, v2, 0x27

    div-int/2addr v2, v4

    new-array v5, v2, [Lcom/itextpdf/kernel/pdf/PdfDictionary;

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_3

    mul-int/lit8 v7, v6, 0x28

    add-int/lit8 v8, v7, 0x28

    .line 115
    array-length v9, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 116
    new-instance v9, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 117
    new-instance v10, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v10}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 118
    new-instance v11, Lcom/itextpdf/kernel/pdf/PdfNumber;

    aget-object v12, v1, v7

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {v11, v12}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v10, v11}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 119
    new-instance v11, Lcom/itextpdf/kernel/pdf/PdfNumber;

    add-int/lit8 v12, v8, -0x1

    aget-object v12, v1, v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {v11, v12}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v10, v11}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 120
    sget-object v11, Lcom/itextpdf/kernel/pdf/PdfName;->Limits:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v9, v11, v10}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 121
    new-instance v10, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v10}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    :goto_2
    if-ge v7, v8, :cond_2

    .line 123
    new-instance v11, Lcom/itextpdf/kernel/pdf/PdfNumber;

    aget-object v12, v1, v7

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {v11, v12}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v10, v11}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 124
    iget-object v11, v0, Lcom/itextpdf/kernel/pdf/PdfNumTree;->items:Ljava/util/Map;

    aget-object v12, v1, v7

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/kernel/pdf/PdfObject;

    invoke-virtual {v10, v11}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 126
    :cond_2
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Nums:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v9, v7, v10}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 127
    iget-object v7, v0, Lcom/itextpdf/kernel/pdf/PdfNumTree;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 128
    aput-object v9, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    move v6, v4

    :goto_3
    if-gt v2, v4, :cond_5

    .line 133
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_4

    .line 135
    aget-object v4, v5, v3

    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 136
    :cond_4
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 137
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object v2

    :cond_5
    mul-int/2addr v6, v4

    .line 141
    array-length v7, v1

    add-int/2addr v7, v6

    add-int/lit8 v7, v7, -0x1

    div-int/2addr v7, v6

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v7, :cond_7

    mul-int/lit8 v9, v8, 0x28

    add-int/lit8 v10, v9, 0x28

    .line 144
    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 145
    new-instance v11, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v11}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    iget-object v12, v0, Lcom/itextpdf/kernel/pdf/PdfNumTree;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 146
    new-instance v12, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v12}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 147
    new-instance v13, Lcom/itextpdf/kernel/pdf/PdfNumber;

    mul-int v14, v8, v6

    aget-object v14, v1, v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-direct {v13, v14}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v12, v13}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 148
    new-instance v13, Lcom/itextpdf/kernel/pdf/PdfNumber;

    add-int/lit8 v14, v8, 0x1

    mul-int v15, v14, v6

    array-length v3, v1

    invoke-static {v15, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v13, v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v12, v13}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 149
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Limits:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v11, v3, v12}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 150
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    :goto_6
    if-ge v9, v10, :cond_6

    .line 152
    aget-object v12, v5, v9

    invoke-virtual {v3, v12}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 154
    :cond_6
    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v11, v9, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 155
    aput-object v11, v5, v8

    move v8, v14

    goto :goto_5

    :cond_7
    move v2, v7

    goto/16 :goto_3
.end method

.method public getNumbers()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumTree;->items:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumTree;->items:Ljava/util/Map;

    return-object v0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumTree;->treeType:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->PageLabels:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumTree;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->PageLabels:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumTree;->treeType:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ParentTree:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumTree;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->StructTreeRoot:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 84
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ParentTree:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 89
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfNumTree;->readTree(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfNumTree;->items:Ljava/util/Map;

    return-object v0
.end method
