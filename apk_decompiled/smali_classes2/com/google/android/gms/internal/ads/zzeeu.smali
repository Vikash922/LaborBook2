.class public final Lcom/google/android/gms/internal/ads/zzeeu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeeo;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdga;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgcd;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdki;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfco;

.field private final zze:Lcom/google/android/gms/internal/ads/zzdmz;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzdqy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdga;Lcom/google/android/gms/internal/ads/zzgcd;Lcom/google/android/gms/internal/ads/zzdki;Lcom/google/android/gms/internal/ads/zzfco;Lcom/google/android/gms/internal/ads/zzdmz;Lcom/google/android/gms/internal/ads/zzdqy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeeu;->zza:Lcom/google/android/gms/internal/ads/zzdga;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeeu;->zzb:Lcom/google/android/gms/internal/ads/zzgcd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeeu;->zzc:Lcom/google/android/gms/internal/ads/zzdki;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeeu;->zzd:Lcom/google/android/gms/internal/ads/zzfco;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeeu;->zze:Lcom/google/android/gms/internal/ads/zzdmz;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzeeu;->zzf:Lcom/google/android/gms/internal/ads/zzdqy;

    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzeeu;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzdhl;
    .locals 4

    .line 1
    invoke-interface {p1}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdhq;

    .line 2
    invoke-interface {p2}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzdmt;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzcs:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeeu;->zzf:Lcom/google/android/gms/internal/ads/zzdqy;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqy;->zza()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdqm;->zzv:Lcom/google/android/gms/internal/ads/zzdqm;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeeu;->zza:Lcom/google/android/gms/internal/ads/zzdga;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcqw;

    const/4 v2, 0x0

    invoke-direct {v1, p3, p4, v2}, Lcom/google/android/gms/internal/ads/zzcqw;-><init>(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Ljava/lang/String;)V

    new-instance p3, Lcom/google/android/gms/internal/ads/zzdic;

    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/ads/zzdic;-><init>(Lcom/google/android/gms/internal/ads/zzdhq;)V

    new-instance p4, Lcom/google/android/gms/internal/ads/zzdgo;

    invoke-direct {p4, p5, p2}, Lcom/google/android/gms/internal/ads/zzdgo;-><init>(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzdmt;)V

    .line 9
    invoke-virtual {v0, v1, p3, p4}, Lcom/google/android/gms/internal/ads/zzdga;->zzd(Lcom/google/android/gms/internal/ads/zzcqw;Lcom/google/android/gms/internal/ads/zzdic;Lcom/google/android/gms/internal/ads/zzdgo;)Lcom/google/android/gms/internal/ads/zzdhr;

    move-result-object p3

    sget-object p4, Lcom/google/android/gms/internal/ads/zzbci;->zzcs:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object p5

    invoke-virtual {p5, p4}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p5

    .line 11
    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    if-eqz p5, :cond_1

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object p5

    invoke-interface {p5}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzeeu;->zzf:Lcom/google/android/gms/internal/ads/zzdqy;

    .line 13
    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzdqy;->zza()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzdqm;->zzw:Lcom/google/android/gms/internal/ads/zzdqm;

    .line 14
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 16
    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzdqy;->zza()Landroid/os/Bundle;

    move-result-object p5

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdqm;->zzx:Lcom/google/android/gms/internal/ads/zzdqm;

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {p5, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 19
    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdhr;->zzh()Lcom/google/android/gms/internal/ads/zzdmf;

    move-result-object p5

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzdmf;->zzb()V

    .line 20
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdhr;->zzi()Lcom/google/android/gms/internal/ads/zzdmp;

    move-result-object p5

    invoke-virtual {p5, p2}, Lcom/google/android/gms/internal/ads/zzdmp;->zza(Lcom/google/android/gms/internal/ads/zzdmt;)V

    .line 21
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdhr;->zzg()Lcom/google/android/gms/internal/ads/zzdlo;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdhq;->zzs()Lcom/google/android/gms/internal/ads/zzcel;

    move-result-object p5

    invoke-virtual {p2, p5}, Lcom/google/android/gms/internal/ads/zzdlo;->zzc(Lcom/google/android/gms/internal/ads/zzcel;)V

    .line 22
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdhr;->zzl()Lcom/google/android/gms/internal/ads/zzdmy;

    move-result-object p2

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzeeu;->zze:Lcom/google/android/gms/internal/ads/zzdmz;

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdhq;->zzq()Lcom/google/android/gms/internal/ads/zzcel;

    move-result-object p1

    invoke-virtual {p2, p5, p1}, Lcom/google/android/gms/internal/ads/zzdmy;->zza(Lcom/google/android/gms/internal/ads/zzdmz;Lcom/google/android/gms/internal/ads/zzcel;)V

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p1

    .line 25
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeeu;->zzf:Lcom/google/android/gms/internal/ads/zzdqy;

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdqy;->zza()Landroid/os/Bundle;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzdqm;->zzy:Lcom/google/android/gms/internal/ads/zzdqm;

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p4

    .line 29
    invoke-virtual {p0, p1, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 30
    :cond_2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdhr;->zza()Lcom/google/android/gms/internal/ads/zzdhl;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/ads/zzeeu;Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Lorg/json/JSONArray;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7

    .line 1
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/ads/zzdvg;

    .line 2
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzdvg;-><init>(I)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgbs;->zzg(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfbg;->zza:Lcom/google/android/gms/internal/ads/zzfbd;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfbd;->zza:Lcom/google/android/gms/internal/ads/zzfbp;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfbp;->zzk:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v3, :cond_4

    .line 4
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 5
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbci;->zzct:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v4

    .line 5
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzeeu;->zzf:Lcom/google/android/gms/internal/ads/zzdqy;

    .line 7
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "nsl"

    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzdqy;->zzd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzeeu;->zzd:Lcom/google/android/gms/internal/ads/zzfco;

    .line 8
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzfco;->zzc(I)V

    new-instance v4, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-ge v2, v0, :cond_3

    if-ge v2, v3, :cond_2

    .line 10
    invoke-virtual {p3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {p0, p1, p2, v5}, Lcom/google/android/gms/internal/ads/zzeeu;->zzg(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Lorg/json/JSONObject;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v5, Lcom/google/android/gms/internal/ads/zzdvg;

    .line 11
    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/ads/zzdvg;-><init>(I)V

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgbs;->zzg(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_3
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgbs;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    goto :goto_2

    .line 13
    :cond_4
    invoke-virtual {p3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzeeu;->zzg(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Lorg/json/JSONObject;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzeet;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzeet;-><init>()V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeeu;->zzb:Lcom/google/android/gms/internal/ads/zzgcd;

    .line 14
    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/ads/zzgbs;->zzm(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzftl;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public static synthetic zze(Lcom/google/android/gms/internal/ads/zzeeu;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzdmt;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    const-string v1, "isNonagon"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zziL:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastR()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "skipDeepLinkValidation"

    .line 5
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    .line 6
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 7
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfau;->zzs:Lcom/google/android/gms/internal/ads/zzfaz;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfaz;->zzc:Lorg/json/JSONObject;

    const-string v2, "response"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "sdk_params"

    .line 8
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "google.afma.nativeAds.preProcessJson"

    .line 9
    invoke-virtual {p2, p1, v1}, Lcom/google/android/gms/internal/ads/zzdmt;->zzg(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeeq;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzeeq;-><init>(Lcom/google/android/gms/internal/ads/zzeeu;Lcom/google/android/gms/internal/ads/zzdmt;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeeu;->zzb:Lcom/google/android/gms/internal/ads/zzgcd;

    .line 10
    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/ads/zzgbs;->zzn(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgaz;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic zzf(Lcom/google/android/gms/internal/ads/zzeeu;Lcom/google/android/gms/internal/ads/zzdmt;Lorg/json/JSONObject;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeeu;->zzd:Lcom/google/android/gms/internal/ads/zzfco;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgbs;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfco;->zzb(Lcom/google/common/util/concurrent/ListenableFuture;)V

    const-string p0, "success"

    .line 2
    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    const-string p0, "json"

    .line 4
    invoke-virtual {p2, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "ads"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgbs;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzbnp;

    const-string p1, "process json failed"

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbnp;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final zzg(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Lorg/json/JSONObject;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 9

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzcs:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeeu;->zzf:Lcom/google/android/gms/internal/ads/zzdqy;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqy;->zza()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdqm;->zzu:Lcom/google/android/gms/internal/ads/zzdqm;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeeu;->zzd:Lcom/google/android/gms/internal/ads/zzfco;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeeu;->zzc:Lcom/google/android/gms/internal/ads/zzdki;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfco;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v5

    .line 8
    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdki;->zzb(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Lorg/json/JSONObject;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v1, 0x0

    aput-object v5, v0, v1

    const/4 v1, 0x1

    aput-object v4, v0, v1

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgbs;->zzc([Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzgbq;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeep;

    move-object v2, v1

    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzeep;-><init>(Lcom/google/android/gms/internal/ads/zzeeu;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeeu;->zzb:Lcom/google/android/gms/internal/ads/zzgcd;

    .line 10
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgbq;->zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeeu;->zzd:Lcom/google/android/gms/internal/ads/zzfco;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfco;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeer;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/ads/zzeer;-><init>(Lcom/google/android/gms/internal/ads/zzeeu;Lcom/google/android/gms/internal/ads/zzfau;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeeu;->zzb:Lcom/google/android/gms/internal/ads/zzgcd;

    .line 2
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgbs;->zzn(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgaz;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzees;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzees;-><init>(Lcom/google/android/gms/internal/ads/zzeeu;Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;)V

    .line 3
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgbs;->zzn(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgaz;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;)Z
    .locals 0

    .line 1
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzfau;->zzs:Lcom/google/android/gms/internal/ads/zzfaz;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfaz;->zzc:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
