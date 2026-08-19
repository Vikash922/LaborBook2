.class public final Lorg/koin/ext/StringExtKt;
.super Ljava/lang/Object;
.source "StringExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "clearQuotes",
        "",
        "koin-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final clearQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string v1, "(this as java.lang.String).toCharArray()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 21
    aget-char v1, v0, v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->getLastIndex([C)I

    move-result v1

    aget-char v1, v0, v1

    if-ne v1, v2, :cond_0

    const/4 p0, 0x1

    .line 22
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->getLastIndex([C)I

    move-result v1

    invoke-static {v0, p0, v1}, Lkotlin/collections/ArraysKt;->copyOfRange([CII)[C

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt;->concatToString([C)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method
