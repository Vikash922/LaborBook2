.class public final Lcom/google/android/gms/internal/ads/zzdoe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzauy;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbdp;

.field private final zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zze:Lcom/google/android/gms/ads/internal/zza;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzbbg;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzcxv;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzebe;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzfbt;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzdre;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcey;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzauy;Lcom/google/android/gms/internal/ads/zzbdp;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzbbg;Lcom/google/android/gms/internal/ads/zzcxv;Lcom/google/android/gms/internal/ads/zzebe;Lcom/google/android/gms/internal/ads/zzfbt;Lcom/google/android/gms/internal/ads/zzdre;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdoe;->zza:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdoe;->zzb:Lcom/google/android/gms/internal/ads/zzauy;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdoe;->zzc:Lcom/google/android/gms/internal/ads/zzbdp;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdoe;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdoe;->zze:Lcom/google/android/gms/ads/internal/zza;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdoe;->zzf:Lcom/google/android/gms/internal/ads/zzbbg;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdoe;->zzg:Lcom/google/android/gms/internal/ads/zzcxv;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzdoe;->zzh:Lcom/google/android/gms/internal/ads/zzebe;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzdoe;->zzi:Lcom/google/android/gms/internal/ads/zzfbt;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzdoe;->zzj:Lcom/google/android/gms/internal/ads/zzdre;

    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzdoe;)Lcom/google/android/gms/internal/ads/zzcxv;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdoe;->zzg:Lcom/google/android/gms/internal/ads/zzcxv;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzfax;)Lcom/google/android/gms/internal/ads/zzcel;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcex;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcgf;->zzc(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzcgf;

    move-result-object v2

    move-object/from16 v1, p1

    iget-object v3, v1, Lcom/google/android/gms/ads/internal/client/zzr;->zza:Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdnt;

    move-object v10, v1

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzdnt;-><init>(Lcom/google/android/gms/internal/ads/zzdoe;)V

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzdoe;->zzh:Lcom/google/android/gms/internal/ads/zzebe;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdoe;->zzi:Lcom/google/android/gms/internal/ads/zzfbt;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdoe;->zzj:Lcom/google/android/gms/internal/ads/zzdre;

    move-object/from16 v17, v1

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzdoe;->zze:Lcom/google/android/gms/ads/internal/zza;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzdoe;->zzf:Lcom/google/android/gms/internal/ads/zzbbg;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzdoe;->zzb:Lcom/google/android/gms/internal/ads/zzauy;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzdoe;->zzc:Lcom/google/android/gms/internal/ads/zzbdp;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzdoe;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdoe;->zza:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 2
    invoke-static/range {v1 .. v17}, Lcom/google/android/gms/internal/ads/zzcey;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgf;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzauy;Lcom/google/android/gms/internal/ads/zzbdp;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzbcx;Lcom/google/android/gms/ads/internal/zzn;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzbbg;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzfax;Lcom/google/android/gms/internal/ads/zzebe;Lcom/google/android/gms/internal/ads/zzfbt;Lcom/google/android/gms/internal/ads/zzdre;)Lcom/google/android/gms/internal/ads/zzcel;

    move-result-object v1

    return-object v1
.end method
