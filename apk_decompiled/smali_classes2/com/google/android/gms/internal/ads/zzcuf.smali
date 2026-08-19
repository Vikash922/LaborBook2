.class public final Lcom/google/android/gms/internal/ads/zzcuf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfft;

.field private final zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzc:Landroid/content/pm/ApplicationInfo;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/util/List;

.field private final zzf:Landroid/content/pm/PackageInfo;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzhes;

.field private final zzh:Ljava/lang/String;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzesy;

.field private final zzj:Lcom/google/android/gms/ads/internal/util/zzg;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzfbp;

.field private final zzl:I

.field private final zzm:Lcom/google/android/gms/internal/ads/zzdao;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfft;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInfo;Lcom/google/android/gms/internal/ads/zzhes;Lcom/google/android/gms/ads/internal/util/zzg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzesy;Lcom/google/android/gms/internal/ads/zzfbp;Lcom/google/android/gms/internal/ads/zzdao;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcuf;->zza:Lcom/google/android/gms/internal/ads/zzfft;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcuf;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcuf;->zzc:Landroid/content/pm/ApplicationInfo;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcuf;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcuf;->zze:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcuf;->zzf:Landroid/content/pm/PackageInfo;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzcuf;->zzg:Lcom/google/android/gms/internal/ads/zzhes;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzcuf;->zzh:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzcuf;->zzi:Lcom/google/android/gms/internal/ads/zzesy;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzcuf;->zzj:Lcom/google/android/gms/ads/internal/util/zzg;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzcuf;->zzk:Lcom/google/android/gms/internal/ads/zzfbp;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzcuf;->zzm:Lcom/google/android/gms/internal/ads/zzdao;

    iput p13, p0, Lcom/google/android/gms/internal/ads/zzcuf;->zzl:I

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzcuf;Lcom/google/common/util/concurrent/ListenableFuture;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzbuy;
    .locals 19

    move-object/from16 v0, p0

    .line 1
    invoke-interface/range {p1 .. p1}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcue;

    .line 2
    new-instance v18, Lcom/google/android/gms/internal/ads/zzbuy;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzcue;->zza:Landroid/os/Bundle;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzcuf;->zzg:Lcom/google/android/gms/internal/ads/zzhes;

    .line 3
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzhes;->zzb()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v2}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbci;->zzgX:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzcuf;->zzj:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 6
    invoke-interface {v2}, Lcom/google/android/gms/ads/internal/util/zzg;->zzN()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move v13, v2

    goto :goto_0

    :cond_0
    move v13, v4

    :goto_0
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzcuf;->zzh:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzcuf;->zzf:Landroid/content/pm/PackageInfo;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzcuf;->zze:Ljava/util/List;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzcuf;->zzd:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzcuf;->zzc:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzcuf;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzcuf;->zzk:Lcom/google/android/gms/internal/ads/zzfbp;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfbp;->zza()Z

    move-result v14

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcue;->zzb:Landroid/os/Bundle;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzcuf;->zzl:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, v18

    move-object/from16 v15, p2

    move-object/from16 v16, v1

    move/from16 v17, v0

    invoke-direct/range {v2 .. v17}, Lcom/google/android/gms/internal/ads/zzbuy;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfdj;Ljava/lang/String;ZZLandroid/os/Bundle;Landroid/os/Bundle;I)V

    return-object v18
.end method


# virtual methods
.method public final zzb(Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuf;->zzm:Lcom/google/android/gms/internal/ads/zzdao;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdao;->zza()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzffn;->zza:Lcom/google/android/gms/internal/ads/zzffn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcue;

    new-instance v2, Landroid/os/Bundle;

    .line 3
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcue;-><init>(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcuf;->zzl:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcuf;->zzi:Lcom/google/android/gms/internal/ads/zzesy;

    .line 4
    invoke-virtual {v3, v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzesy;->zza(Ljava/lang/Object;Landroid/os/Bundle;Z)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcuf;->zza:Lcom/google/android/gms/internal/ads/zzfft;

    .line 5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzffd;->zzc(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzffl;)Lcom/google/android/gms/internal/ads/zzffj;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzffj;->zza()Lcom/google/android/gms/internal/ads/zzfez;

    move-result-object p1

    return-object p1
.end method

.method public final zzc()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zzcq:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcuf;->zzk:Lcom/google/android/gms/internal/ads/zzfbp;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfbp;->zzs:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    const-string v1, "ls"

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcuf;->zzb(Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcuf;->zza:Lcom/google/android/gms/internal/ads/zzfft;

    .line 7
    sget-object v4, Lcom/google/android/gms/internal/ads/zzffn;->zzb:Lcom/google/android/gms/internal/ads/zzffn;

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/google/common/util/concurrent/ListenableFuture;

    aput-object v1, v5, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcuf;->zzg:Lcom/google/android/gms/internal/ads/zzhes;

    .line 8
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzhes;->zzb()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzffl;->zza(Ljava/lang/Object;[Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzffb;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcud;

    invoke-direct {v3, p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzcud;-><init>(Lcom/google/android/gms/internal/ads/zzcuf;Lcom/google/common/util/concurrent/ListenableFuture;Landroid/os/Bundle;)V

    .line 9
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzffb;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzffj;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzffj;->zza()Lcom/google/android/gms/internal/ads/zzfez;

    move-result-object v0

    return-object v0
.end method
