.class public final Lcom/razorpay/nfc/NfcHelper;
.super Ljava/lang/Object;
.source "NfcHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/razorpay/nfc/NfcHelper$Tlv;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001-B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0018\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0010\u0010\u000c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00042\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012H\u0002J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0015\u001a\u00020\u0004J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0015\u001a\u00020\u0004H\u0002J$\u0010\u0017\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0\u00180\u00122\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0004H\u0002J \u0010\u001a\u001a\u0004\u0018\u00010\u00042\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0010\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0004H\u0002J\u0010\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0004H\u0002J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u001f\u001a\u00020\u0004J\u0016\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u001f\u001a\u00020\u0004H\u0002J&\u0010!\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u00182\u0006\u0010\"\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\u000eH\u0002J,\u0010$\u001a\u0016\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u0007\u0018\u00010%2\u0006\u0010\"\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\u000eH\u0002J\u0010\u0010&\u001a\u00020\u001e2\u0006\u0010\'\u001a\u00020\u000bH\u0002J\u0012\u0010(\u001a\u0004\u0018\u00010\u001e2\u0008\u0010\n\u001a\u0004\u0018\u00010)J\u0010\u0010*\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u0004H\u0002J\n\u0010+\u001a\u00020\u0004*\u00020\u000bJ\n\u0010,\u001a\u00020\u000b*\u00020\u0004\u00a8\u0006."
    }
    d2 = {
        "Lcom/razorpay/nfc/NfcHelper;",
        "",
        "()V",
        "buildPdolData",
        "",
        "pdolTemplate",
        "amexAlt",
        "",
        "containsTag",
        "tlv",
        "tag",
        "",
        "currentDateYYMMDD",
        "expectedLen",
        "",
        "currentTimeHHMMSS",
        "extractAfl",
        "tlvs",
        "",
        "Lcom/razorpay/nfc/NfcHelper$Tlv;",
        "extractAidFromPpse",
        "response",
        "extractPdolFromSelectResponse",
        "extractRecordsFromAfl",
        "Lkotlin/Pair;",
        "afl",
        "findFirstTagValue",
        "is6985",
        "isSuccess",
        "parseTlv",
        "Lcom/razorpay/nfc/CardData;",
        "data",
        "parseTlvList",
        "readLength",
        "bytes",
        "offset",
        "readTag",
        "Lkotlin/Triple;",
        "splitTrack2",
        "track2",
        "startCardScanner",
        "Landroid/nfc/Tag;",
        "stripStatusWord",
        "hexToByteArray",
        "toHexString",
        "Tlv",
        "core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final I__1l([B)Z
    .locals 2

    .line 228
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 229
    array-length v0, p1

    sub-int/2addr v0, v1

    aget-byte v0, p1, v0

    const/16 v1, 0x69

    if-ne v0, v1, :cond_0

    .line 230
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-byte p1, p1, v0

    const/16 v0, -0x7b

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final _1__([B)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 318
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    goto :goto_2

    .line 319
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    .line 321
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 322
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x3

    add-int/lit8 v3, v1, 0x1

    .line 323
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v1, 0x2

    .line 324
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    if-lez v2, :cond_1

    if-lt v4, v3, :cond_1

    const/16 v5, 0x10

    if-gt v4, v5, :cond_1

    if-gt v3, v4, :cond_1

    .line 327
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v3, v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_2
    return-object v0

    .line 318
    :cond_3
    :goto_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final __l1_([BI)Lkotlin/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 199
    array-length v0, p1

    const/4 v1, 0x0

    if-lt p2, v0, :cond_0

    return-object v1

    .line 200
    :cond_0
    aget-byte v0, p1, p2

    and-int/lit16 v2, v0, 0xff

    and-int/lit16 v3, v0, 0x80

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 202
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1

    :cond_1
    and-int/lit8 v0, v0, 0x7f

    add-int v2, p2, v0

    .line 206
    array-length v3, p1

    if-lt v2, v3, :cond_2

    return-object v1

    :cond_2
    const/4 v1, 0x0

    if-gt v4, v0, :cond_3

    move v2, v4

    :goto_0
    shl-int/lit8 v1, v1, 0x8

    add-int v3, p2, v2

    .line 210
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    if-eq v2, v0, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 212
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    add-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method private final __l1_(I)[B
    .locals 5

    const/4 v0, 0x0

    .line 308
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyMMdd"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 309
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdf.format(Date())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->chunked(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 380
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 381
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 382
    check-cast v3, Ljava/lang/String;

    const/16 v4, 0x10

    .line 309
    invoke-static {v4}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 383
    :cond_0
    check-cast v2, Ljava/util/List;

    .line 380
    check-cast v2, Ljava/util/Collection;

    .line 309
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toByteArray(Ljava/util/Collection;)[B

    move-result-object v1

    .line 310
    array-length v2, v1

    if-lt v2, p1, :cond_1

    invoke-static {v1, p1}, Lkotlin/collections/ArraysKt;->take([BI)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toByteArray(Ljava/util/Collection;)[B

    move-result-object p1

    goto :goto_3

    .line 311
    :cond_1
    array-length v2, v1

    sub-int v2, p1, v2

    new-array v3, v2, [B

    move v4, v0

    :goto_1
    if-ge v4, v2, :cond_2

    aput-byte v0, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v1, v3}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 313
    :catch_0
    new-array v1, p1, [B

    move v2, v0

    :goto_2
    if-ge v2, p1, :cond_3

    aput-byte v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move-object p1, v1

    :goto_3
    return-object p1
.end method

.method private final __l1_([B)[B
    .locals 1

    .line 172
    invoke-direct {p0, p1}, Lcom/razorpay/nfc/NfcHelper;->l$1_I$l$([B)Ljava/util/List;

    move-result-object p1

    .line 173
    const-string v0, "9F38"

    invoke-direct {p0, p1, v0}, Lcom/razorpay/nfc/NfcHelper;->l$1_I$l$(Ljava/util/List;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method private final _l_1l__([B)Z
    .locals 2

    .line 222
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 223
    array-length v0, p1

    sub-int/2addr v0, v1

    aget-byte v0, p1, v0

    const/16 v1, -0x70

    if-ne v0, v1, :cond_0

    .line 224
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-byte p1, p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final _llI([B)[B
    .locals 3

    .line 216
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    array-length v0, p1

    sub-int/2addr v0, v1

    aget-byte v0, p1, v0

    const/16 v2, -0x70

    if-ne v0, v2, :cond_0

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p1, v0

    if-nez v0, :cond_0

    .line 217
    array-length v0, p1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private final l$1_I$l$(Ljava/lang/String;)Lcom/razorpay/nfc/CardData;
    .locals 7

    .line 128
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 p1, 0x1

    new-array v1, p1, [Ljava/lang/String;

    const-string v2, "D"

    const/4 v6, 0x0

    aput-object v2, v1, v6

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 129
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-array v2, p1, [C

    const/16 v3, 0x46

    aput-char v3, v2, v6

    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, p1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    .line 131
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 134
    :goto_0
    new-instance v0, Lcom/razorpay/nfc/CardData;

    invoke-direct {v0, v1, p1}, Lcom/razorpay/nfc/CardData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final l$1_I$l$([B)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/razorpay/nfc/NfcHelper$Tlv;",
            ">;"
        }
    .end annotation

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 143
    invoke-direct {p0, p1}, Lcom/razorpay/nfc/NfcHelper;->_llI([B)[B

    move-result-object p1

    .line 167
    invoke-static {p0, v0, p1}, Lcom/razorpay/nfc/NfcHelper;->l$1_I$l$(Lcom/razorpay/nfc/NfcHelper;Ljava/util/List;[B)V

    return-object v0
.end method

.method private final l$1_I$l$([BI)Lkotlin/Triple;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Lkotlin/Triple<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 177
    array-length v0, p1

    if-lt p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 178
    :cond_0
    aget-byte v0, p1, p2

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    const/16 v3, 0x20

    const/4 v4, 0x1

    if-ne v1, v3, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v2

    .line 180
    :goto_0
    new-array v3, v4, [B

    aput-byte v0, v3, v2

    const/16 v2, 0x1f

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    add-int/2addr p2, v4

    .line 186
    :cond_2
    array-length v0, p1

    if-ge p2, v0, :cond_3

    .line 187
    aget-byte v0, p1, p2

    invoke-static {v3, v0}, Lkotlin/collections/ArraysKt;->plus([BB)[B

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    .line 189
    aget-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_2

    .line 195
    :cond_3
    new-instance p1, Lkotlin/Triple;

    invoke-virtual {p0, v3}, Lcom/razorpay/nfc/NfcHelper;->toHexString([B)Ljava/lang/String;

    move-result-object p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, p2, v0, v1}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private static final l$1_I$l$(Lcom/razorpay/nfc/NfcHelper;Ljava/util/List;[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/razorpay/nfc/NfcHelper;",
            "Ljava/util/List<",
            "Lcom/razorpay/nfc/NfcHelper$Tlv;",
            ">;[B)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 147
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_4

    .line 148
    invoke-direct {p0, p2, v0}, Lcom/razorpay/nfc/NfcHelper;->l$1_I$l$([BI)Lkotlin/Triple;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 149
    :cond_0
    invoke-virtual {v1}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v1}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    add-int/2addr v0, v3

    .line 150
    invoke-direct {p0, p2, v0}, Lcom/razorpay/nfc/NfcHelper;->__l1_([BI)Lkotlin/Pair;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 151
    :cond_1
    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    add-int/2addr v0, v3

    add-int v3, v0, v4

    if-ltz v4, :cond_4

    .line 154
    array-length v5, p2

    if-le v3, v5, :cond_2

    goto :goto_1

    .line 156
    :cond_2
    invoke-static {p2, v0, v3}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v0

    .line 157
    new-instance v5, Lcom/razorpay/nfc/NfcHelper$Tlv;

    invoke-direct {v5, v2, v4, v0, v1}, Lcom/razorpay/nfc/NfcHelper$Tlv;-><init>(Ljava/lang/String;I[BZ)V

    .line 158
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_3

    .line 161
    invoke-static {p0, p1, v0}, Lcom/razorpay/nfc/NfcHelper;->l$1_I$l$(Lcom/razorpay/nfc/NfcHelper;Ljava/util/List;[B)V

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method private final l$1_I$l$([BLjava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 21
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 22
    invoke-direct {p0, p1, v1}, Lcom/razorpay/nfc/NfcHelper;->l$1_I$l$([BI)Lkotlin/Triple;

    move-result-object v2

    if-nez v2, :cond_0

    return v0

    .line 23
    :cond_0
    invoke-virtual {v2}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/4 v4, 0x1

    .line 24
    invoke-static {v3, p2, v4}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    return v4

    :cond_1
    add-int v3, v1, v2

    .line 25
    invoke-direct {p0, p1, v3}, Lcom/razorpay/nfc/NfcHelper;->__l1_([BI)Lkotlin/Pair;

    move-result-object v3

    if-nez v3, :cond_2

    return v0

    .line 26
    :cond_2
    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    goto :goto_0

    :cond_3
    return v0
.end method

.method private final l$1_I$l$(I)[B
    .locals 5

    const/4 v0, 0x0

    .line 297
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HHmmss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 298
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdf.format(Date())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->chunked(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 376
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 377
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 378
    check-cast v3, Ljava/lang/String;

    const/16 v4, 0x10

    .line 298
    invoke-static {v4}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 379
    :cond_0
    check-cast v2, Ljava/util/List;

    .line 376
    check-cast v2, Ljava/util/Collection;

    .line 298
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toByteArray(Ljava/util/Collection;)[B

    move-result-object v1

    .line 299
    array-length v2, v1

    if-lt v2, p1, :cond_1

    invoke-static {v1, p1}, Lkotlin/collections/ArraysKt;->take([BI)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toByteArray(Ljava/util/Collection;)[B

    move-result-object p1

    goto :goto_3

    .line 300
    :cond_1
    array-length v2, v1

    sub-int v2, p1, v2

    new-array v3, v2, [B

    move v4, v0

    :goto_1
    if-ge v4, v2, :cond_2

    aput-byte v0, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v1, v3}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 302
    :catch_0
    new-array v1, p1, [B

    move v2, v0

    :goto_2
    if-ge v2, p1, :cond_3

    aput-byte v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move-object p1, v1

    :goto_3
    return-object p1
.end method

.method private final l$1_I$l$(Ljava/util/List;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/razorpay/nfc/NfcHelper$Tlv;",
            ">;)[B"
        }
    .end annotation

    .line 337
    const-string v0, "94"

    invoke-direct {p0, p1, v0}, Lcom/razorpay/nfc/NfcHelper;->l$1_I$l$(Ljava/util/List;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 341
    :cond_0
    const-string v0, "80"

    invoke-direct {p0, p1, v0}, Lcom/razorpay/nfc/NfcHelper;->l$1_I$l$(Ljava/util/List;Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_1

    .line 342
    array-length v0, p1

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 343
    array-length v0, p1

    invoke-static {p1, v1, v0}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private final l$1_I$l$(Ljava/util/List;Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/razorpay/nfc/NfcHelper$Tlv;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .line 138
    check-cast p1, Ljava/lang/Iterable;

    .line 370
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/razorpay/nfc/NfcHelper$Tlv;

    .line 138
    invoke-virtual {v2}, Lcom/razorpay/nfc/NfcHelper$Tlv;->getTag()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, p2, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    check-cast v0, Lcom/razorpay/nfc/NfcHelper$Tlv;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/razorpay/nfc/NfcHelper$Tlv;->getValue()[B

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method private final l$1_I$l$([BZ)[B
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    .line 234
    array-length v3, v1

    if-nez v3, :cond_0

    goto/16 :goto_c

    .line 236
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    .line 238
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    move v5, v2

    .line 240
    :cond_1
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_1b

    .line 241
    invoke-direct {v0, v1, v5}, Lcom/razorpay/nfc/NfcHelper;->l$1_I$l$([BI)Lkotlin/Triple;

    move-result-object v6

    if-nez v6, :cond_2

    goto/16 :goto_b

    .line 242
    :cond_2
    invoke-virtual {v6}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    .line 244
    array-length v6, v1

    if-ge v5, v6, :cond_1b

    .line 245
    aget-byte v6, v1, v5

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v5, v5, 0x1

    .line 248
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v9, "ROOT"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "this as java.lang.String).toUpperCase(locale)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v9, 0x40

    const/16 v10, -0x40

    const/16 v11, 0x56

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_7

    :sswitch_0
    const-string v8, "DF3A"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto/16 :goto_7

    .line 269
    :cond_3
    new-array v7, v6, [B

    move v8, v2

    :goto_1
    if-ge v8, v6, :cond_19

    aput-byte v2, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 248
    :sswitch_1
    const-string v8, "DF16"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto/16 :goto_7

    .line 268
    :cond_4
    new-array v7, v6, [B

    move v8, v2

    :goto_2
    if-ge v8, v6, :cond_19

    aput-byte v2, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 248
    :sswitch_2
    const-string v8, "9F6E"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto/16 :goto_7

    .line 256
    :cond_5
    new-array v7, v12, [B

    if-eqz p2, :cond_6

    const/16 v8, 0x36

    aput-byte v8, v7, v2

    aput-byte v2, v7, v15

    aput-byte v9, v7, v14

    aput-byte v2, v7, v13

    goto/16 :goto_9

    :cond_6
    const/16 v8, 0x20

    aput-byte v8, v7, v2

    aput-byte v2, v7, v15

    aput-byte v10, v7, v14

    aput-byte v2, v7, v13

    goto/16 :goto_9

    .line 248
    :sswitch_3
    const-string v8, "9F66"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    goto/16 :goto_7

    .line 250
    :cond_7
    new-array v7, v12, [B

    const/16 v8, 0x37

    aput-byte v8, v7, v2

    aput-byte v2, v7, v15

    aput-byte v9, v7, v14

    aput-byte v2, v7, v13

    goto/16 :goto_9

    .line 248
    :sswitch_4
    const-string v8, "9F40"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    goto/16 :goto_7

    :cond_8
    const/4 v7, 0x5

    .line 252
    new-array v7, v7, [B

    const/16 v8, 0x60

    aput-byte v8, v7, v2

    aput-byte v2, v7, v15

    aput-byte v10, v7, v14

    const/16 v8, -0x80

    aput-byte v8, v7, v13

    aput-byte v2, v7, v12

    goto/16 :goto_9

    .line 248
    :sswitch_5
    const-string v8, "9F37"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    goto/16 :goto_7

    .line 266
    :cond_9
    new-array v7, v6, [B

    invoke-virtual {v4, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto/16 :goto_9

    .line 248
    :sswitch_6
    const-string v8, "9F35"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    goto/16 :goto_7

    .line 279
    :cond_a
    new-array v7, v15, [B

    if-eqz p2, :cond_b

    const/16 v8, 0x14

    aput-byte v8, v7, v2

    goto/16 :goto_9

    :cond_b
    const/16 v8, 0x22

    aput-byte v8, v7, v2

    goto/16 :goto_9

    .line 248
    :sswitch_7
    const-string v8, "9F33"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    goto/16 :goto_7

    .line 254
    :cond_c
    new-array v7, v13, [B

    const/16 v8, -0x20

    aput-byte v8, v7, v2

    const/16 v8, -0x10

    aput-byte v8, v7, v15

    const/16 v8, -0x38

    aput-byte v8, v7, v14

    goto/16 :goto_9

    .line 248
    :sswitch_8
    const-string v8, "9F21"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    goto/16 :goto_7

    .line 264
    :cond_d
    invoke-direct {v0, v6}, Lcom/razorpay/nfc/NfcHelper;->l$1_I$l$(I)[B

    move-result-object v7

    goto/16 :goto_9

    .line 248
    :sswitch_9
    const-string v8, "9F1C"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    goto/16 :goto_7

    .line 271
    :cond_e
    const-string v7, "00000001"

    sget-object v8, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    const-string v8, "this as java.lang.String).getBytes(charset)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    const-string v8, "copyOf(this, newSize)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    new-instance v8, Ljava/util/ArrayList;

    array-length v9, v7

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v8, Ljava/util/Collection;

    .line 373
    array-length v9, v7

    move v10, v2

    :goto_3
    if-ge v10, v9, :cond_f

    aget-byte v11, v7, v10

    .line 271
    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 375
    :cond_f
    check-cast v8, Ljava/util/List;

    .line 372
    check-cast v8, Ljava/util/Collection;

    .line 271
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->toByteArray(Ljava/util/Collection;)[B

    move-result-object v7

    goto/16 :goto_9

    .line 248
    :sswitch_a
    const-string v8, "9F1A"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    goto/16 :goto_7

    .line 275
    :cond_10
    new-array v7, v14, [B

    aput-byte v13, v7, v2

    aput-byte v11, v7, v15

    goto/16 :goto_9

    .line 248
    :sswitch_b
    const-string v8, "9F15"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    goto/16 :goto_7

    .line 260
    :cond_11
    new-array v7, v14, [B

    aput-byte v2, v7, v2

    aput-byte v2, v7, v15

    goto/16 :goto_9

    .line 248
    :sswitch_c
    const-string v8, "9F09"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    goto/16 :goto_7

    .line 258
    :cond_12
    new-array v7, v14, [B

    aput-byte v2, v7, v2

    aput-byte v14, v7, v15

    goto/16 :goto_9

    .line 248
    :sswitch_d
    const-string v8, "9F03"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    goto/16 :goto_7

    .line 274
    :cond_13
    new-array v7, v6, [B

    move v8, v2

    :goto_4
    if-ge v8, v6, :cond_19

    aput-byte v2, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 248
    :sswitch_e
    const-string v8, "9F02"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    goto :goto_7

    .line 273
    :cond_14
    new-array v7, v6, [B

    move v8, v2

    :goto_5
    if-ge v8, v6, :cond_19

    aput-byte v2, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 248
    :sswitch_f
    const-string v8, "5F2A"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15

    goto :goto_7

    .line 276
    :cond_15
    new-array v7, v14, [B

    aput-byte v13, v7, v2

    aput-byte v11, v7, v15

    goto :goto_9

    .line 248
    :sswitch_10
    const-string v8, "9C"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    goto :goto_7

    .line 278
    :cond_16
    new-array v7, v15, [B

    aput-byte v2, v7, v2

    goto :goto_9

    .line 248
    :sswitch_11
    const-string v8, "9A"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_17

    goto :goto_7

    .line 262
    :cond_17
    invoke-direct {v0, v6}, Lcom/razorpay/nfc/NfcHelper;->__l1_(I)[B

    move-result-object v7

    goto :goto_9

    .line 248
    :sswitch_12
    const-string v8, "95"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    goto :goto_7

    .line 277
    :cond_18
    new-array v7, v6, [B

    move v8, v2

    :goto_6
    if-ge v8, v6, :cond_19

    aput-byte v2, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 280
    :goto_7
    new-array v7, v6, [B

    move v8, v2

    :goto_8
    if-ge v8, v6, :cond_19

    aput-byte v2, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 284
    :cond_19
    :goto_9
    array-length v8, v7

    if-lt v8, v6, :cond_1a

    .line 285
    invoke-static {v7, v6}, Lkotlin/collections/ArraysKt;->take([BI)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 287
    :cond_1a
    move-object v8, v3

    check-cast v8, Ljava/util/Collection;

    invoke-static {v7}, Lkotlin/collections/ArraysKt;->asIterable([B)Ljava/lang/Iterable;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 288
    array-length v7, v7

    sub-int/2addr v6, v7

    move v7, v2

    :goto_a
    if-ge v7, v6, :cond_1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 292
    :cond_1b
    :goto_b
    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toByteArray(Ljava/util/Collection;)[B

    move-result-object v1

    return-object v1

    .line 234
    :cond_1c
    :goto_c
    new-array v1, v2, [B

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x71c -> :sswitch_12
        0x728 -> :sswitch_11
        0x72a -> :sswitch_10
        0x1924c0 -> :sswitch_f
        0x1af5ef -> :sswitch_e
        0x1af5f0 -> :sswitch_d
        0x1af5f6 -> :sswitch_c
        0x1af611 -> :sswitch_b
        0x1af61d -> :sswitch_a
        0x1af61f -> :sswitch_9
        0x1af62c -> :sswitch_8
        0x1af64d -> :sswitch_7
        0x1af64f -> :sswitch_6
        0x1af651 -> :sswitch_5
        0x1af669 -> :sswitch_4
        0x1af6ad -> :sswitch_3
        0x1af6bc -> :sswitch_2
        0x1ff627 -> :sswitch_1
        0x1ff670 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final extractAidFromPpse([B)[B
    .locals 1

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    invoke-direct {p0, p1}, Lcom/razorpay/nfc/NfcHelper;->l$1_I$l$([B)Ljava/util/List;

    move-result-object p1

    .line 350
    const-string v0, "4F"

    invoke-direct {p0, p1, v0}, Lcom/razorpay/nfc/NfcHelper;->l$1_I$l$(Ljava/util/List;Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public final hexToByteArray(Ljava/lang/String;)[B
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->chunked(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 356
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 357
    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x10

    .line 34
    invoke-static {v2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 358
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 355
    check-cast v0, Ljava/util/Collection;

    .line 34
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toByteArray(Ljava/util/Collection;)[B

    move-result-object p1

    return-object p1
.end method

.method public final parseTlv([B)Lcom/razorpay/nfc/CardData;
    .locals 5

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0, p1}, Lcom/razorpay/nfc/NfcHelper;->l$1_I$l$([B)Ljava/util/List;

    move-result-object p1

    .line 110
    const-string v0, "57"

    invoke-direct {p0, p1, v0}, Lcom/razorpay/nfc/NfcHelper;->l$1_I$l$(Ljava/util/List;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0, v0}, Lcom/razorpay/nfc/NfcHelper;->toHexString([B)Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-direct {p0, p1}, Lcom/razorpay/nfc/NfcHelper;->l$1_I$l$(Ljava/lang/String;)Lcom/razorpay/nfc/CardData;

    move-result-object p1

    return-object p1

    .line 116
    :cond_0
    const-string v0, "5A"

    invoke-direct {p0, p1, v0}, Lcom/razorpay/nfc/NfcHelper;->l$1_I$l$(Ljava/util/List;Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 118
    const-string v2, "5F24"

    invoke-direct {p0, p1, v2}, Lcom/razorpay/nfc/NfcHelper;->l$1_I$l$(Ljava/util/List;Ljava/lang/String;)[B

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 119
    invoke-virtual {p0, p1}, Lcom/razorpay/nfc/NfcHelper;->toHexString([B)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string p1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    :cond_2
    new-instance p1, Lcom/razorpay/nfc/CardData;

    invoke-virtual {p0, v0}, Lcom/razorpay/nfc/NfcHelper;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [C

    const/16 v4, 0x46

    aput-char v4, v3, v2

    invoke-static {v0, v3}, Lkotlin/text/StringsKt;->trimEnd(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Lcom/razorpay/nfc/CardData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_3
    return-object v1
.end method

.method public final startCardScanner(Landroid/nfc/Tag;)Lcom/razorpay/nfc/CardData;
    .locals 10

    .line 38
    invoke-static {p1}, Landroid/nfc/tech/IsoDep;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/IsoDep;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 41
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/nfc/tech/IsoDep;->connect()V

    const/16 v1, 0x1388

    .line 42
    invoke-virtual {p1, v1}, Landroid/nfc/tech/IsoDep;->setTimeout(I)V

    .line 45
    sget-object v1, Lcom/razorpay/nfc/EmvCommands;->INSTANCE:Lcom/razorpay/nfc/EmvCommands;

    invoke-virtual {v1}, Lcom/razorpay/nfc/EmvCommands;->getSELECT_PPSE()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/nfc/tech/IsoDep;->transceive([B)[B

    move-result-object v1

    .line 46
    const-string v2, "ppseResponse"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/razorpay/nfc/NfcHelper;->extractAidFromPpse([B)[B

    move-result-object v1

    if-eqz v1, :cond_1

    .line 48
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 50
    :cond_1
    sget-object v1, Lcom/razorpay/nfc/EmvCommands;->INSTANCE:Lcom/razorpay/nfc/EmvCommands;

    invoke-virtual {v1}, Lcom/razorpay/nfc/EmvCommands;->getKNOWN_AIDS()Ljava/util/List;

    move-result-object v1

    .line 55
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 56
    sget-object v3, Lcom/razorpay/nfc/EmvCommands;->INSTANCE:Lcom/razorpay/nfc/EmvCommands;

    invoke-virtual {v3, v2}, Lcom/razorpay/nfc/EmvCommands;->selectAid([B)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/nfc/tech/IsoDep;->transceive([B)[B

    move-result-object v3

    .line 57
    const-string v4, "selectResp"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/razorpay/nfc/NfcHelper;->_l_1l__([B)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_3
    move-object v2, v0

    move-object v3, v2

    :goto_1
    if-nez v2, :cond_4

    .line 103
    invoke-virtual {p1}, Landroid/nfc/tech/IsoDep;->close()V

    return-object v0

    :cond_4
    if-eqz v3, :cond_5

    .line 70
    :try_start_1
    invoke-direct {p0, v3}, Lcom/razorpay/nfc/NfcHelper;->__l1_([B)[B

    move-result-object v1

    goto :goto_2

    :cond_5
    move-object v1, v0

    :goto_2
    const/4 v2, 0x0

    .line 71
    invoke-direct {p0, v1, v2}, Lcom/razorpay/nfc/NfcHelper;->l$1_I$l$([BZ)[B

    move-result-object v3

    .line 72
    sget-object v4, Lcom/razorpay/nfc/EmvCommands;->INSTANCE:Lcom/razorpay/nfc/EmvCommands;

    invoke-virtual {v4, v3}, Lcom/razorpay/nfc/EmvCommands;->getProcessingOptions([B)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/nfc/tech/IsoDep;->transceive([B)[B

    move-result-object v3

    if-eqz v1, :cond_6

    .line 76
    const-string v2, "9F6E"

    invoke-direct {p0, v1, v2}, Lcom/razorpay/nfc/NfcHelper;->l$1_I$l$([BLjava/lang/String;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :cond_6
    const-string v4, "gpoResp"

    const/4 v5, 0x1

    if-eqz v2, :cond_7

    :try_start_2
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/razorpay/nfc/NfcHelper;->I__1l([B)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 78
    invoke-direct {p0, v1, v5}, Lcom/razorpay/nfc/NfcHelper;->l$1_I$l$([BZ)[B

    move-result-object v1

    .line 79
    sget-object v2, Lcom/razorpay/nfc/EmvCommands;->INSTANCE:Lcom/razorpay/nfc/EmvCommands;

    invoke-virtual {v2, v1}, Lcom/razorpay/nfc/EmvCommands;->getProcessingOptions([B)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/nfc/tech/IsoDep;->transceive([B)[B

    move-result-object v3

    .line 82
    :cond_7
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/razorpay/nfc/NfcHelper;->l$1_I$l$([B)Ljava/util/List;

    move-result-object v1

    .line 83
    invoke-direct {p0, v1}, Lcom/razorpay/nfc/NfcHelper;->l$1_I$l$(Ljava/util/List;)[B

    move-result-object v1

    .line 84
    invoke-direct {p0, v1}, Lcom/razorpay/nfc/NfcHelper;->_1__([B)Ljava/util/List;

    move-result-object v1

    .line 87
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_5

    .line 90
    :cond_8
    new-instance v1, Lkotlin/ranges/IntRange;

    const/4 v2, 0x3

    invoke-direct {v1, v5, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast v1, Ljava/lang/Iterable;

    .line 360
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 361
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    move-object v4, v1

    check-cast v4, Lkotlin/collections/IntIterator;

    invoke-virtual {v4}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v4

    .line 90
    new-instance v6, Lkotlin/ranges/IntRange;

    invoke-direct {v6, v5, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast v6, Ljava/lang/Iterable;

    .line 363
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v6, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .line 364
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    move-object v8, v6

    check-cast v8, Lkotlin/collections/IntIterator;

    invoke-virtual {v8}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v8

    .line 90
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 366
    :cond_9
    check-cast v7, Ljava/util/List;

    .line 90
    check-cast v7, Ljava/lang/Iterable;

    .line 367
    invoke-static {v3, v7}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_3

    .line 369
    :cond_a
    move-object v1, v3

    check-cast v1, Ljava/util/List;

    .line 93
    :goto_5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 94
    sget-object v4, Lcom/razorpay/nfc/EmvCommands;->INSTANCE:Lcom/razorpay/nfc/EmvCommands;

    invoke-virtual {v4, v2, v3}, Lcom/razorpay/nfc/EmvCommands;->readRecord(II)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/nfc/tech/IsoDep;->transceive([B)[B

    move-result-object v2

    .line 95
    array-length v3, v2

    const/4 v4, 0x2

    if-le v3, v4, :cond_b

    array-length v3, v2

    sub-int/2addr v3, v4

    aget-byte v3, v2, v3

    const/16 v4, -0x70

    if-ne v3, v4, :cond_b

    .line 96
    const-string v3, "response"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/razorpay/nfc/NfcHelper;->parseTlv([B)Lcom/razorpay/nfc/CardData;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_b

    .line 103
    invoke-virtual {p1}, Landroid/nfc/tech/IsoDep;->close()V

    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v1

    .line 101
    :try_start_3
    const-string v2, "NfcSdk"

    const-string v3, "Error reading card"

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    :cond_c
    invoke-virtual {p1}, Landroid/nfc/tech/IsoDep;->close()V

    return-object v0

    :goto_6
    invoke-virtual {p1}, Landroid/nfc/tech/IsoDep;->close()V

    throw v0
.end method

.method public final toHexString([B)Ljava/lang/String;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    const-string v0, ""

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    sget-object v0, Lcom/razorpay/nfc/NfcHelper$toHexString$1;->INSTANCE:Lcom/razorpay/nfc/NfcHelper$toHexString$1;

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function1;

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v9}, Lkotlin/collections/ArraysKt;->joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
