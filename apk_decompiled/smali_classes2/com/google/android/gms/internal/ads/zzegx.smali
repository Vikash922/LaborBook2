.class public final Lcom/google/android/gms/internal/ads/zzegx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzecf;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdoe;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdnn;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfbp;

.field private final zze:Ljava/util/concurrent/Executor;

.field private final zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzbjm;

.field private final zzh:Z

.field private final zzi:Lcom/google/android/gms/internal/ads/zzebe;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzdqy;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzdre;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfbp;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdnn;Lcom/google/android/gms/internal/ads/zzdoe;Lcom/google/android/gms/internal/ads/zzbjm;Lcom/google/android/gms/internal/ads/zzebe;Lcom/google/android/gms/internal/ads/zzdqy;Lcom/google/android/gms/internal/ads/zzdre;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegx;->zza:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzegx;->zzd:Lcom/google/android/gms/internal/ads/zzfbp;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzegx;->zzc:Lcom/google/android/gms/internal/ads/zzdnn;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzegx;->zze:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzegx;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzegx;->zzb:Lcom/google/android/gms/internal/ads/zzdoe;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzegx;->zzg:Lcom/google/android/gms/internal/ads/zzbjm;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbci;->zziX:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzegx;->zzh:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzegx;->zzi:Lcom/google/android/gms/internal/ads/zzebe;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzegx;->zzj:Lcom/google/android/gms/internal/ads/zzdqy;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzegx;->zzk:Lcom/google/android/gms/internal/ads/zzdre;

    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzegx;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzdoi;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    move-object/from16 v1, p2

    .line 1
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbci;->zzcs:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v2

    .line 1
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzegx;->zzj:Lcom/google/android/gms/internal/ads/zzdqy;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdqy;->zza()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzdqm;->zzu:Lcom/google/android/gms/internal/ads/zzdqm;

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    .line 6
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzegx;->zzb:Lcom/google/android/gms/internal/ads/zzdoe;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzegx;->zzd:Lcom/google/android/gms/internal/ads/zzfbp;

    .line 7
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzfbg;->zzb:Lcom/google/android/gms/internal/ads/zzfbf;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfbf;->zzb:Lcom/google/android/gms/internal/ads/zzfax;

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzfbp;->zze:Lcom/google/android/gms/ads/internal/client/zzr;

    .line 8
    invoke-virtual {v3, v5, v14, v2}, Lcom/google/android/gms/internal/ads/zzdoe;->zza(Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzfax;)Lcom/google/android/gms/internal/ads/zzcel;

    move-result-object v15

    .line 9
    iget-boolean v2, v14, Lcom/google/android/gms/internal/ads/zzfau;->zzW:Z

    invoke-interface {v15, v2}, Lcom/google/android/gms/internal/ads/zzcel;->zzac(Z)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzegx;->zza:Landroid/content/Context;

    invoke-interface {v15}, Lcom/google/android/gms/internal/ads/zzcel;->zzF()Landroid/view/View;

    move-result-object v5

    move-object/from16 v6, p3

    .line 10
    invoke-virtual {v6, v2, v5}, Lcom/google/android/gms/internal/ads/zzdoi;->zza(Landroid/content/Context;Landroid/view/View;)V

    sget-object v13, Lcom/google/android/gms/internal/ads/zzbci;->zzcs:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v5

    invoke-virtual {v5, v13}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v5

    .line 12
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzegx;->zzj:Lcom/google/android/gms/internal/ads/zzdqy;

    .line 13
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdqy;->zza()Landroid/os/Bundle;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/internal/ads/zzdqm;->zzv:Lcom/google/android/gms/internal/ads/zzdqm;

    .line 14
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v6

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v7

    .line 16
    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 17
    :cond_1
    new-instance v12, Lcom/google/android/gms/internal/ads/zzbzp;

    .line 18
    invoke-direct {v12}, Lcom/google/android/gms/internal/ads/zzbzp;-><init>()V

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzegx;->zzc:Lcom/google/android/gms/internal/ads/zzdnn;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzcqw;

    const/4 v9, 0x0

    invoke-direct {v10, v1, v14, v9}, Lcom/google/android/gms/internal/ads/zzcqw;-><init>(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Ljava/lang/String;)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzegx;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzegx;->zzg:Lcom/google/android/gms/internal/ads/zzbjm;

    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzegx;->zzh:Z

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzegx;->zzi:Lcom/google/android/gms/internal/ads/zzebe;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzegx;->zzj:Lcom/google/android/gms/internal/ads/zzdqy;

    move-object/from16 p3, v13

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzegx;->zzk:Lcom/google/android/gms/internal/ads/zzdre;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdnk;

    new-instance v14, Lcom/google/android/gms/internal/ads/zzegw;

    move-object/from16 v16, v1

    move-object v1, v14

    move-object/from16 v17, v6

    move-object/from16 v6, p1

    move/from16 p2, v7

    move-object v7, v12

    move-object/from16 v18, v8

    move-object v8, v15

    move-object/from16 v19, v9

    move-object/from16 v9, v18

    move-object/from16 v20, v10

    move/from16 v10, p2

    move-object/from16 v21, v11

    move-object/from16 v11, v17

    move-object/from16 v22, v12

    move-object/from16 v12, v16

    move-object/from16 v23, p3

    .line 19
    invoke-direct/range {v1 .. v13}, Lcom/google/android/gms/internal/ads/zzegw;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdoe;Lcom/google/android/gms/internal/ads/zzfbp;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzcel;Lcom/google/android/gms/internal/ads/zzbjm;ZLcom/google/android/gms/internal/ads/zzebe;Lcom/google/android/gms/internal/ads/zzdqy;Lcom/google/android/gms/internal/ads/zzdre;)V

    invoke-direct {v0, v14, v15}, Lcom/google/android/gms/internal/ads/zzdnk;-><init>(Lcom/google/android/gms/internal/ads/zzdfm;Lcom/google/android/gms/internal/ads/zzcel;)V

    move-object/from16 v2, v20

    move-object/from16 v1, v21

    .line 20
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzdnn;->zzd(Lcom/google/android/gms/internal/ads/zzcqw;Lcom/google/android/gms/internal/ads/zzdnk;)Lcom/google/android/gms/internal/ads/zzdnj;

    move-result-object v0

    move-object/from16 v1, v22

    .line 21
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbzp;->zzc(Ljava/lang/Object;)Z

    .line 22
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    move-object/from16 v2, v23

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 24
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzdqy;->zza()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdqm;->zzw:Lcom/google/android/gms/internal/ads/zzdqm;

    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    .line 27
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 28
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdnj;->zzg()Lcom/google/android/gms/internal/ads/zzddl;

    move-result-object v1

    invoke-static {v15, v1}, Lcom/google/android/gms/internal/ads/zzbkb;->zzb(Lcom/google/android/gms/internal/ads/zzcel;Lcom/google/android/gms/internal/ads/zzbka;)V

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdnj;->zzc()Lcom/google/android/gms/internal/ads/zzcvu;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzegq;

    invoke-direct {v2, v15}, Lcom/google/android/gms/internal/ads/zzegq;-><init>(Lcom/google/android/gms/internal/ads/zzcel;)V

    .line 30
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbzk;->zzg:Lcom/google/android/gms/internal/ads/zzgcd;

    .line 31
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdat;->zzo(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdnj;->zzl()Lcom/google/android/gms/internal/ads/zzdod;

    move-result-object v1

    const/4 v2, 0x1

    move/from16 v3, p2

    if-eq v2, v3, :cond_3

    move-object/from16 v9, v19

    goto :goto_0

    :cond_3
    move-object/from16 v9, v18

    .line 33
    :goto_0
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzdqy;->zza()Landroid/os/Bundle;

    move-result-object v3

    .line 34
    invoke-virtual {v1, v15, v2, v9, v3}, Lcom/google/android/gms/internal/ads/zzdod;->zzi(Lcom/google/android/gms/internal/ads/zzcel;ZLcom/google/android/gms/internal/ads/zzbjm;Landroid/os/Bundle;)V

    move-object/from16 v1, p1

    .line 35
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzfau;->zzs:Lcom/google/android/gms/internal/ads/zzfaz;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzfaz;->zza:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzbci;->zzfp:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 36
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v5

    .line 37
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdnj;->zzm()Lcom/google/android/gms/internal/ads/zzeby;

    move-result-object v5

    .line 39
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzeby;->zze(Z)Z

    move-result v5

    if-eqz v5, :cond_4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 40
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcfw;->zza(Lcom/google/android/gms/internal/ads/zzfau;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 41
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/ads/zzcfw;->zzb(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 42
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdnj;->zzl()Lcom/google/android/gms/internal/ads/zzdod;

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzfaz;->zzb:Ljava/lang/String;

    .line 43
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzdqy;->zza()Landroid/os/Bundle;

    move-result-object v3

    .line 44
    invoke-static {v15, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzdod;->zzj(Lcom/google/android/gms/internal/ads/zzcel;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzegr;

    move-object/from16 v4, p0

    invoke-direct {v3, v4, v15, v1, v0}, Lcom/google/android/gms/internal/ads/zzegr;-><init>(Lcom/google/android/gms/internal/ads/zzegx;Lcom/google/android/gms/internal/ads/zzcel;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzdnj;)V

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzegx;->zze:Ljava/util/concurrent/Executor;

    .line 45
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzgbs;->zzm(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzftl;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdoi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdoi;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgbs;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzegs;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzegs;-><init>(Lcom/google/android/gms/internal/ads/zzegx;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzdoi;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzegx;->zze:Ljava/util/concurrent/Executor;

    .line 2
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzgbs;->zzn(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgaz;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzegt;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzegt;-><init>(Lcom/google/android/gms/internal/ads/zzdoi;)V

    invoke-interface {p2, v1, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p2
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;)Z
    .locals 0

    .line 1
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzfau;->zzs:Lcom/google/android/gms/internal/ads/zzfaz;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfaz;->zza:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
