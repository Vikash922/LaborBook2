.class public final Lcom/google/android/gms/internal/ads/zzawu;
.super Lcom/google/android/gms/internal/ads/zzaxo;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zzh:Lcom/google/android/gms/internal/ads/zzawc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzawb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzarz;IILcom/google/android/gms/internal/ads/zzawc;)V
    .locals 7

    .line 1
    const-string v3, "7HL5eN/Pvda4VOei0IPDYI1tAwkOrIcQx+u+McMv8ws="

    const/16 v6, 0x55

    const-string v2, "4sDibVZK9eKuFlqXgTpdhhKs2Orw9dH1PELY4zPrs10iomnIsvpd54Iu4NVAy+DZ"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzaxo;-><init>(Lcom/google/android/gms/internal/ads/zzawb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzarz;II)V

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzawu;->zzh:Lcom/google/android/gms/internal/ads/zzawc;

    return-void
.end method


# virtual methods
.method protected final zza()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawu;->zze:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawu;->zzh:Lcom/google/android/gms/internal/ads/zzawc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawc;->zzd()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawc;->zzh()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawc;->zzb()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawc;->zzf()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v2, v3, v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawu;->zzd:Lcom/google/android/gms/internal/ads/zzarz;

    .line 6
    monitor-enter v1

    const/4 v2, 0x0

    .line 7
    :try_start_0
    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzarz;->zzt(J)Lcom/google/android/gms/internal/ads/zzarz;

    const/4 v2, 0x1

    .line 8
    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzarz;->zzs(J)Lcom/google/android/gms/internal/ads/zzarz;

    .line 9
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
