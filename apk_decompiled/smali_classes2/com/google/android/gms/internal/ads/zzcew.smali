.class public final synthetic Lcom/google/android/gms/internal/ads/zzcew;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfuo;


# instance fields
.field public final synthetic zza:Landroid/content/Context;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcgf;

.field public final synthetic zzc:Ljava/lang/String;

.field public final synthetic zzd:Z

.field public final synthetic zze:Z

.field public final synthetic zzf:Lcom/google/android/gms/internal/ads/zzauy;

.field public final synthetic zzg:Lcom/google/android/gms/internal/ads/zzbdp;

.field public final synthetic zzh:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field public final synthetic zzi:Lcom/google/android/gms/ads/internal/zzn;

.field public final synthetic zzj:Lcom/google/android/gms/ads/internal/zza;

.field public final synthetic zzk:Lcom/google/android/gms/internal/ads/zzbbg;

.field public final synthetic zzl:Lcom/google/android/gms/internal/ads/zzfau;

.field public final synthetic zzm:Lcom/google/android/gms/internal/ads/zzfax;

.field public final synthetic zzn:Lcom/google/android/gms/internal/ads/zzfbt;

.field public final synthetic zzo:Lcom/google/android/gms/internal/ads/zzdre;

.field public final synthetic zzp:Lcom/google/android/gms/internal/ads/zzebe;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgf;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzauy;Lcom/google/android/gms/internal/ads/zzbdp;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzbcx;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzbbg;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzfax;Lcom/google/android/gms/internal/ads/zzfbt;Lcom/google/android/gms/internal/ads/zzdre;Lcom/google/android/gms/internal/ads/zzebe;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcew;->zza:Landroid/content/Context;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcew;->zzb:Lcom/google/android/gms/internal/ads/zzcgf;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcew;->zzc:Ljava/lang/String;

    move v1, p4

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzcew;->zzd:Z

    move v1, p5

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzcew;->zze:Z

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcew;->zzf:Lcom/google/android/gms/internal/ads/zzauy;

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcew;->zzg:Lcom/google/android/gms/internal/ads/zzbdp;

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcew;->zzh:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcew;->zzi:Lcom/google/android/gms/ads/internal/zzn;

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcew;->zzj:Lcom/google/android/gms/ads/internal/zza;

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcew;->zzk:Lcom/google/android/gms/internal/ads/zzbbg;

    move-object v1, p13

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcew;->zzl:Lcom/google/android/gms/internal/ads/zzfau;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcew;->zzm:Lcom/google/android/gms/internal/ads/zzfax;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcew;->zzn:Lcom/google/android/gms/internal/ads/zzfbt;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcew;->zzo:Lcom/google/android/gms/internal/ads/zzdre;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcew;->zzp:Lcom/google/android/gms/internal/ads/zzebe;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 24

    move-object/from16 v1, p0

    .line 1
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzcew;->zzb:Lcom/google/android/gms/internal/ads/zzcgf;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzcew;->zzc:Ljava/lang/String;

    iget-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzcew;->zzd:Z

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcew;->zzk:Lcom/google/android/gms/internal/ads/zzbbg;

    iget-boolean v15, v1, Lcom/google/android/gms/internal/ads/zzcew;->zze:Z

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzcew;->zzf:Lcom/google/android/gms/internal/ads/zzauy;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzcew;->zzl:Lcom/google/android/gms/internal/ads/zzfau;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzcew;->zzg:Lcom/google/android/gms/internal/ads/zzbdp;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzcew;->zzi:Lcom/google/android/gms/ads/internal/zzn;

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzcew;->zzm:Lcom/google/android/gms/internal/ads/zzfax;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzcew;->zza:Landroid/content/Context;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzcew;->zzh:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzcew;->zzj:Lcom/google/android/gms/ads/internal/zza;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzcew;->zzn:Lcom/google/android/gms/internal/ads/zzfbt;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzcew;->zzo:Lcom/google/android/gms/internal/ads/zzdre;

    move-object/from16 v16, v11

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzcew;->zzp:Lcom/google/android/gms/internal/ads/zzebe;

    const/16 v17, 0x108

    :try_start_0
    invoke-static/range {v17 .. v17}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    move-object/from16 v17, v11

    new-instance v11, Lcom/google/android/gms/internal/ads/zzcfd;

    .line 2
    sget v18, Lcom/google/android/gms/internal/ads/zzcfk;->zza:I

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcge;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzcge;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcfk;

    const/16 v18, 0x0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object v3, v1

    move-object v1, v7

    move v7, v15

    move-object/from16 v22, v11

    move-object/from16 v21, v17

    move-object/from16 v11, v18

    move-object/from16 v17, v13

    move-object/from16 v13, v16

    move-object/from16 v16, v14

    move-object v14, v0

    move/from16 v23, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v1

    .line 4
    invoke-direct/range {v2 .. v17}, Lcom/google/android/gms/internal/ads/zzcfk;-><init>(Lcom/google/android/gms/internal/ads/zzcge;Lcom/google/android/gms/internal/ads/zzcgf;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzauy;Lcom/google/android/gms/internal/ads/zzbdp;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzbcx;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzbbg;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzfax;Lcom/google/android/gms/internal/ads/zzfbt;)V

    move-object/from16 v3, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    .line 2
    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzcfd;-><init>(Lcom/google/android/gms/internal/ads/zzcel;Lcom/google/android/gms/internal/ads/zzdre;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzaa;

    move-result-object v1

    move-object/from16 v4, v21

    move/from16 v3, v23

    .line 6
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/android/gms/ads/internal/util/zzaa;->zzc(Lcom/google/android/gms/internal/ads/zzcel;Lcom/google/android/gms/internal/ads/zzbbg;ZLcom/google/android/gms/internal/ads/zzebe;)Lcom/google/android/gms/internal/ads/zzcet;

    move-result-object v0

    .line 7
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzcel;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcek;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzcek;-><init>(Lcom/google/android/gms/internal/ads/zzcel;)V

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzcel;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object v2

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 10
    throw v0
.end method
