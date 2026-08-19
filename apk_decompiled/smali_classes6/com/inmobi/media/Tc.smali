.class public final Lcom/inmobi/media/Tc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/inmobi/media/Tc;

.field public static b:Z

.field public static final c:Lcom/inmobi/media/Sc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/inmobi/media/Tc;

    invoke-direct {v0}, Lcom/inmobi/media/Tc;-><init>()V

    sput-object v0, Lcom/inmobi/media/Tc;->a:Lcom/inmobi/media/Tc;

    .line 1
    new-instance v0, Lcom/inmobi/media/Sc;

    invoke-direct {v0}, Lcom/inmobi/media/Sc;-><init>()V

    sput-object v0, Lcom/inmobi/media/Tc;->c:Lcom/inmobi/media/Sc;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()V
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    .line 59
    :try_start_0
    sget-object v1, Lcom/inmobi/media/K2;->a:Ljava/util/LinkedHashMap;

    .line 60
    sget-object v1, Lcom/inmobi/media/K2;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-static {}, Lcom/inmobi/media/K2;->f()Ljava/lang/String;

    move-result-object v1

    const-string v3, "access$getTAG$cp(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/inmobi/media/K2;->d()Lkotlin/Lazy;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/E2;

    const/4 v3, 0x5

    .line 63
    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 64
    :cond_0
    sget-object v1, Lcom/inmobi/media/ic;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 65
    sget-object v1, Lcom/inmobi/media/ic;->f:Lcom/inmobi/media/g4;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 66
    iget-object v4, v1, Lcom/inmobi/media/g4;->h:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 67
    :cond_1
    iput-object v3, v1, Lcom/inmobi/media/g4;->h:Ljava/util/concurrent/ScheduledExecutorService;

    .line 68
    iget-object v4, v1, Lcom/inmobi/media/g4;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 69
    iget-object v4, v1, Lcom/inmobi/media/g4;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 70
    iget-object v4, v1, Lcom/inmobi/media/g4;->g:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    .line 71
    iput-object v3, v1, Lcom/inmobi/media/g4;->i:Lcom/inmobi/media/d4;

    .line 72
    :cond_2
    sput-object v3, Lcom/inmobi/media/ic;->f:Lcom/inmobi/media/g4;

    .line 73
    sput-object v3, Lcom/inmobi/media/ic;->i:Lcom/inmobi/media/qc;

    .line 74
    invoke-static {}, Lcom/inmobi/media/Kb;->f()Lcom/inmobi/media/h7;

    move-result-object v1

    sget-object v4, Lcom/inmobi/media/ic;->h:Lcom/inmobi/media/hc;

    invoke-virtual {v1, v4}, Lcom/inmobi/media/h7;->a(Lkotlin/jvm/functions/Function1;)V

    .line 75
    sget-object v1, Lcom/inmobi/media/Qb;->a:Lcom/inmobi/media/Qb;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :try_start_1
    const-string v4, "Qb"

    const-string v5, "TAG"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    sget-object v4, Lcom/inmobi/media/y6;->a:Lcom/inmobi/media/y6;

    .line 78
    invoke-static {}, Lcom/inmobi/media/y6;->c()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 79
    sget-object v5, Lcom/inmobi/media/y6;->b:Landroid/location/LocationManager;

    if-eqz v5, :cond_3

    invoke-virtual {v5, v4}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 80
    :cond_3
    sget-object v4, Lcom/inmobi/media/y6;->d:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 82
    :cond_4
    sput-object v3, Lcom/inmobi/media/y6;->d:Lcom/google/android/gms/common/api/GoogleApiClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    .line 83
    sget-object v1, Lcom/inmobi/media/r1;->a:Lcom/inmobi/media/r1;

    .line 84
    sget-object v1, Lcom/inmobi/media/r1;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 85
    invoke-static {}, Lcom/inmobi/media/r1;->d()V

    .line 86
    sget-object v1, Lcom/inmobi/media/Ea;->a:Lcom/inmobi/media/B6;

    .line 87
    sget-object v1, Lcom/inmobi/media/Ea;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 88
    invoke-static {}, Lcom/inmobi/media/Kb;->f()Lcom/inmobi/media/h7;

    move-result-object v1

    sget-object v4, Lcom/inmobi/media/Ea;->g:Lcom/inmobi/media/Da;

    invoke-virtual {v1, v4}, Lcom/inmobi/media/h7;->a(Lkotlin/jvm/functions/Function1;)V

    .line 89
    sput-object v3, Lcom/inmobi/media/Ea;->b:Lcom/inmobi/media/G6;

    .line 90
    sget-object v1, Lcom/inmobi/media/w5;->c:Lcom/inmobi/media/A3;

    if-eqz v1, :cond_5

    .line 91
    iget-object v1, v1, Lcom/inmobi/media/A3;->c:Ljava/util/List;

    .line 132
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/inmobi/media/z3;

    .line 133
    invoke-virtual {v4}, Lcom/inmobi/media/z3;->b()V

    goto :goto_0

    .line 134
    :cond_5
    sget-object v1, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    .line 135
    iget-object v4, v1, Lcom/inmobi/media/g6;->b:Lcom/inmobi/media/g4;

    if-eqz v4, :cond_7

    .line 136
    iget-object v5, v4, Lcom/inmobi/media/g4;->h:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 137
    :cond_6
    iput-object v3, v4, Lcom/inmobi/media/g4;->h:Ljava/util/concurrent/ScheduledExecutorService;

    .line 138
    iget-object v5, v4, Lcom/inmobi/media/g4;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 139
    iget-object v2, v4, Lcom/inmobi/media/g4;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 140
    iget-object v2, v4, Lcom/inmobi/media/g4;->g:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 141
    iput-object v3, v4, Lcom/inmobi/media/g4;->i:Lcom/inmobi/media/d4;

    .line 142
    :cond_7
    iput-object v3, v1, Lcom/inmobi/media/g6;->b:Lcom/inmobi/media/g4;

    .line 143
    invoke-static {}, Lcom/inmobi/media/Kb;->f()Lcom/inmobi/media/h7;

    move-result-object v2

    iget-object v1, v1, Lcom/inmobi/media/g6;->d:Lcom/inmobi/media/f6;

    invoke-virtual {v2, v1}, Lcom/inmobi/media/h7;->a(Lkotlin/jvm/functions/Function1;)V

    .line 144
    sget-object v1, Lcom/inmobi/media/cc;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/inmobi/media/cc;->a()V

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 145
    monitor-exit v1

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 146
    :catch_0
    const-string v1, "Tc"

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    const-string v1, "Tc"

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Tc"

    const-string v2, "SDK encountered unexpected error while stopping internal components"

    invoke-static {v0, v1, v2}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static final synthetic a(Lcom/inmobi/media/Tc;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/inmobi/media/Tc;->b()V

    return-void
.end method

.method public static b()V
    .locals 3

    .line 28
    :try_start_0
    sget-object v0, Lcom/inmobi/media/Jc;->a:Lcom/inmobi/media/Jc;

    invoke-virtual {v0}, Lcom/inmobi/media/Jc;->a()V

    .line 29
    sget-object v0, Lcom/inmobi/media/e1;->a:Lcom/google/android/gms/appset/AppSetIdInfo;

    .line 30
    sget-object v0, Lcom/inmobi/media/K2;->a:Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/inmobi/media/I2;->a()V

    .line 31
    sget-object v0, Lcom/inmobi/media/u2;->a:Lcom/inmobi/media/u2;

    invoke-virtual {v0}, Lcom/inmobi/media/u2;->h()V

    .line 32
    invoke-static {}, Lcom/inmobi/media/ic;->c()V

    .line 33
    sget-object v0, Lcom/inmobi/media/Qb;->a:Lcom/inmobi/media/Qb;

    invoke-virtual {v0}, Lcom/inmobi/media/Qb;->a()V

    .line 34
    sget-object v0, Lcom/inmobi/media/Fd;->a:Lcom/inmobi/media/Fd;

    .line 35
    sget-object v0, Lcom/inmobi/media/r1;->a:Lcom/inmobi/media/r1;

    invoke-virtual {v0}, Lcom/inmobi/media/r1;->c()V

    .line 36
    sget-object v0, Lcom/inmobi/media/Ea;->a:Lcom/inmobi/media/B6;

    .line 37
    sget-object v0, Lcom/inmobi/media/Ea;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 38
    invoke-static {}, Lcom/inmobi/media/Ea;->b()V

    .line 39
    invoke-static {}, Lcom/inmobi/media/Kb;->f()Lcom/inmobi/media/h7;

    move-result-object v0

    const/4 v1, 0x6

    .line 45
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 46
    sget-object v2, Lcom/inmobi/media/Ea;->g:Lcom/inmobi/media/Da;

    .line 47
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/h7;->a([ILkotlin/jvm/functions/Function1;)V

    .line 48
    sget-object v0, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    invoke-virtual {v0}, Lcom/inmobi/media/w5;->a()V

    .line 49
    const-string v0, "SessionStarted"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 50
    sget-object v2, Lcom/inmobi/media/mc;->a:Lcom/inmobi/media/mc;

    .line 51
    invoke-static {v0, v1, v2}, Lcom/inmobi/media/ic;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/mc;)V

    .line 52
    sget-object v0, Lcom/inmobi/media/cc;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/inmobi/media/cc;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    const-string v0, "Tc"

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "SDK encountered unexpected error while starting internal components"

    const/4 v2, 0x2

    invoke-static {v2, v0, v1}, Lcom/inmobi/media/I6;->a(BLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x2
        0x1
        0x64
        0x97
        0x96
        0x98
    .end array-data
.end method

.method public static final b(Landroid/content/Context;)V
    .locals 2

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "Tc"

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :try_start_0
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance p0, Lcom/inmobi/media/Id;

    invoke-direct {p0}, Lcom/inmobi/media/Id;-><init>()V

    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const/4 p0, 0x1

    .line 19
    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->clearCache(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 22
    sget-object v0, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 23
    const-string v0, "event"

    invoke-static {p0, v0}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object p0

    .line 24
    sget-object v0, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v0, p0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    :goto_0
    return-void
.end method

.method public static final d(Landroid/content/Context;)V
    .locals 10

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/inmobi/media/Lb;->a:Lcom/inmobi/media/Lb;

    invoke-virtual {v0, p0}, Lcom/inmobi/media/Lb;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/inmobi/media/s4;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p0, v1}, Lcom/inmobi/media/Lb;->a(Landroid/content/Context;Z)V

    .line 10
    :cond_0
    sget-object v0, Lcom/inmobi/media/c3;->a:Lcom/inmobi/media/c3;

    .line 11
    const-string v0, "c3"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 12
    new-instance v0, Ljava/util/LinkedList;

    .line 13
    sget-object v1, Lcom/inmobi/media/Db;->d:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/inmobi/media/Y2;

    const/4 v8, 0x0

    const/16 v9, 0x3f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 14
    invoke-static/range {v2 .. v9}, Lcom/inmobi/media/R1;->a(Lcom/inmobi/media/R1;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/inmobi/media/c3;->b:Ljava/util/LinkedList;

    .line 16
    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type java.util.LinkedList<com.inmobi.signals.contextualdata.EncryptedContextualData>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/LinkedList;

    .line 17
    sput-object v0, Lcom/inmobi/media/c3;->c:Ljava/util/LinkedList;

    .line 18
    sget-object v0, Lcom/inmobi/media/e0;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 20
    const-string v0, "AdQualityComponent"

    const-string v1, "tag"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "starting"

    const-string v3, "message"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    sget-object v2, Lcom/inmobi/media/e0;->d:Lcom/inmobi/media/c0;

    if-nez v2, :cond_1

    .line 29
    new-instance v2, Lcom/inmobi/media/c0;

    sget-object v4, Lcom/inmobi/media/e0;->e:Lcom/inmobi/commons/core/configs/AdConfig;

    invoke-direct {v2, v4}, Lcom/inmobi/media/c0;-><init>(Lcom/inmobi/commons/core/configs/AdConfig;)V

    sput-object v2, Lcom/inmobi/media/e0;->d:Lcom/inmobi/media/c0;

    .line 31
    :cond_1
    sget-object v2, Lcom/inmobi/media/e0;->d:Lcom/inmobi/media/c0;

    const-string v4, "executor"

    const/4 v5, 0x0

    if-nez v2, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v5

    .line 32
    :cond_2
    iget-object v2, v2, Lcom/inmobi/media/c0;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_4

    .line 34
    sget-object v0, Lcom/inmobi/media/e0;->d:Lcom/inmobi/media/c0;

    if-nez v0, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v5

    :cond_3
    invoke-virtual {v0}, Lcom/inmobi/media/c0;->a()V

    goto :goto_0

    .line 37
    :cond_4
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "already started"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :goto_0
    invoke-static {}, Lcom/inmobi/media/u5;->b()Lorg/json/JSONObject;

    .line 46
    invoke-static {}, Lcom/inmobi/media/u5;->a()Lorg/json/JSONObject;

    .line 47
    sget-object v0, Lcom/inmobi/media/N3;->a:Lcom/inmobi/media/O3;

    .line 48
    sget-object v0, Lcom/inmobi/media/K2;->a:Ljava/util/LinkedHashMap;

    .line 49
    const-string v0, "ads"

    const-string v1, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig"

    invoke-static {v0, v1, v5}, Lcom/inmobi/media/V4;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/J2;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v0

    .line 50
    check-cast v0, Lcom/inmobi/commons/core/configs/AdConfig;

    .line 51
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig;->getAdReqDeprecateChecker()Lcom/inmobi/media/p0;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    invoke-virtual {v1, v2}, Lcom/inmobi/media/r4;->a(Z)Z

    move-result v1

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    sput-boolean v1, Lcom/inmobi/media/N3;->e:Z

    .line 53
    invoke-static {}, Lcom/inmobi/media/N3;->e()Ljava/lang/String;

    .line 54
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig;->getRendering()Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->getEnableImmersive()Z

    move-result v0

    const-string v1, "key"

    const-string v3, "TAG"

    if-eqz v0, :cond_d

    .line 55
    sget-boolean v0, Lcom/inmobi/media/N3;->i:Z

    const-string v4, "display_info_store"

    const-string v6, "N3"

    if-nez v0, :cond_6

    goto :goto_3

    .line 58
    :cond_6
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_3

    .line 59
    :cond_7
    sget-object v7, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v4}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object v0

    .line 61
    const-string v7, "safe_area"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v0, v0, Lcom/inmobi/media/e6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, v7, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 82
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 84
    :catch_0
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    move-object v7, v5

    .line 85
    :goto_2
    sput-object v7, Lcom/inmobi/media/N3;->f:Lorg/json/JSONObject;

    .line 93
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/inmobi/media/N3;->f:Lorg/json/JSONObject;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    :goto_3
    sget-boolean v0, Lcom/inmobi/media/N3;->i:Z

    if-nez v0, :cond_9

    goto :goto_4

    .line 97
    :cond_9
    invoke-static {}, Lcom/inmobi/media/N3;->f()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 98
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 101
    :cond_a
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_4

    .line 102
    :cond_b
    sget-object v7, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v4}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object v0

    .line 104
    const-string v4, "nav_bar_type"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iget-object v0, v0, Lcom/inmobi/media/e6;->a:Landroid/content/SharedPreferences;

    const/4 v7, -0x1

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 156
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sput-object v4, Lcom/inmobi/media/N3;->g:Ljava/lang/Integer;

    if-ne v0, v7, :cond_c

    move-object v4, v5

    .line 157
    :cond_c
    sput-object v4, Lcom/inmobi/media/N3;->g:Ljava/lang/Integer;

    .line 162
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    :cond_d
    :goto_4
    sget-object v0, Lcom/inmobi/media/fa;->a:Ljava/lang/String;

    .line 164
    :try_start_1
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_7

    .line 165
    :cond_e
    sget-object v4, Lcom/inmobi/media/fa;->c:Lcom/inmobi/commons/core/configs/SignalsConfig;

    .line 166
    invoke-virtual {v4}, Lcom/inmobi/commons/core/configs/SignalsConfig;->getPurchases()Lcom/inmobi/commons/core/configs/SignalsConfig$Purchases;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/commons/core/configs/SignalsConfig$Purchases;->getInapp()Z

    move-result v4

    if-nez v4, :cond_f

    goto :goto_7

    .line 167
    :cond_f
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_10

    sget-object v6, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v6, "purchase_store"

    invoke-static {v4, v6}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object v4

    goto :goto_5

    :cond_10
    move-object v4, v5

    :goto_5
    if-eqz v4, :cond_11

    .line 168
    const-string v6, "purchase_pref"

    .line 169
    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iget-object v1, v4, Lcom/inmobi/media/e6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_11
    move-object v1, v5

    :goto_6
    if-eqz v1, :cond_12

    .line 190
    sput-object v1, Lcom/inmobi/media/fa;->a:Ljava/lang/String;

    .line 191
    :cond_12
    invoke-static {v0}, Lcom/inmobi/media/fa;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_7

    .line 194
    :cond_13
    sput v2, Lcom/inmobi/media/fa;->d:I

    .line 195
    new-instance v1, Lcom/inmobi/media/wa;

    invoke-direct {v1}, Lcom/inmobi/media/wa;-><init>()V

    sput-object v1, Lcom/inmobi/media/fa;->b:Lcom/inmobi/media/wa;

    .line 196
    new-instance v4, Lcom/inmobi/media/da;

    invoke-direct {v4}, Lcom/inmobi/media/da;-><init>()V

    invoke-virtual {v1, v0, v4}, Lcom/inmobi/media/wa;->a(Landroid/content/Context;Lcom/inmobi/media/da;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    .line 212
    sget-object v1, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 213
    const-string v1, "event"

    invoke-static {v0, v1}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object v0

    .line 214
    sget-object v1, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v1, v0}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    .line 215
    :goto_7
    invoke-static {}, Lcom/inmobi/media/Tc;->b()V

    .line 216
    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    :try_start_2
    const-class v0, Landroidx/window/embedding/ActivityFilter;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 243
    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    const-class v0, Landroidx/window/embedding/ActivityRule;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 244
    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    const-class v0, Landroidx/window/embedding/RuleController;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 245
    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_2

    .line 249
    new-instance v0, Landroidx/window/embedding/ActivityFilter;

    .line 250
    new-instance v1, Landroid/content/ComponentName;

    const-class v4, Lcom/inmobi/ads/rendering/InMobiAdActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 251
    invoke-direct {v0, v1, v5}, Landroidx/window/embedding/ActivityFilter;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 255
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 256
    new-instance v1, Landroidx/window/embedding/ActivityRule$Builder;

    invoke-direct {v1, v0}, Landroidx/window/embedding/ActivityRule$Builder;-><init>(Ljava/util/Set;)V

    .line 257
    invoke-virtual {v1, v2}, Landroidx/window/embedding/ActivityRule$Builder;->setAlwaysExpand(Z)Landroidx/window/embedding/ActivityRule$Builder;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Landroidx/window/embedding/ActivityRule$Builder;->build()Landroidx/window/embedding/ActivityRule;

    move-result-object v0

    .line 259
    sget-object v1, Landroidx/window/embedding/RuleController;->Companion:Landroidx/window/embedding/RuleController$Companion;

    invoke-virtual {v1, p0}, Landroidx/window/embedding/RuleController$Companion;->getInstance(Landroid/content/Context;)Landroidx/window/embedding/RuleController;

    move-result-object v1

    .line 260
    invoke-virtual {v1, v0}, Landroidx/window/embedding/RuleController;->addRule(Landroidx/window/embedding/EmbeddingRule;)V

    .line 261
    :catch_2
    :try_start_3
    sget-object v0, Lcom/inmobi/media/r1;->a:Lcom/inmobi/media/r1;

    invoke-virtual {v0}, Lcom/inmobi/media/r1;->c()V

    .line 262
    invoke-static {}, Lcom/inmobi/media/r1;->a()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_8

    .line 264
    :catch_3
    const-string v0, "Tc"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    :goto_8
    sget-object v0, Lcom/inmobi/media/Lb;->a:Lcom/inmobi/media/Lb;

    const-string v1, "10.8.3"

    invoke-virtual {v0, p0, v1}, Lcom/inmobi/media/Lb;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 267
    sput-boolean v2, Lcom/inmobi/media/Tc;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :try_start_0
    sget-object v0, Lcom/inmobi/media/Lb;->a:Lcom/inmobi/media/Lb;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/Lb;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/inmobi/media/Lb;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "10.8.3"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    :cond_0
    sget-object v1, Lcom/inmobi/media/m4;->d:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/P6;

    .line 5
    new-instance v2, Lcom/inmobi/media/Tc$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lcom/inmobi/media/Tc$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string v3, "runnable"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v1, v1, Lcom/inmobi/media/P6;->a:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    invoke-static {p1}, Lcom/inmobi/media/s4;->b(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/inmobi/media/Lb;->a(Landroid/content/Context;Z)V

    .line 49
    sget-object v0, Lcom/inmobi/media/Kb;->a:Lcom/inmobi/media/Kb;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "getApplicationContext(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/inmobi/media/Kb;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 53
    sget-object v0, Lcom/inmobi/media/w5;->a:Lcom/inmobi/media/w5;

    .line 54
    const-string v0, "event"

    invoke-static {p1, v0}, Lcom/inmobi/media/c5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/d2;

    move-result-object p1

    .line 55
    sget-object v0, Lcom/inmobi/media/w5;->d:Lcom/inmobi/media/g6;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/g6;->a(Lcom/inmobi/media/d2;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final c(Landroid/content/Context;)V
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-boolean v1, Lcom/inmobi/media/Tc;->b:Z

    if-eqz v1, :cond_0

    return-void

    .line 16
    :cond_0
    sget-object v1, Lcom/inmobi/media/K2;->a:Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/inmobi/media/I2;->a()V

    .line 17
    invoke-static {}, Lcom/inmobi/media/ic;->c()V

    .line 29
    sget-object v1, Lcom/inmobi/media/Jc;->a:Lcom/inmobi/media/Jc;

    invoke-virtual {v1}, Lcom/inmobi/media/Jc;->a()V

    .line 31
    sget-object v1, Lcom/inmobi/media/e1;->a:Lcom/google/android/gms/appset/AppSetIdInfo;

    .line 33
    sget-object v1, Lcom/inmobi/media/n5;->a:Lkotlin/Lazy;

    .line 35
    sget-object v1, Lcom/inmobi/media/E3;->a:Lcom/inmobi/media/E3;

    invoke-virtual {v1}, Lcom/inmobi/media/E3;->v()V

    .line 36
    sget v4, Lcom/inmobi/media/ca;->a:I

    .line 37
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v1

    const/high16 v8, -0x80000000

    const-string v9, "user_info_store"

    if-eq v4, v8, :cond_1

    .line 39
    sput v4, Lcom/inmobi/media/ca;->a:I

    if-eqz v1, :cond_1

    .line 41
    sget-object v2, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v9}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object v2

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "user_age"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/inmobi/media/e6;->a(Lcom/inmobi/media/e6;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 42
    :cond_1
    sget-object v12, Lcom/inmobi/media/ca;->c:Ljava/lang/String;

    .line 43
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v1

    if-eqz v12, :cond_2

    .line 45
    sput-object v12, Lcom/inmobi/media/ca;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 47
    sget-object v2, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v9}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object v10

    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v11, "user_age_group"

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lcom/inmobi/media/e6;->a(Lcom/inmobi/media/e6;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 48
    :cond_2
    sget-object v3, Lcom/inmobi/media/ca;->d:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v1

    .line 50
    sput-object v3, Lcom/inmobi/media/ca;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    .line 52
    sget-object v2, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v9}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object v1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "user_area_code"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/inmobi/media/e6;->a(Lcom/inmobi/media/e6;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 53
    :cond_3
    sget-object v12, Lcom/inmobi/media/ca;->e:Ljava/lang/String;

    .line 54
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v1

    if-eqz v12, :cond_4

    .line 56
    sput-object v12, Lcom/inmobi/media/ca;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 58
    sget-object v2, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v9}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object v10

    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v11, "user_post_code"

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lcom/inmobi/media/e6;->a(Lcom/inmobi/media/e6;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 59
    :cond_4
    sget-object v3, Lcom/inmobi/media/ca;->f:Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v1

    if-eqz v3, :cond_5

    .line 62
    sput-object v3, Lcom/inmobi/media/ca;->f:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 64
    sget-object v2, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v9}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object v1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "user_city_code"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/inmobi/media/e6;->a(Lcom/inmobi/media/e6;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 65
    :cond_5
    sget-object v12, Lcom/inmobi/media/ca;->g:Ljava/lang/String;

    .line 66
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v1

    if-eqz v12, :cond_6

    .line 68
    sput-object v12, Lcom/inmobi/media/ca;->g:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 70
    sget-object v2, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v9}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object v10

    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v11, "user_state_code"

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lcom/inmobi/media/e6;->a(Lcom/inmobi/media/e6;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 71
    :cond_6
    sget-object v3, Lcom/inmobi/media/ca;->h:Ljava/lang/String;

    .line 72
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v1

    if-eqz v3, :cond_7

    .line 74
    sput-object v3, Lcom/inmobi/media/ca;->h:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 76
    sget-object v2, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v9}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object v1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "user_country_code"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/inmobi/media/e6;->a(Lcom/inmobi/media/e6;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 77
    :cond_7
    sget v12, Lcom/inmobi/media/ca;->i:I

    .line 78
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v1

    if-eq v12, v8, :cond_8

    .line 80
    sput v12, Lcom/inmobi/media/ca;->i:I

    if-eqz v1, :cond_8

    .line 82
    sget-object v2, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v9}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object v10

    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v11, "user_yob"

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lcom/inmobi/media/e6;->a(Lcom/inmobi/media/e6;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 83
    :cond_8
    sget-object v3, Lcom/inmobi/media/ca;->j:Ljava/lang/String;

    .line 84
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v1

    if-eqz v3, :cond_9

    .line 86
    sput-object v3, Lcom/inmobi/media/ca;->j:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 88
    sget-object v2, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v9}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object v1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "user_gender"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/inmobi/media/e6;->a(Lcom/inmobi/media/e6;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 89
    :cond_9
    sget-object v12, Lcom/inmobi/media/ca;->k:Ljava/lang/String;

    .line 90
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v1

    if-eqz v12, :cond_a

    .line 92
    sput-object v12, Lcom/inmobi/media/ca;->k:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 94
    sget-object v2, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v9}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object v10

    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v11, "user_education"

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lcom/inmobi/media/e6;->a(Lcom/inmobi/media/e6;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 95
    :cond_a
    sget-object v3, Lcom/inmobi/media/ca;->l:Ljava/lang/String;

    .line 96
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v1

    if-eqz v3, :cond_b

    .line 98
    sput-object v3, Lcom/inmobi/media/ca;->l:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 100
    sget-object v2, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v9}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object v1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "user_language"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/inmobi/media/e6;->a(Lcom/inmobi/media/e6;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 101
    :cond_b
    sget-object v12, Lcom/inmobi/media/ca;->m:Ljava/lang/String;

    .line 102
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v1

    if-eqz v12, :cond_c

    .line 104
    sput-object v12, Lcom/inmobi/media/ca;->m:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 106
    sget-object v2, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v9}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object v10

    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v11, "user_interest"

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lcom/inmobi/media/e6;->a(Lcom/inmobi/media/e6;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 107
    :cond_c
    sget-object v1, Lcom/inmobi/media/ca;->n:Landroid/location/Location;

    .line 108
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v2

    if-eqz v1, :cond_d

    .line 110
    sput-object v1, Lcom/inmobi/media/ca;->n:Landroid/location/Location;

    if-eqz v2, :cond_d

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 112
    sget-object v1, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v9}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object v10

    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v11, "user_location"

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lcom/inmobi/media/e6;->a(Lcom/inmobi/media/e6;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 113
    :cond_d
    sget v1, Lcom/inmobi/media/ca;->a:I

    const-string v2, "key"

    if-eq v1, v8, :cond_e

    goto :goto_1

    .line 116
    :cond_e
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_f

    move v1, v8

    goto :goto_0

    .line 118
    :cond_f
    sget-object v3, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v9}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object v1

    .line 120
    const-string v3, "user_age"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    iget-object v1, v1, Lcom/inmobi/media/e6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 172
    :goto_0
    sput v1, Lcom/inmobi/media/ca;->a:I

    .line 173
    :goto_1
    sget-object v1, Lcom/inmobi/media/ca;->c:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v1, :cond_10

    goto :goto_3

    .line 176
    :cond_10
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_11

    move-object v1, v3

    goto :goto_2

    .line 177
    :cond_11
    sget-object v4, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v9}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object v1

    .line 179
    const-string v4, "user_age_group"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    iget-object v1, v1, Lcom/inmobi/media/e6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    :goto_2
    sput-object v1, Lcom/inmobi/media/ca;->c:Ljava/lang/String;

    .line 201
    :goto_3
    sget-object v1, Lcom/inmobi/media/ca;->d:Ljava/lang/String;

    if-eqz v1, :cond_12

    goto :goto_5

    .line 204
    :cond_12
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_13

    move-object v1, v3

    goto :goto_4

    .line 206
    :cond_13
    sget-object v4, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v9}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object v1

    .line 208
    const-string v4, "user_area_code"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    iget-object v1, v1, Lcom/inmobi/media/e6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    :goto_4
    sput-object v1, Lcom/inmobi/media/ca;->d:Ljava/lang/String;

    .line 230
    :goto_5
    sget-object v1, Lcom/inmobi/media/ca;->e:Ljava/lang/String;

    if-eqz v1, :cond_14

    goto :goto_7

    .line 233
    :cond_14
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_15

    move-object v1, v3

    goto :goto_6

    .line 235
    :cond_15
    sget-object v4, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v9}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object v1

    .line 237
    const-string v4, "user_post_code"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    iget-object v1, v1, Lcom/inmobi/media/e6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 258
    :goto_6
    sput-object v1, Lcom/inmobi/media/ca;->e:Ljava/lang/String;

    .line 259
    :goto_7
    sget-object v1, Lcom/inmobi/media/ca;->f:Ljava/lang/String;

    if-eqz v1, :cond_16

    goto :goto_9

    .line 262
    :cond_16
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_17

    move-object v1, v3

    goto :goto_8

    .line 263
    :cond_17
    sget-object v4, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v9}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object v1

    .line 265
    const-string v4, "user_city_code"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    iget-object v1, v1, Lcom/inmobi/media/e6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 286
    :goto_8
    sput-object v1, Lcom/inmobi/media/ca;->f:Ljava/lang/String;

    .line 287
    :goto_9
    sget-object v1, Lcom/inmobi/media/ca;->g:Ljava/lang/String;

    if-eqz v1, :cond_18

    goto :goto_b

    .line 290
    :cond_18
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_19

    move-object v1, v3

    goto :goto_a

    .line 292
    :cond_19
    sget-object v4, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v9}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object v1

    .line 294
    const-string v4, "user_state_code"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    iget-object v1, v1, Lcom/inmobi/media/e6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 315
    :goto_a
    sput-object v1, Lcom/inmobi/media/ca;->g:Ljava/lang/String;

    .line 316
    :goto_b
    sget-object v1, Lcom/inmobi/media/ca;->h:Ljava/lang/String;

    if-eqz v1, :cond_1a

    goto :goto_d

    .line 319
    :cond_1a
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1b

    move-object v1, v3

    goto :goto_c

    .line 321
    :cond_1b
    sget-object v4, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v9}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object v1

    .line 323
    const-string v4, "user_country_code"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    iget-object v1, v1, Lcom/inmobi/media/e6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 344
    :goto_c
    sput-object v1, Lcom/inmobi/media/ca;->h:Ljava/lang/String;

    .line 345
    :goto_d
    sget v1, Lcom/inmobi/media/ca;->i:I

    if-eq v1, v8, :cond_1c

    goto :goto_f

    .line 348
    :cond_1c
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1d

    goto :goto_e

    .line 350
    :cond_1d
    sget-object v4, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v9}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object v1

    .line 352
    const-string v4, "user_yob"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 403
    iget-object v1, v1, Lcom/inmobi/media/e6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v4, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 404
    :goto_e
    sput v8, Lcom/inmobi/media/ca;->i:I

    .line 405
    :goto_f
    sget-object v1, Lcom/inmobi/media/ca;->j:Ljava/lang/String;

    if-eqz v1, :cond_1e

    goto :goto_11

    .line 408
    :cond_1e
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1f

    move-object v1, v3

    goto :goto_10

    .line 410
    :cond_1f
    sget-object v4, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v9}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object v1

    .line 412
    const-string v4, "user_gender"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    iget-object v1, v1, Lcom/inmobi/media/e6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 433
    :goto_10
    sput-object v1, Lcom/inmobi/media/ca;->j:Ljava/lang/String;

    .line 434
    :goto_11
    sget-object v1, Lcom/inmobi/media/ca;->k:Ljava/lang/String;

    if-eqz v1, :cond_20

    goto :goto_13

    .line 437
    :cond_20
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_21

    move-object v1, v3

    goto :goto_12

    .line 439
    :cond_21
    sget-object v4, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v9}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object v1

    .line 441
    const-string v4, "user_education"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
    iget-object v1, v1, Lcom/inmobi/media/e6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 462
    :goto_12
    sput-object v1, Lcom/inmobi/media/ca;->k:Ljava/lang/String;

    .line 463
    :goto_13
    sget-object v1, Lcom/inmobi/media/ca;->l:Ljava/lang/String;

    if-eqz v1, :cond_22

    goto :goto_15

    .line 466
    :cond_22
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_23

    move-object v1, v3

    goto :goto_14

    .line 468
    :cond_23
    sget-object v4, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v9}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object v1

    .line 470
    const-string v4, "user_language"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 490
    iget-object v1, v1, Lcom/inmobi/media/e6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 491
    :goto_14
    sput-object v1, Lcom/inmobi/media/ca;->l:Ljava/lang/String;

    .line 492
    :goto_15
    sget-object v1, Lcom/inmobi/media/ca;->m:Ljava/lang/String;

    if-eqz v1, :cond_24

    goto :goto_17

    .line 495
    :cond_24
    invoke-static {}, Lcom/inmobi/media/Kb;->d()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_25

    goto :goto_16

    .line 497
    :cond_25
    sget-object v4, Lcom/inmobi/media/e6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v9}, Lcom/inmobi/media/d6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/e6;

    move-result-object v1

    .line 499
    const-string v4, "user_interest"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 519
    iget-object v1, v1, Lcom/inmobi/media/e6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 520
    :goto_16
    sput-object v3, Lcom/inmobi/media/ca;->m:Ljava/lang/String;

    .line 521
    :goto_17
    invoke-static {}, Lcom/inmobi/media/ca;->b()Landroid/location/Location;

    .line 522
    invoke-static {}, Lcom/inmobi/media/ca;->c()Z

    .line 523
    new-instance v1, Lcom/inmobi/media/Tc$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/inmobi/media/Tc$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/inmobi/media/Kb;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()Z
    .locals 1

    .line 1
    :try_start_0
    const-class v0, Landroidx/browser/customtabs/CustomTabsClient;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    const-class v0, Lcom/iab/omid/library/inmobi/Omid;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    const/4 v0, 0x1

    return v0
.end method

.method public final e(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/inmobi/media/i1;->a:Lcom/inmobi/media/i1;

    sget-object v1, Lcom/inmobi/media/Tc;->c:Lcom/inmobi/media/Sc;

    invoke-virtual {v0, p1, v1}, Lcom/inmobi/media/i1;->a(Landroid/content/Context;Lcom/inmobi/media/g1;)V

    return-void
.end method
