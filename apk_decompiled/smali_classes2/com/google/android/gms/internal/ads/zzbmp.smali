.class public final Lcom/google/android/gms/internal/ads/zzbmp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbmh;
.implements Lcom/google/android/gms/internal/ads/zzbmg;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzauy;Lcom/google/android/gms/ads/internal/zza;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcex;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v7, p2

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzA()Lcom/google/android/gms/internal/ads/zzcey;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcgf;->zza()Lcom/google/android/gms/internal/ads/zzcgf;

    move-result-object v1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbg;->zza()Lcom/google/android/gms/internal/ads/zzbbg;

    move-result-object v11

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 3
    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v0 .. v16}, Lcom/google/android/gms/internal/ads/zzcey;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgf;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzauy;Lcom/google/android/gms/internal/ads/zzbdp;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzbcx;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzbbg;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzfax;Lcom/google/android/gms/internal/ads/zzebe;Lcom/google/android/gms/internal/ads/zzfbt;Lcom/google/android/gms/internal/ads/zzdre;)Lcom/google/android/gms/internal/ads/zzcel;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbmp;->zza:Lcom/google/android/gms/internal/ads/zzcel;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcel;->zzF()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method public static synthetic zzl(Lcom/google/android/gms/internal/ads/zzbmp;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "UTF-8"

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbmp;->zza:Lcom/google/android/gms/internal/ads/zzcel;

    const-string v1, "text/html"

    invoke-interface {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzcel;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic zzm(Lcom/google/android/gms/internal/ads/zzbmp;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbmp;->zza:Lcom/google/android/gms/internal/ads/zzcel;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzcel;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic zzn(Lcom/google/android/gms/internal/ads/zzbmp;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbmp;->zza:Lcom/google/android/gms/internal/ads/zzcel;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzcel;->zza(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic zzo(Lcom/google/android/gms/internal/ads/zzbmp;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "UTF-8"

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbmp;->zza:Lcom/google/android/gms/internal/ads/zzcel;

    const-string v1, "text/html"

    invoke-interface {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzcel;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final zzs(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzv()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "runOnUiThread > the UI thread is the main thread, the runnable will be run now"

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 3
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    const-string v0, "runOnUiThread > the UI thread is not the main thread, the runnable will be added to the message queue"

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfqf;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzfqf;->post(Ljava/lang/Runnable;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "runOnUiThread > the runnable could not be placed to the message queue"

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "invokeJavascript on adWebView from js"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbml;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbml;-><init>(Lcom/google/android/gms/internal/ads/zzbmp;Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbmp;->zzs(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic zzb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbmf;->zzc(Lcom/google/android/gms/internal/ads/zzbmg;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzc()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmp;->zza:Lcom/google/android/gms/internal/ads/zzcel;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcel;->destroy()V

    return-void
.end method

.method public final synthetic zzd(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbmf;->zza(Lcom/google/android/gms/internal/ads/zzbmg;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final synthetic zze(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbmf;->zzb(Lcom/google/android/gms/internal/ads/zzbmg;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final zzf(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "loadHtml on adWebView from html"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbmm;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbmm;-><init>(Lcom/google/android/gms/internal/ads/zzbmp;Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbmp;->zzs(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzg(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "loadHtmlWrapper on adWebView from path: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbmj;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbmj;-><init>(Lcom/google/android/gms/internal/ads/zzbmp;Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbmp;->zzs(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzh(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "loadJavascript on adWebView from path: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>"

    .line 2
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbmn;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbmn;-><init>(Lcom/google/android/gms/internal/ads/zzbmp;Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbmp;->zzs(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzi()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmp;->zza:Lcom/google/android/gms/internal/ads/zzcel;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcel;->zzaE()Z

    move-result v0

    return v0
.end method

.method public final zzj()Lcom/google/android/gms/internal/ads/zzbno;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbno;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbno;-><init>(Lcom/google/android/gms/internal/ads/zzbnn;)V

    return-object v0
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzbms;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmp;->zza:Lcom/google/android/gms/internal/ads/zzcel;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcel;->zzN()Lcom/google/android/gms/internal/ads/zzcgd;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbmk;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzbmk;-><init>(Lcom/google/android/gms/internal/ads/zzbms;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcgd;->zzJ(Lcom/google/android/gms/internal/ads/zzcgc;)V

    return-void
.end method

.method public final synthetic zzp(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbmf;->zzd(Lcom/google/android/gms/internal/ads/zzbmg;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final zzq(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjj;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbmo;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzbmo;-><init>(Lcom/google/android/gms/internal/ads/zzbmp;Lcom/google/android/gms/internal/ads/zzbjj;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbmp;->zza:Lcom/google/android/gms/internal/ads/zzcel;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzcel;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjj;)V

    return-void
.end method

.method public final zzr(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjj;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbmi;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzbmi;-><init>(Lcom/google/android/gms/internal/ads/zzbjj;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbmp;->zza:Lcom/google/android/gms/internal/ads/zzcel;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzcel;->zzaA(Ljava/lang/String;Lcom/google/android/gms/common/util/Predicate;)V

    return-void
.end method
