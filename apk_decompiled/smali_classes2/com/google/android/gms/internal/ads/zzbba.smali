.class final Lcom/google/android/gms/internal/ads/zzbba;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;


# static fields
.field public static final synthetic zzd:I


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbas;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbzp;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbbc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbbc;Lcom/google/android/gms/internal/ads/zzbas;Lcom/google/android/gms/internal/ads/zzbzp;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbba;->zza:Lcom/google/android/gms/internal/ads/zzbas;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbba;->zzb:Lcom/google/android/gms/internal/ads/zzbzp;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbba;->zzc:Lcom/google/android/gms/internal/ads/zzbbc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 5

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbba;->zzc:Lcom/google/android/gms/internal/ads/zzbbc;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbc;->zzb(Lcom/google/android/gms/internal/ads/zzbbc;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbc;->zzf(Lcom/google/android/gms/internal/ads/zzbbc;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 1
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzbbc;->zzd(Lcom/google/android/gms/internal/ads/zzbbc;Z)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbc;->zza(Lcom/google/android/gms/internal/ads/zzbbc;)Lcom/google/android/gms/internal/ads/zzbar;

    move-result-object p1

    if-nez p1, :cond_1

    .line 2
    monitor-exit v0

    return-void

    .line 3
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbzk;->zza:Lcom/google/android/gms/internal/ads/zzgcd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbba;->zza:Lcom/google/android/gms/internal/ads/zzbas;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbba;->zzb:Lcom/google/android/gms/internal/ads/zzbzp;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbax;

    invoke-direct {v4, p0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbax;-><init>(Lcom/google/android/gms/internal/ads/zzbba;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/internal/ads/zzbas;Lcom/google/android/gms/internal/ads/zzbzp;)V

    .line 4
    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/zzgcd;->zza(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbay;

    invoke-direct {v1, v3, p1}, Lcom/google/android/gms/internal/ads/zzbay;-><init>(Lcom/google/android/gms/internal/ads/zzbzp;Ljava/util/concurrent/Future;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbzk;->zzg:Lcom/google/android/gms/internal/ads/zzgcd;

    .line 5
    invoke-virtual {v3, v1, p1}, Lcom/google/android/gms/internal/ads/zzbzp;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    return-void
.end method
