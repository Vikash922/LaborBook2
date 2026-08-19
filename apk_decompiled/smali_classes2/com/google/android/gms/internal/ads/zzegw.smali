.class final Lcom/google/android/gms/internal/ads/zzegw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdfm;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdoe;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfbp;

.field private final zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfau;

.field private final zzf:Lcom/google/common/util/concurrent/ListenableFuture;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzcel;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzbjm;

.field private final zzi:Z

.field private final zzj:Lcom/google/android/gms/internal/ads/zzebe;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzdqy;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzdre;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdoe;Lcom/google/android/gms/internal/ads/zzfbp;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzcel;Lcom/google/android/gms/internal/ads/zzbjm;ZLcom/google/android/gms/internal/ads/zzebe;Lcom/google/android/gms/internal/ads/zzdqy;Lcom/google/android/gms/internal/ads/zzdre;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegw;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzb:Lcom/google/android/gms/internal/ads/zzdoe;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzc:Lcom/google/android/gms/internal/ads/zzfbp;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzegw;->zze:Lcom/google/android/gms/internal/ads/zzfau;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzf:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzg:Lcom/google/android/gms/internal/ads/zzcel;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzh:Lcom/google/android/gms/internal/ads/zzbjm;

    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzi:Z

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzj:Lcom/google/android/gms/internal/ads/zzebe;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzk:Lcom/google/android/gms/internal/ads/zzdqy;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzl:Lcom/google/android/gms/internal/ads/zzdre;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfau;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegw;->zze:Lcom/google/android/gms/internal/ads/zzfau;

    return-object v0
.end method

