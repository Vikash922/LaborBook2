.class public final Lcom/google/android/gms/internal/ads/zzdlp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfbp;

.field private final zzb:Ljava/util/concurrent/Executor;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdoe;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzdmz;

.field private final zze:Landroid/content/Context;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzdre;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfio;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzeat;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfbp;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdoe;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdre;Lcom/google/android/gms/internal/ads/zzfio;Lcom/google/android/gms/internal/ads/zzeat;Lcom/google/android/gms/internal/ads/zzdmz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdlp;->zza:Lcom/google/android/gms/internal/ads/zzfbp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdlp;->zzb:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdlp;->zzc:Lcom/google/android/gms/internal/ads/zzdoe;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdlp;->zze:Landroid/content/Context;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdlp;->zzf:Lcom/google/android/gms/internal/ads/zzdre;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdlp;->zzg:Lcom/google/android/gms/internal/ads/zzfio;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdlp;->zzh:Lcom/google/android/gms/internal/ads/zzeat;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdlp;->zzd:Lcom/google/android/gms/internal/ads/zzdmz;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzdlp;Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzfax;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 25

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdlp;->zzc:Lcom/google/android/gms/internal/ads/zzdoe;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdoe;->zza(Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzfax;)Lcom/google/android/gms/internal/ads/zzcel;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbzo;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbzo;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdlp;->zza:Lcom/google/android/gms/internal/ads/zzfbp;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfbp;->zzb:Lcom/google/android/gms/internal/ads/zzblt;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 3
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdlp;->zzh(Lcom/google/android/gms/internal/ads/zzcel;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcgf;->zzd()Lcom/google/android/gms/internal/ads/zzcgf;

    move-result-object v3

    .line 4
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzcel;->zzaj(Lcom/google/android/gms/internal/ads/zzcgf;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdlp;->zzd:Lcom/google/android/gms/internal/ads/zzdmz;

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdmz;->zzb()Lcom/google/android/gms/internal/ads/zzdmw;

    move-result-object v10

    move-object v6, v10

    move-object v8, v10

    move-object/from16 v20, v10

    move-object v9, v10

    move-object v7, v10

    .line 6
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcel;->zzN()Lcom/google/android/gms/internal/ads/zzcgd;

    move-result-object v5

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdlp;->zze:Landroid/content/Context;

    new-instance v11, Lcom/google/android/gms/ads/internal/zzb;

    move-object v13, v11

    invoke-direct {v11, v3, v4, v4}, Lcom/google/android/gms/ads/internal/zzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbxi;Lcom/google/android/gms/internal/ads/zzbug;)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdlp;->zzh:Lcom/google/android/gms/internal/ads/zzeat;

    move-object/from16 v16, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdlp;->zzg:Lcom/google/android/gms/internal/ads/zzfio;

    move-object/from16 v17, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdlp;->zzf:Lcom/google/android/gms/internal/ads/zzdre;

    move-object/from16 v18, v3

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 7
    invoke-interface/range {v5 .. v24}, Lcom/google/android/gms/internal/ads/zzcgd;->zzV(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/internal/ads/zzbhz;Lcom/google/android/gms/ads/internal/overlay/zzr;Lcom/google/android/gms/internal/ads/zzbib;Lcom/google/android/gms/ads/internal/overlay/zzac;ZLcom/google/android/gms/internal/ads/zzbjm;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbsd;Lcom/google/android/gms/internal/ads/zzbxi;Lcom/google/android/gms/internal/ads/zzeat;Lcom/google/android/gms/internal/ads/zzfio;Lcom/google/android/gms/internal/ads/zzdre;Lcom/google/android/gms/internal/ads/zzbkd;Lcom/google/android/gms/internal/ads/zzddc;Lcom/google/android/gms/internal/ads/zzbkc;Lcom/google/android/gms/internal/ads/zzbjw;Lcom/google/android/gms/internal/ads/zzbjk;Lcom/google/android/gms/internal/ads/zzclx;)V

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdlp;->zzj(Lcom/google/android/gms/internal/ads/zzcel;)V

    .line 9
    :goto_0
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcel;->zzN()Lcom/google/android/gms/internal/ads/zzcgd;

    move-result-object v3

    new-instance v5, Lcom/google/android/gms/internal/ads/zzdlj;

    invoke-direct {v5, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdlj;-><init>(Lcom/google/android/gms/internal/ads/zzdlp;Lcom/google/android/gms/internal/ads/zzcel;Lcom/google/android/gms/internal/ads/zzbzo;)V

    .line 10
    invoke-interface {v3, v5}, Lcom/google/android/gms/internal/ads/zzcgd;->zzC(Lcom/google/android/gms/internal/ads/zzcgb;)V

    move-object/from16 v0, p4

    move-object/from16 v3, p5

    .line 11
    invoke-interface {v1, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzcel;->zzae(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdlp;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdlp;->zzc:Lcom/google/android/gms/internal/ads/zzdoe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzr;->zzc()Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzdoe;->zza(Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzfax;)Lcom/google/android/gms/internal/ads/zzcel;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbzo;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbzo;

    move-result-object v0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdlp;->zzh(Lcom/google/android/gms/internal/ads/zzcel;)V

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcel;->zzN()Lcom/google/android/gms/internal/ads/zzcgd;

    move-result-object p0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdlh;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzdlh;-><init>(Lcom/google/android/gms/internal/ads/zzbzo;)V

    .line 6
    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/ads/zzcgd;->zzJ(Lcom/google/android/gms/internal/ads/zzcgc;)V

    .line 7
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbci;->zzdY:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzcel;->loadUrl(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzdlp;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzcel;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlp;->zza:Lcom/google/android/gms/internal/ads/zzfbp;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfbp;->zzb:Lcom/google/android/gms/internal/ads/zzblt;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbzo;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbzo;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcgf;->zzd()Lcom/google/android/gms/internal/ads/zzcgf;

    move-result-object v0

    .line 2
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzcel;->zzaj(Lcom/google/android/gms/internal/ads/zzcgf;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcgf;->zze()Lcom/google/android/gms/internal/ads/zzcgf;

    move-result-object v0

    .line 3
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzcel;->zzaj(Lcom/google/android/gms/internal/ads/zzcgf;)V

    .line 4
    :goto_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzcel;->zzN()Lcom/google/android/gms/internal/ads/zzcgd;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdli;

    invoke-direct {v2, p0, p2, v1}, Lcom/google/android/gms/internal/ads/zzdli;-><init>(Lcom/google/android/gms/internal/ads/zzdlp;Lcom/google/android/gms/internal/ads/zzcel;Lcom/google/android/gms/internal/ads/zzbzo;)V

    .line 5
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzcgd;->zzC(Lcom/google/android/gms/internal/ads/zzcgb;)V

    const-string p0, "google.afma.nativeAds.renderVideo"

    .line 6
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzcel;->zzp(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v1
.end method

.method public static synthetic zzf(Lcom/google/android/gms/internal/ads/zzdlp;Lcom/google/android/gms/internal/ads/zzcel;Lcom/google/android/gms/internal/ads/zzbzo;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p3, :cond_1

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdlp;->zza:Lcom/google/android/gms/internal/ads/zzfbp;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfbp;->zza:Lcom/google/android/gms/ads/internal/client/zzfw;

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcel;->zzq()Lcom/google/android/gms/internal/ads/zzcfn;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcel;->zzq()Lcom/google/android/gms/internal/ads/zzcfn;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzcfn;->zzs(Lcom/google/android/gms/ads/internal/client/zzfw;)V

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbzo;->zzb()V

    return-void

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzefy;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Html video Web View failed to load. Error code: "

    .line 4
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", Description: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", Failing URL: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    invoke-direct {p0, p3, p1}, Lcom/google/android/gms/internal/ads/zzefy;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzbzp;->zzd(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public static synthetic zzg(Lcom/google/android/gms/internal/ads/zzdlp;Lcom/google/android/gms/internal/ads/zzcel;Lcom/google/android/gms/internal/ads/zzbzo;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzeg:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdlp;->zzi(Lcom/google/android/gms/internal/ads/zzcel;Lcom/google/android/gms/internal/ads/zzbzo;)V

    return-void

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzefy;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Native Video WebView failed to load. Error code: "

    .line 4
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", Description: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", Failing URL: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    invoke-direct {p0, p3, p1}, Lcom/google/android/gms/internal/ads/zzefy;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzbzp;->zzd(Ljava/lang/Throwable;)Z

    return-void

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdlp;->zzi(Lcom/google/android/gms/internal/ads/zzcel;Lcom/google/android/gms/internal/ads/zzbzo;)V

    return-void
.end method

.method private final zzh(Lcom/google/android/gms/internal/ads/zzcel;)V
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdlp;->zzj(Lcom/google/android/gms/internal/ads/zzcel;)V

    const-string v0, "/video"

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbji;->zzl:Lcom/google/android/gms/internal/ads/zzbjj;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcel;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjj;)V

    const-string v0, "/videoMeta"

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbji;->zzm:Lcom/google/android/gms/internal/ads/zzbjj;

    .line 3
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcel;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjj;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcct;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcct;-><init>()V

    const-string v1, "/precache"

    .line 4
    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzcel;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjj;)V

    const-string v0, "/delayPageLoaded"

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbji;->zzp:Lcom/google/android/gms/internal/ads/zzbjj;

    .line 5
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcel;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjj;)V

    const-string v0, "/instrument"

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbji;->zzn:Lcom/google/android/gms/internal/ads/zzbjj;

    .line 6
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcel;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjj;)V

    const-string v0, "/log"

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbji;->zzg:Lcom/google/android/gms/internal/ads/zzbjj;

    .line 7
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcel;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjj;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbih;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzbih;-><init>(Lcom/google/android/gms/internal/ads/zzddc;Lcom/google/android/gms/internal/ads/zzclx;)V

    const-string v1, "/click"

    .line 8
    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzcel;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjj;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlp;->zza:Lcom/google/android/gms/internal/ads/zzfbp;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfbp;->zzb:Lcom/google/android/gms/internal/ads/zzblt;

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcel;->zzN()Lcom/google/android/gms/internal/ads/zzcgd;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcgd;->zzG(Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbjv;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v0

    .line 10
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzbjv;-><init>(Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbrw;Lcom/google/android/gms/internal/ads/zzeat;Lcom/google/android/gms/internal/ads/zzdre;Lcom/google/android/gms/internal/ads/zzclx;)V

    const-string v1, "/open"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzcel;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjj;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcel;->zzN()Lcom/google/android/gms/internal/ads/zzcgd;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcgd;->zzG(Z)V

    .line 12
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzo()Lcom/google/android/gms/internal/ads/zzbxw;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbxw;->zzp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcel;->zzD()Lcom/google/android/gms/internal/ads/zzfau;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcel;->zzD()Lcom/google/android/gms/internal/ads/zzfau;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfau;->zzaw:Ljava/util/Map;

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbjp;

    .line 16
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbjp;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    const-string v0, "/logScionEvent"

    .line 17
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcel;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjj;)V

    :cond_2
    return-void
.end method

.method private final zzi(Lcom/google/android/gms/internal/ads/zzcel;Lcom/google/android/gms/internal/ads/zzbzo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlp;->zza:Lcom/google/android/gms/internal/ads/zzfbp;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfbp;->zza:Lcom/google/android/gms/ads/internal/client/zzfw;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcel;->zzq()Lcom/google/android/gms/internal/ads/zzcfn;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcel;->zzq()Lcom/google/android/gms/internal/ads/zzcfn;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcfn;->zzs(Lcom/google/android/gms/ads/internal/client/zzfw;)V

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbzo;->zzb()V

    return-void
.end method

.method private static final zzj(Lcom/google/android/gms/internal/ads/zzcel;)V
    .locals 2

    .line 1
    const-string v0, "/videoClicked"

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbji;->zzh:Lcom/google/android/gms/internal/ads/zzbjj;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzcel;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjj;)V

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzcel;->zzN()Lcom/google/android/gms/internal/ads/zzcgd;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcgd;->zzI(Z)V

    const-string v0, "/getNativeAdViewSignals"

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbji;->zzs:Lcom/google/android/gms/internal/ads/zzbjj;

    .line 3
    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzcel;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjj;)V

    const-string v0, "/getNativeClickMeta"

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbji;->zzt:Lcom/google/android/gms/internal/ads/zzbjj;

    .line 4
    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzcel;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjj;)V

    return-void
.end method


# virtual methods
.method public final zzd(Lorg/json/JSONObject;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgbs;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdlg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdlg;-><init>(Lcom/google/android/gms/internal/ads/zzdlp;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdlp;->zzb:Ljava/util/concurrent/Executor;

    .line 2
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgbs;->zzn(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgaz;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdlf;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzdlf;-><init>(Lcom/google/android/gms/internal/ads/zzdlp;Lorg/json/JSONObject;)V

    .line 3
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgbs;->zzn(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgaz;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzfax;Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 9

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgbs;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v8, Lcom/google/android/gms/internal/ads/zzdle;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p5

    move-object v4, p3

    move-object v5, p4

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzdle;-><init>(Lcom/google/android/gms/internal/ads/zzdlp;Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzfax;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdlp;->zzb:Ljava/util/concurrent/Executor;

    .line 2
    invoke-static {v0, v8, p1}, Lcom/google/android/gms/internal/ads/zzgbs;->zzn(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgaz;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
