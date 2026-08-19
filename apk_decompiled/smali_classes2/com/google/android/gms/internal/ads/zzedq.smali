.class public final Lcom/google/android/gms/internal/ads/zzedq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzecl;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcpd;

.field private zzc:Landroid/view/View;

.field private zzd:Lcom/google/android/gms/internal/ads/zzbph;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcpd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedq;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzedq;->zzb:Lcom/google/android/gms/internal/ads/zzcpd;

    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzedq;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfau;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzedq;->zza:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcps;->zza(Landroid/content/Context;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfau;)Lcom/google/android/gms/internal/ads/zzcps;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgbs;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzedq;Lcom/google/android/gms/internal/ads/zzbph;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedq;->zzd:Lcom/google/android/gms/internal/ads/zzbph;

    return-void
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzedq;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedq;->zzc:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzeci;)Ljava/lang/Object;
    .locals 6
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

    if-eqz v0, :cond_1

    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzfau;->zzag:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedq;->zzd:Lcom/google/android/gms/internal/ads/zzbph;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbph;->zze()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzedq;->zzd:Lcom/google/android/gms/internal/ads/zzbph;

    .line 4
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbph;->zzf()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_0

    if-eqz v2, :cond_2

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgbs;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzedn;

    invoke-direct {v3, p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzedn;-><init>(Lcom/google/android/gms/internal/ads/zzedq;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfau;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbzk;->zzf:Lcom/google/android/gms/internal/ads/zzgcd;

    .line 8
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzgbs;->zzn(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgaz;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 9
    :try_start_1
    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 16
    :goto_0
    new-instance p2, Lcom/google/android/gms/internal/ads/zzfbw;

    .line 10
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzfbw;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 4
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfbw;

    new-instance p2, Ljava/lang/Exception;

    const-string p3, "BannerRtbAdapterWrapper interscrollerView should not be null"

    .line 6
    invoke-direct {p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzfbw;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p1

    .line 10
    new-instance p2, Lcom/google/android/gms/internal/ads/zzfbw;

    .line 5
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzfbw;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedq;->zzc:Landroid/view/View;

    .line 9
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzedq;->zzb:Lcom/google/android/gms/internal/ads/zzcpd;

    iget-object v3, p3, Lcom/google/android/gms/internal/ads/zzeci;->zza:Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcqw;

    invoke-direct {v4, p1, p2, v3}, Lcom/google/android/gms/internal/ads/zzcqw;-><init>(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcog;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzedm;

    .line 11
    invoke-direct {v3, p3}, Lcom/google/android/gms/internal/ads/zzedm;-><init>(Lcom/google/android/gms/internal/ads/zzeci;)V

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfau;->zzu:Ljava/util/List;

    const/4 v5, 0x0

    .line 12
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzfav;

    invoke-direct {p1, v0, v1, v3, p2}, Lcom/google/android/gms/internal/ads/zzcog;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcel;Lcom/google/android/gms/internal/ads/zzcqe;Lcom/google/android/gms/internal/ads/zzfav;)V

    .line 13
    invoke-virtual {v2, v4, p1}, Lcom/google/android/gms/internal/ads/zzcpd;->zza(Lcom/google/android/gms/internal/ads/zzcqw;Lcom/google/android/gms/internal/ads/zzcog;)Lcom/google/android/gms/internal/ads/zzcoa;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcoa;->zzh()Lcom/google/android/gms/internal/ads/zzdcw;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzdcw;->zza(Landroid/view/View;)V

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzeci;->zzc:Lcom/google/android/gms/internal/ads/zzcwm;

    .line 15
    check-cast p2, Lcom/google/android/gms/internal/ads/zzedw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcoa;->zzj()Lcom/google/android/gms/internal/ads/zzehi;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzedw;->zzc(Lcom/google/android/gms/internal/ads/zzbpe;)V

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcoa;->zza()Lcom/google/android/gms/internal/ads/zzcnz;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzeci;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfbw;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzeci;->zzb:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbqx;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzfau;->zzZ:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzbqx;->zzq(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzhU:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzfau;->zzag:Z

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzfau;->zzU:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfau;->zzv:Lorg/json/JSONObject;

    .line 8
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfbg;->zza:Lcom/google/android/gms/internal/ads/zzfbd;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfbd;->zza:Lcom/google/android/gms/internal/ads/zzfbp;

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzfbp;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzedq;->zza:Landroid/content/Context;

    .line 9
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/zzedo;

    invoke-direct {v6, p0, p3, v2}, Lcom/google/android/gms/internal/ads/zzedo;-><init>(Lcom/google/android/gms/internal/ads/zzedq;Lcom/google/android/gms/internal/ads/zzeci;Lcom/google/android/gms/internal/ads/zzedp;)V

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzeci;->zzc:Lcom/google/android/gms/internal/ads/zzcwm;

    move-object v7, p2

    check-cast v7, Lcom/google/android/gms/internal/ads/zzbpe;

    iget-object v8, p1, Lcom/google/android/gms/internal/ads/zzfbp;->zze:Lcom/google/android/gms/ads/internal/client/zzr;

    move-object v2, v0

    .line 7
    invoke-interface/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzbqx;->zzk(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzm;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbql;Lcom/google/android/gms/internal/ads/zzbpe;Lcom/google/android/gms/ads/internal/client/zzr;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzfau;->zzU:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfau;->zzv:Lorg/json/JSONObject;

    .line 5
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfbg;->zza:Lcom/google/android/gms/internal/ads/zzfbd;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfbd;->zza:Lcom/google/android/gms/internal/ads/zzfbp;

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzfbp;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzedq;->zza:Landroid/content/Context;

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/zzedo;

    invoke-direct {v6, p0, p3, v2}, Lcom/google/android/gms/internal/ads/zzedo;-><init>(Lcom/google/android/gms/internal/ads/zzedq;Lcom/google/android/gms/internal/ads/zzeci;Lcom/google/android/gms/internal/ads/zzedp;)V

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzeci;->zzc:Lcom/google/android/gms/internal/ads/zzcwm;

    move-object v7, p2

    check-cast v7, Lcom/google/android/gms/internal/ads/zzbpe;

    .line 10
    iget-object v8, p1, Lcom/google/android/gms/internal/ads/zzfbp;->zze:Lcom/google/android/gms/ads/internal/client/zzr;

    move-object v2, v0

    .line 4
    invoke-interface/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzbqx;->zzj(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzm;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbql;Lcom/google/android/gms/internal/ads/zzbpe;Lcom/google/android/gms/ads/internal/client/zzr;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    new-instance p2, Lcom/google/android/gms/internal/ads/zzfbw;

    .line 10
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzfbw;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
