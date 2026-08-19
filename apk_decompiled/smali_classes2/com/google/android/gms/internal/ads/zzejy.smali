.class final Lcom/google/android/gms/internal/ads/zzejy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzekg;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzejz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzejz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzejy;->zza:Lcom/google/android/gms/internal/ads/zzejz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejy;->zza:Lcom/google/android/gms/internal/ads/zzejz;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzejz;->zzc(Lcom/google/android/gms/internal/ads/zzejz;Lcom/google/android/gms/internal/ads/zzdea;)V

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejy;->zza:Lcom/google/android/gms/internal/ads/zzejz;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdea;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzejz;->zzc(Lcom/google/android/gms/internal/ads/zzejz;Lcom/google/android/gms/internal/ads/zzdea;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzejz;->zzb(Lcom/google/android/gms/internal/ads/zzejz;)Lcom/google/android/gms/internal/ads/zzdea;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcqg;->zzk()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
