.class public final Lcom/google/android/gms/internal/ads/zzir;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field final zza:Landroid/content/Context;

.field zzb:Lcom/google/android/gms/internal/ads/zzdg;

.field zzc:Lcom/google/android/gms/internal/ads/zzfuo;

.field zzd:Lcom/google/android/gms/internal/ads/zzfuo;

.field zze:Lcom/google/android/gms/internal/ads/zzfuo;

.field zzf:Lcom/google/android/gms/internal/ads/zzfuo;

.field zzg:Lcom/google/android/gms/internal/ads/zzfuo;

.field zzh:Lcom/google/android/gms/internal/ads/zzftl;

.field zzi:Landroid/os/Looper;

.field zzj:I

.field zzk:Lcom/google/android/gms/internal/ads/zze;

.field zzl:I

.field zzm:Z

.field zzn:Lcom/google/android/gms/internal/ads/zzma;

.field zzo:J

.field zzp:J

.field zzq:Z

.field zzr:Z

.field zzs:Ljava/lang/String;

.field zzt:Lcom/google/android/gms/internal/ads/zzib;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcdr;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzik;

    move-object/from16 v3, p2

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzik;-><init>(Lcom/google/android/gms/internal/ads/zzcdr;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzil;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzil;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzim;

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/zzim;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzin;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzin;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzio;

    invoke-direct {v6, v1}, Lcom/google/android/gms/internal/ads/zzio;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzip;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzip;-><init>()V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v8, v1

    check-cast v8, Landroid/content/Context;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzir;->zza:Landroid/content/Context;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzir;->zzc:Lcom/google/android/gms/internal/ads/zzfuo;

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzir;->zzd:Lcom/google/android/gms/internal/ads/zzfuo;

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzir;->zze:Lcom/google/android/gms/internal/ads/zzfuo;

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzir;->zzf:Lcom/google/android/gms/internal/ads/zzfuo;

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzir;->zzg:Lcom/google/android/gms/internal/ads/zzfuo;

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzir;->zzh:Lcom/google/android/gms/internal/ads/zzftl;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeu;->zzz()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzir;->zzi:Landroid/os/Looper;

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zze;->zza:Lcom/google/android/gms/internal/ads/zze;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzir;->zzk:Lcom/google/android/gms/internal/ads/zze;

    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzir;->zzl:I

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzir;->zzm:Z

    .line 4
    sget-object v2, Lcom/google/android/gms/internal/ads/zzma;->zzb:Lcom/google/android/gms/internal/ads/zzma;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzir;->zzn:Lcom/google/android/gms/internal/ads/zzma;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzib;

    const-wide/16 v3, 0x14

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzeu;->zzs(J)J

    move-result-wide v9

    const-wide/16 v14, 0x1f4

    invoke-static {v14, v15}, Lcom/google/android/gms/internal/ads/zzeu;->zzs(J)J

    move-result-wide v11

    const v13, 0x3f7fbe77    # 0.999f

    const/16 v16, 0x0

    const v4, 0x3f7851ec    # 0.97f

    const v5, 0x3f83d70a    # 1.03f

    const-wide/16 v6, 0x3e8

    const v8, 0x33d6bf95    # 1.0E-7f

    move-object v3, v2

    move-object/from16 v14, v16

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/internal/ads/zzib;-><init>(FFJFJJFLcom/google/android/gms/internal/ads/zzia;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzir;->zzt:Lcom/google/android/gms/internal/ads/zzib;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdg;->zza:Lcom/google/android/gms/internal/ads/zzdg;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzir;->zzb:Lcom/google/android/gms/internal/ads/zzdg;

    const-wide/16 v2, 0x1f4

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzir;->zzo:J

    const-wide/16 v2, 0x7d0

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzir;->zzp:J

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzir;->zzq:Z

    const-string v1, ""

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzir;->zzs:Ljava/lang/String;

    const/16 v1, -0x3e8

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzir;->zzj:I

    sget v1, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v2, 0x23

    if-lt v1, v2, :cond_0

    .line 5
    sget v1, Lcom/google/android/gms/internal/ads/zzih;->zza:I

    :cond_0
    return-void
.end method

.method static synthetic zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzux;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzul;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzacw;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzacw;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzul;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzadh;)V

    return-object v0
.end method
