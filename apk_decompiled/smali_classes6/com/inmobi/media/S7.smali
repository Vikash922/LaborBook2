.class public final Lcom/inmobi/media/S7;
.super Lcom/inmobi/media/D7;
.source "SourceFile"


# instance fields
.field public final x:Ljava/lang/String;

.field public final y:Lkotlin/Lazy;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/E7;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 8

    .line 1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    .line 2
    invoke-direct/range {v0 .. v7}, Lcom/inmobi/media/S7;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/E7;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/E7;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 7

    const-string v0, "assetId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetStyle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackers"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interactionMode"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    const-string v4, "GIF"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/inmobi/media/D7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/E7;Ljava/util/List;)V

    .line 5
    const-string p1, "S7"

    iput-object p1, p0, Lcom/inmobi/media/S7;->x:Ljava/lang/String;

    .line 7
    new-instance p1, Lcom/inmobi/media/R7;

    invoke-direct {p1, p0, p4}, Lcom/inmobi/media/R7;-><init>(Lcom/inmobi/media/S7;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/inmobi/media/S7;->y:Lkotlin/Lazy;

    .line 24
    new-instance p1, Lcom/inmobi/media/S7$$ExternalSyntheticLambda0;

    invoke-direct {p1, p4, p0, p7, p6}, Lcom/inmobi/media/S7$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/inmobi/media/S7;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/inmobi/media/Kb;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final a(Lcom/inmobi/media/S7;Ljava/lang/String;)Lcom/inmobi/media/v4;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-ge p0, v0, :cond_0

    .line 3
    new-instance p0, Lcom/inmobi/media/w4;

    invoke-direct {p0, p1}, Lcom/inmobi/media/w4;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Lcom/inmobi/media/V0;

    invoke-direct {p0, p1}, Lcom/inmobi/media/V0;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public static final a(Ljava/lang/String;Lcom/inmobi/media/S7;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    const-string v0, "$url"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$interactionMode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/inmobi/media/Db;->a()Lcom/inmobi/media/k1;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/media/k1;->b(Ljava/lang/String;)Lcom/inmobi/media/j;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 7
    iget-object p0, p0, Lcom/inmobi/media/j;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    iput-object p0, p1, Lcom/inmobi/media/D7;->e:Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 9
    const-string p0, "<set-?>"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    iput-object p3, p1, Lcom/inmobi/media/D7;->g:Ljava/lang/String;

    :cond_1
    return-void
.end method
