.class public final Lcom/google/android/gms/internal/ads/zzedk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzecl;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcpd;

.field private final zzc:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcpd;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedk;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzedk;->zzb:Lcom/google/android/gms/internal/ads/zzcpd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzedk;->zzc:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzedk;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfau;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzedk;->zza:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcps;->zza(Landroid/content/Context;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfau;)Lcom/google/android/gms/internal/ads/zzcps;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgbs;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzeci;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfbw;,
            Lcom/google/android/gms/internal/ads/zzefy;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzhU:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzfau;->zzag:Z

    if-eqz v0, :cond_2

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzeci;->zzb:Ljava/lang/Object;

    .line 4
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfcn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfcn;->zzc()Lcom/google/android/gms/internal/ads/zzbph;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbph;->zze()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbph;->zzf()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_3

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgbs;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/ads/zzedi;

    invoke-direct {v3, p0, v2, p2}, Lcom/google/android/gms/internal/ads/zzedi;-><init>(Lcom/google/android/gms/internal/ads/zzedk;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfau;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbzk;->zzf:Lcom/google/android/gms/internal/ads/zzgcd;

    .line 13
    invoke-static {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzgbs;->zzn(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgaz;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 14
    :try_start_1
    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 24
    :goto_0
    new-instance p2, Lcom/google/android/gms/internal/ads/zzfbw;

    .line 15
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzfbw;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 9
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfbw;

    new-instance p2, Ljava/lang/Exception;

    const-string p3, "BannerAdapterWrapper interscrollerView should not be null"

    .line 11
    invoke-direct {p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzfbw;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p1

    .line 15
    new-instance p2, Lcom/google/android/gms/internal/ads/zzfbw;

    .line 10
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzfbw;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 5
    :cond_1
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 6
    const-string p1, "getInterscrollerAd should not be null after loadInterscrollerAd loaded ad."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfbw;

    new-instance p3, Ljava/lang/Exception;

    .line 7
    invoke-direct {p3, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzfbw;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 10
    :cond_2
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzeci;->zzb:Ljava/lang/Object;

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfcn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfcn;->zza()Landroid/view/View;

    move-result-object v2

    .line 14
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedk;->zzb:Lcom/google/android/gms/internal/ads/zzcpd;

    iget-object v3, p3, Lcom/google/android/gms/internal/ads/zzeci;->zza:Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcqw;

    invoke-direct {v4, p1, p2, v3}, Lcom/google/android/gms/internal/ads/zzcqw;-><init>(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Ljava/lang/String;)V

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzeci;->zzb:Ljava/lang/Object;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcog;

    .line 16
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfcn;

    .line 17
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzedj;

    invoke-direct {v5, p1}, Lcom/google/android/gms/internal/ads/zzedj;-><init>(Lcom/google/android/gms/internal/ads/zzfcn;)V

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfau;->zzu:Ljava/util/List;

    const/4 v6, 0x0

    .line 18
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzfav;

    invoke-direct {v3, v2, v1, v5, p2}, Lcom/google/android/gms/internal/ads/zzcog;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcel;Lcom/google/android/gms/internal/ads/zzcqe;Lcom/google/android/gms/internal/ads/zzfav;)V

    .line 19
    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/internal/ads/zzcpd;->zza(Lcom/google/android/gms/internal/ads/zzcqw;Lcom/google/android/gms/internal/ads/zzcog;)Lcom/google/android/gms/internal/ads/zzcoa;

    move-result-object p2

    .line 20
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcoa;->zzh()Lcom/google/android/gms/internal/ads/zzdcw;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzdcw;->zza(Landroid/view/View;)V

    .line 21
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcoa;->zzd()Lcom/google/android/gms/internal/ads/zzcwb;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcln;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzcln;-><init>(Lcom/google/android/gms/internal/ads/zzfcn;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzedk;->zzc:Ljava/util/concurrent/Executor;

    .line 22
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdat;->zzo(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzeci;->zzc:Lcom/google/android/gms/internal/ads/zzcwm;

    .line 23
    check-cast p1, Lcom/google/android/gms/internal/ads/zzedw;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcoa;->zzk()Lcom/google/android/gms/internal/ads/zzeho;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzedw;->zzc(Lcom/google/android/gms/internal/ads/zzbpe;)V

    .line 24
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcoa;->zza()Lcom/google/android/gms/internal/ads/zzcnz;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzeci;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfbw;
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfbg;->zza:Lcom/google/android/gms/internal/ads/zzfbd;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfbd;->zza:Lcom/google/android/gms/internal/ads/zzfbp;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfbp;->zze:Lcom/google/android/gms/ads/internal/client/zzr;

    .line 2
    iget-boolean v1, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzn:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzedk;->zza:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/ads/internal/client/zzr;

    .line 3
    iget v3, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zze:I

    iget v0, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzb:I

    .line 4
    invoke-static {v3, v0}, Lcom/google/android/gms/ads/zzc;->zzd(II)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/ads/internal/client/zzr;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    :goto_0
    move-object v5, v2

    goto :goto_1

    .line 5
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zzhU:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p2, Lcom/google/android/gms/internal/ads/zzfau;->zzag:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzedk;->zza:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/ads/internal/client/zzr;

    .line 9
    iget v3, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zze:I

    iget v0, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzb:I

    .line 10
    invoke-static {v3, v0}, Lcom/google/android/gms/ads/zzc;->zze(II)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/ads/internal/client/zzr;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedk;->zza:Landroid/content/Context;

    .line 7
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzfau;->zzu:Ljava/util/List;

    .line 8
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfbv;->zza(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object v2

    goto :goto_0

    .line 11
    :goto_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzhU:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzfau;->zzag:Z

    if-eqz v0, :cond_2

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzeci;->zzb:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzedk;->zza:Landroid/content/Context;

    iget-object v6, p1, Lcom/google/android/gms/internal/ads/zzfbp;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    .line 16
    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfcn;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzfau;->zzv:Lorg/json/JSONObject;

    .line 17
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzfau;->zzs:Lcom/google/android/gms/internal/ads/zzfaz;

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzm(Lcom/google/android/gms/internal/ads/zzfaz;)Ljava/lang/String;

    move-result-object v8

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzeci;->zzc:Lcom/google/android/gms/internal/ads/zzcwm;

    move-object v9, p1

    check-cast v9, Lcom/google/android/gms/internal/ads/zzbpe;

    .line 16
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzfcn;->zzn(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpe;)V

    return-void

    :cond_2
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzeci;->zzb:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzedk;->zza:Landroid/content/Context;

    iget-object v6, p1, Lcom/google/android/gms/internal/ads/zzfbp;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    .line 13
    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfcn;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzfau;->zzv:Lorg/json/JSONObject;

    .line 14
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzfau;->zzs:Lcom/google/android/gms/internal/ads/zzfaz;

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzm(Lcom/google/android/gms/internal/ads/zzfaz;)Ljava/lang/String;

    move-result-object v8

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzeci;->zzc:Lcom/google/android/gms/internal/ads/zzcwm;

    move-object v9, p1

    check-cast v9, Lcom/google/android/gms/internal/ads/zzbpe;

    .line 13
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzfcn;->zzm(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpe;)V

    return-void
.end method
