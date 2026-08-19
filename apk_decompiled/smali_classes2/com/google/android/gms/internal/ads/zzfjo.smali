.class public final Lcom/google/android/gms/internal/ads/zzfjo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzc:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzd:Lcom/google/android/gms/ads/internal/ClientApi;

.field private zze:Lcom/google/android/gms/internal/ads/zzboy;

.field private final zzf:Lcom/google/android/gms/common/util/Clock;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/common/util/Clock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjo;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfjo;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfjo;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p1, Lcom/google/android/gms/ads/internal/ClientApi;

    invoke-direct {p1}, Lcom/google/android/gms/ads/internal/ClientApi;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjo;->zzd:Lcom/google/android/gms/ads/internal/ClientApi;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfjo;->zzf:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method

.method private static zzc()Lcom/google/android/gms/internal/ads/zzfiu;
    .locals 10

    .line 1
    new-instance v9, Lcom/google/android/gms/internal/ads/zzfiu;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzz:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzA:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide v7, 0x3fc999999999999aL    # 0.2

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzfiu;-><init>(JDJD)V

    return-object v9
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/internal/client/zzfp;Lcom/google/android/gms/ads/internal/client/zzce;)Lcom/google/android/gms/internal/ads/zzfjn;
    .locals 11

    .line 1
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/zzfp;->zzb:I

    invoke-static {v0}, Lcom/google/android/gms/ads/AdFormat;->getAdFormat(I)Lcom/google/android/gms/ads/AdFormat;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdFormat;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfjo;->zzd:Lcom/google/android/gms/ads/internal/ClientApi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfjo;->zza:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjo;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzfit;

    iget v3, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfjo;->zze:Lcom/google/android/gms/internal/ads/zzboy;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzfjo;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzfjo;->zzf:Lcom/google/android/gms/common/util/Clock;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfjo;->zzc()Lcom/google/android/gms/internal/ads/zzfiu;

    move-result-object v8

    move-object v0, v10

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzfit;-><init>(Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzboy;Lcom/google/android/gms/ads/internal/client/zzfp;Lcom/google/android/gms/ads/internal/client/zzce;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfiu;Lcom/google/android/gms/common/util/Clock;)V

    return-object v10

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfjo;->zzd:Lcom/google/android/gms/ads/internal/ClientApi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfjo;->zza:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjo;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzfjr;

    iget v3, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfjo;->zze:Lcom/google/android/gms/internal/ads/zzboy;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzfjo;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzfjo;->zzf:Lcom/google/android/gms/common/util/Clock;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfjo;->zzc()Lcom/google/android/gms/internal/ads/zzfiu;

    move-result-object v8

    move-object v0, v10

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzfjr;-><init>(Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzboy;Lcom/google/android/gms/ads/internal/client/zzfp;Lcom/google/android/gms/ads/internal/client/zzce;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfiu;Lcom/google/android/gms/common/util/Clock;)V

    return-object v10

    .line 2
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfjo;->zzd:Lcom/google/android/gms/ads/internal/ClientApi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfjo;->zza:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjo;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzfiw;

    iget v3, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfjo;->zze:Lcom/google/android/gms/internal/ads/zzboy;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzfjo;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzfjo;->zzf:Lcom/google/android/gms/common/util/Clock;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfjo;->zzc()Lcom/google/android/gms/internal/ads/zzfiu;

    move-result-object v8

    move-object v0, v10

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzfiw;-><init>(Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzboy;Lcom/google/android/gms/ads/internal/client/zzfp;Lcom/google/android/gms/ads/internal/client/zzce;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfiu;Lcom/google/android/gms/common/util/Clock;)V

    return-object v10
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzboy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjo;->zze:Lcom/google/android/gms/internal/ads/zzboy;

    return-void
.end method
