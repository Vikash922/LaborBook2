.class public final Lcom/google/android/gms/internal/ads/zzdxh;
.super Lcom/google/android/gms/internal/ads/zzdxb;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private zzg:Ljava/lang/String;

.field private zzh:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdxb;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdxh;->zzh:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzu()Lcom/google/android/gms/ads/internal/util/zzbt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzbt;->zzb()Landroid/os/Looper;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbud;

    invoke-direct {v1, p1, v0, p0, p0}, Lcom/google/android/gms/internal/ads/zzbud;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxh;->zzf:Lcom/google/android/gms/internal/ads/zzbud;

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 6

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxh;->zzb:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdxh;->zzd:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdxh;->zzd:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdxh;->zzh:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxh;->zzf:Lcom/google/android/gms/internal/ads/zzbud;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbud;->zzp()Lcom/google/android/gms/internal/ads/zzbum;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdxh;->zze:Lcom/google/android/gms/internal/ads/zzbuy;

    .line 9
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbci;->zzmW:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v3

    .line 9
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdxa;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdxh;->zza:Lcom/google/android/gms/internal/ads/zzbzp;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdxh;->zze:Lcom/google/android/gms/internal/ads/zzbuy;

    .line 12
    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdxa;-><init>(Lcom/google/android/gms/internal/ads/zzbzp;Lcom/google/android/gms/internal/ads/zzbuy;)V

    goto :goto_0

    .line 18
    :cond_0
    new-instance v3, Lcom/google/android/gms/internal/ads/zzdwz;

    .line 11
    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzdwz;-><init>(Lcom/google/android/gms/internal/ads/zzdxb;)V

    .line 13
    :goto_0
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbum;->zze(Lcom/google/android/gms/internal/ads/zzbuy;Lcom/google/android/gms/internal/ads/zzbuq;)V

    goto :goto_2

    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxh;->zzf:Lcom/google/android/gms/internal/ads/zzbud;

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbud;->zzp()Lcom/google/android/gms/internal/ads/zzbum;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdxh;->zzg:Ljava/lang/String;

    .line 2
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbci;->zzmW:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v3

    .line 2
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdxa;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdxh;->zza:Lcom/google/android/gms/internal/ads/zzbzp;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdxh;->zze:Lcom/google/android/gms/internal/ads/zzbuy;

    .line 5
    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdxa;-><init>(Lcom/google/android/gms/internal/ads/zzbzp;Lcom/google/android/gms/internal/ads/zzbuy;)V

    goto :goto_1

    .line 6
    :cond_2
    new-instance v3, Lcom/google/android/gms/internal/ads/zzdwz;

    .line 4
    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzdwz;-><init>(Lcom/google/android/gms/internal/ads/zzdxb;)V

    .line 6
    :goto_1
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbum;->zzh(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbuq;)V

    goto :goto_2

    .line 4
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxh;->zza:Lcom/google/android/gms/internal/ads/zzbzp;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdxq;

    .line 7
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdxq;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbzp;->zzd(Ljava/lang/Throwable;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 14
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbza;

    move-result-object v2

    const-string v3, "RemoteUrlAndCacheKeyClientTask.onConnected"

    .line 15
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzbza;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxh;->zza:Lcom/google/android/gms/internal/ads/zzbzp;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdxq;

    .line 16
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdxq;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbzp;->zzd(Ljava/lang/Throwable;)Z

    goto :goto_2

    .line 18
    :catch_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxh;->zza:Lcom/google/android/gms/internal/ads/zzbzp;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdxq;

    .line 17
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdxq;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbzp;->zzd(Ljava/lang/Throwable;)Z

    .line 18
    :cond_4
    :goto_2
    monitor-exit p1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    .line 1
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Cannot connect to remote service, fallback to local instance."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdxq;

    const/4 v0, 0x1

    .line 3
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzdxq;-><init>(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxh;->zza:Lcom/google/android/gms/internal/ads/zzbzp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbzp;->zzd(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbuy;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxh;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdxh;->zzh:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v2, :cond_0

    if-eq v1, v3, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdxq;

    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/ads/zzdxq;-><init>(I)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgbs;->zzg(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdxh;->zzc:Z

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxh;->zza:Lcom/google/android/gms/internal/ads/zzbzp;

    .line 4
    monitor-exit v0

    return-object p1

    :cond_1
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzdxh;->zzh:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzdxh;->zzc:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxh;->zze:Lcom/google/android/gms/internal/ads/zzbuy;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxb;->zzf:Lcom/google/android/gms/internal/ads/zzbud;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbud;->checkAvailabilityAndConnect()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxh;->zza:Lcom/google/android/gms/internal/ads/zzbzp;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdxf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdxf;-><init>(Lcom/google/android/gms/internal/ads/zzdxh;)V

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbzk;->zzg:Lcom/google/android/gms/internal/ads/zzgcd;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbzp;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 3
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzd(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxh;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdxh;->zzh:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    if-eq v1, v2, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdxq;

    const/4 v1, 0x2

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzdxq;-><init>(I)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgbs;->zzg(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdxh;->zzc:Z

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxh;->zza:Lcom/google/android/gms/internal/ads/zzbzp;

    .line 4
    monitor-exit v0

    return-object p1

    :cond_1
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdxh;->zzh:I

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzdxh;->zzc:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxh;->zzg:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxb;->zzf:Lcom/google/android/gms/internal/ads/zzbud;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbud;->checkAvailabilityAndConnect()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxh;->zza:Lcom/google/android/gms/internal/ads/zzbzp;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdxg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdxg;-><init>(Lcom/google/android/gms/internal/ads/zzdxh;)V

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbzk;->zzg:Lcom/google/android/gms/internal/ads/zzgcd;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbzp;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 3
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
