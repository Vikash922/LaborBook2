.class public final Lcom/google/android/gms/internal/ads/zzfjr;
.super Lcom/google/android/gms/internal/ads/zzfjn;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzboy;Lcom/google/android/gms/ads/internal/client/zzfp;Lcom/google/android/gms/ads/internal/client/zzce;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfiu;Lcom/google/android/gms/common/util/Clock;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/google/android/gms/internal/ads/zzfjn;-><init>(Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzboy;Lcom/google/android/gms/ads/internal/client/zzfp;Lcom/google/android/gms/ads/internal/client/zzce;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfiu;Lcom/google/android/gms/common/util/Clock;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic zza(Ljava/lang/Object;)Lcom/google/android/gms/ads/internal/client/zzdx;
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbwd;

    .line 2
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbwd;->zzc()Lcom/google/android/gms/ads/internal/client/zzdx;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "Failed to get response info for the rewarded ad."

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected final zzb(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgcm;->zze()Lcom/google/android/gms/internal/ads/zzgcm;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfjr;->zze:Lcom/google/android/gms/ads/internal/client/zzfp;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/client/zzfp;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfjr;->zzd:Lcom/google/android/gms/internal/ads/zzboy;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfjr;->zza:Lcom/google/android/gms/ads/internal/ClientApi;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzfjr;->zzc:I

    .line 3
    invoke-virtual {v3, p1, v1, v2, v4}, Lcom/google/android/gms/ads/internal/ClientApi;->zzp(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzboy;I)Lcom/google/android/gms/internal/ads/zzbwd;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfjq;

    .line 4
    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzfjq;-><init>(Lcom/google/android/gms/internal/ads/zzfjr;Lcom/google/android/gms/internal/ads/zzgcm;Lcom/google/android/gms/internal/ads/zzbwd;)V

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfjr;->zze:Lcom/google/android/gms/ads/internal/client/zzfp;

    .line 5
    iget-object v3, v3, Lcom/google/android/gms/ads/internal/client/zzfp;->zzc:Lcom/google/android/gms/ads/internal/client/zzm;

    invoke-interface {p1, v3, v1}, Lcom/google/android/gms/internal/ads/zzbwd;->zzf(Lcom/google/android/gms/ads/internal/client/zzm;Lcom/google/android/gms/internal/ads/zzbwk;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    const-string p1, "Failed to load rewarded ad."

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfiq;

    const-string v1, "remote exception"

    .line 7
    invoke-direct {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzfiq;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgcm;->zzd(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfiq;

    const-string v1, "Failed to create a rewarded ad."

    .line 8
    invoke-direct {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzfiq;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgcm;->zzd(Ljava/lang/Throwable;)Z

    :goto_0
    return-object v0
.end method
