.class public final Lcom/google/android/gms/internal/ads/zzawq;
.super Lcom/google/android/gms/internal/ads/zzaxo;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzawb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzarz;II)V
    .locals 7

    .line 1
    const-string v3, "AD44oxHubsTxzFMfIPPxyupyLzSfbBYQaKI/MuDqsMs="

    const/4 v6, 0x5

    const-string v2, "S1m7Rc+PrS7sduww0PRRSvJew44X/2pGt6He+X2dcCnhhquTF81e7XXfvkMEzIjw"

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawq;->zzd:Lcom/google/android/gms/internal/ads/zzarz;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzarz;->zzm(J)Lcom/google/android/gms/internal/ads/zzarz;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzarz;->zzl(J)Lcom/google/android/gms/internal/ads/zzarz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawq;->zze:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzawq;->zza:Lcom/google/android/gms/internal/ads/zzawb;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzawb;->zzb()Landroid/content/Context;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 4
    monitor-enter v0

    const/4 v2, 0x0

    .line 5
    :try_start_0
    aget v2, v1, v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzarz;->zzm(J)Lcom/google/android/gms/internal/ads/zzarz;

    const/4 v2, 0x1

    .line 6
    aget v2, v1, v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzarz;->zzl(J)Lcom/google/android/gms/internal/ads/zzarz;

    const/4 v2, 0x2

    .line 7
    aget v1, v1, v2

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    int-to-long v1, v1

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzarz;->zzk(J)Lcom/google/android/gms/internal/ads/zzarz;

    .line 9
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
