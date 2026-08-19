.class final Lcom/google/android/gms/internal/ads/zzfap;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzekg;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfar;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfap;->zza:Lcom/google/android/gms/internal/ads/zzfar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfap;->zza:Lcom/google/android/gms/internal/ads/zzfar;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfar;->zzx(Lcom/google/android/gms/internal/ads/zzfar;Lcom/google/android/gms/internal/ads/zzdni;)V

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfap;->zza:Lcom/google/android/gms/internal/ads/zzfar;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdni;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfar;->zzx(Lcom/google/android/gms/internal/ads/zzfar;Lcom/google/android/gms/internal/ads/zzdni;)V

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zzdM:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdni;->zzd()Lcom/google/android/gms/internal/ads/zzfbi;

    move-result-object p1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfar;->zzw(Lcom/google/android/gms/internal/ads/zzfar;)Lcom/google/android/gms/internal/ads/zzfbh;

    move-result-object v1

    iput-object v1, p1, Lcom/google/android/gms/internal/ads/zzfbi;->zza:Lcom/google/android/gms/internal/ads/zzfbh;

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfar;->zzv(Lcom/google/android/gms/internal/ads/zzfar;)Lcom/google/android/gms/internal/ads/zzdni;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcqg;->zzk()V

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
