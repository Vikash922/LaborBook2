.class final Lcom/google/android/gms/internal/ads/zzefd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgbo;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfau;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzefe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzefe;Lcom/google/android/gms/internal/ads/zzfau;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzefd;->zza:Lcom/google/android/gms/internal/ads/zzfau;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzefd;->zzb:Lcom/google/android/gms/internal/ads/zzefe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefd;->zzb:Lcom/google/android/gms/internal/ads/zzefe;

    monitor-enter v0

    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzefe;->zza(Lcom/google/android/gms/internal/ads/zzefe;)Lcom/google/android/gms/internal/ads/zzeff;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzefd;->zza:Lcom/google/android/gms/internal/ads/zzfau;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzeff;->zzb(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzfau;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzefe;->zza(Lcom/google/android/gms/internal/ads/zzefe;)Lcom/google/android/gms/internal/ads/zzeff;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeff;->zza()Lcom/google/android/gms/internal/ads/zzfau;

    move-result-object p1

    iget-boolean v1, v2, Lcom/google/android/gms/internal/ads/zzfau;->zzav:Z

    if-eqz v1, :cond_0

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzefe;->zzc(Lcom/google/android/gms/internal/ads/zzefe;Lcom/google/android/gms/internal/ads/zzfau;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzefe;->zza(Lcom/google/android/gms/internal/ads/zzefe;)Lcom/google/android/gms/internal/ads/zzeff;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeff;->zza()Lcom/google/android/gms/internal/ads/zzfau;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzefe;->zzc(Lcom/google/android/gms/internal/ads/zzefe;Lcom/google/android/gms/internal/ads/zzfau;)V

    .line 6
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzefd;->zzb:Lcom/google/android/gms/internal/ads/zzefe;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzefv;

    monitor-enter v0

    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzefe;->zza(Lcom/google/android/gms/internal/ads/zzefe;)Lcom/google/android/gms/internal/ads/zzeff;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzefd;->zza:Lcom/google/android/gms/internal/ads/zzfau;

    .line 2
    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzeff;->zzc(Lcom/google/android/gms/internal/ads/zzefv;Lcom/google/android/gms/internal/ads/zzfau;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzefe;->zza(Lcom/google/android/gms/internal/ads/zzefe;)Lcom/google/android/gms/internal/ads/zzeff;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeff;->zza()Lcom/google/android/gms/internal/ads/zzfau;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzefe;->zzc(Lcom/google/android/gms/internal/ads/zzefe;Lcom/google/android/gms/internal/ads/zzfau;)V

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