.method public final zzb(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzcvp;)V
    .locals 22

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzegw;->zzf:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgbs;->zzq(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdnj;

    :try_start_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzegw;->zze:Lcom/google/android/gms/internal/ads/zzfau;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzegw;->zzg:Lcom/google/android/gms/internal/ads/zzcel;

    .line 2
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcel;->zzaG()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbci;->zzbb:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v4

    .line 3
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzegw;->zzb:Lcom/google/android/gms/internal/ads/zzdoe;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzegw;->zzc:Lcom/google/android/gms/internal/ads/zzfbp;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfbp;->zze:Lcom/google/android/gms/ads/internal/client/zzr;

    .line 5
    invoke-virtual {v3, v4, v6, v6}, Lcom/google/android/gms/internal/ads/zzdoe;->zza(Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzfax;)Lcom/google/android/gms/internal/ads/zzcel;

    move-result-object v3

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdnj;->zzg()Lcom/google/android/gms/internal/ads/zzddl;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzbkb;->zzb(Lcom/google/android/gms/internal/ads/zzcel;Lcom/google/android/gms/internal/ads/zzbka;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzdoi;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzdoi;-><init>()V

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzegw;->zza:Landroid/content/Context;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcel;->zzF()Landroid/view/View;

    move-result-object v8

    .line 7
    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/internal/ads/zzdoi;->zza(Landroid/content/Context;Landroid/view/View;)V

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdnj;->zzl()Lcom/google/android/gms/internal/ads/zzdod;

    move-result-object v7

    iget-boolean v8, v1, Lcom/google/android/gms/internal/ads/zzegw;->zzi:Z

    if-eqz v8, :cond_1

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzegw;->zzh:Lcom/google/android/gms/internal/ads/zzbjm;

    goto :goto_0

    :cond_1
    move-object v8, v6

    :goto_0
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzegw;->zzk:Lcom/google/android/gms/internal/ads/zzdqy;

    .line 9
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzdqy;->zza()Landroid/os/Bundle;

    move-result-object v9

    .line 10
    invoke-virtual {v7, v3, v5, v8, v9}, Lcom/google/android/gms/internal/ads/zzdod;->zzi(Lcom/google/android/gms/internal/ads/zzcel;ZLcom/google/android/gms/internal/ads/zzbjm;Landroid/os/Bundle;)V

    .line 11
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcel;->zzN()Lcom/google/android/gms/internal/ads/zzcgd;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/ads/zzegu;

    invoke-direct {v8, v4, v3}, Lcom/google/android/gms/internal/ads/zzegu;-><init>(Lcom/google/android/gms/internal/ads/zzdoi;Lcom/google/android/gms/internal/ads/zzcel;)V

    .line 12
    invoke-interface {v7, v8}, Lcom/google/android/gms/internal/ads/zzcgd;->zzC(Lcom/google/android/gms/internal/ads/zzcgb;)V

    .line 13
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcel;->zzN()Lcom/google/android/gms/internal/ads/zzcgd;

    move-result-object v4

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzegv;

    invoke-direct {v7, v3}, Lcom/google/android/gms/internal/ads/zzegv;-><init>(Lcom/google/android/gms/internal/ads/zzcel;)V

    invoke-interface {v4, v7}, Lcom/google/android/gms/internal/ads/zzcgd;->zzJ(Lcom/google/android/gms/internal/ads/zzcgc;)V

    .line 14
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfau;->zzs:Lcom/google/android/gms/internal/ads/zzfaz;

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzfaz;->zzb:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfaz;->zza:Ljava/lang/String;

    invoke-interface {v3, v4, v2, v6}, Lcom/google/android/gms/internal/ads/zzcel;->zzae(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcex; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    move-object v11, v3

    .line 17
    invoke-interface {v11, v5}, Lcom/google/android/gms/internal/ads/zzcel;->zzaq(Z)V

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzegw;->zzi:Z

    .line 18
    new-instance v3, Lcom/google/android/gms/ads/internal/zzl;

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzegw;->zzh:Lcom/google/android/gms/internal/ads/zzbjm;

    .line 19
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzbjm;->zze(Z)Z

    move-result v7

    move v13, v7

    goto :goto_2

    :cond_3
    move v13, v4

    .line 20
    :goto_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzegw;->zza:Landroid/content/Context;

    invoke-static {v7}, Lcom/google/android/gms/ads/internal/util/zzs;->zzJ(Landroid/content/Context;)Z

    move-result v14

    if-eqz v2, :cond_4

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzegw;->zzh:Lcom/google/android/gms/internal/ads/zzbjm;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbjm;->zzd()Z

    move-result v4

    :cond_4
    move v15, v4

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzegw;->zzh:Lcom/google/android/gms/internal/ads/zzbjm;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbjm;->zza()F

    move-result v2

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    move/from16 v16, v2

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzegw;->zze:Lcom/google/android/gms/internal/ads/zzfau;

    .line 21
    iget-boolean v4, v2, Lcom/google/android/gms/internal/ads/zzfau;->zzO:Z

    iget-boolean v7, v2, Lcom/google/android/gms/internal/ads/zzfau;->zzP:Z

    const/16 v17, -0x1

    move-object v12, v3

    move/from16 v18, p1

    move/from16 v19, v4

    move/from16 v20, v7

    invoke-direct/range {v12 .. v20}, Lcom/google/android/gms/ads/internal/zzl;-><init>(ZZZFIZZZ)V

    if-eqz p3, :cond_6

    .line 22
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzcvp;->zzf()V

    .line 23
    :cond_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzj()Lcom/google/android/gms/ads/internal/overlay/zzn;

    new-instance v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdnj;->zzh()Lcom/google/android/gms/internal/ads/zzdfb;

    move-result-object v9

    iget v12, v2, Lcom/google/android/gms/internal/ads/zzfau;->zzQ:I

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzegw;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v14, v2, Lcom/google/android/gms/internal/ads/zzfau;->zzB:Ljava/lang/String;

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzfau;->zzs:Lcom/google/android/gms/internal/ads/zzfaz;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzfaz;->zzb:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfaz;->zza:Ljava/lang/String;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzegw;->zzc:Lcom/google/android/gms/internal/ads/zzfbp;

    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfau;->zzb()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzegw;->zzj:Lcom/google/android/gms/internal/ads/zzebe;

    :cond_7
    move-object/from16 v20, v6

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzfbp;->zzf:Ljava/lang/String;

    .line 26
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzcel;->zzr()Ljava/lang/String;

    move-result-object v21

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v7, v4

    move-object v6, v15

    move-object v15, v3

    move-object/from16 v16, v6

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v19, p3

    invoke-direct/range {v7 .. v21}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzr;Lcom/google/android/gms/ads/internal/overlay/zzac;Lcom/google/android/gms/internal/ads/zzcel;ILcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcvp;Lcom/google/android/gms/internal/ads/zzbsr;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzegw;->zzl:Lcom/google/android/gms/internal/ads/zzdre;

    move-object/from16 v2, p2

    .line 27
    invoke-static {v2, v4, v5, v0}, Lcom/google/android/gms/ads/internal/overlay/zzn;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;ZLcom/google/android/gms/internal/ads/zzdre;)V

    return-void

    :catch_0
    move-exception v0

    .line 15
    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v2, ""

    .line 16
    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
