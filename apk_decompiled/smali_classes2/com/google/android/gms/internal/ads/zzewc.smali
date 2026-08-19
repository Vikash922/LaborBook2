.class public abstract Lcom/google/android/gms/internal/ads/zzewc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzekh;


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/ads/zzcgl;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Ljava/util/concurrent/Executor;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzews;

.field private final zze:Lcom/google/android/gms/internal/ads/zzeyl;

.field private final zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzg:Landroid/view/ViewGroup;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzfgq;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzfbn;

.field private zzj:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzcgl;Lcom/google/android/gms/internal/ads/zzeyl;Lcom/google/android/gms/internal/ads/zzews;Lcom/google/android/gms/internal/ads/zzfbn;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzewc;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzewc;->zzc:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzewc;->zza:Lcom/google/android/gms/internal/ads/zzcgl;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzewc;->zze:Lcom/google/android/gms/internal/ads/zzeyl;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzewc;->zzd:Lcom/google/android/gms/internal/ads/zzews;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzewc;->zzi:Lcom/google/android/gms/internal/ads/zzfbn;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzewc;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzewc;->zzg:Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcgl;->zzy()Lcom/google/android/gms/internal/ads/zzfgq;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzewc;->zzh:Lcom/google/android/gms/internal/ads/zzfgq;

    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzewc;Lcom/google/android/gms/internal/ads/zzeyj;)Lcom/google/android/gms/internal/ads/zzcuh;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzewc;->zzm(Lcom/google/android/gms/internal/ads/zzeyj;)Lcom/google/android/gms/internal/ads/zzcuh;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzewc;Lcom/google/android/gms/internal/ads/zzeyj;)Lcom/google/android/gms/internal/ads/zzcuh;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzewc;->zzm(Lcom/google/android/gms/internal/ads/zzeyj;)Lcom/google/android/gms/internal/ads/zzcuh;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzewc;)Lcom/google/android/gms/internal/ads/zzews;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzewc;->zzd:Lcom/google/android/gms/internal/ads/zzews;

    return-object p0
.end method

.method static bridge synthetic zzg(Lcom/google/android/gms/internal/ads/zzewc;)Lcom/google/android/gms/internal/ads/zzeyl;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzewc;->zze:Lcom/google/android/gms/internal/ads/zzeyl;

    return-object p0
.end method

.method static bridge synthetic zzh(Lcom/google/android/gms/internal/ads/zzewc;)Lcom/google/android/gms/internal/ads/zzfgq;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzewc;->zzh:Lcom/google/android/gms/internal/ads/zzfgq;

    return-object p0
.end method

