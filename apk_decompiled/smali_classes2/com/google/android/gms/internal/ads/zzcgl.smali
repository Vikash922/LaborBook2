.class public abstract Lcom/google/android/gms/internal/ads/zzcgl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzckk;


# static fields
.field private static zza:Lcom/google/android/gms/internal/ads/zzcgl;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized zzE(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzboy;IZILcom/google/android/gms/internal/ads/zzchr;)Lcom/google/android/gms/internal/ads/zzcgl;
    .locals 4
    .param p1    # Lcom/google/android/gms/internal/ads/zzboy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-class p2, Lcom/google/android/gms/internal/ads/zzcgl;

    monitor-enter p2

    .line 1
    :try_start_0
    sget-object p3, Lcom/google/android/gms/internal/ads/zzcgl;->zza:Lcom/google/android/gms/internal/ads/zzcgl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_0

    monitor-exit p2

    return-object p3

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbci;->zza(Landroid/content/Context;)V

    .line 3
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbea;->zze:Lcom/google/android/gms/internal/ads/zzbds;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbds;->zze()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbbs;->zzd(Landroid/content/Context;)V

    .line 5
    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfcl;->zzd(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfcl;

    move-result-object p3

    const v2, 0xefc3650

    const/4 v3, 0x0

    .line 6
    invoke-virtual {p3, v2, v3, p4}, Lcom/google/android/gms/internal/ads/zzfcl;->zzc(IZI)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object p4

    .line 7
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzfcl;->zzf(Lcom/google/android/gms/internal/ads/zzboy;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcig;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzcig;-><init>(Lcom/google/android/gms/internal/ads/zzciz;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcgm;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzcgm;-><init>()V

    .line 8
    invoke-virtual {v2, p4}, Lcom/google/android/gms/internal/ads/zzcgm;->zzf(Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/ads/zzcgm;

    .line 9
    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/ads/zzcgm;->zze(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcgm;

    .line 10
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzcgm;->zzd(J)Lcom/google/android/gms/internal/ads/zzcgm;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcgo;

    invoke-direct {v0, v2, p3}, Lcom/google/android/gms/internal/ads/zzcgo;-><init>(Lcom/google/android/gms/internal/ads/zzcgm;Lcom/google/android/gms/internal/ads/zzcgn;)V

    .line 11
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcig;->zzb(Lcom/google/android/gms/internal/ads/zzcgo;)Lcom/google/android/gms/internal/ads/zzcig;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzcja;

    invoke-direct {p3, p5}, Lcom/google/android/gms/internal/ads/zzcja;-><init>(Lcom/google/android/gms/internal/ads/zzchr;)V

    .line 12
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzcig;->zzc(Lcom/google/android/gms/internal/ads/zzcja;)Lcom/google/android/gms/internal/ads/zzcig;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcig;->zza()Lcom/google/android/gms/internal/ads/zzcgl;

    move-result-object p1

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbza;

    move-result-object p3

    invoke-virtual {p3, p0, p4}, Lcom/google/android/gms/internal/ads/zzbza;->zzu(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzc()Lcom/google/android/gms/internal/ads/zzbao;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/ads/zzbao;->zzi(Landroid/content/Context;)V

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzm(Landroid/content/Context;)Z

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzl(Landroid/content/Context;)Z

    .line 18
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zzd;->zza(Landroid/content/Context;)V

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzb()Lcom/google/android/gms/internal/ads/zzazb;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/ads/zzazb;->zzd(Landroid/content/Context;)V

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzw()Lcom/google/android/gms/ads/internal/util/zzci;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/google/android/gms/ads/internal/util/zzci;->zzb(Landroid/content/Context;)V

    .line 13
    move-object p3, p1

    check-cast p3, Lcom/google/android/gms/internal/ads/zzchv;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzchv;->zzai:Lcom/google/android/gms/internal/ads/zzhfh;

    .line 21
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/ads/internal/util/zzcb;

    .line 22
    invoke-virtual {p3}, Lcom/google/android/gms/ads/internal/util/zzcb;->zzc()V

    .line 23
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbxx;->zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbxx;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbci;->zzgi:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object p5

    invoke-virtual {p5, p3}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p3

    .line 25
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_2

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbci;->zzaM:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object p5

    invoke-virtual {p5, p3}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p3

    .line 27
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_2

    new-instance p3, Lcom/google/android/gms/internal/ads/zzeag;

    new-instance p5, Lcom/google/android/gms/internal/ads/zzbbg;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbm;

    .line 28
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbbm;-><init>(Landroid/content/Context;)V

    invoke-direct {p5, v0}, Lcom/google/android/gms/internal/ads/zzbbg;-><init>(Lcom/google/android/gms/internal/ads/zzbbm;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdzl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdzh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdzh;-><init>(Landroid/content/Context;)V

    .line 13
    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzchv;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzchv;->zzd:Lcom/google/android/gms/internal/ads/zzhfh;

    .line 29
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgcd;

    .line 30
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdzl;-><init>(Lcom/google/android/gms/internal/ads/zzdzh;Lcom/google/android/gms/internal/ads/zzgcd;)V

    invoke-direct {p3, p0, p4, p5, v0}, Lcom/google/android/gms/internal/ads/zzeag;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzbbg;Lcom/google/android/gms/internal/ads/zzdzl;)V

    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbza;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbza;->zzi()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/util/zzg;->zzN()Z

    move-result p0

    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/ads/zzeag;->zzb(Z)V

    :cond_2
    sput-object p1, Lcom/google/android/gms/internal/ads/zzcgl;->zza:Lcom/google/android/gms/internal/ads/zzcgl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzboy;I)Lcom/google/android/gms/internal/ads/zzcgl;
    .locals 6
    .param p1    # Lcom/google/android/gms/internal/ads/zzboy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v5, Lcom/google/android/gms/internal/ads/zzchr;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzchr;-><init>()V

    const v2, 0xefc3650

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzcgl;->zzE(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzboy;IZILcom/google/android/gms/internal/ads/zzchr;)Lcom/google/android/gms/internal/ads/zzcgl;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract zzA()Ljava/util/concurrent/Executor;
.end method

.method public abstract zzB()Ljava/util/concurrent/ScheduledExecutorService;
.end method

.method public abstract zzC()Lcom/google/android/gms/internal/ads/zzbyp;
.end method

.method public final zzD()Lcom/google/android/gms/internal/ads/zzbyp;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcgl;->zzC()Lcom/google/android/gms/internal/ads/zzbyp;

    move-result-object v0

    return-object v0
.end method

.method public abstract zzb()Lcom/google/android/gms/internal/ads/zzcjl;
.end method

.method public abstract zzc()Lcom/google/android/gms/internal/ads/zzcnm;
.end method

.method public abstract zzd()Lcom/google/android/gms/internal/ads/zzcpc;
.end method

.method public abstract zze()Lcom/google/android/gms/internal/ads/zzcxv;
.end method

.method public abstract zzf()Lcom/google/android/gms/internal/ads/zzdfd;
.end method

.method public abstract zzg()Lcom/google/android/gms/internal/ads/zzdfz;
.end method

.method public abstract zzh()Lcom/google/android/gms/internal/ads/zzdnm;
.end method

.method public abstract zzi()Lcom/google/android/gms/internal/ads/zzdre;
.end method

.method public abstract zzj()Lcom/google/android/gms/internal/ads/zzdso;
.end method

.method public abstract zzk()Lcom/google/android/gms/internal/ads/zzdud;
.end method

.method public abstract zzl()Lcom/google/android/gms/internal/ads/zzdva;
.end method

.method public abstract zzm()Lcom/google/android/gms/internal/ads/zzebe;
.end method

.method public abstract zzn()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;
.end method

.method public abstract zzo()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzab;
.end method

.method public abstract zzp()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzau;
.end method

.method public final zzq(Lcom/google/android/gms/internal/ads/zzbuy;I)Lcom/google/android/gms/internal/ads/zzety;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzevb;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzevb;-><init>(Lcom/google/android/gms/internal/ads/zzbuy;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcgl;->zzr(Lcom/google/android/gms/internal/ads/zzevb;)Lcom/google/android/gms/internal/ads/zzety;

    move-result-object p1

    return-object p1
.end method

.method protected abstract zzr(Lcom/google/android/gms/internal/ads/zzevb;)Lcom/google/android/gms/internal/ads/zzety;
.end method

.method public abstract zzs()Lcom/google/android/gms/internal/ads/zzevu;
.end method

.method public abstract zzt()Lcom/google/android/gms/internal/ads/zzexi;
.end method

.method public abstract zzu()Lcom/google/android/gms/internal/ads/zzeyz;
.end method

.method public abstract zzv()Lcom/google/android/gms/internal/ads/zzfan;
.end method

.method public abstract zzw()Lcom/google/android/gms/internal/ads/zzfce;
.end method

.method public abstract zzx()Lcom/google/android/gms/internal/ads/zzfco;
.end method

.method public abstract zzy()Lcom/google/android/gms/internal/ads/zzfgq;
.end method

.method public abstract zzz()Lcom/google/android/gms/internal/ads/zzfix;
.end method
