.class public Lcom/itextpdf/barcodes/dmcode/Placement;
.super Ljava/lang/Object;
.source "Placement.java"


# static fields
.field private static final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[S>;"
        }
    .end annotation
.end field


# instance fields
.field private final array:[S

.field private final ncol:I

.field private final nrow:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/barcodes/dmcode/Placement;->cache:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->nrow:I

    .line 58
    iput p2, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    mul-int/2addr p1, p2

    .line 59
    new-array p1, p1, [S

    iput-object p1, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->array:[S

    return-void
.end method

.method private corner1(I)V
    .locals 6

    .line 108
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->nrow:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p1, v2}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 109
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->nrow:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0, v1, p1, v1}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 110
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->nrow:I

    sub-int/2addr v0, v1

    const/4 v3, 0x2

    invoke-direct {p0, v0, v3, p1, v3}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 111
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    sub-int/2addr v0, v3

    const/4 v4, 0x3

    invoke-direct {p0, v2, v0, p1, v4}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 112
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    sub-int/2addr v0, v1

    const/4 v5, 0x4

    invoke-direct {p0, v2, v0, p1, v5}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 113
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    sub-int/2addr v0, v1

    const/4 v2, 0x5

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 114
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    sub-int/2addr v0, v1

    const/4 v2, 0x6

    invoke-direct {p0, v3, v0, p1, v2}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 115
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    sub-int/2addr v0, v1

    const/4 v1, 0x7

    invoke-direct {p0, v4, v0, p1, v1}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    return-void
.end method

.method private corner2(I)V
    .locals 6

    .line 119
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->nrow:I

    const/4 v1, 0x3

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p1, v2}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 120
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->nrow:I

    const/4 v3, 0x2

    sub-int/2addr v0, v3

    const/4 v4, 0x1

    invoke-direct {p0, v0, v2, p1, v4}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 121
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->nrow:I

    sub-int/2addr v0, v4

    invoke-direct {p0, v0, v2, p1, v3}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 122
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    const/4 v5, 0x4

    sub-int/2addr v0, v5

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 123
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v2, v0, p1, v5}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 124
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    sub-int/2addr v0, v3

    const/4 v1, 0x5

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 125
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    sub-int/2addr v0, v4

    const/4 v1, 0x6

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 126
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    sub-int/2addr v0, v4

    const/4 v1, 0x7

    invoke-direct {p0, v4, v0, p1, v1}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    return-void
.end method

.method private corner3(I)V
    .locals 6

    .line 130
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->nrow:I

    const/4 v1, 0x3

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p1, v2}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 131
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->nrow:I

    const/4 v3, 0x2

    sub-int/2addr v0, v3

    const/4 v4, 0x1

    invoke-direct {p0, v0, v2, p1, v4}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 132
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->nrow:I

    sub-int/2addr v0, v4

    invoke-direct {p0, v0, v2, p1, v3}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 133
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    sub-int/2addr v0, v3

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 134
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    sub-int/2addr v0, v4

    const/4 v5, 0x4

    invoke-direct {p0, v2, v0, p1, v5}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 135
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    sub-int/2addr v0, v4

    const/4 v2, 0x5

    invoke-direct {p0, v4, v0, p1, v2}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 136
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    sub-int/2addr v0, v4

    const/4 v2, 0x6

    invoke-direct {p0, v3, v0, p1, v2}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 137
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    sub-int/2addr v0, v4

    const/4 v2, 0x7

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    return-void
.end method

.method private corner4(I)V
    .locals 6

    .line 141
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->nrow:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p1, v2}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 142
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->nrow:I

    sub-int/2addr v0, v1

    iget v3, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    sub-int/2addr v3, v1

    invoke-direct {p0, v0, v3, p1, v1}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 143
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    const/4 v3, 0x3

    sub-int/2addr v0, v3

    const/4 v4, 0x2

    invoke-direct {p0, v2, v0, p1, v4}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 144
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    sub-int/2addr v0, v4

    invoke-direct {p0, v2, v0, p1, v3}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 145
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    sub-int/2addr v0, v1

    const/4 v5, 0x4

    invoke-direct {p0, v2, v0, p1, v5}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 146
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    sub-int/2addr v0, v3

    const/4 v2, 0x5

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 147
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    sub-int/2addr v0, v4

    const/4 v2, 0x6

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    .line 148
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    sub-int/2addr v0, v1

    const/4 v2, 0x7

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    return-void
.end method

