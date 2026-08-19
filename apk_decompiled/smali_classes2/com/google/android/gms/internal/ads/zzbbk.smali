.class public final Lcom/google/android/gms/internal/ads/zzbbk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.2.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbbm;

.field private final zzb:[B

.field private zzc:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbbm;[BLcom/google/android/gms/internal/ads/zzbbl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbk;->zza:Lcom/google/android/gms/internal/ads/zzbbm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbbk;->zzb:[B

    return-void
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzbbk;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbk;->zzd()V

    return-void
.end method

.method private final declared-synchronized zzd()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbk;->zza:Lcom/google/android/gms/internal/ads/zzbbm;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbbm;->zzb:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbbm;->zza:Lcom/google/android/gms/internal/ads/zzayc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbbk;->zzb:[B

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzayc;->zzj([B)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbbm;->zza:Lcom/google/android/gms/internal/ads/zzayc;

    const/4 v2, 0x0

    .line 2
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzayc;->zzi(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbbm;->zza:Lcom/google/android/gms/internal/ads/zzayc;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbbk;->zzc:I

    .line 3
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzayc;->zzg(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbbm;->zza:Lcom/google/android/gms/internal/ads/zzayc;

    const/4 v2, 0x0

    .line 4
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzayc;->zzh([I)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbbm;->zza:Lcom/google/android/gms/internal/ads/zzayc;

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzayc;->zzf()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Clearcut log failed"

    .line 6
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/ads/zzbbk;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbk;->zzc:I

    return-object p0
.end method

.method public final declared-synchronized zzc()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbk;->zza:Lcom/google/android/gms/internal/ads/zzbbm;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbm;->zza(Lcom/google/android/gms/internal/ads/zzbbm;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbbj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbbj;-><init>(Lcom/google/android/gms/internal/ads/zzbbk;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
