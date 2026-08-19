.class public final Lcom/inmobi/media/rc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/S0;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/S0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "markupType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/inmobi/media/rc;->a:Lcom/inmobi/media/S0;

    .line 3
    iput-object p2, p0, Lcom/inmobi/media/rc;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/inmobi/media/rc;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/inmobi/media/rc;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/LinkedHashMap;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/inmobi/media/rc;->a:Lcom/inmobi/media/S0;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Lcom/inmobi/media/S0;->a:Lcom/inmobi/media/Q0;

    invoke-virtual {v1}, Lcom/inmobi/media/Q0;->q()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    const-string v2, "adType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/inmobi/media/rc;->a:Lcom/inmobi/media/S0;

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, v1, Lcom/inmobi/media/S0;->a:Lcom/inmobi/media/Q0;

    invoke-virtual {v1}, Lcom/inmobi/media/Q0;->I()Lcom/inmobi/media/Y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/media/Y;->l()J

    move-result-wide v1

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 8
    const-string v2, "plId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/inmobi/media/rc;->a:Lcom/inmobi/media/S0;

    if-eqz v1, :cond_2

    .line 10
    iget-object v1, v1, Lcom/inmobi/media/S0;->a:Lcom/inmobi/media/Q0;

    invoke-virtual {v1}, Lcom/inmobi/media/Q0;->I()Lcom/inmobi/media/Y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/media/Y;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 11
    const-string v2, "plType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/inmobi/media/rc;->a:Lcom/inmobi/media/S0;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 13
    iget-object v1, v1, Lcom/inmobi/media/S0;->a:Lcom/inmobi/media/Q0;

    invoke-virtual {v1}, Lcom/inmobi/media/Q0;->y()Lcom/inmobi/media/x0;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/inmobi/media/x0;->o()Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_4

    .line 14
    const-string v3, "isRewarded"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_4
    iget-object v1, p0, Lcom/inmobi/media/rc;->c:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v3, "creativeId"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_5
    iget-object v1, p0, Lcom/inmobi/media/rc;->b:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v3, "creativeType"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_6
    iget-object v1, p0, Lcom/inmobi/media/rc;->d:Ljava/lang/String;

    const-string v3, "markupType"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v1, p0, Lcom/inmobi/media/rc;->e:Ljava/lang/String;

    if-eqz v1, :cond_7

    move-object v2, v1

    goto :goto_1

    :cond_7
    const-string v1, "triggerSource"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 22
    :goto_1
    const-string v1, "trigger"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v1, p0, Lcom/inmobi/media/rc;->a:Lcom/inmobi/media/S0;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/inmobi/media/S0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 24
    iget-object v1, p0, Lcom/inmobi/media/rc;->a:Lcom/inmobi/media/S0;

    invoke-virtual {v1}, Lcom/inmobi/media/S0;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "metadataBlob"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-object v0
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/rc;->a:Lcom/inmobi/media/S0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/inmobi/media/S0;->b:Lcom/inmobi/media/sc;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/inmobi/media/sc;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-ne v0, v1, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/rc;->a()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {}, Lcom/inmobi/media/E3;->q()Ljava/lang/String;

    move-result-object v1

    const-string v2, "networkType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lcom/inmobi/media/rc;->a()Ljava/util/LinkedHashMap;

    move-result-object v0

    const/16 v1, 0x884

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "errorCode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p0}, Lcom/inmobi/media/rc;->a()Ljava/util/LinkedHashMap;

    move-result-object v0

    sget-object v1, Lcom/inmobi/media/ic;->a:Lcom/inmobi/media/ic;

    .line 9
    sget-object v1, Lcom/inmobi/media/mc;->a:Lcom/inmobi/media/mc;

    .line 10
    const-string v2, "AdImpressionSuccessful"

    invoke-static {v2, v0, v1}, Lcom/inmobi/media/ic;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/mc;)V

    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/rc;->a:Lcom/inmobi/media/S0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/inmobi/media/S0;->b:Lcom/inmobi/media/sc;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/inmobi/media/sc;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-ne v0, v1, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/rc;->a()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {}, Lcom/inmobi/media/E3;->q()Ljava/lang/String;

    move-result-object v1

    const-string v2, "networkType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lcom/inmobi/media/rc;->a()Ljava/util/LinkedHashMap;

    move-result-object v0

    const/16 v1, 0x881

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "errorCode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p0}, Lcom/inmobi/media/rc;->a()Ljava/util/LinkedHashMap;

    move-result-object v0

    sget-object v1, Lcom/inmobi/media/ic;->a:Lcom/inmobi/media/ic;

    .line 9
    sget-object v1, Lcom/inmobi/media/mc;->a:Lcom/inmobi/media/mc;

    .line 10
    const-string v2, "AdImpressionSuccessful"

    invoke-static {v2, v0, v1}, Lcom/inmobi/media/ic;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/mc;)V

    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/rc;->a:Lcom/inmobi/media/S0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/inmobi/media/S0;->b:Lcom/inmobi/media/sc;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/inmobi/media/sc;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-ne v0, v1, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/rc;->a()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {}, Lcom/inmobi/media/E3;->q()Ljava/lang/String;

    move-result-object v1

    const-string v2, "networkType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lcom/inmobi/media/rc;->a()Ljava/util/LinkedHashMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "errorCode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p0}, Lcom/inmobi/media/rc;->a()Ljava/util/LinkedHashMap;

    move-result-object v0

    sget-object v1, Lcom/inmobi/media/ic;->a:Lcom/inmobi/media/ic;

    .line 9
    sget-object v1, Lcom/inmobi/media/mc;->a:Lcom/inmobi/media/mc;

    .line 10
    const-string v2, "AdImpressionSuccessful"

    invoke-static {v2, v0, v1}, Lcom/inmobi/media/ic;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/mc;)V

    return-void
.end method
