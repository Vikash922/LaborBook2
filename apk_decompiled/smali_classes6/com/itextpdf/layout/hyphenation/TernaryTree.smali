.class public Lcom/itextpdf/layout/hyphenation/TernaryTree;
.super Ljava/lang/Object;
.source "TernaryTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field protected static final BLOCK_SIZE:I = 0x800


# instance fields
.field protected eq:[C

.field protected freenode:C

.field protected hi:[C

.field protected kv:Lcom/itextpdf/layout/hyphenation/CharVector;

.field protected length:I

.field protected lo:[C

.field protected root:C

.field protected sc:[C


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-virtual {p0}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->init()V

    return-void
.end method

.method constructor <init>(Lcom/itextpdf/layout/hyphenation/TernaryTree;)V
    .locals 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iget-char v0, p1, Lcom/itextpdf/layout/hyphenation/TernaryTree;->root:C

    iput-char v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->root:C

    .line 130
    iget-char v0, p1, Lcom/itextpdf/layout/hyphenation/TernaryTree;->freenode:C

    iput-char v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->freenode:C

    .line 131
    iget v0, p1, Lcom/itextpdf/layout/hyphenation/TernaryTree;->length:I

    iput v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->length:I

    .line 132
    iget-object v0, p1, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    .line 133
    iget-object v0, p1, Lcom/itextpdf/layout/hyphenation/TernaryTree;->hi:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->hi:[C

    .line 134
    iget-object v0, p1, Lcom/itextpdf/layout/hyphenation/TernaryTree;->eq:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->eq:[C

    .line 135
    iget-object v0, p1, Lcom/itextpdf/layout/hyphenation/TernaryTree;->sc:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->sc:[C

    .line 136
    new-instance v0, Lcom/itextpdf/layout/hyphenation/CharVector;

    iget-object p1, p1, Lcom/itextpdf/layout/hyphenation/TernaryTree;->kv:Lcom/itextpdf/layout/hyphenation/CharVector;

    invoke-direct {v0, p1}, Lcom/itextpdf/layout/hyphenation/CharVector;-><init>(Lcom/itextpdf/layout/hyphenation/CharVector;)V

    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->kv:Lcom/itextpdf/layout/hyphenation/CharVector;

    return-void
.end method

.method private compact(Lcom/itextpdf/layout/hyphenation/CharVector;Lcom/itextpdf/layout/hyphenation/TernaryTree;C)V
    .locals 4

    if-nez p3, :cond_0

    return-void

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->sc:[C

    aget-char v0, v0, p3

    const v1, 0xffff

    if-ne v0, v1, :cond_2

    .line 566
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->kv:Lcom/itextpdf/layout/hyphenation/CharVector;

    invoke-virtual {v0}, Lcom/itextpdf/layout/hyphenation/CharVector;->getArray()[C

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    aget-char v1, v1, p3

    invoke-virtual {p2, v0, v1}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->find([CI)I

    move-result v0

    if-gez v0, :cond_1

    .line 568
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->kv:Lcom/itextpdf/layout/hyphenation/CharVector;

    invoke-virtual {v0}, Lcom/itextpdf/layout/hyphenation/CharVector;->getArray()[C

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    aget-char v1, v1, p3

    invoke-static {v0, v1}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->strlen([CI)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/itextpdf/layout/hyphenation/CharVector;->alloc(I)I

    move-result v0

    .line 569
    invoke-virtual {p1}, Lcom/itextpdf/layout/hyphenation/CharVector;->getArray()[C

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->kv:Lcom/itextpdf/layout/hyphenation/CharVector;

    invoke-virtual {v2}, Lcom/itextpdf/layout/hyphenation/CharVector;->getArray()[C

    move-result-object v2

    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    aget-char v3, v3, p3

    invoke-static {v1, v0, v2, v3}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->strcpy([CI[CI)V

    .line 570
    invoke-virtual {p1}, Lcom/itextpdf/layout/hyphenation/CharVector;->getArray()[C

    move-result-object p1

    int-to-char v1, v0

    invoke-virtual {p2, p1, v0, v1}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->insert([CIC)V

    .line 572
    :cond_1
    iget-object p1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    int-to-char p2, v0

    aput-char p2, p1, p3

    goto :goto_0

    .line 574
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    aget-char v0, v0, p3

    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->compact(Lcom/itextpdf/layout/hyphenation/CharVector;Lcom/itextpdf/layout/hyphenation/TernaryTree;C)V

    .line 575
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->sc:[C

    aget-char v0, v0, p3

    if-eqz v0, :cond_3

    .line 576
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->eq:[C

    aget-char v0, v0, p3

    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->compact(Lcom/itextpdf/layout/hyphenation/CharVector;Lcom/itextpdf/layout/hyphenation/TernaryTree;C)V

    .line 578
    :cond_3
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->hi:[C

    aget-char p3, v0, p3

    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->compact(Lcom/itextpdf/layout/hyphenation/CharVector;Lcom/itextpdf/layout/hyphenation/TernaryTree;C)V

    :goto_0
    return-void
.end method

.method private insert(Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;)C
    .locals 1

    .line 318
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->insertNewBranchIfNeeded(Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;)Ljava/lang/Character;

    move-result-object v0

    if-nez v0, :cond_0

    .line 320
    invoke-direct {p0, p1}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->insertIntoExistingBranch(Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;)C

    move-result p1

    return p1

    .line 322
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result p1

    return p1
.end method

.method private insertIntoExistingBranch(Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;)C
    .locals 11

    .line 230
    iget-char v0, p1, Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;->p:C

    :goto_0
    if-eqz p1, :cond_9

    .line 233
    iget-char v1, p1, Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;->p:C

    .line 236
    iget-object v2, p1, Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;->key:[C

    .line 237
    iget v3, p1, Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;->start:I

    .line 238
    iget-char p1, p1, Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;->val:C

    .line 239
    invoke-static {v2, v3}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->strlen([CI)I

    move-result v4

    .line 242
    iget-object v5, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->sc:[C

    aget-char v6, v5, v1

    const v7, 0xffff

    if-ne v6, v7, :cond_2

    .line 246
    iget-char v6, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->freenode:C

    add-int/lit8 v8, v6, 0x1

    int-to-char v8, v8

    iput-char v8, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->freenode:C

    .line 249
    iget-object v8, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    aget-char v9, v8, v1

    aput-char v9, v8, v6

    .line 252
    iget-object v9, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->eq:[C

    aget-char v10, v9, v1

    aput-char v10, v9, v6

    const/4 v10, 0x0

    .line 253
    aput-char v10, v8, v1

    if-lez v4, :cond_1

    .line 255
    iget-object v4, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->kv:Lcom/itextpdf/layout/hyphenation/CharVector;

    aget-char v8, v8, v6

    invoke-virtual {v4, v8}, Lcom/itextpdf/layout/hyphenation/CharVector;->get(I)C

    move-result v4

    aput-char v4, v5, v1

    .line 256
    iget-object v4, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->eq:[C

    aput-char v6, v4, v1

    .line 257
    iget-object v4, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    aget-char v5, v4, v6

    add-int/lit8 v5, v5, 0x1

    int-to-char v5, v5

    aput-char v5, v4, v6

    .line 258
    iget-object v4, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->kv:Lcom/itextpdf/layout/hyphenation/CharVector;

    invoke-virtual {v4, v5}, Lcom/itextpdf/layout/hyphenation/CharVector;->get(I)C

    move-result v4

    if-nez v4, :cond_0

    .line 260
    iget-object v4, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    aput-char v10, v4, v6

    .line 261
    iget-object v4, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->sc:[C

    aput-char v10, v4, v6

    .line 262
    iget-object v4, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->hi:[C

    aput-char v10, v4, v6

    goto :goto_1

    .line 265
    :cond_0
    iget-object v4, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->sc:[C

    aput-char v7, v4, v6

    goto :goto_1

    .line 270
    :cond_1
    aput-char v7, v5, v6

    .line 271
    iget-object v2, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->hi:[C

    aput-char v6, v2, v1

    .line 272
    aput-char v10, v5, v1

    .line 273
    aput-char p1, v9, v1

    .line 274
    iget p1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->length:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->length:I

    goto :goto_4

    .line 278
    :cond_2
    :goto_1
    aget-char v4, v2, v3

    .line 279
    iget-object v5, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->sc:[C

    aget-char v5, v5, v1

    const/4 v6, 0x0

    if-ge v4, v5, :cond_4

    .line 280
    new-instance v4, Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;

    iget-object v5, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    aget-char v5, v5, v1

    invoke-direct {v4, v5, v2, v3, p1}, Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;-><init>(C[CIC)V

    .line 281
    invoke-direct {p0, v4}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->insertNewBranchIfNeeded(Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;)Ljava/lang/Character;

    move-result-object p1

    if-nez p1, :cond_3

    :goto_2
    move-object v6, v4

    goto :goto_3

    .line 285
    :cond_3
    iget-object v2, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    aput-char p1, v2, v1

    goto :goto_3

    :cond_4
    if-ne v4, v5, :cond_7

    if-eqz v4, :cond_6

    .line 289
    new-instance v4, Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;

    iget-object v5, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->eq:[C

    aget-char v5, v5, v1

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v4, v5, v2, v3, p1}, Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;-><init>(C[CIC)V

    .line 290
    invoke-direct {p0, v4}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->insertNewBranchIfNeeded(Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;)Ljava/lang/Character;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_2

    .line 294
    :cond_5
    iget-object v2, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->eq:[C

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    aput-char p1, v2, v1

    goto :goto_3

    .line 298
    :cond_6
    iget-object v2, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->eq:[C

    aput-char p1, v2, v1

    goto :goto_3

    .line 301
    :cond_7
    new-instance v4, Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;

    iget-object v5, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->hi:[C

    aget-char v5, v5, v1

    invoke-direct {v4, v5, v2, v3, p1}, Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;-><init>(C[CIC)V

    .line 302
    invoke-direct {p0, v4}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->insertNewBranchIfNeeded(Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;)Ljava/lang/Character;

    move-result-object p1

    if-nez p1, :cond_8

    move-object p1, v4

    goto/16 :goto_0

    .line 306
    :cond_8
    iget-object v2, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->hi:[C

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    aput-char p1, v2, v1

    :goto_3
    move-object p1, v6

    goto/16 :goto_0

    :cond_9
    :goto_4
    return v0
.end method

.method private insertNewBranchIfNeeded(Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;)Ljava/lang/Character;
    .locals 5

    .line 194
    iget-char v0, p1, Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;->p:C

    .line 195
    iget-object v1, p1, Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;->key:[C

    .line 196
    iget v2, p1, Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;->start:I

    .line 197
    iget-char p1, p1, Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;->val:C

    .line 198
    invoke-static {v1, v2}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->strlen([CI)I

    move-result v3

    if-nez v0, :cond_1

    .line 203
    iget-char v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->freenode:C

    add-int/lit8 v4, v0, 0x1

    int-to-char v4, v4

    iput-char v4, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->freenode:C

    .line 206
    iget-object v4, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->eq:[C

    aput-char p1, v4, v0

    .line 207
    iget p1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->length:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->length:I

    .line 208
    iget-object p1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->hi:[C

    const/4 v4, 0x0

    aput-char v4, p1, v0

    if-lez v3, :cond_0

    .line 212
    iget-object p1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->sc:[C

    const v4, 0xffff

    aput-char v4, p1, v0

    .line 215
    iget-object p1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    iget-object v4, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->kv:Lcom/itextpdf/layout/hyphenation/CharVector;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Lcom/itextpdf/layout/hyphenation/CharVector;->alloc(I)I

    move-result v3

    int-to-char v3, v3

    aput-char v3, p1, v0

    .line 216
    iget-object p1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->kv:Lcom/itextpdf/layout/hyphenation/CharVector;

    invoke-virtual {p1}, Lcom/itextpdf/layout/hyphenation/CharVector;->getArray()[C

    move-result-object p1

    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    aget-char v3, v3, v0

    invoke-static {p1, v3, v1, v2}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->strcpy([CI[CI)V

    goto :goto_0

    .line 218
    :cond_0
    iget-object p1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->sc:[C

    aput-char v4, p1, v0

    .line 219
    iget-object p1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    aput-char v4, p1, v0

    .line 221
    :goto_0
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private redimNodeArrays(I)V
    .locals 4

    .line 465
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    array-length v1, v0

    if-ge p1, v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    array-length v1, v0

    .line 466
    :goto_0
    new-array v2, p1, [C

    const/4 v3, 0x0

    .line 467
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 468
    iput-object v2, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    .line 469
    new-array v0, p1, [C

    .line 470
    iget-object v2, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->hi:[C

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 471
    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->hi:[C

    .line 472
    new-array v0, p1, [C

    .line 473
    iget-object v2, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->eq:[C

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 474
    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->eq:[C

    .line 475
    new-array p1, p1, [C

    .line 476
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->sc:[C

    invoke-static {v0, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 477
    iput-object p1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->sc:[C

    return-void
.end method

.method public static strcmp(Ljava/lang/String;[CI)I
    .locals 5

    .line 353
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 355
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int v4, p2, v2

    aget-char v4, p1, v4

    sub-int/2addr v3, v4

    if-eqz v3, :cond_0

    return v3

    :cond_0
    if-nez v4, :cond_1

    return v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr p2, v2

    .line 363
    aget-char p0, p1, p2

    if-eqz p0, :cond_3

    neg-int p0, p0

    return p0

    :cond_3
    return v1
.end method

.method public static strcmp([CI[CI)I
    .locals 2

    .line 335
    :goto_0
    aget-char v0, p0, p1

    aget-char v1, p2, p3

    if-ne v0, v1, :cond_1

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v1

    return v0
.end method

.method public static strcpy([CI[CI)V
    .locals 2

    .line 377
    :goto_0
    aget-char v0, p2, p3

    if-eqz v0, :cond_0

    add-int/lit8 v1, p1, 0x1

    add-int/lit8 p3, p3, 0x1

    .line 378
    aput-char v0, p0, p1

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 380
    aput-char p2, p0, p1

    return-void
.end method

.method public static strlen([C)I
    .locals 1

    const/4 v0, 0x0

    .line 401
    invoke-static {p0, v0}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->strlen([CI)I

    move-result p0

    return p0
.end method

.method public static strlen([CI)I
    .locals 2

    const/4 v0, 0x0

    .line 390
    :goto_0
    array-length v1, p0

    if-ge p1, v1, :cond_0

    aget-char v1, p0, p1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method public balance()V
    .locals 8

    .line 516
    iget v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->length:I

    .line 517
    new-array v1, v0, [Ljava/lang/String;

    .line 518
    new-array v2, v0, [C

    .line 519
    new-instance v3, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;

    invoke-direct {v3, p0}, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;-><init>(Lcom/itextpdf/layout/hyphenation/TernaryTree;)V

    const/4 v4, 0x0

    move v5, v4

    .line 520
    :goto_0
    invoke-virtual {v3}, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 521
    invoke-virtual {v3}, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->getValue()C

    move-result v6

    aput-char v6, v2, v5

    add-int/lit8 v6, v5, 0x1

    .line 522
    invoke-virtual {v3}, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v1, v5

    move v5, v6

    goto :goto_0

    .line 524
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->init()V

    .line 525
    invoke-virtual {p0, v1, v2, v4, v0}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->insertBalanced([Ljava/lang/String;[CII)V

    return-void
.end method

.method public find(Ljava/lang/String;)I
    .locals 3

    .line 410
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 411
    new-array v1, v1, [C

    const/4 v2, 0x0

    .line 412
    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 413
    aput-char v2, v1, v0

    .line 415
    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->find([CI)I

    move-result p1

    return p1
.end method

.method public find([CI)I
    .locals 4

    .line 426
    iget-char v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->root:C

    :goto_0
    const/4 v1, -0x1

    if-eqz v0, :cond_5

    .line 431
    iget-object v2, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->sc:[C

    aget-char v2, v2, v0

    const v3, 0xffff

    if-ne v2, v3, :cond_1

    .line 432
    iget-object v2, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->kv:Lcom/itextpdf/layout/hyphenation/CharVector;

    invoke-virtual {v2}, Lcom/itextpdf/layout/hyphenation/CharVector;->getArray()[C

    move-result-object v2

    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    aget-char v3, v3, v0

    invoke-static {p1, p2, v2, v3}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->strcmp([CI[CI)I

    move-result p1

    if-nez p1, :cond_0

    .line 433
    iget-object p1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->eq:[C

    aget-char p1, p1, v0

    return p1

    :cond_0
    return v1

    .line 438
    :cond_1
    aget-char v1, p1, p2

    sub-int v2, v1, v2

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    .line 442
    iget-object p1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->eq:[C

    aget-char p1, p1, v0

    return p1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    .line 445
    iget-object v1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->eq:[C

    aget-char v0, v1, v0

    goto :goto_0

    :cond_3
    if-gez v2, :cond_4

    .line 447
    iget-object v1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    aget-char v0, v1, v0

    goto :goto_0

    .line 449
    :cond_4
    iget-object v1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->hi:[C

    aget-char v0, v1, v0

    goto :goto_0

    :cond_5
    return v1
.end method

.method protected init()V
    .locals 2

    const/4 v0, 0x0

    .line 141
    iput-char v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->root:C

    const/4 v1, 0x1

    .line 142
    iput-char v1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->freenode:C

    .line 143
    iput v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->length:I

    const/16 v0, 0x800

    .line 144
    new-array v1, v0, [C

    iput-object v1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    .line 145
    new-array v1, v0, [C

    iput-object v1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->hi:[C

    .line 146
    new-array v1, v0, [C

    iput-object v1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->eq:[C

    .line 147
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->sc:[C

    .line 148
    new-instance v0, Lcom/itextpdf/layout/hyphenation/CharVector;

    invoke-direct {v0}, Lcom/itextpdf/layout/hyphenation/CharVector;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->kv:Lcom/itextpdf/layout/hyphenation/CharVector;

    return-void
.end method

.method public insert(Ljava/lang/String;C)V
    .locals 5

    .line 163
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 167
    iget-char v2, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->freenode:C

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->eq:[C

    array-length v4, v3

    if-le v2, v4, :cond_0

    .line 168
    array-length v2, v3

    add-int/lit16 v2, v2, 0x800

    invoke-direct {p0, v2}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->redimNodeArrays(I)V

    .line 170
    :cond_0
    new-array v1, v1, [C

    const/4 v2, 0x0

    .line 171
    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 172
    aput-char v2, v1, v0

    .line 173
    new-instance p1, Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;

    iget-char v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->root:C

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;-><init>(C[CIC)V

    invoke-direct {p0, p1}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->insert(Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;)C

    move-result p1

    iput-char p1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->root:C

    return-void
.end method

.method public insert([CIC)V
    .locals 3

    .line 183
    invoke-static {p1}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->strlen([C)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 184
    iget-char v1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->freenode:C

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->eq:[C

    array-length v2, v0

    if-le v1, v2, :cond_0

    .line 185
    array-length v0, v0

    add-int/lit16 v0, v0, 0x800

    invoke-direct {p0, v0}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->redimNodeArrays(I)V

    .line 187
    :cond_0
    new-instance v0, Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;

    iget-char v1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->root:C

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;-><init>(C[CIC)V

    invoke-direct {p0, v0}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->insert(Lcom/itextpdf/layout/hyphenation/TernaryTree$TreeInsertionParams;)C

    move-result p1

    iput-char p1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->root:C

    return-void
.end method

.method protected insertBalanced([Ljava/lang/String;[CII)V
    .locals 5

    const/4 v0, 0x1

    if-ge p4, v0, :cond_0

    return-void

    :cond_0
    shr-int/lit8 v1, p4, 0x1

    add-int v2, v1, p3

    .line 502
    aget-object v3, p1, v2

    aget-char v4, p2, v2

    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->insert(Ljava/lang/String;C)V

    .line 503
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->insertBalanced([Ljava/lang/String;[CII)V

    add-int/2addr v2, v0

    sub-int/2addr p4, v1

    sub-int/2addr p4, v0

    .line 505
    invoke-virtual {p0, p1, p2, v2, p4}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->insertBalanced([Ljava/lang/String;[CII)V

    return-void
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 1

    .line 584
    new-instance v0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;

    invoke-direct {v0, p0}, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;-><init>(Lcom/itextpdf/layout/hyphenation/TernaryTree;)V

    return-object v0
.end method

.method public knows(Ljava/lang/String;)Z
    .locals 0

    .line 460
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->find(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public size()I
    .locals 1

    .line 482
    iget v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->length:I

    return v0
.end method

.method public trimToSize()V
    .locals 3

    .line 546
    invoke-virtual {p0}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->balance()V

    .line 549
    iget-char v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->freenode:C

    invoke-direct {p0, v0}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->redimNodeArrays(I)V

    .line 552
    new-instance v0, Lcom/itextpdf/layout/hyphenation/CharVector;

    invoke-direct {v0}, Lcom/itextpdf/layout/hyphenation/CharVector;-><init>()V

    const/4 v1, 0x1

    .line 553
    invoke-virtual {v0, v1}, Lcom/itextpdf/layout/hyphenation/CharVector;->alloc(I)I

    .line 554
    new-instance v1, Lcom/itextpdf/layout/hyphenation/TernaryTree;

    invoke-direct {v1}, Lcom/itextpdf/layout/hyphenation/TernaryTree;-><init>()V

    .line 555
    iget-char v2, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->root:C

    invoke-direct {p0, v0, v1, v2}, Lcom/itextpdf/layout/hyphenation/TernaryTree;->compact(Lcom/itextpdf/layout/hyphenation/CharVector;Lcom/itextpdf/layout/hyphenation/TernaryTree;C)V

    .line 556
    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->kv:Lcom/itextpdf/layout/hyphenation/CharVector;

    .line 557
    invoke-virtual {v0}, Lcom/itextpdf/layout/hyphenation/CharVector;->trimToSize()V

    return-void
.end method
