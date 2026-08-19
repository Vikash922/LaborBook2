.class public final Lcom/inmobi/media/Oc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/Rc;

.field public final b:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/Rc;Ljava/util/LinkedHashSet;)V
    .locals 1

    const-string v0, "networkRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inMobiUnifiedIdInterfaceSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/inmobi/media/Oc;->a:Lcom/inmobi/media/Rc;

    .line 3
    iput-object p2, p0, Lcom/inmobi/media/Oc;->b:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 83
    const-string v0, "ufids"

    invoke-static {}, Lcom/inmobi/media/u5;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/media/Pc;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 85
    :try_start_0
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/inmobi/media/Oc;->b:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inmobi/unifiedId/InMobiUnifiedIdInterface;

    .line 89
    invoke-static {v3, v1, v2}, Lcom/inmobi/media/Pc;->a(Lcom/inmobi/unifiedId/InMobiUnifiedIdInterface;Lorg/json/JSONObject;Ljava/lang/Error;)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/Oc;->b:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/unifiedId/InMobiUnifiedIdInterface;

    .line 96
    new-instance v3, Ljava/lang/Error;

    const-string v4, "Fetching the unifiedIds from ID Service has failed and there are no unified ids present in cache"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-static {v1, v2, v3}, Lcom/inmobi/media/Pc;->a(Lcom/inmobi/unifiedId/InMobiUnifiedIdInterface;Lorg/json/JSONObject;Ljava/lang/Error;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 109
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/Oc;->b:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void

    .line 111
    :goto_2
    iget-object v1, p0, Lcom/inmobi/media/Oc;->b:Ljava/util/LinkedHashSet;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    throw v0
.end method

.method public final a(Lcom/inmobi/media/i9;)V
    .locals 3

    const-class v0, Lcom/inmobi/media/Nc;

    .line 62
    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 63
    :try_start_0
    iget-object v2, p1, Lcom/inmobi/media/i9;->a:Lcom/inmobi/media/c4;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object v2, v1

    .line 64
    :goto_0
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 65
    iget-object v1, p1, Lcom/inmobi/media/i9;->a:Lcom/inmobi/media/c4;

    .line 66
    :cond_1
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz p1, :cond_2

    .line 68
    iget-object p1, p1, Lcom/inmobi/media/i9;->a:Lcom/inmobi/media/c4;

    .line 69
    const-string v2, "errorCode"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_2
    const-string p1, "UnifiedIdNetworkResponseFailure"

    sget-object v2, Lcom/inmobi/media/ic;->a:Lcom/inmobi/media/ic;

    .line 72
    sget-object v2, Lcom/inmobi/media/mc;->a:Lcom/inmobi/media/mc;

    .line 73
    invoke-static {p1, v1, v2}, Lcom/inmobi/media/ic;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/mc;)V

    .line 74
    iget-object p1, p0, Lcom/inmobi/media/Oc;->a:Lcom/inmobi/media/Rc;

    .line 75
    iget-object p1, p1, Lcom/inmobi/media/rb;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 76
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    .line 77
    monitor-exit v0

    return-void

    .line 79
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/inmobi/media/Nc;->a()V

    .line 80
    invoke-virtual {p0}, Lcom/inmobi/media/Oc;->a()V

    .line 81
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    .line 2
    const-class v0, Lcom/inmobi/media/Nc;

    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/media/Oc;->a:Lcom/inmobi/media/Rc;

    .line 29
    iget-object v1, v1, Lcom/inmobi/media/rb;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 31
    monitor-exit v0

    goto :goto_1

    .line 33
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/inmobi/media/Nc;->a()V

    .line 36
    invoke-static {}, Lcom/inmobi/media/u5;->b()Lorg/json/JSONObject;

    move-result-object v1

    .line 37
    invoke-static {p1, v1}, Lcom/inmobi/media/Pc;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 41
    invoke-static {p1}, Lcom/inmobi/media/u5;->b(Lorg/json/JSONObject;)V

    .line 43
    invoke-static {}, Lcom/inmobi/media/u5;->b()Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/inmobi/media/Pc;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 44
    iget-object v1, p0, Lcom/inmobi/media/Oc;->b:Ljava/util/LinkedHashSet;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/unifiedId/InMobiUnifiedIdInterface;

    const/4 v3, 0x0

    if-nez p1, :cond_1

    .line 49
    new-instance v4, Ljava/lang/Error;

    const-string v5, "No local data present"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-static {v2, v3, v4}, Lcom/inmobi/media/Pc;->a(Lcom/inmobi/unifiedId/InMobiUnifiedIdInterface;Lorg/json/JSONObject;Ljava/lang/Error;)V

    goto :goto_0

    .line 56
    :cond_1
    invoke-static {v2, p1, v3}, Lcom/inmobi/media/Pc;->a(Lcom/inmobi/unifiedId/InMobiUnifiedIdInterface;Lorg/json/JSONObject;Ljava/lang/Error;)V

    goto :goto_0

    .line 59
    :cond_2
    iget-object p1, p0, Lcom/inmobi/media/Oc;->b:Ljava/util/LinkedHashSet;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 60
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    monitor-exit v0

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
