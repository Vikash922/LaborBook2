.class public Lcom/itextpdf/kernel/numbering/AlphabetNumbering;
.super Ljava/lang/Object;
.source "AlphabetNumbering.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toAlphabetNumber(I[C)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x1

    if-lt p0, v0, :cond_2

    .line 68
    array-length v1, p1

    add-int/lit8 p0, p0, -0x1

    int-to-long v1, v1

    const-wide/16 v3, 0x0

    move-wide v5, v1

    :goto_0
    int-to-long v7, p0

    add-long v9, v5, v3

    cmp-long v11, v7, v9

    if-ltz v11, :cond_0

    add-int/lit8 v0, v0, 0x1

    mul-long/2addr v5, v1

    move-wide v3, v9

    goto :goto_0

    :cond_0
    sub-long/2addr v7, v3

    .line 82
    new-array p0, v0, [C

    :goto_1
    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 84
    rem-long v3, v7, v1

    long-to-int v3, v3

    aget-char v3, p1, v3

    aput-char v3, p0, v0

    .line 85
    div-long/2addr v7, v1

    goto :goto_1

    .line 88
    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1

    .line 65
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The parameter must be a positive integer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
