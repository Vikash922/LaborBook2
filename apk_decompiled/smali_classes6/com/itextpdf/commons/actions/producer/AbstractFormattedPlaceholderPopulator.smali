.class abstract Lcom/itextpdf/commons/actions/producer/AbstractFormattedPlaceholderPopulator;
.super Ljava/lang/Object;
.source "AbstractFormattedPlaceholderPopulator.java"

# interfaces
.implements Lcom/itextpdf/commons/actions/producer/IPlaceholderPopulator;


# static fields
.field protected static final APOSTROPHE:C = '\''

.field private static final A_LOWERCASE:C = 'a'

.field private static final A_UPPERCASE:C = 'A'

.field private static final ESCAPE_CHARACTER:C = '\\'

.field private static final Z_LOWERCASE:C = 'z'

.field private static final Z_UPPERCASE:C = 'Z'


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachQuotedString(ILjava/lang/StringBuilder;[C)I
    .locals 5

    const/4 v0, 0x1

    add-int/2addr p1, v0

    const/4 v1, 0x0

    move v2, v1

    .line 65
    :goto_0
    array-length v3, p3

    if-ge p1, v3, :cond_3

    aget-char v3, p3, p1

    const/16 v4, 0x27

    if-ne v3, v4, :cond_0

    if-eqz v2, :cond_3

    :cond_0
    const/16 v4, 0x5c

    if-ne v3, v4, :cond_1

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-nez v2, :cond_2

    .line 69
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 75
    :cond_3
    array-length p2, p3

    if-eq p1, p2, :cond_4

    return p1

    .line 76
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Pattern contains open quotation!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final isLetter(C)Z
    .locals 1

    const/16 v0, 0x61

    if-gt v0, p1, :cond_0

    const/16 v0, 0x7a

    if-ge v0, p1, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p1, :cond_2

    const/16 v0, 0x5a

    if-lt v0, p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
