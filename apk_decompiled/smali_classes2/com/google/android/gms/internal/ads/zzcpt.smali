.class public final Lcom/google/android/gms/internal/ads/zzcpt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcwq;
.implements Lcom/google/android/gms/internal/ads/zzcvw;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcel;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfau;

.field private final zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private zze:Lcom/google/android/gms/internal/ads/zzeca;

.field private zzf:Z

.field private final zzg:Lcom/google/android/gms/internal/ads/zzeby;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcel;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzeby;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpt;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcpt;->zzb:Lcom/google/android/gms/internal/ads/zzcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcpt;->zzc:Lcom/google/android/gms/internal/ads/zzfau;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcpt;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcpt;->zzg:Lcom/google/android/gms/internal/ads/zzeby;

    return-void
.end method

.method private final declared-synchronized zza()V
    .locals 14

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpt;->zzc:Lcom/google/android/gms/internal/ads/zzfau;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzfau;->zzT:Z

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcpt;->zzb:Lcom/google/android/gms/internal/ads/zzcel;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcpt;->zza:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzB()Lcom/google/android/gms/internal/ads/zzebv;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzebv;->zzl(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcpt;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget v3, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->buddyApkVersion:I

    iget v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    new-instance v4, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzfau;->zzV:Lcom/google/android/gms/internal/ads/zzfbs;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfbs;->zza()Ljava/lang/String;

    move-result-object v10

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfbs;->zzc()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 5
    sget-object v2, Lcom/google/android/gms/internal/ads/zzebw;->zzc:Lcom/google/android/gms/internal/ads/zzebw;

    .line 6
    sget-object v4, Lcom/google/android/gms/internal/ads/zzebx;->zzb:Lcom/google/android/gms/internal/ads/zzebx;

    move-object v12, v2

    move-object v11, v4

    goto :goto_1

    .line 17
    :cond_1
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzfau;->zze:I

    .line 7
    sget-object v4, Lcom/google/android/gms/internal/ads/zzebw;->zza:Lcom/google/android/gms/internal/ads/zzebw;

    if-ne v2, v3, :cond_2

    .line 8
    sget-object v2, Lcom/google/android/gms/internal/ads/zzebx;->zzc:Lcom/google/android/gms/internal/ads/zzebx;

    goto :goto_0

    .line 9
    :cond_2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzebx;->zza:Lcom/google/android/gms/internal/ads/zzebx;

    :goto_0
    move-object v11, v2

    move-object v12, v4

    .line 6
    :goto_1
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzfau;->zzal:Ljava/lang/String;

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzB()Lcom/google/android/gms/internal/ads/zzebv;

    move-result-object v5

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcel;->zzG()Landroid/webkit/WebView;

    move-result-object v7

    const-string v8, ""

    const-string v9, "javascript"

    .line 11
    invoke-interface/range {v5 .. v13}, Lcom/google/android/gms/internal/ads/zzebv;->zza(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzebx;Lcom/google/android/gms/internal/ads/zzebw;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzeca;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpt;->zze:Lcom/google/android/gms/internal/ads/zzeca;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeca;->zza()Lcom/google/android/gms/internal/ads/zzfjv;

    move-result-object v0

    .line 12
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbci;->zzfo:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v2

    .line 12
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzB()Lcom/google/android/gms/internal/ads/zzebv;

    move-result-object v2

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcel;->zzG()Landroid/webkit/WebView;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Lcom/google/android/gms/internal/ads/zzebv;->zzj(Lcom/google/android/gms/internal/ads/zzfjv;Landroid/view/View;)V

    .line 15
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcel;->zzV()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzB()Lcom/google/android/gms/internal/ads/zzebv;

    move-result-object v5

    invoke-interface {v5, v0, v4}, Lcom/google/android/gms/internal/ads/zzebv;->zzg(Lcom/google/android/gms/internal/ads/zzfjv;Landroid/view/View;)V

    goto :goto_2

    .line 20
    :cond_3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcel;->zzF()Landroid/view/View;

    move-result-object v2

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzB()Lcom/google/android/gms/internal/ads/zzebv;

    move-result-object v4

    invoke-interface {v4, v0, v2}, Lcom/google/android/gms/internal/ads/zzebv;->zzj(Lcom/google/android/gms/internal/ads/zzfjv;Landroid/view/View;)V

    .line 16
    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcpt;->zze:Lcom/google/android/gms/internal/ads/zzeca;

    .line 18
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzcel;->zzat(Lcom/google/android/gms/internal/ads/zzeca;)V

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzB()Lcom/google/android/gms/internal/ads/zzebv;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzebv;->zzk(Lcom/google/android/gms/internal/ads/zzfjv;)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzcpt;->zzf:Z

    .line 20
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v2, "onSdkLoaded"

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzcel;->zzd(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 1
    :cond_5
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final zzb()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzfp:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpt;->zzg:Lcom/google/android/gms/internal/ads/zzeby;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeby;->zzd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final declared-synchronized zzs()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcpt;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpt;->zzg:Lcom/google/android/gms/internal/ads/zzeby;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeby;->zzb()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcpt;->zzf:Z

    if-nez v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcpt;->zza()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpt;->zzc:Lcom/google/android/gms/internal/ads/zzfau;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzfau;->zzT:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpt;->zze:Lcom/google/android/gms/internal/ads/zzeca;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpt;->zzb:Lcom/google/android/gms/internal/ads/zzcel;

    if-eqz v0, :cond_2

    .line 4
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v2, "onSdkImpression"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzcel;->zzd(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzt()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcpt;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpt;->zzg:Lcom/google/android/gms/internal/ads/zzeby;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeby;->zzc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcpt;->zzf:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    .line 3
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcpt;->zza()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
