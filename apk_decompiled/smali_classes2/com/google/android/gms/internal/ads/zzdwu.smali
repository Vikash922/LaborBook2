.class public final Lcom/google/android/gms/internal/ads/zzdwu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# static fields
.field private static final zza:Ljava/util/regex/Pattern;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzcgl;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfbp;

.field private final zzf:Ljava/util/concurrent/Executor;

.field private final zzg:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzh:Ljava/lang/String;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzfgn;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzdqy;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzfio;

.field private final zzl:Ljava/lang/Object;

.field private zzm:Ljava/lang/String;

.field private zzn:Ljava/util/List;

.field private final zzo:Lcom/google/android/gms/internal/ads/zzbvg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdwu;->zza:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcgl;Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfbp;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfgn;Lcom/google/android/gms/internal/ads/zzdqy;Lcom/google/android/gms/internal/ads/zzbvg;Lcom/google/android/gms/internal/ads/zzdyz;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfio;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p10, Ljava/lang/Object;

    invoke-direct {p10}, Ljava/lang/Object;-><init>()V

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzdwu;->zzl:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwu;->zzb:Lcom/google/android/gms/internal/ads/zzcgl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdwu;->zzc:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdwu;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdwu;->zze:Lcom/google/android/gms/internal/ads/zzfbp;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdwu;->zzf:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdwu;->zzh:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdwu;->zzi:Lcom/google/android/gms/internal/ads/zzfgn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcgl;->zzw()Lcom/google/android/gms/internal/ads/zzfce;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdwu;->zzj:Lcom/google/android/gms/internal/ads/zzdqy;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzdwu;->zzo:Lcom/google/android/gms/internal/ads/zzbvg;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzdwu;->zzg:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzdwu;->zzk:Lcom/google/android/gms/internal/ads/zzfio;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzdwu;Ljava/util/List;Ljava/lang/Exception;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6

    .line 1
    const-string v0, "PreloadedLoader.getTypeTwoAdResponseString"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbza;

    move-result-object v1

    .line 2
    invoke-virtual {v1, p2, v0}, Lcom/google/android/gms/internal/ads/zzbza;->zzv(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 3
    instance-of v0, p2, Ljava/util/concurrent/TimeoutException;

    const-string v1, "Timed out waiting for ad response."

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-instance p2, Lcom/google/android/gms/internal/ads/zzefy;

    .line 4
    invoke-direct {p2, v2, v1}, Lcom/google/android/gms/internal/ads/zzefy;-><init>(ILjava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_0
    instance-of v0, p2, Lcom/google/android/gms/internal/ads/zzefy;

    if-eqz v0, :cond_1

    .line 5
    check-cast p2, Lcom/google/android/gms/internal/ads/zzefy;

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzefy;

    .line 6
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string p2, "Fetch failed."

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-direct {v0, v2, p2}, Lcom/google/android/gms/internal/ads/zzefy;-><init>(ILjava/lang/String;)V

    move-object p2, v0

    .line 7
    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzefy;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, ""

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzefy;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-eqz p1, :cond_8

    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_5

    .line 9
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "0.6.0.0"

    if-nez v3, :cond_6

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "timeout"

    const-string v4, "0.2.0.0"

    goto :goto_3

    .line 21
    :cond_5
    const-string v1, "Received HTTP error code from ad server:"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x3a

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfth;->zzc(C)Lcom/google/android/gms/internal/ads/zzfth;

    move-result-object v1

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzful;->zzb(Lcom/google/android/gms/internal/ads/zzfth;)Lcom/google/android/gms/internal/ads/zzful;

    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzful;->zzf(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_6

    .line 15
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 10
    :cond_6
    :goto_3
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "@gw_adnetstatus@"

    .line 18
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfik;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "@error_code@"

    .line 19
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzfik;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdwu;->zzk:Lcom/google/android/gms/internal/ads/zzfio;

    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfio;->zze(Ljava/util/List;Lcom/google/android/gms/ads/internal/util/client/zzv;)V

    .line 22
    :cond_8
    :goto_5
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgbs;->zzg(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdwu;Lorg/json/JSONObject;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfbg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfbd;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdwu;->zze:Lcom/google/android/gms/internal/ads/zzfbp;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfbd;-><init>(Lcom/google/android/gms/internal/ads/zzfbp;)V

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3
    new-instance p1, Ljava/io/StringReader;

    invoke-direct {p1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzfbf;->zza(Ljava/io/Reader;Lcom/google/android/gms/internal/ads/zzbuy;)Lcom/google/android/gms/internal/ads/zzfbf;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzfbg;-><init>(Lcom/google/android/gms/internal/ads/zzfbd;Lcom/google/android/gms/internal/ads/zzfbf;)V

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgbs;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/ads/zzdwu;Lcom/google/android/gms/internal/ads/zzdyw;)Ljava/lang/String;
    .locals 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdqm;->zzB:Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdwu;->zzg(Lcom/google/android/gms/internal/ads/zzdqm;)V

    const/4 v0, 0x0

    const/4 v1, -0x1

    :goto_0
    const/4 v2, 0x1

    .line 2
    :try_start_0
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbci;->zzhf:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v3

    .line 2
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwu;->zzc:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdwu;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdwu;->zzo:Lcom/google/android/gms/internal/ads/zzbvg;

    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    new-instance v6, Lcom/google/android/gms/internal/ads/zzdyy;

    invoke-direct {v6, v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdyy;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvg;I)V

    .line 5
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdyw;

    invoke-virtual {v6, p1}, Lcom/google/android/gms/internal/ads/zzdyy;->zzb(Lcom/google/android/gms/internal/ads/zzdyw;)Lcom/google/android/gms/internal/ads/zzdyx;

    move-result-object v1

    .line 6
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzdyx;

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzdyx;->zza:I

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbci;->zzhg:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v4

    .line 8
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdwu;->zzj:Lcom/google/android/gms/internal/ads/zzdqy;

    const-string v5, "fr"

    .line 9
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzdqy;->zzd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/ads/zzdqm;->zzC:Lcom/google/android/gms/internal/ads/zzdqm;

    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdwu;->zzg(Lcom/google/android/gms/internal/ads/zzdqm;)V

    iget-object p0, v1, Lcom/google/android/gms/internal/ads/zzdyx;->zzc:Ljava/lang/String;

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_0

    .line 12
    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/ads/zzefy;

    new-instance p1, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received HTTP error code from ad server:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/google/android/gms/internal/ads/zzefy;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 10
    new-instance p1, Lcom/google/android/gms/internal/ads/zzefy;

    .line 12
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "Fetch failed."

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {p1, v2, v0, p0}, Lcom/google/android/gms/internal/ads/zzefy;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private final zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    const-string v1, ""

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzefy;

    const/16 v2, 0xf

    const-string v3, "Invalid ad string."

    .line 2
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzefy;-><init>(ILjava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgbs;->zzg(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzdwu;->zzc:Landroid/content/Context;

    const/16 v3, 0xb

    .line 3
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzfgb;->zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfgc;

    move-result-object v3

    .line 4
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzfgc;->zzi()Lcom/google/android/gms/internal/ads/zzfgc;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdwu;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzdwu;->zzb:Lcom/google/android/gms/internal/ads/zzcgl;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzg()Lcom/google/android/gms/internal/ads/zzbnr;

    move-result-object v6

    .line 6
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzcgl;->zzy()Lcom/google/android/gms/internal/ads/zzfgq;

    move-result-object v5

    invoke-virtual {v6, v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzbnr;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfgq;)Lcom/google/android/gms/internal/ads/zzboa;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbnx;->zza:Lcom/google/android/gms/internal/ads/zzbnu;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzbnx;->zza:Lcom/google/android/gms/internal/ads/zzbnu;

    .line 7
    const-string v6, "google.afma.response.normalize"

    invoke-virtual {v2, v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzboa;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbnt;Lcom/google/android/gms/internal/ads/zzbns;)Lcom/google/android/gms/internal/ads/zzbnq;

    move-result-object v2

    .line 8
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbci;->zzhb:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v4

    .line 8
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "1"

    const-string v6, "sst"

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    .line 10
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v8, p1

    :try_start_1
    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v9, "fetch_url"

    .line 11
    invoke-virtual {v7, v9, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/google/android/gms/internal/ads/zzdwu;->zzm:Ljava/lang/String;

    new-instance v9, Lorg/json/JSONObject;

    const-string v10, "settings"

    .line 12
    invoke-virtual {v7, v10, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "nofill_urls"

    .line 13
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 14
    invoke-static {v7, v4}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzc(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzdwu;->zzn:Ljava/util/List;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object/from16 v8, p1

    .line 15
    :catch_1
    sget v7, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v7, "Invalid ad response."

    .line 16
    invoke-static {v7}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 14
    :goto_0
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzdwu;->zzm:Ljava/lang/String;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzdwu;->zzn:Ljava/util/List;

    .line 17
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzdwu;->zzj:Lcom/google/android/gms/internal/ads/zzdqy;

    const-string v8, "2"

    .line 18
    invoke-virtual {v5, v6, v8}, Lcom/google/android/gms/internal/ads/zzdqy;->zzd(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/google/android/gms/internal/ads/zzbci;->zzhd:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v5

    .line 20
    move-object v15, v5

    check-cast v15, Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzbci;->zzhc:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v5

    .line 22
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdwu;->zza:Ljava/util/regex/Pattern;

    .line 23
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzful;->zzc(Ljava/util/regex/Pattern;)Lcom/google/android/gms/internal/ads/zzful;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzful;->zzf(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v1

    .line 24
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    const/4 v8, 0x1

    if-ge v5, v6, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzefy;

    const-string v4, "Invalid fetch URL."

    .line 25
    invoke-direct {v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzefy;-><init>(ILjava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgbs;->zzg(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    goto/16 :goto_1

    .line 26
    :cond_1
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 27
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 28
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_2
    move-object v11, v7

    new-instance v4, Lcom/google/android/gms/internal/ads/zzdyw;

    new-instance v13, Ljava/util/HashMap;

    .line 29
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 30
    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v14

    const/16 v16, 0x0

    const v12, 0xea60

    move-object v10, v4

    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/zzdyw;-><init>(Ljava/lang/String;ILjava/util/Map;[BLjava/lang/String;Z)V

    .line 31
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbzk;->zza:Lcom/google/android/gms/internal/ads/zzgcd;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzdws;

    invoke-direct {v5, v0, v4}, Lcom/google/android/gms/internal/ads/zzdws;-><init>(Lcom/google/android/gms/internal/ads/zzdwu;Lcom/google/android/gms/internal/ads/zzdyw;)V

    .line 32
    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/ads/zzgcd;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 33
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgbj;->zzE(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzgbj;

    move-result-object v1

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbci;->zzhe:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 34
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v4

    .line 35
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzdwu;->zzg:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 36
    invoke-static {v1, v4, v5, v7, v6}, Lcom/google/android/gms/internal/ads/zzgbs;->zzo(Lcom/google/common/util/concurrent/ListenableFuture;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgbj;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzdwt;

    invoke-direct {v4, v0, v9}, Lcom/google/android/gms/internal/ads/zzdwt;-><init>(Lcom/google/android/gms/internal/ads/zzdwu;Ljava/util/List;)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzdwu;->zzf:Ljava/util/concurrent/Executor;

    const-class v6, Ljava/lang/Exception;

    .line 37
    invoke-static {v1, v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzgbs;->zzf(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgaz;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgbj;

    goto :goto_1

    .line 38
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzgbs;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdwu;->zzj:Lcom/google/android/gms/internal/ads/zzdqy;

    .line 39
    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzdqy;->zzd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object/from16 v8, p1

    .line 40
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzgbs;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdwu;->zzj:Lcom/google/android/gms/internal/ads/zzdqy;

    .line 41
    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzdqy;->zzd(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :goto_1
    new-instance v4, Lcom/google/android/gms/internal/ads/zzdwp;

    move-object/from16 v5, p2

    invoke-direct {v4, v0, v5}, Lcom/google/android/gms/internal/ads/zzdwp;-><init>(Lcom/google/android/gms/internal/ads/zzdwu;Ljava/lang/String;)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzdwu;->zzf:Ljava/util/concurrent/Executor;

    .line 42
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgbs;->zzn(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgaz;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v4, Lcom/google/android/gms/internal/ads/zzdwq;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/zzdwq;-><init>(Lcom/google/android/gms/internal/ads/zzbnq;)V

    .line 43
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgbs;->zzn(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgaz;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdwr;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdwr;-><init>(Lcom/google/android/gms/internal/ads/zzdwu;)V

    .line 44
    invoke-static {v1, v2, v5}, Lcom/google/android/gms/internal/ads/zzgbs;->zzn(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgaz;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzdwu;->zzi:Lcom/google/android/gms/internal/ads/zzfgn;

    .line 45
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfgm;->zza(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfgn;Lcom/google/android/gms/internal/ads/zzfgc;)V

    return-object v1
.end method

.method private final zzf(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "ad_types"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "unknown"

    const/4 v4, 0x0

    .line 3
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lorg/json/JSONArray;

    .line 4
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdwu;->zzh:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    const-string v1, "Failed to update the ad types for rendering. "

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-object p1
.end method

.method private final zzg(Lcom/google/android/gms/internal/ads/zzdqm;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwu;->zzj:Lcom/google/android/gms/internal/ads/zzdqy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqy;->zza()Landroid/os/Bundle;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zzhg:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method private static final zzh(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, ""

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "request_id"

    .line 2
    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    return-object v0
.end method


# virtual methods
.method public final zzc()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwu;->zze:Lcom/google/android/gms/internal/ads/zzfbp;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfbp;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzx:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdwu;->zzh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbci;->zzgY:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v2

    .line 3
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "&request_id="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_0

    add-int/lit8 v1, v1, 0xc

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 22
    :cond_0
    const-string v1, ""

    .line 7
    :cond_1
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzefy;

    const/16 v1, 0xf

    const-string v2, "Invalid ad string."

    .line 8
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzefy;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgbs;->zzg(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdwu;->zzl:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdwu;->zzb:Lcom/google/android/gms/internal/ads/zzcgl;

    .line 9
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzcgl;->zzn()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdwu;->zzj:Lcom/google/android/gms/internal/ads/zzdqy;

    .line 10
    invoke-virtual {v4, v1, v5}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdqy;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/ads/zzbci;->zzgY:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v7

    .line 12
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v7, :cond_8

    .line 13
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_8

    .line 14
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v10, Lcom/google/android/gms/internal/ads/zzbci;->zzgZ:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v10

    .line 16
    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "extras"

    .line 17
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_8

    const-string v10, "query_info_type"

    const-string v11, ""

    .line 18
    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v10, Lcom/google/android/gms/internal/ads/zzbci;->zzha:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v10

    .line 20
    check-cast v10, Ljava/lang/String;

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 21
    invoke-static {v7}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v10, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto/16 :goto_5

    .line 30
    :cond_3
    const-string v10, "is_gbid"

    .line 22
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "true"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_4

    goto/16 :goto_5

    .line 39
    :cond_4
    :try_start_2
    const-string v7, "&"

    .line 23
    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v3, :cond_5

    .line 24
    invoke-virtual {v0, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    move-object v3, v8

    .line 25
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_6

    goto :goto_5

    :cond_6
    const/16 v7, 0xb

    .line 26
    :try_start_3
    invoke-static {v3, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    const-string v7, "UTF-8"

    .line 27
    invoke-virtual {v1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 28
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v10, :cond_7

    :goto_2
    move-object v10, v8

    goto :goto_3

    .line 29
    :cond_7
    :try_start_4
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v11, "arek"

    .line 30
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v10

    .line 31
    :try_start_5
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Failed to get key from QueryJSONMap"

    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbza;

    move-result-object v11

    const-string v12, "CryptoUtils.getKeyFromQueryJsonMap"

    invoke-virtual {v11, v10, v12}, Lcom/google/android/gms/internal/ads/zzbza;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    .line 33
    :goto_3
    invoke-static {v3, v7, v10, v5}, Lcom/google/android/gms/internal/ads/zzfce;->zzb([B[BLjava/lang/String;Lcom/google/android/gms/internal/ads/zzdqy;)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    :catch_1
    move-exception v3

    goto :goto_4

    :catch_2
    move-exception v3

    .line 34
    :goto_4
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "Failed to decode the adResponse. "

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbza;

    move-result-object v5

    const-string v7, "PreloadedLoader.decryptAdResponseIfNecessary"

    .line 36
    invoke-virtual {v5, v3, v7}, Lcom/google/android/gms/internal/ads/zzbza;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 37
    :catch_3
    :cond_8
    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, ""
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    .line 38
    :cond_9
    :try_start_7
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    const-string v5, "render_id"

    const-string v7, ""

    .line 39
    invoke-virtual {v3, v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    .line 43
    :catch_4
    const-string v3, ""

    .line 40
    :goto_6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, ""
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    new-instance v7, Ljava/lang/String;

    .line 41
    invoke-static {v3, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v10

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v10, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object v5, v7

    goto :goto_7

    :catch_5
    move-exception v7

    .line 59
    :try_start_a
    const-string v10, "Ad grouping: Has render_id, but not base64 encoded: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 42
    invoke-static {v10}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbza;

    move-result-object v10

    const-string v11, "PreloadedLoader.decodeRenderId"

    invoke-virtual {v10, v7, v11}, Lcom/google/android/gms/internal/ads/zzbza;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_7
    const/16 v7, 0x3a

    .line 41
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzfth;->zzc(C)Lcom/google/android/gms/internal/ads/zzfth;

    move-result-object v7

    .line 44
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzful;->zzb(Lcom/google/android/gms/internal/ads/zzfth;)Lcom/google/android/gms/internal/ads/zzful;

    move-result-object v7

    .line 45
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzful;->zzf(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v5

    .line 46
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v10, 0x2

    if-ne v7, v10, :cond_a

    .line 47
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    const/4 v3, 0x1

    .line 48
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_8

    .line 51
    :cond_a
    const-string v5, "Ad grouping: Has render_id, but invalid format: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 49
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    :cond_b
    move v3, v9

    :goto_8
    if-eqz v8, :cond_c

    .line 48
    new-instance v5, Landroid/util/Pair;

    .line 50
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v5, v8, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9

    .line 73
    :cond_c
    new-instance v5, Landroid/util/Pair;

    const-string v3, ""

    .line 51
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v3, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    :goto_9
    iget-object v3, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 53
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 54
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e

    if-lez v5, :cond_e

    .line 55
    invoke-virtual {v4, v1, v3}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzh(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    new-instance v0, Lcom/google/android/gms/internal/ads/zzefy;

    const-string v1, "The ad has already been shown."

    const/16 v3, 0xa

    .line 56
    invoke-direct {v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzefy;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgbs;->zzg(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    monitor-exit v2

    return-object v0

    .line 57
    :cond_d
    invoke-virtual {v4, v1, v3, v5}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzg(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_f

    .line 58
    :cond_e
    invoke-virtual {v4, v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzf(Ljava/lang/String;)V

    .line 59
    :cond_f
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 60
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_a

    .line 73
    :cond_10
    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/ads/zzdwu;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzdwu;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 59
    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v0

    .line 60
    :cond_11
    :goto_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwu;->zze:Lcom/google/android/gms/internal/ads/zzfbp;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfbp;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzs:Lcom/google/android/gms/ads/internal/client/zzc;

    if-eqz v0, :cond_14

    .line 61
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zzgQ:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 62
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 61
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_b

    .line 72
    :cond_12
    iget-object v1, v0, Lcom/google/android/gms/ads/internal/client/zzc;->zza:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/client/zzc;->zzb:Ljava/lang/String;

    .line 63
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdwu;->zzh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdwu;->zzh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdwu;->zzb:Lcom/google/android/gms/internal/ads/zzcgl;

    .line 69
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcgl;->zzn()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzf(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdwu;->zzj:Lcom/google/android/gms/internal/ads/zzdqy;

    .line 70
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdqy;->zzb()Ljava/util/Map;

    move-result-object v2

    const-string v3, "request_id"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :goto_b
    iget-object v1, v0, Lcom/google/android/gms/ads/internal/client/zzc;->zza:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzc;->zzb:Ljava/lang/String;

    .line 71
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdwu;->zzf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzdwu;->zze(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 70
    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwu;->zzj:Lcom/google/android/gms/internal/ads/zzdqy;

    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqy;->zzb()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ridmm"

    const-string v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzefy;

    const/16 v1, 0xe

    const-string v2, "Mismatch request IDs."

    .line 68
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzefy;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgbs;->zzg(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
