.class final Lcom/google/android/gms/internal/ads/zzewz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzekg;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzexa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzexa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzewz;->zza:Lcom/google/android/gms/internal/ads/zzexa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzewz;->zza:Lcom/google/android/gms/internal/ads/zzexa;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzexa;->zza:Lcom/google/android/gms/internal/ads/zzcnt;

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
    .locals 5

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcnt;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzewz;->zza:Lcom/google/android/gms/internal/ads/zzexa;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzexa;->zza:Lcom/google/android/gms/internal/ads/zzcnt;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcqg;->zzb()V

    :cond_0
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzexa;->zza:Lcom/google/android/gms/internal/ads/zzcnt;

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcnt;->zzc(Lcom/google/android/gms/internal/ads/zzazu;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzexa;->zzm(Lcom/google/android/gms/internal/ads/zzexa;)Lcom/google/android/gms/internal/ads/zzews;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcnu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzexa;->zzm(Lcom/google/android/gms/internal/ads/zzexa;)Lcom/google/android/gms/internal/ads/zzews;

    move-result-object v3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzexa;->zzh(Lcom/google/android/gms/internal/ads/zzexa;)Lcom/google/android/gms/internal/ads/zzdre;

    move-result-object v4

    .line 4
    invoke-direct {v2, p1, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzcnu;-><init>(Lcom/google/android/gms/internal/ads/zzcnt;Lcom/google/android/gms/ads/internal/client/zzbx;Lcom/google/android/gms/internal/ads/zzews;Lcom/google/android/gms/internal/ads/zzdre;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzews;->zzk(Lcom/google/android/gms/internal/ads/zzbaa;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcqg;->zzk()V

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
