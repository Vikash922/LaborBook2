.class public final Lcom/google/android/gms/internal/ads/zzeya;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeyl;


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzcui;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized zza()Lcom/google/android/gms/internal/ads/zzcui;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeya;->zza:Lcom/google/android/gms/internal/ads/zzcui;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzb(Lcom/google/android/gms/internal/ads/zzeym;Lcom/google/android/gms/internal/ads/zzeyk;Lcom/google/android/gms/internal/ads/zzcui;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    monitor-enter p0

    if-eqz p3, :cond_0

    .line 2
    :try_start_0
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeya;->zza:Lcom/google/android/gms/internal/ads/zzcui;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzeym;->zzb:Lcom/google/android/gms/internal/ads/zzeyj;

    .line 1
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzeyk;->zza(Lcom/google/android/gms/internal/ads/zzeyj;)Lcom/google/android/gms/internal/ads/zzcuh;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcuh;->zzh()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcui;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeya;->zza:Lcom/google/android/gms/internal/ads/zzcui;

    .line 2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeya;->zza:Lcom/google/android/gms/internal/ads/zzcui;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcui;->zzb()Lcom/google/android/gms/internal/ads/zzcrk;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcrk;->zzi()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcrk;->zzh(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzeym;Lcom/google/android/gms/internal/ads/zzeyk;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    const/4 p3, 0x0

    .line 1
    move-object v0, p3

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcui;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzeya;->zzb(Lcom/google/android/gms/internal/ads/zzeym;Lcom/google/android/gms/internal/ads/zzeyk;Lcom/google/android/gms/internal/ads/zzcui;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zzd()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeya;->zza()Lcom/google/android/gms/internal/ads/zzcui;

    move-result-object v0

    return-object v0
.end method
