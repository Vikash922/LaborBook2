.class public final Lcom/inmobi/media/M;
.super Lcom/inmobi/media/X1;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/N;

.field public final b:Lcom/inmobi/media/rc;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/N;Lcom/inmobi/media/rc;)V
    .locals 1

    const-string v0, "adImpressionCallbackHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/inmobi/media/X1;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/inmobi/media/M;->a:Lcom/inmobi/media/N;

    .line 3
    iput-object p2, p0, Lcom/inmobi/media/M;->b:Lcom/inmobi/media/rc;

    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/i2;)V
    .locals 1

    const-string v0, "click"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/M;->a:Lcom/inmobi/media/N;

    iget-object v0, p0, Lcom/inmobi/media/M;->b:Lcom/inmobi/media/rc;

    invoke-virtual {p1, v0}, Lcom/inmobi/media/N;->a(Lcom/inmobi/media/rc;)V

    return-void
.end method

.method public final a(Lcom/inmobi/media/i2;Ljava/lang/String;)V
    .locals 3

    const-string v0, "click"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "error"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/inmobi/media/M;->b:Lcom/inmobi/media/rc;

    .line 3
    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Lcom/inmobi/media/rc;->a()Ljava/util/LinkedHashMap;

    move-result-object p1

    .line 76
    invoke-static {}, Lcom/inmobi/media/E3;->q()Ljava/lang/String;

    move-result-object v1

    const-string v2, "networkType"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x882

    .line 77
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "errorCode"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object p2, Lcom/inmobi/media/ic;->a:Lcom/inmobi/media/ic;

    .line 80
    sget-object p2, Lcom/inmobi/media/mc;->a:Lcom/inmobi/media/mc;

    .line 81
    const-string v0, "AdImpressionSuccessful"

    invoke-static {v0, p1, p2}, Lcom/inmobi/media/ic;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/mc;)V

    return-void
.end method
