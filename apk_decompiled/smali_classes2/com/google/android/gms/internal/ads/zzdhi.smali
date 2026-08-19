.class final Lcom/google/android/gms/internal/ads/zzdhi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzayh;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzdhl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdhl;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdhi;->zza:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhi;->zzb:Lcom/google/android/gms/internal/ads/zzdhl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzdn(Lcom/google/android/gms/internal/ads/zzayg;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzbV:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    .line 10
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v0, :cond_2

    .line 1
    monitor-enter p0

    :try_start_0
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzayg;->zzj:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhi;->zzb:Lcom/google/android/gms/internal/ads/zzdhl;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdhl;->zze(Lcom/google/android/gms/internal/ads/zzdhl;)Lcom/google/android/gms/internal/ads/zzdjo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdhl;->zzh(Lcom/google/android/gms/internal/ads/zzdhl;)Ljava/util/Map;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdhi;->zza:Ljava/lang/String;

    .line 3
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdhl;->zze(Lcom/google/android/gms/internal/ads/zzdhl;)Lcom/google/android/gms/internal/ads/zzdjo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 9
    monitor-exit p0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdhl;->zze(Lcom/google/android/gms/internal/ads/zzdhl;)Lcom/google/android/gms/internal/ads/zzdjo;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdjo;->zzf()Landroid/view/View;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdhl;->zze(Lcom/google/android/gms/internal/ads/zzdhl;)Lcom/google/android/gms/internal/ads/zzdjo;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdjo;->zzl()Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdhl;->zze(Lcom/google/android/gms/internal/ads/zzdhl;)Lcom/google/android/gms/internal/ads/zzdjo;

    move-result-object v3

    .line 6
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdjo;->zzm()Ljava/util/Map;

    move-result-object v3

    .line 7
    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzdhl;->zzB(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V

    .line 8
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzayg;->zzj:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhi;->zzb:Lcom/google/android/gms/internal/ads/zzdhl;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdhl;->zze(Lcom/google/android/gms/internal/ads/zzdhl;)Lcom/google/android/gms/internal/ads/zzdjo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdhl;->zzh(Lcom/google/android/gms/internal/ads/zzdhl;)Ljava/util/Map;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdhi;->zza:Ljava/lang/String;

    .line 10
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdhl;->zze(Lcom/google/android/gms/internal/ads/zzdhl;)Lcom/google/android/gms/internal/ads/zzdjo;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdhl;->zze(Lcom/google/android/gms/internal/ads/zzdhl;)Lcom/google/android/gms/internal/ads/zzdjo;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdjo;->zzf()Landroid/view/View;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdhl;->zze(Lcom/google/android/gms/internal/ads/zzdhl;)Lcom/google/android/gms/internal/ads/zzdjo;

    move-result-object v2

    .line 12
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdjo;->zzl()Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdhl;->zze(Lcom/google/android/gms/internal/ads/zzdhl;)Lcom/google/android/gms/internal/ads/zzdjo;

    move-result-object v3

    .line 13
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdjo;->zzm()Ljava/util/Map;

    move-result-object v3

    .line 14
    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzdhl;->zzB(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V

    :cond_4
    :goto_0
    return-void
.end method
