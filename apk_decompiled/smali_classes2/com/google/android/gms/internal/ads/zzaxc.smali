.class public final Lcom/google/android/gms/internal/ads/zzaxc;
.super Lcom/google/android/gms/internal/ads/zzaxo;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzawb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzarz;II)V
    .locals 7

    .line 1
    const-string v3, "mbdIWlqr/AIx3NpqoEZqhPYOK/hsicHKSTj8PTzGR/g="

    const/4 v6, 0x3

    const-string v2, "eOeeCCDaHEKu0CdXgH37stIhKsViYKbWUfDprJIAztyuoZ35HLkPrqpB3uvB5WOW"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzaxo;-><init>(Lcom/google/android/gms/internal/ads/zzawb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzarz;II)V

    return-void
.end method


# virtual methods
.method protected final zza()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzdc:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaxc;->zze:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaxc;->zza:Lcom/google/android/gms/internal/ads/zzawb;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzawb;->zzb()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    new-instance v1, Lcom/google/android/gms/internal/ads/zzavh;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzavh;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxc;->zzd:Lcom/google/android/gms/internal/ads/zzarz;

    .line 5
    monitor-enter v0

    :try_start_0
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzavh;->zza:J

    .line 6
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzarz;->zzj(J)Lcom/google/android/gms/internal/ads/zzarz;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzavh;->zzb:J

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzarz;->zzA(J)Lcom/google/android/gms/internal/ads/zzarz;

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
