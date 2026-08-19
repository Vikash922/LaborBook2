.class public final synthetic Lcom/google/android/gms/internal/ads/zzbim;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbjj;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 6

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfs;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbji;->zza:Lcom/google/android/gms/internal/ads/zzbjj;

    .line 1
    const-string v0, "u"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    .line 2
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "URL missing from httpTrack GMSG."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/ads/zzcec;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzcec;->zzD()Lcom/google/android/gms/internal/ads/zzfau;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzcec;->zzD()Lcom/google/android/gms/internal/ads/zzfau;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfau;->zzax:Lcom/google/android/gms/ads/internal/util/client/zzv;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    move-object v5, p2

    new-instance p2, Lcom/google/android/gms/ads/internal/util/zzbw;

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfs;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfz;

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfz;->zzm()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object p1

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/util/zzbw;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfig;Lcom/google/android/gms/ads/internal/util/client/zzv;)V

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/util/zzb;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method
