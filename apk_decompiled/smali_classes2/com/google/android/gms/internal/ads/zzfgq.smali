.class public final Lcom/google/android/gms/internal/ads/zzfgq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final zza:Ljava/lang/Object;

.field public static zzb:Ljava/lang/Boolean;

.field private static final zzc:Ljava/lang/Object;

.field private static final zzd:Ljava/lang/Object;


# instance fields
.field private final zze:Landroid/content/Context;

.field private final zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfgv;

.field private zzh:Ljava/lang/String;

.field private zzi:I

.field private final zzj:Lcom/google/android/gms/internal/ads/zzdor;

.field private final zzk:Ljava/util/List;

.field private zzl:Z

.field private final zzm:Lcom/google/android/gms/internal/ads/zzbvg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfgq;->zza:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfgq;->zzc:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfgq;->zzd:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzdor;Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzbvg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfgz;->zzb()Lcom/google/android/gms/internal/ads/zzfgv;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzg:Lcom/google/android/gms/internal/ads/zzfgv;

    const-string p4, ""

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzh:Ljava/lang/String;

    const/4 p4, 0x0

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzl:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zze:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzj:Lcom/google/android/gms/internal/ads/zzdor;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzm:Lcom/google/android/gms/internal/ads/zzbvg;

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbci;->zziU:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzs;->zzd()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzk:Ljava/util/List;

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzk:Ljava/util/List;

    return-void
.end method

