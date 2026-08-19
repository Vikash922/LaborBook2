.class public Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;
.super Ljava/lang/Object;
.source "Attributes.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$Dataset;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final EmptyString:Ljava/lang/String; = ""

.field private static final GrowthFactor:I = 0x2

.field private static final InitialCapacity:I = 0x3

.field static final InternalPrefix:C = '/'

.field static final NotFound:I = -0x1

.field protected static final dataPrefix:Ljava/lang/String; = "data-"


# instance fields
.field keys:[Ljava/lang/String;

.field private size:I

.field vals:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->size:I

    const/4 v0, 0x3

    .line 68
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    .line 69
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->size:I

    return p0
.end method

.method static synthetic access$100(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;Ljava/lang/String;)Z
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->isInternalKey(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 53
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->dataKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private checkCapacity(I)V
    .locals 3

    .line 73
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->size:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->isTrue(Z)V

    .line 74
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    array-length v1, v0

    if-lt v1, p1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    .line 77
    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->size:I

    mul-int/lit8 v2, v1, 0x2

    :cond_2
    if-le p1, v2, :cond_3

    goto :goto_1

    :cond_3
    move p1, v2

    .line 81
    :goto_1
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    return-void
.end method

.method static checkNotNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    .line 105
    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private static dataKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "data-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private indexOfKeyIgnoreCase(Ljava/lang/String;)I
    .locals 2

    .line 95
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 96
    :goto_0
    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->size:I

    if-ge v0, v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method static internalKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isInternalKey(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 532
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x2f

    if-ne p1, v1, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method

.method private remove(I)V
    .locals 4

    .line 197
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->size:I

    const/4 v1, 0x1

    if-lt p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->isFalse(Z)V

    .line 198
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->size:I

    sub-int/2addr v0, p1

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    .line 200
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    invoke-static {v2, v3, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    :cond_1
    iget p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->size:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->size:I

    .line 204
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 205
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    aput-object v1, v0, p1

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;
    .locals 2

    .line 134
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->checkCapacity(I)V

    .line 135
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->size:I

    aput-object p1, v0, v1

    .line 136
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 137
    iput v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->size:I

    return-object p0
.end method

.method public addAll(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V
    .locals 2

    .line 291
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 293
    :cond_0
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->size:I

    iget v1, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->size:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->checkCapacity(I)V

    .line 295
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;

    .line 296
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->put(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public asList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;",
            ">;"
        }
    .end annotation

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->size:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 332
    :goto_0
    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->size:I

    if-ge v1, v2, :cond_1

    .line 333
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->isInternalKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 335
    :cond_0
    new-instance v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;

    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-direct {v2, v3, v4, p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V

    .line 336
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 338
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .line 422
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->size:I

    iput v1, v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->size:I

    .line 427
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->size:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    .line 428
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->size:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    .line 424
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public dataset()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 347
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$Dataset;

    invoke-direct {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$Dataset;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V

    return-object v0
.end method

.method public deduplicate(Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;)I
    .locals 6

    .line 447
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 449
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;->preserveAttributeCase()Z

    move-result p1

    move v0, v1

    .line 451
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    add-int/lit8 v2, v1, 0x1

    move v3, v2

    .line 452
    :goto_1
    iget-object v4, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_5

    .line 453
    aget-object v5, v4, v3

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    .line 455
    aget-object v4, v4, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    if-nez p1, :cond_4

    iget-object v4, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v5, v4, v1

    aget-object v4, v4, v3

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 457
    invoke-direct {p0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->remove(I)V

    add-int/lit8 v3, v3, -0x1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    move v1, v2

    goto :goto_0

    :cond_6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 397
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 399
    :cond_1
    check-cast p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    .line 401
    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->size:I

    iget v2, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->size:I

    if-eq v1, v2, :cond_2

    return v0

    .line 402
    :cond_2
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    iget-object v2, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 403
    :cond_3
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    iget-object p1, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 115
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->indexOfKey(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 116
    const-string p1, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->checkNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getIgnoreCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 125
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->indexOfKeyIgnoreCase(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 126
    const-string p1, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->checkNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public hasDeclaredValueForKey(Ljava/lang/String;)Z
    .locals 1

    .line 252
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->indexOfKey(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasDeclaredValueForKeyIgnoreCase(Ljava/lang/String;)Z
    .locals 1

    .line 262
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->indexOfKeyIgnoreCase(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasKey(Ljava/lang/String;)Z
    .locals 1

    .line 234
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->indexOfKey(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasKeyIgnoreCase(Ljava/lang/String;)Z
    .locals 1

    .line 243
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->indexOfKeyIgnoreCase(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 412
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->size:I

    mul-int/lit8 v0, v0, 0x1f

    .line 413
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 414
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public html()Ljava/lang/String;
    .locals 3

    .line 355
    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 357
    :try_start_0
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->outputSettings()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->html(Ljava/lang/Appendable;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 359
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/SerializationException;

    invoke-direct {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method final html(Ljava/lang/Appendable;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 365
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 367
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->isInternalKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 371
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 372
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    aget-object v3, v3, v1

    const/16 v4, 0x20

    .line 373
    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 376
    invoke-static {v2, v3, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->shouldCollapseAttribute(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 377
    const-string v2, "=\""

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    if-nez v3, :cond_1

    .line 378
    const-string v3, ""

    :cond_1
    move-object v5, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x1

    move-object v4, p1

    move-object v6, p2

    invoke-static/range {v4 .. v9}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->escape(Ljava/lang/Appendable;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;ZZZ)V

    const/16 v2, 0x22

    .line 379
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method indexOfKey(Ljava/lang/String;)I
    .locals 2

    .line 86
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 87
    :goto_0
    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->size:I

    if-ge v0, v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 283
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;",
            ">;"
        }
    .end annotation

    .line 302
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$1;

    invoke-direct {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$1;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V

    return-object v0
.end method

.method public normalize()V
    .locals 3

    const/4 v0, 0x0

    .line 436
    :goto_0
    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->size:I

    if-ge v0, v1, :cond_0

    .line 437
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public put(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;
    .locals 2

    .line 188
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 189
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    .line 190
    iput-object p0, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->parent:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;
    .locals 2

    .line 148
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 149
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->indexOfKey(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 151
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    aput-object p2, p1, v0

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    :goto_0
    return-object p0
.end method

.method public put(Ljava/lang/String;Z)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 176
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->putIgnoreCase(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->remove(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method putIgnoreCase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 158
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->indexOfKeyIgnoreCase(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    aput-object p2, v1, v0

    .line 161
    iget-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object p2, p2, v0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 162
    iget-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aput-object p1, p2, v0

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    :cond_1
    :goto_0
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .line 213
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->indexOfKey(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 215
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->remove(I)V

    :cond_0
    return-void
.end method

.method public removeIgnoreCase(Ljava/lang/String;)V
    .locals 1

    .line 223
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->indexOfKeyIgnoreCase(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 225
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->remove(I)V

    :cond_0
    return-void
.end method

.method public size()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 272
    :goto_0
    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->size:I

    if-ge v0, v2, :cond_1

    .line 273
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {p0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->isInternalKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 386
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->html()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
