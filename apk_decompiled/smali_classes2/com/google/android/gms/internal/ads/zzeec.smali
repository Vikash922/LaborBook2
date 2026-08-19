.class final Lcom/google/android/gms/internal/ads/zzeec;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdfm;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzc:Lcom/google/common/util/concurrent/ListenableFuture;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfau;

.field private final zze:Lcom/google/android/gms/internal/ads/zzcel;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfbp;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzbjm;

.field private final zzh:Z

.field private final zzi:Lcom/google/android/gms/internal/ads/zzebe;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzdre;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzcel;Lcom/google/android/gms/internal/ads/zzfbp;ZLcom/google/android/gms/internal/ads/zzbjm;Lcom/google/android/gms/internal/ads/zzebe;Lcom/google/android/gms/internal/ads/zzdre;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeec;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeec;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeec;->zzc:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeec;->zzd:Lcom/google/android/gms/internal/ads/zzfau;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeec;->zze:Lcom/google/android/gms/internal/ads/zzcel;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzeec;->zzf:Lcom/google/android/gms/internal/ads/zzfbp;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzeec;->zzg:Lcom/google/android/gms/internal/ads/zzbjm;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzeec;->zzh:Z

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzeec;->zzi:Lcom/google/android/gms/internal/ads/zzebe;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzeec;->zzj:Lcom/google/android/gms/internal/ads/zzdre;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfau;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeec;->zzd:Lcom/google/android/gms/internal/ads/zzfau;

    return-object v0
.end method

.method public final zzb(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzcvp;)V
    .locals 26

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzeec;->zzc:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgbs;->zzq(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdeb;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzeec;->zze:Lcom/google/android/gms/internal/ads/zzcel;

    const/4 v15, 0x1

    .line 2
    invoke-interface {v6, v15}, Lcom/google/android/gms/internal/ads/zzcel;->zzaq(Z)V

    .line 3
    new-instance v10, Lcom/google/android/gms/ads/internal/zzl;

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzeec;->zzh:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzeec;->zzg:Lcom/google/android/gms/internal/ads/zzbjm;

    .line 4
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbjm;->zze(Z)Z

    move-result v4

    move/from16 v17, v4

    goto :goto_0

    :cond_0
    move/from16 v17, v3

    .line 5
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzeec;->zza:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/zzs;->zzJ(Landroid/content/Context;)Z

    move-result v18

    if-eqz v2, :cond_1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzeec;->zzg:Lcom/google/android/gms/internal/ads/zzbjm;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbjm;->zzd()Z

    move-result v3

    :cond_1
    move/from16 v19, v3

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzeec;->zzg:Lcom/google/android/gms/internal/ads/zzbjm;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbjm;->zza()F

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    move/from16 v20, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzeec;->zzd:Lcom/google/android/gms/internal/ads/zzfau;

    .line 6
    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzfau;->zzO:Z

    const/16 v24, 0x0

    const/16 v21, -0x1

    move-object/from16 v16, v10

    move/from16 v22, p1

    move/from16 v23, v3

    invoke-direct/range {v16 .. v24}, Lcom/google/android/gms/ads/internal/zzl;-><init>(ZZZFIZZZ)V

    if-eqz p3, :cond_3

    .line 7
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzcvp;->zzf()V

    .line 8
    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzj()Lcom/google/android/gms/ads/internal/overlay/zzn;

    new-instance v14, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdeb;->zzh()Lcom/google/android/gms/internal/ads/zzdfb;

    move-result-object v4

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzfau;->zzQ:I

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzeec;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v9, v2, Lcom/google/android/gms/internal/ads/zzfau;->zzB:Ljava/lang/String;

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzfau;->zzs:Lcom/google/android/gms/internal/ads/zzfaz;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzfaz;->zzb:Ljava/lang/String;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzfaz;->zza:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzeec;->zzf:Lcom/google/android/gms/internal/ads/zzfbp;

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfau;->zzb()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzeec;->zzi:Lcom/google/android/gms/internal/ads/zzebe;

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    move-object/from16 v16, v2

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzfbp;->zzf:Ljava/lang/String;

    .line 11
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzcel;->zzr()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v2, v14

    move-object/from16 v25, v14

    move-object/from16 v14, p3

    move-object/from16 v15, v16

    move-object/from16 v16, v1

    invoke-direct/range {v2 .. v16}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzr;Lcom/google/android/gms/ads/internal/overlay/zzac;Lcom/google/android/gms/internal/ads/zzcel;ILcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcvp;Lcom/google/android/gms/internal/ads/zzbsr;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzeec;->zzj:Lcom/google/android/gms/internal/ads/zzdre;

    move-object/from16 v2, p2

    move-object/from16 v3, v25

    const/4 v4, 0x1

    .line 12
    invoke-static {v2, v3, v4, v1}, Lcom/google/android/gms/ads/internal/overlay/zzn;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;ZLcom/google/android/gms/internal/ads/zzdre;)V

    return-void
.end method
