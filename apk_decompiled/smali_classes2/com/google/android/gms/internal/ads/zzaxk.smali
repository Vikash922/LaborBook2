.class public final Lcom/google/android/gms/internal/ads/zzaxk;
.super Lcom/google/android/gms/internal/ads/zzaxo;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzawb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzarz;II)V
    .locals 7

    .line 1
    const-string v3, "LFMrBRhUND+2ac6pPuv9NGIiF7t3Oz4z8DOZlKEBgm8="

    const/16 v6, 0x30

    const-string v2, "gm8IDIIiydkpD1O9/mPMu0ljuW+errJvs62TCchq7IbS1rnNzByjrFjKITopHNdf"

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxk;->zzd:Lcom/google/android/gms/internal/ads/zzarz;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzarz;->zzad(I)Lcom/google/android/gms/internal/ads/zzarz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaxk;->zze:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaxk;->zza:Lcom/google/android/gms/internal/ads/zzawb;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzawb;->zzb()Landroid/content/Context;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 3
    monitor-enter v0

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 4
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzarz;->zzad(I)Lcom/google/android/gms/internal/ads/zzarz;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzarz;->zzad(I)Lcom/google/android/gms/internal/ads/zzarz;

    .line 6
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