.method public static zza()Z
    .locals 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfgq;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfgq;->zzb:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbeb;->zzb:Lcom/google/android/gms/internal/ads/zzbds;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbds;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzfgq;->zzb:Ljava/lang/Boolean;

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbeb;->zza:Lcom/google/android/gms/internal/ads/zzbds;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbds;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 4
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    cmpg-double v1, v5, v3

    if-gez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzfgq;->zzb:Ljava/lang/Boolean;

    .line 2
    :cond_2
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfgq;->zzb:Ljava/lang/Boolean;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzfgq;Lcom/google/android/gms/internal/ads/zzfgg;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfgq;->zzd:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzl:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    goto :goto_3

    :cond_0
    const/4 v1, 0x1

    .line 50
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzl:Z

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfgq;->zza()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_3

    .line 4
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zze:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzq(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzh:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 5
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbza;

    move-result-object v2

    const-string v3, "CuiMonitor.gettingAppIdFromManifest"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzbza;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 6
    :goto_1
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zze:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzi:I

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zziP:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbci;->zzlW:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v2

    .line 10
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbzk;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v7, v1

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v4, p0

    move-wide v5, v7

    .line 12
    invoke-interface/range {v3 .. v9}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_2

    .line 13
    :cond_2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbzk;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v5, v1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, v2

    move-object v2, p0

    move-wide v3, v5

    .line 14
    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 15
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 16
    :goto_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfgq;->zza()Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_4

    :cond_3
    if-eqz p1, :cond_6

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfgq;->zzc:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzg:Lcom/google/android/gms/internal/ads/zzfgv;

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfgv;->zza()I

    move-result v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbci;->zziQ:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v3

    .line 19
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v2, v3, :cond_4

    .line 20
    monitor-exit v0

    return-void

    .line 21
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfgu;->zza()Lcom/google/android/gms/internal/ads/zzfgr;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfgg;->zzm()I

    move-result v3

    .line 22
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfgr;->zzu(I)Lcom/google/android/gms/internal/ads/zzfgr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfgg;->zzl()Z

    move-result v3

    .line 23
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfgr;->zzq(Z)Lcom/google/android/gms/internal/ads/zzfgr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfgg;->zzb()J

    move-result-wide v3

    .line 24
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfgr;->zzg(J)Lcom/google/android/gms/internal/ads/zzfgr;

    const/4 v3, 0x3

    .line 25
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfgr;->zzw(I)Lcom/google/android/gms/internal/ads/zzfgr;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    .line 26
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfgr;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfgr;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzh:Ljava/lang/String;

    .line 27
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfgr;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfgr;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 28
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfgr;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfgr;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 29
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfgr;->zzr(I)Lcom/google/android/gms/internal/ads/zzfgr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfgg;->zzo()I

    move-result v3

    .line 30
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfgr;->zzv(I)Lcom/google/android/gms/internal/ads/zzfgr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfgg;->zza()I

    move-result v3

    .line 31
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfgr;->zzj(I)Lcom/google/android/gms/internal/ads/zzfgr;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzi:I

    int-to-long v3, v3

    .line 32
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfgr;->zze(J)Lcom/google/android/gms/internal/ads/zzfgr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfgg;->zzn()I

    move-result v3

    .line 33
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfgr;->zzt(I)Lcom/google/android/gms/internal/ads/zzfgr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfgg;->zze()Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfgr;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfgr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfgg;->zzg()Ljava/lang/String;

    move-result-object v3

    .line 35
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfgr;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfgr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfgg;->zzh()Ljava/lang/String;

    move-result-object v3

    .line 36
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfgr;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfgr;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzj:Lcom/google/android/gms/internal/ads/zzdor;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfgg;->zzh()Ljava/lang/String;

    move-result-object v4

    .line 37
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzdor;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 38
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfgr;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfgr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfgg;->zzi()Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfgr;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfgr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfgg;->zzd()Lcom/google/android/gms/internal/ads/zzfgs;

    move-result-object v3

    .line 40
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfgr;->zzm(Lcom/google/android/gms/internal/ads/zzfgs;)Lcom/google/android/gms/internal/ads/zzfgr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfgg;->zzf()Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfgr;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfgr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfgg;->zzk()Ljava/lang/String;

    move-result-object v3

    .line 42
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfgr;->zzs(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfgr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfgg;->zzj()Ljava/lang/String;

    move-result-object v3

    .line 43
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfgr;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfgr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfgg;->zzc()J

    move-result-wide v3

    .line 44
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfgr;->zzp(J)Lcom/google/android/gms/internal/ads/zzfgr;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbci;->zziU:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 45
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p1

    .line 46
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzk:Ljava/util/List;

    .line 47
    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/ads/zzfgr;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfgr;

    .line 48
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfgx;->zza()Lcom/google/android/gms/internal/ads/zzfgw;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzfgw;->zza(Lcom/google/android/gms/internal/ads/zzfgr;)Lcom/google/android/gms/internal/ads/zzfgw;

    .line 49
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzfgv;->zzb(Lcom/google/android/gms/internal/ads/zzfgw;)Lcom/google/android/gms/internal/ads/zzfgv;

    .line 50
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_6
    :goto_4
    return-void

    :catchall_1
    move-exception p0

    .line 15
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfgq;->zza()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfgq;->zzc:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzg:Lcom/google/android/gms/internal/ads/zzfgv;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfgv;->zza()I

    move-result v1

    if-nez v1, :cond_1

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzg:Lcom/google/android/gms/internal/ads/zzfgv;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbn()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfgz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgvw;->zzaV()[B

    move-result-object v7

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfgv;->zzc()Lcom/google/android/gms/internal/ads/zzfgv;

    .line 7
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdyw;

    .line 8
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zziO:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 10
    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v8, "application/x-protobuf"

    const/4 v9, 0x0

    const v5, 0xea60

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzdyw;-><init>(Ljava/lang/String;ILjava/util/Map;[BLjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zze:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfgq;->zzm:Lcom/google/android/gms/internal/ads/zzbvg;

    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    new-instance v5, Lcom/google/android/gms/internal/ads/zzdyy;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdyy;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvg;I)V

    .line 12
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdyw;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzdyy;->zzb(Lcom/google/android/gms/internal/ads/zzdyw;)Lcom/google/android/gms/internal/ads/zzdyx;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catchall_0
    move-exception v1

    .line 7
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    .line 4
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzdvg;

    if-eqz v1, :cond_3

    .line 13
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdvg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdvg;->zza()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string v1, "CuiMonitor.sendCuiPing"

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbza;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbza;->zzv(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception v1

    .line 4
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzfgg;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbzk;->zza:Lcom/google/android/gms/internal/ads/zzgcd;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfgp;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzfgp;-><init>(Lcom/google/android/gms/internal/ads/zzfgq;Lcom/google/android/gms/internal/ads/zzfgg;)V

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgcd;->zza(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method
