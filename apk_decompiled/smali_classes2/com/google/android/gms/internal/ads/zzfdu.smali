.class final Lcom/google/android/gms/internal/ads/zzfdu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgbo;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfdx;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfdy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfdy;Lcom/google/android/gms/internal/ads/zzfdx;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfdu;->zza:Lcom/google/android/gms/internal/ads/zzfdx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfdu;->zzb:Lcom/google/android/gms/internal/ads/zzfdy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfdu;->zzb:Lcom/google/android/gms/internal/ads/zzfdy;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfdy;->zzd(Lcom/google/android/gms/internal/ads/zzfdy;Lcom/google/android/gms/internal/ads/zzfee;)V

    .line 2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfdu;->zzb:Lcom/google/android/gms/internal/ads/zzfdy;

    monitor-enter p1

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfdy;->zzd(Lcom/google/android/gms/internal/ads/zzfdy;Lcom/google/android/gms/internal/ads/zzfee;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfdy;->zzb(Lcom/google/android/gms/internal/ads/zzfdy;)Ljava/util/ArrayDeque;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfdu;->zza:Lcom/google/android/gms/internal/ads/zzfdx;

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfdy;->zzg(Lcom/google/android/gms/internal/ads/zzfdy;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfdy;->zze(Lcom/google/android/gms/internal/ads/zzfdy;)V

    .line 5
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
