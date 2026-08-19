.class public final Lcom/google/android/gms/internal/ads/zzcfr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcfs;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcfq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcfs;Lcom/google/android/gms/internal/ads/zzcfq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfr;->zzb:Lcom/google/android/gms/internal/ads/zzcfq;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfr;->zza:Lcom/google/android/gms/internal/ads/zzcfs;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzcfr;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcfr;->zzb:Lcom/google/android/gms/internal/ads/zzcfq;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcfq;->zza:Lcom/google/android/gms/internal/ads/zzcel;

    check-cast p0, Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaO()Lcom/google/android/gms/internal/ads/zzcet;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2
    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "Unable to pass GMSG, no AdWebViewClient for AdWebView!"

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzcgd;->zzn(Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public getClickSignals(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    const-string p1, "Click string is empty, not proceeding."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfr;->zza:Lcom/google/android/gms/internal/ads/zzcfs;

    .line 3
    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcfy;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcfy;->zzI()Lcom/google/android/gms/internal/ads/zzauy;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p1, "Signal utils is empty, ignoring."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-object v1

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzauy;->zzc()Lcom/google/android/gms/internal/ads/zzaut;

    move-result-object v2

    if-nez v2, :cond_2

    const-string p1, "Signals object is empty, ignoring."

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-object v1

    .line 6
    :cond_2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfs;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_3

    const-string p1, "Context is null, ignoring."

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-object v1

    .line 8
    :cond_3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfs;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/zzcga;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcga;->zzF()Landroid/view/View;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfs;->zzi()Landroid/app/Activity;

    move-result-object v0

    .line 9
    invoke-interface {v2, v1, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzaut;->zze(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getViewSignals()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfr;->zza:Lcom/google/android/gms/internal/ads/zzcfs;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcfy;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcfy;->zzI()Lcom/google/android/gms/internal/ads/zzauy;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    const-string v0, "Signal utils is empty, ignoring."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-object v2

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzauy;->zzc()Lcom/google/android/gms/internal/ads/zzaut;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "Signals object is empty, ignoring."

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-object v2

    .line 4
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfs;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v0, "Context is null, ignoring."

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-object v2

    .line 6
    :cond_2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfs;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/zzcga;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcga;->zzF()Landroid/view/View;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfs;->zzi()Landroid/app/Activity;

    move-result-object v0

    .line 7
    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzaut;->zzh(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public notify(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "URL is empty, ignoring message"

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfqf;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcfp;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzcfp;-><init>(Lcom/google/android/gms/internal/ads/zzcfr;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfqf;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