.method public static doPlacement(II)[S
    .locals 3

    mul-int/lit16 v0, p0, 0x3e8

    add-int/2addr v0, p1

    .line 72
    sget-object v1, Lcom/itextpdf/barcodes/dmcode/Placement;->cache:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [S

    if-eqz v2, :cond_0

    return-object v2

    .line 75
    :cond_0
    new-instance v2, Lcom/itextpdf/barcodes/dmcode/Placement;

    invoke-direct {v2, p0, p1}, Lcom/itextpdf/barcodes/dmcode/Placement;-><init>(II)V

    .line 76
    invoke-direct {v2}, Lcom/itextpdf/barcodes/dmcode/Placement;->ecc200()V

    .line 77
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget-object p1, v2, Lcom/itextpdf/barcodes/dmcode/Placement;->array:[S

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object p0, v2, Lcom/itextpdf/barcodes/dmcode/Placement;->array:[S

    return-object p0
.end method

.method private ecc200()V
    .locals 9

    .line 155
    iget-object v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->array:[S

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([SS)V

    const/4 v0, 0x1

    const/4 v2, 0x4

    move v4, v0

    move v3, v2

    .line 162
    :cond_0
    iget v5, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->nrow:I

    if-ne v3, v5, :cond_1

    if-nez v1, :cond_1

    add-int/lit8 v5, v4, 0x1

    invoke-direct {p0, v4}, Lcom/itextpdf/barcodes/dmcode/Placement;->corner1(I)V

    move v4, v5

    .line 163
    :cond_1
    iget v5, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->nrow:I

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    if-ne v3, v5, :cond_2

    if-nez v1, :cond_2

    iget v5, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    rem-int/2addr v5, v2

    if-eqz v5, :cond_2

    add-int/lit8 v5, v4, 0x1

    invoke-direct {p0, v4}, Lcom/itextpdf/barcodes/dmcode/Placement;->corner2(I)V

    move v4, v5

    .line 164
    :cond_2
    iget v5, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->nrow:I

    sub-int/2addr v5, v6

    if-ne v3, v5, :cond_3

    if-nez v1, :cond_3

    iget v5, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    rem-int/lit8 v5, v5, 0x8

    if-ne v5, v2, :cond_3

    add-int/lit8 v5, v4, 0x1

    invoke-direct {p0, v4}, Lcom/itextpdf/barcodes/dmcode/Placement;->corner3(I)V

    move v4, v5

    .line 165
    :cond_3
    iget v5, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->nrow:I

    add-int/2addr v5, v2

    if-ne v3, v5, :cond_4

    if-ne v1, v6, :cond_4

    iget v5, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    rem-int/lit8 v5, v5, 0x8

    if-nez v5, :cond_4

    add-int/lit8 v5, v4, 0x1

    invoke-direct {p0, v4}, Lcom/itextpdf/barcodes/dmcode/Placement;->corner4(I)V

    move v4, v5

    .line 168
    :cond_4
    :goto_0
    iget v5, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->nrow:I

    if-ge v3, v5, :cond_5

    if-ltz v1, :cond_5

    iget-object v5, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->array:[S

    iget v7, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    mul-int/2addr v7, v3

    add-int/2addr v7, v1

    aget-short v5, v5, v7

    if-nez v5, :cond_5

    add-int/lit8 v5, v4, 0x1

    .line 169
    invoke-direct {p0, v3, v1, v4}, Lcom/itextpdf/barcodes/dmcode/Placement;->utah(III)V

    move v4, v5

    :cond_5
    add-int/lit8 v5, v3, -0x2

    add-int/lit8 v7, v1, 0x2

    if-ltz v5, :cond_7

    .line 172
    iget v8, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    if-lt v7, v8, :cond_6

    goto :goto_1

    :cond_6
    move v3, v5

    move v1, v7

    goto :goto_0

    :cond_7
    :goto_1
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v1, v1, 0x5

    :goto_2
    if-ltz v3, :cond_8

    .line 178
    iget v5, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    if-ge v1, v5, :cond_8

    iget-object v7, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->array:[S

    mul-int/2addr v5, v3

    add-int/2addr v5, v1

    aget-short v5, v7, v5

    if-nez v5, :cond_8

    add-int/lit8 v5, v4, 0x1

    .line 179
    invoke-direct {p0, v3, v1, v4}, Lcom/itextpdf/barcodes/dmcode/Placement;->utah(III)V

    move v4, v5

    :cond_8
    add-int/lit8 v5, v3, 0x2

    add-int/lit8 v7, v1, -0x2

    .line 182
    iget v8, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->nrow:I

    if-ge v5, v8, :cond_a

    if-gez v7, :cond_9

    goto :goto_3

    :cond_9
    move v3, v5

    move v1, v7

    goto :goto_2

    :cond_a
    :goto_3
    add-int/lit8 v3, v3, 0x5

    add-int/lit8 v1, v1, -0x1

    if-lt v3, v8, :cond_0

    .line 186
    iget v5, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    if-lt v1, v5, :cond_0

    .line 188
    iget-object v1, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->array:[S

    mul-int v2, v8, v5

    sub-int/2addr v2, v0

    aget-short v2, v1, v2

    if-nez v2, :cond_b

    mul-int v2, v8, v5

    sub-int/2addr v2, v0

    mul-int/2addr v8, v5

    sub-int/2addr v8, v5

    sub-int/2addr v8, v6

    .line 189
    aput-short v0, v1, v8

    aput-short v0, v1, v2

    :cond_b
    return-void
.end method

.method private module(IIII)V
    .locals 2

    if-gez p1, :cond_0

    .line 84
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->nrow:I

    add-int/2addr p1, v0

    add-int/lit8 v0, v0, 0x4

    .line 85
    rem-int/lit8 v0, v0, 0x8

    rsub-int/lit8 v0, v0, 0x4

    add-int/2addr p2, v0

    :cond_0
    if-gez p2, :cond_1

    .line 88
    iget v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    add-int/2addr p2, v0

    add-int/lit8 v0, v0, 0x4

    .line 89
    rem-int/lit8 v0, v0, 0x8

    rsub-int/lit8 v0, v0, 0x4

    add-int/2addr p1, v0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->array:[S

    iget v1, p0, Lcom/itextpdf/barcodes/dmcode/Placement;->ncol:I

    mul-int/2addr p1, v1

    add-int/2addr p1, p2

    mul-int/lit8 p3, p3, 0x8

    add-int/2addr p3, p4

    int-to-short p2, p3

    aput-short p2, v0, p1

    return-void
.end method

.method private utah(III)V
    .locals 4

    add-int/lit8 v0, p1, -0x2

    add-int/lit8 v1, p2, -0x2

    const/4 v2, 0x0

    .line 96
    invoke-direct {p0, v0, v1, p3, v2}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x1

    .line 97
    invoke-direct {p0, v0, v2, p3, v3}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    add-int/lit8 v0, p1, -0x1

    const/4 v3, 0x2

    .line 98
    invoke-direct {p0, v0, v1, p3, v3}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    const/4 v3, 0x3

    .line 99
    invoke-direct {p0, v0, v2, p3, v3}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    const/4 v3, 0x4

    .line 100
    invoke-direct {p0, v0, p2, p3, v3}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    const/4 v0, 0x5

    .line 101
    invoke-direct {p0, p1, v1, p3, v0}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    const/4 v0, 0x6

    .line 102
    invoke-direct {p0, p1, v2, p3, v0}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    const/4 v0, 0x7

    .line 103
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/itextpdf/barcodes/dmcode/Placement;->module(IIII)V

    return-void
.end method
