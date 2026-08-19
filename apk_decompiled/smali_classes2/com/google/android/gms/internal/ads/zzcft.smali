.class public Lcom/google/android/gms/internal/ads/zzcft;
.super Lcom/google/android/gms/internal/ads/zzcet;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcel;Lcom/google/android/gms/internal/ads/zzbbg;ZLcom/google/android/gms/internal/ads/zzebe;)V
    .locals 7

    .line 1
    new-instance v4, Lcom/google/android/gms/internal/ads/zzbsb;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcel;->zzE()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbbq;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzbbq;-><init>(Landroid/content/Context;)V

    invoke-direct {v4, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbsb;-><init>(Lcom/google/android/gms/internal/ads/zzcel;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbq;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzcet;-><init>(Lcom/google/android/gms/internal/ads/zzcel;Lcom/google/android/gms/internal/ads/zzbbg;ZLcom/google/android/gms/internal/ads/zzbsb;Lcom/google/android/gms/internal/ads/zzbrw;Lcom/google/android/gms/internal/ads/zzebe;)V

    return-void
.end method


# virtual methods
.method protected final zzW(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzcel;

    if-nez v0, :cond_0

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Tried to intercept request from a WebView that wasn\'t an AdWebView."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcel;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcft;->zza:Lcom/google/android/gms/internal/ads/zzbxi;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 4
    invoke-interface {v0, p2, p3, v1}, Lcom/google/android/gms/internal/ads/zzbxi;->zze(Ljava/lang/String;Ljava/util/Map;I)V

    :cond_1
    new-instance v0, Ljava/io/File;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfpb;->zza()Lcom/google/android/gms/internal/ads/zzfpd;

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfph;->zza:Lcom/google/android/gms/internal/ads/zzfph;

    .line 5
    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mraid.js"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p3, :cond_2

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p3

    .line 9
    :cond_2
    invoke-super {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzcet;->zzc(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcel;->zzN()Lcom/google/android/gms/internal/ads/zzcgd;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcel;->zzN()Lcom/google/android/gms/internal/ads/zzcgd;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzcgd;->zzH()V

    .line 12
    :cond_4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcel;->zzO()Lcom/google/android/gms/internal/ads/zzcgf;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcgf;->zzi()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 13
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbci;->zzad:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p2

    .line 13
    check-cast p2, Ljava/lang/String;

    goto :goto_0

    .line 15
    :cond_5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcel;->zzaF()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 16
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbci;->zzac:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p2

    .line 16
    check-cast p2, Ljava/lang/String;

    goto :goto_0

    .line 18
    :cond_6
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbci;->zzab:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p2

    .line 18
    check-cast p2, Ljava/lang/String;

    .line 20
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 21
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcel;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcel;->zzm()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    .line 22
    invoke-static {p3, p1, p2}, Lcom/google/android/gms/ads/internal/util/zzs;->zzy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method
