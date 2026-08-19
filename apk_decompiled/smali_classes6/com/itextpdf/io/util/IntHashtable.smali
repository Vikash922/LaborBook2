.class public Lcom/itextpdf/io/util/IntHashtable;
.super Ljava/lang/Object;
.source "IntHashtable.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/util/IntHashtable$Entry;
    }
.end annotation


# instance fields
.field count:I

.field private loadFactor:F

.field private table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

.field private threshold:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x96

    const/high16 v1, 0x3f400000    # 0.75f

    .line 96
    invoke-direct {p0, v0, v1}, Lcom/itextpdf/io/util/IntHashtable;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/high16 v0, 0x3f400000    # 0.75f

    .line 108
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/io/util/IntHashtable;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_2

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 130
    :cond_0
    iput p2, p0, Lcom/itextpdf/io/util/IntHashtable;->loadFactor:F

    .line 131
    new-array v0, p1, [Lcom/itextpdf/io/util/IntHashtable$Entry;

    iput-object v0, p0, Lcom/itextpdf/io/util/IntHashtable;->table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

    int-to-float p1, p1

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 132
    iput p1, p0, Lcom/itextpdf/io/util/IntHashtable;->threshold:I

    return-void

    .line 125
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Illegal Load: {0}"

    invoke-static {v0, p2}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Illegal Capacity: {0}"

    invoke-static {v0, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Lcom/itextpdf/io/util/IntHashtable;)V
    .locals 1

    .line 136
    iget-object v0, p1, Lcom/itextpdf/io/util/IntHashtable;->table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

    array-length v0, v0

    iget p1, p1, Lcom/itextpdf/io/util/IntHashtable;->loadFactor:F

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/io/util/IntHashtable;-><init>(IF)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 374
    iget-object v0, p0, Lcom/itextpdf/io/util/IntHashtable;->table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

    .line 375
    array-length v1, v0

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    const/4 v2, 0x0

    .line 376
    aput-object v2, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 378
    iput v0, p0, Lcom/itextpdf/io/util/IntHashtable;->count:I

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .line 461
    new-instance v0, Lcom/itextpdf/io/util/IntHashtable;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/util/IntHashtable;-><init>(Lcom/itextpdf/io/util/IntHashtable;)V

    .line 462
    iget-object v1, p0, Lcom/itextpdf/io/util/IntHashtable;->table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

    array-length v1, v1

    new-array v1, v1, [Lcom/itextpdf/io/util/IntHashtable$Entry;

    iput-object v1, v0, Lcom/itextpdf/io/util/IntHashtable;->table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

    .line 463
    iget-object v1, p0, Lcom/itextpdf/io/util/IntHashtable;->table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

    array-length v1, v1

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_1

    .line 464
    iget-object v1, v0, Lcom/itextpdf/io/util/IntHashtable;->table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

    iget-object v3, p0, Lcom/itextpdf/io/util/IntHashtable;->table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    .line 465
    invoke-virtual {v3}, Lcom/itextpdf/io/util/IntHashtable$Entry;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/io/util/IntHashtable$Entry;

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    aput-object v3, v1, v2

    move v1, v2

    goto :goto_0

    .line 467
    :cond_1
    iget v1, p0, Lcom/itextpdf/io/util/IntHashtable;->count:I

    iput v1, v0, Lcom/itextpdf/io/util/IntHashtable;->count:I

    return-object v0
.end method

.method public contains(I)Z
    .locals 4

    .line 178
    iget-object v0, p0, Lcom/itextpdf/io/util/IntHashtable;->table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

    .line 179
    array-length v1, v0

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_2

    .line 180
    aget-object v1, v0, v2

    :goto_1
    if-eqz v1, :cond_1

    .line 181
    iget v3, v1, Lcom/itextpdf/io/util/IntHashtable$Entry;->value:I

    if-ne v3, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 180
    :cond_0
    iget-object v1, v1, Lcom/itextpdf/io/util/IntHashtable$Entry;->next:Lcom/itextpdf/io/util/IntHashtable$Entry;

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public containsKey(I)Z
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/itextpdf/io/util/IntHashtable;->table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    .line 215
    array-length v2, v0

    rem-int/2addr v1, v2

    .line 216
    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 217
    iget v1, v0, Lcom/itextpdf/io/util/IntHashtable$Entry;->key:I

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 216
    :cond_0
    iget-object v0, v0, Lcom/itextpdf/io/util/IntHashtable$Entry;->next:Lcom/itextpdf/io/util/IntHashtable$Entry;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public containsValue(I)Z
    .locals 0

    .line 201
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/util/IntHashtable;->contains(I)Z

    move-result p1

    return p1
.end method

.method public get(I)I
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/itextpdf/io/util/IntHashtable;->table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    .line 235
    array-length v2, v0

    rem-int/2addr v1, v2

    .line 236
    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 237
    iget v1, v0, Lcom/itextpdf/io/util/IntHashtable$Entry;->key:I

    if-ne v1, p1, :cond_0

    .line 238
    iget p1, v0, Lcom/itextpdf/io/util/IntHashtable$Entry;->value:I

    return p1

    .line 236
    :cond_0
    iget-object v0, v0, Lcom/itextpdf/io/util/IntHashtable$Entry;->next:Lcom/itextpdf/io/util/IntHashtable$Entry;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getKeys()[I
    .locals 6

    .line 432
    iget v0, p0, Lcom/itextpdf/io/util/IntHashtable;->count:I

    new-array v0, v0, [I

    .line 434
    iget-object v1, p0, Lcom/itextpdf/io/util/IntHashtable;->table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    :goto_1
    add-int/lit8 v4, v1, -0x1

    if-lez v1, :cond_0

    .line 438
    iget-object v1, p0, Lcom/itextpdf/io/util/IntHashtable;->table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

    aget-object v3, v1, v4

    if-nez v3, :cond_0

    move v1, v4

    goto :goto_1

    :cond_0
    move v1, v4

    :cond_1
    if-nez v3, :cond_2

    return-object v0

    .line 442
    :cond_2
    iget-object v4, v3, Lcom/itextpdf/io/util/IntHashtable$Entry;->next:Lcom/itextpdf/io/util/IntHashtable$Entry;

    add-int/lit8 v5, v2, 0x1

    .line 443
    iget v3, v3, Lcom/itextpdf/io/util/IntHashtable$Entry;->key:I

    aput v3, v0, v2

    move-object v3, v4

    move v2, v5

    goto :goto_0
.end method

.method public getOneKey()I
    .locals 4

    .line 449
    iget v0, p0, Lcom/itextpdf/io/util/IntHashtable;->count:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/util/IntHashtable;->table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

    array-length v0, v0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-lez v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/itextpdf/io/util/IntHashtable;->table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

    aget-object v2, v0, v3

    if-nez v2, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    return v1

    .line 456
    :cond_2
    iget v0, v2, Lcom/itextpdf/io/util/IntHashtable$Entry;->key:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 155
    iget v0, p0, Lcom/itextpdf/io/util/IntHashtable;->count:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public put(II)I
    .locals 5

    .line 312
    iget-object v0, p0, Lcom/itextpdf/io/util/IntHashtable;->table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    .line 313
    array-length v2, v0

    rem-int v2, v1, v2

    .line 314
    aget-object v3, v0, v2

    :goto_0
    if-eqz v3, :cond_1

    .line 315
    iget v4, v3, Lcom/itextpdf/io/util/IntHashtable$Entry;->key:I

    if-ne v4, p1, :cond_0

    .line 316
    iget p1, v3, Lcom/itextpdf/io/util/IntHashtable$Entry;->value:I

    .line 318
    iput p2, v3, Lcom/itextpdf/io/util/IntHashtable$Entry;->value:I

    return p1

    .line 314
    :cond_0
    iget-object v3, v3, Lcom/itextpdf/io/util/IntHashtable$Entry;->next:Lcom/itextpdf/io/util/IntHashtable$Entry;

    goto :goto_0

    .line 323
    :cond_1
    iget v3, p0, Lcom/itextpdf/io/util/IntHashtable;->count:I

    iget v4, p0, Lcom/itextpdf/io/util/IntHashtable;->threshold:I

    if-lt v3, v4, :cond_2

    .line 325
    invoke-virtual {p0}, Lcom/itextpdf/io/util/IntHashtable;->rehash()V

    .line 327
    iget-object v0, p0, Lcom/itextpdf/io/util/IntHashtable;->table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

    .line 328
    array-length v2, v0

    rem-int v2, v1, v2

    .line 332
    :cond_2
    new-instance v1, Lcom/itextpdf/io/util/IntHashtable$Entry;

    aget-object v3, v0, v2

    invoke-direct {v1, p1, p2, v3}, Lcom/itextpdf/io/util/IntHashtable$Entry;-><init>(IILcom/itextpdf/io/util/IntHashtable$Entry;)V

    .line 333
    aput-object v1, v0, v2

    .line 334
    iget p1, p0, Lcom/itextpdf/io/util/IntHashtable;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/itextpdf/io/util/IntHashtable;->count:I

    const/4 p1, 0x0

    return p1
.end method

.method protected rehash()V
    .locals 8

    .line 274
    iget-object v0, p0, Lcom/itextpdf/io/util/IntHashtable;->table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

    array-length v1, v0

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 278
    new-array v3, v2, [Lcom/itextpdf/io/util/IntHashtable$Entry;

    int-to-float v4, v2

    .line 280
    iget v5, p0, Lcom/itextpdf/io/util/IntHashtable;->loadFactor:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/itextpdf/io/util/IntHashtable;->threshold:I

    .line 281
    iput-object v3, p0, Lcom/itextpdf/io/util/IntHashtable;->table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

    :goto_0
    add-int/lit8 v4, v1, -0x1

    if-lez v1, :cond_1

    .line 284
    aget-object v1, v0, v4

    :goto_1
    if-eqz v1, :cond_0

    .line 286
    iget-object v5, v1, Lcom/itextpdf/io/util/IntHashtable$Entry;->next:Lcom/itextpdf/io/util/IntHashtable$Entry;

    .line 288
    iget v6, v1, Lcom/itextpdf/io/util/IntHashtable$Entry;->key:I

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    rem-int/2addr v6, v2

    .line 289
    aget-object v7, v3, v6

    iput-object v7, v1, Lcom/itextpdf/io/util/IntHashtable$Entry;->next:Lcom/itextpdf/io/util/IntHashtable$Entry;

    .line 290
    aput-object v1, v3, v6

    move-object v1, v5

    goto :goto_1

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    return-void
.end method

.method public remove(I)I
    .locals 7

    .line 350
    iget-object v0, p0, Lcom/itextpdf/io/util/IntHashtable;->table:[Lcom/itextpdf/io/util/IntHashtable$Entry;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    .line 351
    array-length v2, v0

    rem-int/2addr v1, v2

    .line 354
    aget-object v2, v0, v1

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 355
    iget v5, v2, Lcom/itextpdf/io/util/IntHashtable$Entry;->key:I

    if-ne v5, p1, :cond_1

    if-eqz v3, :cond_0

    .line 357
    iget-object p1, v2, Lcom/itextpdf/io/util/IntHashtable$Entry;->next:Lcom/itextpdf/io/util/IntHashtable$Entry;

    iput-object p1, v3, Lcom/itextpdf/io/util/IntHashtable$Entry;->next:Lcom/itextpdf/io/util/IntHashtable$Entry;

    goto :goto_1

    .line 359
    :cond_0
    iget-object p1, v2, Lcom/itextpdf/io/util/IntHashtable$Entry;->next:Lcom/itextpdf/io/util/IntHashtable$Entry;

    aput-object p1, v0, v1

    .line 361
    :goto_1
    iget p1, p0, Lcom/itextpdf/io/util/IntHashtable;->count:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/itextpdf/io/util/IntHashtable;->count:I

    .line 362
    iget p1, v2, Lcom/itextpdf/io/util/IntHashtable$Entry;->value:I

    .line 363
    iput v4, v2, Lcom/itextpdf/io/util/IntHashtable$Entry;->value:I

    return p1

    .line 354
    :cond_1
    iget-object v3, v2, Lcom/itextpdf/io/util/IntHashtable$Entry;->next:Lcom/itextpdf/io/util/IntHashtable$Entry;

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_0

    :cond_2
    return v4
.end method

.method public size()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/itextpdf/io/util/IntHashtable;->count:I

    return v0
.end method

.method public toOrderedKeys()[I
    .locals 1

    .line 426
    invoke-virtual {p0}, Lcom/itextpdf/io/util/IntHashtable;->getKeys()[I

    move-result-object v0

    .line 427
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    return-object v0
.end method