.method static bridge synthetic zzi(Lcom/google/android/gms/internal/ads/zzewc;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzewc;->zzc:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static synthetic zzj(Lcom/google/android/gms/internal/ads/zzewc;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzewc;->zzd:Lcom/google/android/gms/internal/ads/zzews;

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzfcq;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzews;->zzdz(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method static bridge synthetic zzk(Lcom/google/android/gms/internal/ads/zzewc;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzewc;->zzj:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method private final declared-synchronized zzm(Lcom/google/android/gms/internal/ads/zzeyj;)Lcom/google/android/gms/internal/ads/zzcuh;
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzewa;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzil:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzewc;->zzg:Landroid/view/ViewGroup;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcnw;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzcnw;-><init>(Landroid/view/ViewGroup;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcuj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcuj;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzewc;->zzb:Landroid/content/Context;

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzcuj;->zzf(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcuj;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzewa;->zza:Lcom/google/android/gms/internal/ads/zzfbp;

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcuj;->zzk(Lcom/google/android/gms/internal/ads/zzfbp;)Lcom/google/android/gms/internal/ads/zzcuj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcuj;->zzl()Lcom/google/android/gms/internal/ads/zzcul;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdau;

    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdau;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzewc;->zzd:Lcom/google/android/gms/internal/ads/zzews;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzewc;->zzc:Ljava/util/concurrent/Executor;

    .line 7
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzdau;->zzc(Lcom/google/android/gms/internal/ads/zzcvs;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdau;

    .line 8
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzdau;->zzl(Lcom/google/android/gms/internal/ads/zzddc;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdau;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdau;->zzn()Lcom/google/android/gms/internal/ads/zzdaw;

    move-result-object v0

    .line 9
    invoke-virtual {p0, v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzewc;->zze(Lcom/google/android/gms/internal/ads/zzcnw;Lcom/google/android/gms/internal/ads/zzcul;Lcom/google/android/gms/internal/ads/zzdaw;)Lcom/google/android/gms/internal/ads/zzcuh;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzewc;->zzd:Lcom/google/android/gms/internal/ads/zzews;

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzews;->zzi(Lcom/google/android/gms/internal/ads/zzews;)Lcom/google/android/gms/internal/ads/zzews;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdau;

    .line 11
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzdau;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzewc;->zzc:Ljava/util/concurrent/Executor;

    .line 12
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzdau;->zzb(Lcom/google/android/gms/internal/ads/zzcvf;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdau;

    .line 13
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzdau;->zzg(Lcom/google/android/gms/internal/ads/zzcxb;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdau;

    .line 14
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzdau;->zzh(Lcom/google/android/gms/ads/internal/overlay/zzr;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdau;

    .line 15
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzdau;->zzi(Lcom/google/android/gms/internal/ads/zzcxo;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdau;

    .line 16
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzdau;->zzc(Lcom/google/android/gms/internal/ads/zzcvs;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdau;

    .line 17
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzdau;->zzl(Lcom/google/android/gms/internal/ads/zzddc;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdau;

    .line 18
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzdau;->zzm(Lcom/google/android/gms/internal/ads/zzeyi;)Lcom/google/android/gms/internal/ads/zzdau;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzewc;->zzg:Landroid/view/ViewGroup;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcnw;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzcnw;-><init>(Landroid/view/ViewGroup;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcuj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcuj;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzewc;->zzb:Landroid/content/Context;

    .line 19
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzcuj;->zzf(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcuj;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzewa;->zza:Lcom/google/android/gms/internal/ads/zzfbp;

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcuj;->zzk(Lcom/google/android/gms/internal/ads/zzfbp;)Lcom/google/android/gms/internal/ads/zzcuj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcuj;->zzl()Lcom/google/android/gms/internal/ads/zzcul;

    move-result-object p1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdau;->zzn()Lcom/google/android/gms/internal/ads/zzdaw;

    move-result-object v0

    .line 21
    invoke-virtual {p0, v2, p1, v0}, Lcom/google/android/gms/internal/ads/zzewc;->zze(Lcom/google/android/gms/internal/ads/zzcnw;Lcom/google/android/gms/internal/ads/zzcul;Lcom/google/android/gms/internal/ads/zzdaw;)Lcom/google/android/gms/internal/ads/zzcuh;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public final zza()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzewc;->zzj:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized zzb(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzekf;Lcom/google/android/gms/internal/ads/zzekg;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/client/zzm;->zzb()Z

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbeg;->zzd:Lcom/google/android/gms/internal/ads/zzbds;

    .line 3
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbds;->zze()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbci;->zzlm:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p3

    .line 3
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1

    move p3, v0

    goto :goto_0

    :cond_1
    move p3, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzewc;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    .line 5
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbci;->zzln:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v2, v3, :cond_2

    if-nez p3, :cond_3

    :cond_2
    const-string p3, "loadAd must be called on the main UI thread."

    .line 7
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    :cond_3
    :goto_1
    if-nez p2, :cond_4

    .line 8
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Ad unit ID should not be null for app open ad."

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzewc;->zzc:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzevw;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzevw;-><init>(Lcom/google/android/gms/internal/ads/zzewc;)V

    .line 10
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_4
    :try_start_1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzewc;->zzj:Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_5

    monitor-exit p0

    return v1

    .line 11
    :cond_5
    :try_start_2
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbeb;->zzc:Lcom/google/android/gms/internal/ads/zzbds;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbds;->zze()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 v2, 0x7

    const/4 v3, 0x0

    if-eqz p3, :cond_6

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzewc;->zze:Lcom/google/android/gms/internal/ads/zzeyl;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzeyl;->zzd()Ljava/lang/Object;

    move-result-object p3

    .line 12
    check-cast p3, Lcom/google/android/gms/internal/ads/zzcnj;

    if-eqz p3, :cond_6

    .line 13
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcnj;->zzg()Lcom/google/android/gms/internal/ads/zzfgn;

    move-result-object p3

    .line 14
    invoke-virtual {p3, v2}, Lcom/google/android/gms/internal/ads/zzfgn;->zzi(I)Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object v4, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzp:Ljava/lang/String;

    .line 15
    invoke-virtual {p3, v4}, Lcom/google/android/gms/internal/ads/zzfgn;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object v4, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzm:Landroid/os/Bundle;

    .line 16
    invoke-virtual {p3, v4}, Lcom/google/android/gms/internal/ads/zzfgn;->zzf(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfgn;

    move-object v4, p3

    goto :goto_2

    :cond_6
    move-object v4, v3

    :goto_2
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzewc;->zzb:Landroid/content/Context;

    .line 17
    iget-boolean v5, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzf:Z

    invoke-static {p3, v5}, Lcom/google/android/gms/internal/ads/zzfcm;->zza(Landroid/content/Context;Z)V

    .line 18
    sget-object v6, Lcom/google/android/gms/internal/ads/zzbci;->zziY:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v6

    .line 18
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_7

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzewc;->zza:Lcom/google/android/gms/internal/ads/zzcgl;

    .line 20
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzcgl;->zzk()Lcom/google/android/gms/internal/ads/zzdud;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzdud;->zzo(Z)V

    :cond_7
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/util/Pair;

    new-instance v6, Landroid/util/Pair;

    .line 21
    sget-object v7, Lcom/google/android/gms/internal/ads/zzdqm;->zza:Lcom/google/android/gms/internal/ads/zzdqm;

    .line 22
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v7

    iget-wide v8, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzz:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v5, v1

    new-instance v1, Landroid/util/Pair;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzdqm;->zzb:Lcom/google/android/gms/internal/ads/zzdqm;

    .line 23
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v6

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v5, v0

    .line 25
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdqo;->zza([Landroid/util/Pair;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzewc;->zzi:Lcom/google/android/gms/internal/ads/zzfbn;

    .line 26
    invoke-virtual {v5, p2}, Lcom/google/android/gms/internal/ads/zzfbn;->zzt(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfbn;

    .line 27
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzr;->zzb()Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object p2

    invoke-virtual {v5, p2}, Lcom/google/android/gms/internal/ads/zzfbn;->zzs(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzfbn;

    .line 28
    invoke-virtual {v5, p1}, Lcom/google/android/gms/internal/ads/zzfbn;->zzH(Lcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfbn;

    .line 29
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzfbn;->zzA(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfbn;

    .line 30
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfbn;->zzJ()Lcom/google/android/gms/internal/ads/zzfbp;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfgm;->zzf(Lcom/google/android/gms/internal/ads/zzfbp;)I

    move-result v1

    .line 31
    invoke-static {p3, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzfgb;->zzb(Landroid/content/Context;IILcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfgc;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/zzewa;

    invoke-direct {v6, v3}, Lcom/google/android/gms/internal/ads/zzewa;-><init>(Lcom/google/android/gms/internal/ads/zzewb;)V

    iput-object p2, v6, Lcom/google/android/gms/internal/ads/zzewa;->zza:Lcom/google/android/gms/internal/ads/zzfbp;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzewc;->zze:Lcom/google/android/gms/internal/ads/zzeyl;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzeym;

    invoke-direct {p2, v6, v3}, Lcom/google/android/gms/internal/ads/zzeym;-><init>(Lcom/google/android/gms/internal/ads/zzeyj;Lcom/google/android/gms/internal/ads/zzbuy;)V

    new-instance p3, Lcom/google/android/gms/internal/ads/zzevx;

    invoke-direct {p3, p0}, Lcom/google/android/gms/internal/ads/zzevx;-><init>(Lcom/google/android/gms/internal/ads/zzewc;)V

    .line 32
    invoke-interface {p1, p2, p3, v3}, Lcom/google/android/gms/internal/ads/zzeyl;->zzc(Lcom/google/android/gms/internal/ads/zzeym;Lcom/google/android/gms/internal/ads/zzeyk;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzewc;->zzj:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzevz;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzevz;-><init>(Lcom/google/android/gms/internal/ads/zzewc;Lcom/google/android/gms/internal/ads/zzekg;Lcom/google/android/gms/internal/ads/zzfgn;Lcom/google/android/gms/internal/ads/zzfgc;Lcom/google/android/gms/internal/ads/zzewa;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzewc;->zzc:Ljava/util/concurrent/Executor;

    .line 33
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgbs;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgbo;Ljava/util/concurrent/Executor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method protected abstract zze(Lcom/google/android/gms/internal/ads/zzcnw;Lcom/google/android/gms/internal/ads/zzcul;Lcom/google/android/gms/internal/ads/zzdaw;)Lcom/google/android/gms/internal/ads/zzcuh;
.end method

.method public final zzl(Lcom/google/android/gms/ads/internal/client/zzx;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzewc;->zzi:Lcom/google/android/gms/internal/ads/zzfbn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfbn;->zzu(Lcom/google/android/gms/ads/internal/client/zzx;)Lcom/google/android/gms/internal/ads/zzfbn;

    return-void
.end method
