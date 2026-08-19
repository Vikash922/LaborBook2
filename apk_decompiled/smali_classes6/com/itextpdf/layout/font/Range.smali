.class public Lcom/itextpdf/layout/font/Range;
.super Ljava/lang/Object;
.source "Range.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/layout/font/Range$FullRange;,
        Lcom/itextpdf/layout/font/Range$SubRange;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private ranges:[Lcom/itextpdf/layout/font/Range$SubRange;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/layout/font/Range$1;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/itextpdf/layout/font/Range;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/font/Range$SubRange;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-static {p1}, Lcom/itextpdf/layout/font/Range;->normalizeSubRanges(Ljava/util/List;)[Lcom/itextpdf/layout/font/Range$SubRange;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/layout/font/Range;->ranges:[Lcom/itextpdf/layout/font/Range$SubRange;

    return-void

    .line 69
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Ranges shall not be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static normalizeSubRanges(Ljava/util/List;)[Lcom/itextpdf/layout/font/Range$SubRange;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/layout/font/Range$SubRange;",
            ">;)[",
            "Lcom/itextpdf/layout/font/Range$SubRange;"
        }
    .end annotation

    .line 123
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 127
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/layout/font/Range$SubRange;

    .line 128
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    .line 129
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 130
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/layout/font/Range$SubRange;

    .line 132
    iget v5, v4, Lcom/itextpdf/layout/font/Range$SubRange;->low:I

    iget v6, v2, Lcom/itextpdf/layout/font/Range$SubRange;->high:I

    if-gt v5, v6, :cond_0

    .line 134
    iget v5, v4, Lcom/itextpdf/layout/font/Range$SubRange;->high:I

    iget v6, v2, Lcom/itextpdf/layout/font/Range$SubRange;->high:I

    if-le v5, v6, :cond_1

    .line 135
    iget v4, v4, Lcom/itextpdf/layout/font/Range$SubRange;->high:I

    iput v4, v2, Lcom/itextpdf/layout/font/Range$SubRange;->high:I

    goto :goto_1

    .line 139
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v4

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 143
    :cond_2
    new-array p0, v1, [Lcom/itextpdf/layout/font/Range$SubRange;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/itextpdf/layout/font/Range$SubRange;

    return-object p0
.end method


# virtual methods
.method public contains(I)Z
    .locals 6

    .line 82
    iget-object v0, p0, Lcom/itextpdf/layout/font/Range;->ranges:[Lcom/itextpdf/layout/font/Range$SubRange;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-gt v3, v0, :cond_2

    add-int v4, v3, v0

    ushr-int/2addr v4, v1

    .line 86
    iget-object v5, p0, Lcom/itextpdf/layout/font/Range;->ranges:[Lcom/itextpdf/layout/font/Range$SubRange;

    aget-object v5, v5, v4

    invoke-virtual {v5, p1}, Lcom/itextpdf/layout/font/Range$SubRange;->compareTo(I)I

    move-result v5

    if-gez v5, :cond_0

    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/layout/font/Range;->ranges:[Lcom/itextpdf/layout/font/Range$SubRange;

    aget-object v0, v0, v4

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/font/Range$SubRange;->compareTo(I)I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 v4, v4, -0x1

    move v0, v4

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 100
    :cond_1
    check-cast p1, Lcom/itextpdf/layout/font/Range;

    .line 101
    iget-object v0, p0, Lcom/itextpdf/layout/font/Range;->ranges:[Lcom/itextpdf/layout/font/Range$SubRange;

    iget-object p1, p1, Lcom/itextpdf/layout/font/Range;->ranges:[Lcom/itextpdf/layout/font/Range$SubRange;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/itextpdf/layout/font/Range;->ranges:[Lcom/itextpdf/layout/font/Range$SubRange;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/itextpdf/layout/font/Range;->ranges:[Lcom/itextpdf/layout/font/Range$SubRange;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
