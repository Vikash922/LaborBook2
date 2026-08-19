.class public final Lcom/google/android/gms/internal/ads/zzbjv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbjj;


# instance fields
.field private final zza:Lcom/google/android/gms/ads/internal/zzb;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdre;

.field private final zzc:Lcom/google/android/gms/ads/internal/util/client/zzu;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzbrw;

.field private final zze:Lcom/google/android/gms/internal/ads/zzeat;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzclx;

.field private zzg:Lcom/google/android/gms/ads/internal/overlay/zzaa;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzgcd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbrw;Lcom/google/android/gms/internal/ads/zzeat;Lcom/google/android/gms/internal/ads/zzdre;Lcom/google/android/gms/internal/ads/zzclx;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjv;->zzg:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbzk;->zzg:Lcom/google/android/gms/internal/ads/zzgcd;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbjv;->zzh:Lcom/google/android/gms/internal/ads/zzgcd;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjv;->zza:Lcom/google/android/gms/ads/internal/zzb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbjv;->zzd:Lcom/google/android/gms/internal/ads/zzbrw;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbjv;->zze:Lcom/google/android/gms/internal/ads/zzeat;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbjv;->zzb:Lcom/google/android/gms/internal/ads/zzdre;

    new-instance p1, Lcom/google/android/gms/ads/internal/util/client/zzu;

    invoke-direct {p1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzu;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjv;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzu;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbjv;->zzf:Lcom/google/android/gms/internal/ads/zzclx;

    return-void
.end method

.method public static zzb(Ljava/util/Map;)I
    .locals 1

    .line 1
    const-string v0, "o"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_2

    const-string v0, "p"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x7

    return p0

    :cond_0
    const-string v0, "l"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x6

    return p0

    :cond_1
    const-string v0, "c"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0xe

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method static zzc(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzauy;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzfbt;)Landroid/net/Uri;
    .locals 2

    if-nez p1, :cond_0

    return-object p2

    .line 1
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzmc:Lcom/google/android/gms/internal/ads/zzbbz;

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

    if-eqz p5, :cond_1

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzauy;->zze(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p5, p2, p0, p3, p4}, Lcom/google/android/gms/internal/ads/zzfbt;->zza(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzauy;->zze(Landroid/net/Uri;)Z

    move-result p5

    if-eqz p5, :cond_2

    .line 6
    invoke-virtual {p1, p2, p0, p3, p4}, Lcom/google/android/gms/internal/ads/zzauy;->zza(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p2
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzauz; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "OpenGmsgHandler.maybeAddClickSignalsToUri"

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbza;

    move-result-object p3

    invoke-virtual {p3, p0, p1}, Lcom/google/android/gms/internal/ads/zzbza;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    :catch_1
    :cond_2
    :goto_0
    return-object p2
.end method

.method static zzd(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "aclk_ms"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "aclk_upms"

    .line 4
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v2, "Error adding click uptime parameter to url: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzbjv;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zza;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzbjv;->zzh(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zza;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static zzf(Ljava/util/Map;)Z
    .locals 2

    .line 1
    const-string v0, "1"

    const-string v1, "custom_close"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic zzg(Lcom/google/android/gms/internal/ads/zzbjv;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbjv;->zzm(I)V

    return-void
.end method

.method private final zzh(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zza;Ljava/util/Map;Ljava/lang/String;)V
    .locals 37

    move-object/from16 v8, p0

    move-object/from16 v7, p2

    move-object/from16 v9, p3

    move-object/from16 v1, p4

    .line 1
    move-object v10, v7

    check-cast v10, Lcom/google/android/gms/internal/ads/zzcel;

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcel;->zzD()Lcom/google/android/gms/internal/ads/zzfau;

    move-result-object v0

    .line 2
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcel;->zzR()Lcom/google/android/gms/internal/ads/zzfax;

    move-result-object v2

    const/4 v11, 0x0

    const-string v3, ""

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfax;->zzb:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfau;->zzb()Z

    move-result v0

    move v12, v0

    move-object v13, v2

    goto :goto_0

    :cond_0
    move-object v13, v3

    move v12, v11

    .line 3
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzkO:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v14, 0x1

    if-eqz v0, :cond_1

    .line 5
    const-string v0, "sc"

    invoke-interface {v9, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v6, v11

    goto :goto_1

    :cond_1
    move v6, v14

    :goto_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzmN:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "true"

    if-eqz v0, :cond_2

    .line 9
    const-string v0, "ig_cl"

    invoke-interface {v9, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 10
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v15, v14

    goto :goto_2

    :cond_2
    move v15, v11

    :goto_2
    const-string v0, "expand"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcel;->zzaF()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "Cannot expand WebView that is already expanded."

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void

    .line 15
    :cond_3
    invoke-direct {v8, v11}, Lcom/google/android/gms/internal/ads/zzbjv;->zzk(Z)V

    .line 16
    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcfv;

    .line 17
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzbjv;->zzf(Ljava/util/Map;)Z

    move-result v1

    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzbjv;->zzb(Ljava/util/Map;)I

    move-result v2

    .line 16
    invoke-interface {v0, v1, v2, v6}, Lcom/google/android/gms/internal/ads/zzcfv;->zzaL(ZIZ)V

    return-void

    :cond_4
    const-string v0, "webapp"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 19
    invoke-direct {v8, v11}, Lcom/google/android/gms/internal/ads/zzbjv;->zzk(Z)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzlY:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "is_allowed_for_lock_screen"

    .line 22
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "1"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v11, v14

    :cond_5
    if-eqz p1, :cond_6

    .line 23
    move-object v1, v7

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcfv;

    .line 24
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzbjv;->zzf(Ljava/util/Map;)Z

    move-result v2

    .line 25
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzbjv;->zzb(Ljava/util/Map;)I

    move-result v3

    move-object/from16 v4, p1

    move v5, v6

    move v6, v11

    .line 23
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzcfv;->zzaN(ZILjava/lang/String;ZZ)V

    return-void

    .line 26
    :cond_6
    move-object v1, v7

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcfv;

    .line 27
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzbjv;->zzf(Ljava/util/Map;)Z

    move-result v2

    .line 28
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzbjv;->zzb(Ljava/util/Map;)I

    move-result v3

    const-string v0, "html"

    .line 29
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const-string v0, "baseurl"

    .line 30
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 26
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzcfv;->zzaM(ZILjava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_7
    const-string v0, "chrome_custom_tab"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_e

    .line 32
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcel;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zzeS:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 33
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "User opt out chrome custom tab."

    .line 35
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 36
    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/ads/zzbjv;->zzm(I)V

    goto :goto_4

    .line 45
    :cond_8
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zzeN:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 37
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 38
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 39
    sget v1, Lcom/google/android/gms/internal/ads/zzbdh;->zza:I

    .line 40
    invoke-static {v0, v3}, Landroidx/browser/customtabs/CustomTabsClient;->getPackageName(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    move v11, v14

    goto :goto_3

    .line 41
    :cond_9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbdj;->zzg(Landroid/content/Context;)Z

    move-result v11

    :cond_a
    :goto_3
    if-nez v11, :cond_b

    const/4 v0, 0x4

    .line 42
    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/ads/zzbjv;->zzm(I)V

    .line 36
    :goto_4
    const-string v0, "use_first_package"

    .line 43
    invoke-interface {v9, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "use_running_process"

    .line 44
    invoke-interface {v9, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v4, v12

    move-object v5, v13

    move v7, v15

    .line 45
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzbjv;->zzj(Lcom/google/android/gms/ads/internal/client/zza;Ljava/util/Map;ZLjava/lang/String;ZZ)V

    return-void

    .line 46
    :cond_b
    invoke-direct {v8, v14}, Lcom/google/android/gms/internal/ads/zzbjv;->zzk(Z)V

    .line 47
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 48
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "Cannot open browser with null or empty url"

    .line 49
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 50
    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/ads/zzbjv;->zzm(I)V

    return-void

    .line 51
    :cond_c
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 52
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcel;->getContext()Landroid/content/Context;

    move-result-object v16

    .line 53
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcel;->zzI()Lcom/google/android/gms/internal/ads/zzauy;

    move-result-object v17

    .line 54
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcel;->zzF()Landroid/view/View;

    move-result-object v19

    .line 55
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcel;->zzi()Landroid/app/Activity;

    move-result-object v20

    .line 56
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcel;->zzS()Lcom/google/android/gms/internal/ads/zzfbt;

    move-result-object v21

    .line 57
    invoke-static/range {v16 .. v21}, Lcom/google/android/gms/internal/ads/zzbjv;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzauy;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzfbt;)Landroid/net/Uri;

    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbjv;->zzd(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v12, :cond_d

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzbjv;->zze:Lcom/google/android/gms/internal/ads/zzeat;

    if-eqz v1, :cond_d

    .line 59
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-direct {v8, v7, v1, v2, v13}, Lcom/google/android/gms/internal/ads/zzbjv;->zzl(Lcom/google/android/gms/ads/internal/client/zza;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto/16 :goto_b

    :cond_d
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbjs;

    invoke-direct {v1, v8}, Lcom/google/android/gms/internal/ads/zzbjs;-><init>(Lcom/google/android/gms/internal/ads/zzbjv;)V

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzbjv;->zzg:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    .line 61
    move-object v1, v7

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcfv;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzc;

    .line 62
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzbjv;->zzg:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    .line 63
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v25

    const/16 v26, 0x1

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v16, v2

    .line 64
    invoke-direct/range {v16 .. v26}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/IBinder;Z)V

    .line 61
    invoke-interface {v1, v2, v6, v15, v13}, Lcom/google/android/gms/internal/ads/zzcfv;->zzaJ(Lcom/google/android/gms/ads/internal/overlay/zzc;ZZLjava/lang/String;)V

    return-void

    .line 41
    :cond_e
    const-string v0, "app"

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "system_browser"

    .line 66
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_5

    :cond_f
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v4, v12

    move-object v5, v13

    move v7, v15

    .line 134
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzbjv;->zzj(Lcom/google/android/gms/ads/internal/client/zza;Ljava/util/Map;ZLjava/lang/String;ZZ)V

    return-void

    .line 66
    :cond_10
    :goto_5
    const-string v0, "open_app"

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v5, "p"

    if-eqz v0, :cond_14

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzio:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 68
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 70
    invoke-direct {v8, v14}, Lcom/google/android/gms/internal/ads/zzbjv;->zzk(Z)V

    .line 71
    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_11

    .line 72
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "Package name missing from open app action."

    .line 73
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void

    :cond_11
    if-eqz v12, :cond_12

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzbjv;->zze:Lcom/google/android/gms/internal/ads/zzeat;

    if-eqz v1, :cond_12

    .line 74
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v8, v7, v1, v0, v13}, Lcom/google/android/gms/internal/ads/zzbjv;->zzl(Lcom/google/android/gms/ads/internal/client/zza;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 75
    :cond_12
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_13

    .line 76
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "Cannot get package manager from open app action."

    .line 77
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void

    .line 78
    :cond_13
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 79
    move-object v1, v7

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcfv;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzbjv;->zzg:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzaa;)V

    invoke-interface {v1, v2, v6, v15, v13}, Lcom/google/android/gms/internal/ads/zzcfv;->zzaJ(Lcom/google/android/gms/ads/internal/overlay/zzc;ZZLjava/lang/String;)V

    return-void

    .line 80
    :cond_14
    invoke-direct {v8, v14}, Lcom/google/android/gms/internal/ads/zzbjv;->zzk(Z)V

    const-string v0, "intent_url"

    .line 81
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 82
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 83
    :try_start_0
    invoke-static {v2, v11}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v4, v0

    .line 134
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 84
    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v2, "Error parsing the url: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0, v4}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    :goto_6
    move-object v0, v3

    if-eqz v0, :cond_17

    .line 86
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 87
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 88
    invoke-virtual {v3, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 90
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcel;->getContext()Landroid/content/Context;

    move-result-object v16

    .line 91
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcel;->zzI()Lcom/google/android/gms/internal/ads/zzauy;

    move-result-object v17

    .line 92
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcel;->zzF()Landroid/view/View;

    move-result-object v19

    .line 93
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcel;->zzi()Landroid/app/Activity;

    move-result-object v20

    .line 94
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcel;->zzS()Lcom/google/android/gms/internal/ads/zzfbt;

    move-result-object v21

    move-object/from16 v18, v2

    .line 95
    invoke-static/range {v16 .. v21}, Lcom/google/android/gms/internal/ads/zzbjv;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzauy;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzfbt;)Landroid/net/Uri;

    move-result-object v2

    .line 96
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbjv;->zzd(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 97
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbci;->zzip:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 98
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v3

    .line 97
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 100
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_7

    .line 99
    :cond_16
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 100
    :cond_17
    :goto_7
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbci;->zziK:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 101
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v2

    .line 102
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v4, "event_id"

    if-eqz v2, :cond_18

    const-string v2, "intent_async"

    .line 103
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 104
    invoke-interface {v9, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    move/from16 v16, v14

    goto :goto_8

    :cond_18
    move/from16 v16, v11

    :goto_8
    new-instance v3, Ljava/util/HashMap;

    .line 105
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-eqz v16, :cond_19

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbjt;

    move-object v1, v2

    move-object v11, v2

    move-object/from16 v2, p0

    move-object/from16 p4, v3

    move v3, v6

    move-object v6, v4

    move-object/from16 v4, p2

    move-object/from16 v27, v5

    move-object/from16 v5, p4

    move-object v14, v6

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzbjt;-><init>(Lcom/google/android/gms/internal/ads/zzbjv;ZLcom/google/android/gms/ads/internal/client/zza;Ljava/util/Map;Ljava/util/Map;)V

    iput-object v11, v8, Lcom/google/android/gms/internal/ads/zzbjv;->zzg:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    const/4 v11, 0x0

    goto :goto_9

    :cond_19
    move-object/from16 p4, v3

    move-object v14, v4

    move-object/from16 v27, v5

    move v11, v6

    :goto_9
    const-string v1, "openIntentAsync"

    if-eqz v0, :cond_1b

    if-eqz v12, :cond_1a

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzbjv;->zze:Lcom/google/android/gms/internal/ads/zzeat;

    if-eqz v2, :cond_1a

    .line 107
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-direct {v8, v7, v2, v3, v13}, Lcom/google/android/gms/internal/ads/zzbjv;->zzl(Lcom/google/android/gms/ads/internal/client/zza;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    if-eqz v16, :cond_1d

    .line 110
    invoke-interface {v9, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v3, p4

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbme;

    invoke-interface {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzbme;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 109
    :cond_1a
    move-object v1, v7

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcfv;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzbjv;->zzg:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzaa;)V

    invoke-interface {v1, v2, v11, v15, v13}, Lcom/google/android/gms/internal/ads/zzcfv;->zzaJ(Lcom/google/android/gms/ads/internal/overlay/zzc;ZZLjava/lang/String;)V

    return-void

    :cond_1b
    move-object/from16 v3, p4

    .line 112
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 113
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 115
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcel;->getContext()Landroid/content/Context;

    move-result-object v19

    .line 116
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcel;->zzI()Lcom/google/android/gms/internal/ads/zzauy;

    move-result-object v20

    .line 117
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcel;->zzF()Landroid/view/View;

    move-result-object v22

    .line 118
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcel;->zzi()Landroid/app/Activity;

    move-result-object v23

    .line 119
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcel;->zzS()Lcom/google/android/gms/internal/ads/zzfbt;

    move-result-object v24

    .line 120
    invoke-static/range {v19 .. v24}, Lcom/google/android/gms/internal/ads/zzbjv;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzauy;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzfbt;)Landroid/net/Uri;

    move-result-object v0

    .line 121
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbjv;->zzd(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_1c
    move-object/from16 v0, p1

    :goto_a
    if-eqz v12, :cond_1e

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzbjv;->zze:Lcom/google/android/gms/internal/ads/zzeat;

    if-eqz v2, :cond_1e

    .line 124
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v8, v7, v2, v0, v13}, Lcom/google/android/gms/internal/ads/zzbjv;->zzl(Lcom/google/android/gms/ads/internal/client/zza;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    if-eqz v16, :cond_1d

    .line 132
    invoke-interface {v9, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbme;

    invoke-interface {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzbme;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1d
    :goto_b
    return-void

    .line 125
    :cond_1e
    move-object v1, v7

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcfv;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzc;

    .line 126
    const-string v3, "i"

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v29, v3

    check-cast v29, Ljava/lang/String;

    const-string v3, "m"

    .line 127
    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v31, v3

    check-cast v31, Ljava/lang/String;

    move-object/from16 v3, v27

    .line 128
    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v32, v3

    check-cast v32, Ljava/lang/String;

    const-string v3, "c"

    .line 129
    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v33, v3

    check-cast v33, Ljava/lang/String;

    const-string v3, "f"

    .line 130
    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v34, v3

    check-cast v34, Ljava/lang/String;

    const-string v3, "e"

    .line 131
    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v35, v3

    check-cast v35, Ljava/lang/String;

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/zzbjv;->zzg:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    move-object/from16 v28, v2

    move-object/from16 v30, v0

    move-object/from16 v36, v3

    invoke-direct/range {v28 .. v36}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/overlay/zzaa;)V

    .line 125
    invoke-interface {v1, v2, v11, v15, v13}, Lcom/google/android/gms/internal/ads/zzcfv;->zzaJ(Lcom/google/android/gms/ads/internal/overlay/zzc;ZZLjava/lang/String;)V

    return-void
.end method

.method private final zzi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbjv;->zze:Lcom/google/android/gms/internal/ads/zzeat;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/zzeat;->zzc(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbjv;->zzb:Lcom/google/android/gms/internal/ads/zzdre;

    if-eqz v1, :cond_0

    const-string v0, "dialog_not_shown_reason"

    .line 2
    invoke-static {v0, p3}, Lcom/google/android/gms/internal/ads/zzfwz;->zze(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwz;

    move-result-object v5

    const-string v4, "dialog_not_shown"

    move-object v0, p1

    move-object v3, p2

    .line 3
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzebe;->zzp(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdre;Lcom/google/android/gms/internal/ads/zzeat;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private final zzj(Lcom/google/android/gms/ads/internal/client/zza;Ljava/util/Map;ZLjava/lang/String;ZZ)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    const/4 v4, 0x1

    .line 1
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/ads/zzbjv;->zzk(Z)V

    .line 2
    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/ads/zzcel;

    .line 3
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzcel;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 4
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzcel;->zzI()Lcom/google/android/gms/internal/ads/zzauy;

    move-result-object v13

    .line 5
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzcel;->zzF()Landroid/view/View;

    move-result-object v14

    .line 6
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzcel;->zzS()Lcom/google/android/gms/internal/ads/zzfbt;

    move-result-object v15

    const-string v6, "activity"

    .line 7
    invoke-virtual {v12, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v16, v6

    check-cast v16, Landroid/app/ActivityManager;

    const-string v6, "u"

    .line 8
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 9
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/16 v17, 0x0

    if-eqz v7, :cond_0

    :goto_0
    move-object/from16 v2, v17

    goto/16 :goto_7

    .line 10
    :cond_0
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/4 v10, 0x0

    move-object v6, v12

    move-object v7, v13

    move-object v9, v14

    move-object v11, v15

    .line 11
    invoke-static/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzbjv;->zzc(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzauy;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzfbt;)Landroid/net/Uri;

    move-result-object v6

    .line 12
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzbjv;->zzd(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "use_first_package"

    .line 13
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v18

    const-string v7, "use_running_process"

    .line 14
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v19

    const-string v7, "use_custom_tabs"

    .line 15
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    const/4 v11, 0x0

    if-nez v2, :cond_2

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbci;->zzeJ:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v2

    .line 15
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v4, v11

    .line 17
    :cond_2
    :goto_1
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v7, "http"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v8, "https"

    if-eqz v2, :cond_4

    .line 18
    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v17

    :cond_3
    :goto_2
    move-object/from16 v2, v17

    goto :goto_3

    .line 19
    :cond_4
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 20
    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v17

    goto :goto_2

    .line 18
    :goto_3
    new-instance v10, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-static {v6, v12, v13, v14, v15}, Lcom/google/android/gms/internal/ads/zzbju;->zza(Landroid/net/Uri;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzauy;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfbt;)Landroid/content/Intent;

    move-result-object v9

    .line 23
    invoke-static {v2, v12, v13, v14, v15}, Lcom/google/android/gms/internal/ads/zzbju;->zza(Landroid/net/Uri;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzauy;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfbt;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v4, :cond_5

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v12, v9}, Lcom/google/android/gms/ads/internal/util/zzs;->zzp(Landroid/content/Context;Landroid/content/Intent;)V

    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v12, v2}, Lcom/google/android/gms/ads/internal/util/zzs;->zzp(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_5
    move-object v6, v9

    move-object v7, v10

    move-object v8, v12

    move-object v4, v9

    move-object v9, v13

    move-object/from16 p2, v10

    move-object v10, v14

    move v0, v11

    move-object v11, v15

    .line 26
    invoke-static/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzbju;->zzd(Landroid/content/Intent;Ljava/util/ArrayList;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzauy;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfbt;)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    if-eqz v7, :cond_6

    move-object v6, v4

    move-object v8, v12

    move-object v9, v13

    move-object v10, v14

    move-object v11, v15

    .line 27
    invoke-static/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzbju;->zzb(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzauy;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfbt;)Landroid/content/Intent;

    move-result-object v17

    goto/16 :goto_0

    :cond_6
    if-eqz v2, :cond_7

    .line 28
    invoke-static {v2, v12, v13, v14, v15}, Lcom/google/android/gms/internal/ads/zzbju;->zzc(Landroid/content/Intent;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzauy;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfbt;)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    if-eqz v7, :cond_7

    move-object v6, v4

    move-object v8, v12

    move-object v9, v13

    move-object v10, v14

    move-object v11, v15

    .line 29
    invoke-static/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzbju;->zzb(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzauy;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfbt;)Landroid/content/Intent;

    move-result-object v2

    .line 30
    invoke-static {v2, v12, v13, v14, v15}, Lcom/google/android/gms/internal/ads/zzbju;->zzc(Landroid/content/Intent;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzauy;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfbt;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-nez v6, :cond_d

    .line 31
    :cond_7
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_6

    :cond_8
    if-eqz v19, :cond_b

    if-eqz v16, :cond_b

    .line 32
    invoke-virtual/range {v16 .. v16}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 33
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    move v11, v0

    :goto_4
    if-ge v11, v6, :cond_b

    move-object/from16 v7, p2

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 34
    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 35
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    add-int/lit8 v16, v11, 0x1

    if-eqz v10, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 36
    iget-object v10, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v6, v4

    move-object v7, v8

    move-object v8, v12

    move-object v9, v13

    move-object v10, v14

    move-object v11, v15

    .line 38
    invoke-static/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzbju;->zzb(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzauy;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfbt;)Landroid/content/Intent;

    move-result-object v17

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x0

    goto :goto_5

    :cond_a
    move-object/from16 p2, v7

    move/from16 v11, v16

    goto :goto_4

    :cond_b
    move-object/from16 v7, p2

    if-eqz v18, :cond_c

    const/4 v0, 0x0

    .line 37
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/pm/ResolveInfo;

    move-object v6, v4

    move-object v8, v12

    move-object v9, v13

    move-object v10, v14

    move-object v11, v15

    invoke-static/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzbju;->zzb(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzauy;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfbt;)Landroid/content/Intent;

    move-result-object v17

    goto/16 :goto_0

    :cond_c
    :goto_6
    move-object v2, v4

    :cond_d
    :goto_7
    if-eqz p3, :cond_f

    .line 9
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbjv;->zze:Lcom/google/android/gms/internal/ads/zzeat;

    if-eqz v0, :cond_f

    if-eqz v2, :cond_f

    .line 39
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzcel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p1

    .line 40
    invoke-direct {v1, v5, v0, v4, v3}, Lcom/google/android/gms/internal/ads/zzbjv;->zzl(Lcom/google/android/gms/ads/internal/client/zza;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_8

    :cond_e
    return-void

    :cond_f
    move-object/from16 v5, p1

    .line 41
    :goto_8
    :try_start_0
    move-object v0, v5

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcfv;

    new-instance v4, Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzbjv;->zzg:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    invoke-direct {v4, v2, v5}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzaa;)V

    move/from16 v2, p5

    move/from16 v5, p6

    invoke-interface {v0, v4, v2, v5, v3}, Lcom/google/android/gms/internal/ads/zzcfv;->zzaJ(Lcom/google/android/gms/ads/internal/overlay/zzc;ZZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 43
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void
.end method

.method private final zzk(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjv;->zzd:Lcom/google/android/gms/internal/ads/zzbrw;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbrw;->zzb(Z)V

    :cond_0
    return-void
.end method

.method private final zzl(Lcom/google/android/gms/ads/internal/client/zza;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjv;->zzb:Lcom/google/android/gms/internal/ads/zzdre;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbjv;->zze:Lcom/google/android/gms/internal/ads/zzeat;

    const-string v2, "offline_open"

    invoke-static {p2, v0, v1, p4, v2}, Lcom/google/android/gms/internal/ads/zzebe;->zzo(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdre;Lcom/google/android/gms/internal/ads/zzeat;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbza;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbza;->zzA(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjv;->zze:Lcom/google/android/gms/internal/ads/zzeat;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbjv;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzu;

    .line 3
    invoke-virtual {p1, p2, p4}, Lcom/google/android/gms/internal/ads/zzeat;->zzh(Lcom/google/android/gms/ads/internal/util/client/zzu;Ljava/lang/String;)V

    return v1

    .line 4
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcel;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcel;->zzD()Lcom/google/android/gms/internal/ads/zzfau;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzfau;->zzay:Lcom/google/android/gms/ads/internal/util/client/zzw;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/google/android/gms/ads/internal/util/client/zzw;->zzc()Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfau;->zzad:Lcom/google/android/gms/internal/ads/zzbte;

    if-eqz v2, :cond_3

    iget-boolean v5, v2, Lcom/google/android/gms/internal/ads/zzbte;->zza:Z

    if-eqz v5, :cond_3

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzbte;->zzb:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzbte;->zzc:Z

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    if-nez v4, :cond_f

    if-eqz v2, :cond_4

    .line 5
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbci;->zziE:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v2

    .line 7
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_7

    .line 8
    :cond_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzs;->zzA(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/util/zzbr;

    move-result-object v2

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 10
    invoke-static {p2}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v4

    const-string v5, "offline_notification_channel"

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzaa;

    move-result-object v6

    .line 12
    invoke-virtual {v6, p2, v5}, Lcom/google/android/gms/ads/internal/util/zzaa;->zzi(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 13
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcel;->zzO()Lcom/google/android/gms/internal/ads/zzcgf;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzcgf;->zzi()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcel;->zzi()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_5

    move v6, v3

    goto :goto_2

    :cond_5
    move v6, v1

    :goto_2
    if-nez v4, :cond_9

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 15
    invoke-static {p2}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_4

    .line 36
    :cond_6
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x21

    if-ge v4, v7, :cond_7

    .line 16
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbci;->zziz:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v4

    .line 16
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_3

    .line 18
    :cond_7
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbci;->zziy:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v4

    .line 18
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :goto_3
    if-eqz v4, :cond_8

    goto :goto_5

    .line 15
    :cond_8
    :goto_4
    const-string p1, "notifications_disabled"

    .line 36
    invoke-direct {p0, p2, p4, p1}, Lcom/google/android/gms/internal/ads/zzbjv;->zzi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_9
    :goto_5
    if-eqz v5, :cond_a

    .line 16
    const-string p1, "notification_channel_disabled"

    .line 20
    invoke-direct {p0, p2, p4, p1}, Lcom/google/android/gms/internal/ads/zzbjv;->zzi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_a
    if-nez v2, :cond_b

    const-string p1, "work_manager_unavailable"

    .line 21
    invoke-direct {p0, p2, p4, p1}, Lcom/google/android/gms/internal/ads/zzbjv;->zzi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_b
    if-eqz v6, :cond_c

    const-string p1, "ad_no_activity"

    .line 22
    invoke-direct {p0, p2, p4, p1}, Lcom/google/android/gms/internal/ads/zzbjv;->zzi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 23
    :cond_c
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbci;->zziw:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v2

    .line 23
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_d

    const-string p1, "notification_flow_disabled"

    .line 25
    invoke-direct {p0, p2, p4, p1}, Lcom/google/android/gms/internal/ads/zzbjv;->zzi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 26
    :cond_d
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcel;->zzL()Lcom/google/android/gms/ads/internal/overlay/zzm;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcel;->zzi()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzebg;->zze()Lcom/google/android/gms/internal/ads/zzebf;

    move-result-object v2

    .line 28
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcel;->zzi()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzebf;->zza(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzebf;

    const/4 v4, 0x0

    .line 29
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzebf;->zzb(Lcom/google/android/gms/ads/internal/overlay/zzm;)Lcom/google/android/gms/internal/ads/zzebf;

    .line 30
    invoke-virtual {v2, p4}, Lcom/google/android/gms/internal/ads/zzebf;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzebf;

    .line 31
    invoke-virtual {v2, p3}, Lcom/google/android/gms/internal/ads/zzebf;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzebf;

    .line 32
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzebf;->zze()Lcom/google/android/gms/internal/ads/zzebg;

    move-result-object p3

    .line 33
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcel;->zzL()Lcom/google/android/gms/ads/internal/overlay/zzm;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzf(Lcom/google/android/gms/internal/ads/zzebg;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p4, p1}, Lcom/google/android/gms/internal/ads/zzbjv;->zzi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 27
    :cond_e
    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/ads/zzcfv;

    const/16 v0, 0xe

    invoke-interface {p2, p4, p3, v0}, Lcom/google/android/gms/internal/ads/zzcfv;->zzaK(Ljava/lang/String;Ljava/lang/String;I)V

    .line 35
    :goto_6
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/client/zza;->onAdClicked()V

    return v3

    .line 7
    :cond_f
    :goto_7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjv;->zzb:Lcom/google/android/gms/internal/ads/zzdre;

    if-eqz p1, :cond_10

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbjv;->zze:Lcom/google/android/gms/internal/ads/zzeat;

    const-string v0, "onfs"

    .line 37
    invoke-static {p2, p1, p3, p4, v0}, Lcom/google/android/gms/internal/ads/zzebe;->zzo(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdre;Lcom/google/android/gms/internal/ads/zzeat;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    return v1
.end method

.method private final zzm(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzeM:Lcom/google/android/gms/internal/ads/zzbbz;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjv;->zzb:Lcom/google/android/gms/internal/ads/zzdre;

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdre;->zza()Lcom/google/android/gms/internal/ads/zzdrd;

    move-result-object v0

    const-string v1, "action"

    const-string v2, "cct_action"

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdrd;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdrd;

    packed-switch p1, :pswitch_data_0

    const-string p1, "OPT_OUT"

    goto :goto_0

    .line 6
    :pswitch_0
    const-string p1, "WRONG_EXP_SETUP"

    goto :goto_0

    :pswitch_1
    const-string p1, "UNKNOWN"

    goto :goto_0

    :pswitch_2
    const-string p1, "EMPTY_URL"

    goto :goto_0

    :pswitch_3
    const-string p1, "ACTIVITY_NOT_FOUND"

    goto :goto_0

    :pswitch_4
    const-string p1, "CCT_READY_TO_OPEN"

    goto :goto_0

    :pswitch_5
    const-string p1, "CCT_NOT_SUPPORTED"

    goto :goto_0

    :pswitch_6
    const-string p1, "CONTEXT_NULL"

    goto :goto_0

    :pswitch_7
    const-string p1, "CONTEXT_NOT_AN_ACTIVITY"

    .line 4
    :goto_0
    const-string v1, "cct_open_status"

    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdrd;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdrd;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdrd;->zzj()V

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/ads/internal/client/zza;

    .line 2
    const-string v0, "u"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    .line 3
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4
    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcel;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcel;->zzD()Lcom/google/android/gms/internal/ads/zzfau;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcel;->zzD()Lcom/google/android/gms/internal/ads/zzfau;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfau;->zzaw:Ljava/util/Map;

    .line 6
    :cond_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcel;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    .line 7
    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzbxy;->zzc(Ljava/lang/String;Landroid/content/Context;ZLjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "a"

    .line 8
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 9
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Action missing from an open GMSG."

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbjv;->zza:Lcom/google/android/gms/ads/internal/zzb;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zzb;->zzc()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/internal/zzb;->zzb(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_3
    :goto_0
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbci;->zzkf:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v2

    .line 11
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbjv;->zzf:Lcom/google/android/gms/internal/ads/zzclx;

    if-eqz v2, :cond_4

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzclx;->zzj(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zze()Ljava/util/Random;

    move-result-object v3

    .line 16
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzclx;->zze(Ljava/lang/String;Ljava/util/Random;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_1

    .line 14
    :cond_4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgbs;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 16
    :goto_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbjr;

    invoke-direct {v2, p0, p2, p1, v1}, Lcom/google/android/gms/internal/ads/zzbjr;-><init>(Lcom/google/android/gms/internal/ads/zzbjv;Ljava/util/Map;Lcom/google/android/gms/ads/internal/client/zza;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjv;->zzh:Lcom/google/android/gms/internal/ads/zzgcd;

    .line 17
    invoke-static {v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzgbs;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgbo;Ljava/util/concurrent/Executor;)V

    return-void
.end method
