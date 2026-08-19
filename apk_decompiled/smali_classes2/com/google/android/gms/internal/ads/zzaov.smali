.class public final Lcom/google/android/gms/internal/ads/zzaov;
.super Ljava/lang/Thread;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# static fields
.field private static final zza:Z


# instance fields
.field private final zzb:Ljava/util/concurrent/BlockingQueue;

.field private final zzc:Ljava/util/concurrent/BlockingQueue;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzaot;

.field private volatile zze:Z

.field private final zzf:Lcom/google/android/gms/internal/ads/zzapw;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzapa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzapv;->zzb:Z

    sput-boolean v0, Lcom/google/android/gms/internal/ads/zzaov;->zza:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/zzaot;Lcom/google/android/gms/internal/ads/zzapa;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zze:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzb:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzc:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzd:Lcom/google/android/gms/internal/ads/zzaot;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzg:Lcom/google/android/gms/internal/ads/zzapa;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzapw;

    .line 2
    invoke-direct {p1, p0, p2, p4}, Lcom/google/android/gms/internal/ads/zzapw;-><init>(Lcom/google/android/gms/internal/ads/zzaov;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/zzapa;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzf:Lcom/google/android/gms/internal/ads/zzapw;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzaov;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzc:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method private zzc()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzb:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzapj;

    const-string v1, "cache-queue-take"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzapj;->zzm(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzapj;->zzt(I)V

    const/4 v2, 0x2

    .line 4
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapj;->zzw()Z

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzd:Lcom/google/android/gms/internal/ads/zzaot;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapj;->zzj()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzaot;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaos;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v1, "cache-miss"

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzapj;->zzm(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzf:Lcom/google/android/gms/internal/ads/zzapw;

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzapw;->zzc(Lcom/google/android/gms/internal/ads/zzapj;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzc:Ljava/util/concurrent/BlockingQueue;

    .line 8
    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 9
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzaos;->zza(J)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v1, "cache-hit-expired"

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzapj;->zzm(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzapj;->zze(Lcom/google/android/gms/internal/ads/zzaos;)Lcom/google/android/gms/internal/ads/zzapj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzf:Lcom/google/android/gms/internal/ads/zzapw;

    .line 12
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzapw;->zzc(Lcom/google/android/gms/internal/ads/zzapj;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzc:Ljava/util/concurrent/BlockingQueue;

    .line 13
    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v7, "cache-hit"

    .line 14
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzapj;->zzm(Ljava/lang/String;)V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzapf;

    iget-object v8, v4, Lcom/google/android/gms/internal/ads/zzaos;->zza:[B

    iget-object v9, v4, Lcom/google/android/gms/internal/ads/zzaos;->zzg:Ljava/util/Map;

    .line 15
    invoke-direct {v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzapf;-><init>([BLjava/util/Map;)V

    .line 16
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzapj;->zzh(Lcom/google/android/gms/internal/ads/zzapf;)Lcom/google/android/gms/internal/ads/zzapp;

    move-result-object v7

    const-string v8, "cache-hit-parsed"

    .line 17
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzapj;->zzm(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzapp;->zzc()Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_2

    const-string v4, "cache-parsing-failed"

    .line 24
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzapj;->zzm(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapj;->zzj()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzaot;->zzc(Ljava/lang/String;Z)V

    .line 26
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzapj;->zze(Lcom/google/android/gms/internal/ads/zzaos;)Lcom/google/android/gms/internal/ads/zzapj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzf:Lcom/google/android/gms/internal/ads/zzapw;

    .line 27
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzapw;->zzc(Lcom/google/android/gms/internal/ads/zzapj;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzc:Ljava/util/concurrent/BlockingQueue;

    .line 28
    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-wide v10, v4, Lcom/google/android/gms/internal/ads/zzaos;->zzf:J

    cmp-long v3, v10, v5

    if-gez v3, :cond_4

    const-string v3, "cache-hit-refresh-needed"

    .line 18
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzapj;->zzm(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzapj;->zze(Lcom/google/android/gms/internal/ads/zzaos;)Lcom/google/android/gms/internal/ads/zzapj;

    iput-boolean v1, v7, Lcom/google/android/gms/internal/ads/zzapp;->zzd:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzf:Lcom/google/android/gms/internal/ads/zzapw;

    .line 20
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzapw;->zzc(Lcom/google/android/gms/internal/ads/zzapj;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzg:Lcom/google/android/gms/internal/ads/zzapa;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaou;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/zzaou;-><init>(Lcom/google/android/gms/internal/ads/zzaov;Lcom/google/android/gms/internal/ads/zzapj;)V

    .line 21
    invoke-virtual {v1, v0, v7, v3}, Lcom/google/android/gms/internal/ads/zzapa;->zzb(Lcom/google/android/gms/internal/ads/zzapj;Lcom/google/android/gms/internal/ads/zzapp;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzg:Lcom/google/android/gms/internal/ads/zzapa;

    .line 22
    invoke-virtual {v1, v0, v7, v9}, Lcom/google/android/gms/internal/ads/zzapa;->zzb(Lcom/google/android/gms/internal/ads/zzapj;Lcom/google/android/gms/internal/ads/zzapp;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzg:Lcom/google/android/gms/internal/ads/zzapa;

    .line 23
    invoke-virtual {v1, v0, v7, v9}, Lcom/google/android/gms/internal/ads/zzapa;->zzb(Lcom/google/android/gms/internal/ads/zzapj;Lcom/google/android/gms/internal/ads/zzapp;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_5
    :goto_0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzapj;->zzt(I)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzapj;->zzt(I)V

    .line 30
    throw v1
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzaov;->zza:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "start new dispatcher"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzapv;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0xa

    .line 2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zzd:Lcom/google/android/gms/internal/ads/zzaot;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaot;->zzb()V

    .line 4
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaov;->zzc()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zze:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it"

    .line 5
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzapv;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final zzb()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaov;->zze:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaov;->interrupt()V

    return-void
.end method
