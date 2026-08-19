.class public final Lcom/google/android/gms/internal/ads/zzapd;
.super Ljava/lang/Thread;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Ljava/util/concurrent/BlockingQueue;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzapc;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzaot;

.field private volatile zzd:Z

.field private final zze:Lcom/google/android/gms/internal/ads/zzapa;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/zzapc;Lcom/google/android/gms/internal/ads/zzaot;Lcom/google/android/gms/internal/ads/zzapa;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapd;->zzd:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapd;->zza:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzapd;->zzb:Lcom/google/android/gms/internal/ads/zzapc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzapd;->zzc:Lcom/google/android/gms/internal/ads/zzaot;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzapd;->zze:Lcom/google/android/gms/internal/ads/zzapa;

    return-void
.end method

.method private zzb()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapd;->zza:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzapj;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    const/4 v1, 0x3

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzapj;->zzt(I)V

    const/4 v1, 0x4

    :try_start_0
    const-string v2, "network-queue-take"

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzapj;->zzm(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapj;->zzw()Z

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapj;->zzc()I

    move-result v2

    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzapd;->zzb:Lcom/google/android/gms/internal/ads/zzapc;

    .line 7
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzapc;->zza(Lcom/google/android/gms/internal/ads/zzapj;)Lcom/google/android/gms/internal/ads/zzapf;

    move-result-object v2

    const-string v3, "network-http-complete"

    .line 8
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzapj;->zzm(Ljava/lang/String;)V

    .line 9
    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzapf;->zze:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapj;->zzv()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "not-modified"

    .line 17
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzapj;->zzp(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapj;->zzr()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzapj;->zzh(Lcom/google/android/gms/internal/ads/zzapf;)Lcom/google/android/gms/internal/ads/zzapp;

    move-result-object v2

    const-string v3, "network-parse-complete"

    .line 11
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzapj;->zzm(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzapp;->zzb:Lcom/google/android/gms/internal/ads/zzaos;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzapd;->zzc:Lcom/google/android/gms/internal/ads/zzaot;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapj;->zzj()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzaot;->zzd(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaos;)V

    const-string v3, "network-cache-written"

    .line 13
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzapj;->zzm(Ljava/lang/String;)V

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapj;->zzq()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzapd;->zze:Lcom/google/android/gms/internal/ads/zzapa;

    const/4 v4, 0x0

    .line 15
    invoke-virtual {v3, v0, v2, v4}, Lcom/google/android/gms/internal/ads/zzapa;->zzb(Lcom/google/android/gms/internal/ads/zzapj;Lcom/google/android/gms/internal/ads/zzapp;Ljava/lang/Runnable;)V

    .line 16
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzapj;->zzs(Lcom/google/android/gms/internal/ads/zzapp;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzaps; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    .line 26
    :try_start_1
    const-string v3, "Unhandled exception %s"

    .line 19
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzapv;->zzc(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaps;

    .line 20
    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzaps;-><init>(Ljava/lang/Throwable;)V

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzapd;->zze:Lcom/google/android/gms/internal/ads/zzapa;

    .line 22
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzapa;->zza(Lcom/google/android/gms/internal/ads/zzapj;Lcom/google/android/gms/internal/ads/zzaps;)V

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapj;->zzr()V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzapd;->zze:Lcom/google/android/gms/internal/ads/zzapa;

    .line 25
    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/internal/ads/zzapa;->zza(Lcom/google/android/gms/internal/ads/zzapj;Lcom/google/android/gms/internal/ads/zzaps;)V

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapj;->zzr()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzapj;->zzt(I)V

    return-void

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzapj;->zzt(I)V

    .line 28
    throw v2
.end method


# virtual methods
.method public final run()V
    .locals 2

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzapd;->zzb()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapd;->zzd:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    const-string v1, "Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzapv;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final zza()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapd;->zzd:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzapd;->interrupt()V

    return-void
.end method
