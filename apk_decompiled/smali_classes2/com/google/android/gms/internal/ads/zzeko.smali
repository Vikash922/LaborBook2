.class public final Lcom/google/android/gms/internal/ads/zzeko;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzekh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfbn;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcgl;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzeke;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfgq;

.field private zzf:Lcom/google/android/gms/internal/ads/zzcqv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcgl;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzeke;Lcom/google/android/gms/internal/ads/zzfbn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeko;->zzb:Lcom/google/android/gms/internal/ads/zzcgl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeko;->zzc:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeko;->zzd:Lcom/google/android/gms/internal/ads/zzeke;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeko;->zza:Lcom/google/android/gms/internal/ads/zzfbn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcgl;->zzy()Lcom/google/android/gms/internal/ads/zzfgq;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeko;->zze:Lcom/google/android/gms/internal/ads/zzfgq;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzeke;->zzd()Lcom/google/android/gms/internal/ads/zzejr;

    move-result-object p1

    .line 2
    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/ads/zzfbn;->zzv(Lcom/google/android/gms/internal/ads/zzejr;)Lcom/google/android/gms/internal/ads/zzfbn;

    return-void
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzcgl;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeko;->zzb:Lcom/google/android/gms/internal/ads/zzcgl;

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzeke;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeko;->zzd:Lcom/google/android/gms/internal/ads/zzeke;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzfgq;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeko;->zze:Lcom/google/android/gms/internal/ads/zzfgq;

    return-object p0
.end method

.method public static synthetic zzf(Lcom/google/android/gms/internal/ads/zzeko;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeko;->zzd:Lcom/google/android/gms/internal/ads/zzeke;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeke;->zza()Lcom/google/android/gms/internal/ads/zzcvf;

    move-result-object p0

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzfcq;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v0

    .line 2
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzcvf;->zzdz(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method public static synthetic zzg(Lcom/google/android/gms/internal/ads/zzeko;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeko;->zzd:Lcom/google/android/gms/internal/ads/zzeke;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeke;->zza()Lcom/google/android/gms/internal/ads/zzcvf;

    move-result-object p0

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzfcq;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v0

    .line 2
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzcvf;->zzdz(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeko;->zzf:Lcom/google/android/gms/internal/ads/zzcqv;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqv;->zzf()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzekf;Lcom/google/android/gms/internal/ads/zzekg;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeko;->zzc:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzI(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzs:Lcom/google/android/gms/ads/internal/client/zzc;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Failed to load the ad because app ID is missing."

    .line 42
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeko;->zzb:Lcom/google/android/gms/internal/ads/zzcgl;

    .line 43
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcgl;->zzA()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzekj;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzekj;-><init>(Lcom/google/android/gms/internal/ads/zzeko;)V

    .line 44
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v2

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 2
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Ad unit ID should not be null for NativeAdLoader."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeko;->zzb:Lcom/google/android/gms/internal/ads/zzcgl;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcgl;->zzA()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzekk;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzekk;-><init>(Lcom/google/android/gms/internal/ads/zzeko;)V

    .line 5
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v2

    .line 6
    :cond_2
    iget-boolean p2, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzf:Z

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzfcm;->zza(Landroid/content/Context;Z)V

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zziY:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeko;->zzb:Lcom/google/android/gms/internal/ads/zzcgl;

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcgl;->zzk()Lcom/google/android/gms/internal/ads/zzdud;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/ads/zzdud;->zzo(Z)V

    .line 10
    :cond_3
    check-cast p3, Lcom/google/android/gms/internal/ads/zzeki;

    iget p2, p3, Lcom/google/android/gms/internal/ads/zzeki;->zza:I

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    const/4 p3, 0x2

    new-array p3, p3, [Landroid/util/Pair;

    new-instance v1, Landroid/util/Pair;

    .line 12
    sget-object v6, Lcom/google/android/gms/internal/ads/zzdqm;->zza:Lcom/google/android/gms/internal/ads/zzdqm;

    .line 13
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v1, v6, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, p3, v2

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdqm;->zzb:Lcom/google/android/gms/internal/ads/zzdqm;

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, p3, v3

    .line 15
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzdqo;->zza([Landroid/util/Pair;)Landroid/os/Bundle;

    move-result-object p3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeko;->zza:Lcom/google/android/gms/internal/ads/zzfbn;

    .line 16
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfbn;->zzH(Lcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfbn;

    .line 17
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/ads/zzfbn;->zzA(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfbn;

    .line 18
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzfbn;->zzC(I)Lcom/google/android/gms/internal/ads/zzfbn;

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfbn;->zzJ()Lcom/google/android/gms/internal/ads/zzfbp;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfgm;->zzf(Lcom/google/android/gms/internal/ads/zzfbp;)I

    move-result p3

    const/16 v1, 0x8

    .line 20
    invoke-static {v0, p3, v1, p1}, Lcom/google/android/gms/internal/ads/zzfgb;->zzb(Landroid/content/Context;IILcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfgc;

    move-result-object v8

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzfbp;->zzn:Lcom/google/android/gms/ads/internal/client/zzcl;

    if-eqz p3, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeko;->zzd:Lcom/google/android/gms/internal/ads/zzeke;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeke;->zzd()Lcom/google/android/gms/internal/ads/zzejr;

    move-result-object v2

    .line 21
    invoke-virtual {v2, p3}, Lcom/google/android/gms/internal/ads/zzejr;->zzm(Lcom/google/android/gms/ads/internal/client/zzcl;)V

    :cond_4
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzeko;->zzb:Lcom/google/android/gms/internal/ads/zzcgl;

    .line 22
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcgl;->zzg()Lcom/google/android/gms/internal/ads/zzdfz;

    move-result-object v2

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcuj;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzcuj;-><init>()V

    .line 23
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzcuj;->zzf(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcuj;

    .line 24
    invoke-virtual {v4, p2}, Lcom/google/android/gms/internal/ads/zzcuj;->zzk(Lcom/google/android/gms/internal/ads/zzfbp;)Lcom/google/android/gms/internal/ads/zzcuj;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzcuj;->zzl()Lcom/google/android/gms/internal/ads/zzcul;

    move-result-object p2

    .line 25
    invoke-interface {v2, p2}, Lcom/google/android/gms/internal/ads/zzdfz;->zzf(Lcom/google/android/gms/internal/ads/zzcul;)Lcom/google/android/gms/internal/ads/zzdfz;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdau;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzdau;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeko;->zzd:Lcom/google/android/gms/internal/ads/zzeke;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeke;->zzd()Lcom/google/android/gms/internal/ads/zzejr;

    move-result-object v4

    .line 26
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcgl;->zzA()Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzdau;->zzk(Lcom/google/android/gms/ads/admanager/AppEventListener;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdau;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdau;->zzn()Lcom/google/android/gms/internal/ads/zzdaw;

    move-result-object p2

    .line 27
    invoke-interface {v2, p2}, Lcom/google/android/gms/internal/ads/zzdfz;->zze(Lcom/google/android/gms/internal/ads/zzdaw;)Lcom/google/android/gms/internal/ads/zzdfz;

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeke;->zzc()Lcom/google/android/gms/internal/ads/zzdfv;

    move-result-object p2

    invoke-interface {v2, p2}, Lcom/google/android/gms/internal/ads/zzdfz;->zzd(Lcom/google/android/gms/internal/ads/zzdfv;)Lcom/google/android/gms/internal/ads/zzdfz;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcnw;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzcnw;-><init>(Landroid/view/ViewGroup;)V

    .line 29
    invoke-interface {v2, p2}, Lcom/google/android/gms/internal/ads/zzdfz;->zzc(Lcom/google/android/gms/internal/ads/zzcnw;)Lcom/google/android/gms/internal/ads/zzdfz;

    .line 30
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdfz;->zzg()Lcom/google/android/gms/internal/ads/zzdga;

    move-result-object v9

    .line 31
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbeb;->zzc:Lcom/google/android/gms/internal/ads/zzbds;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbds;->zze()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 32
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzdga;->zzf()Lcom/google/android/gms/internal/ads/zzfgn;

    move-result-object p2

    .line 33
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzfgn;->zzi(I)Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzp:Ljava/lang/String;

    .line 34
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzfgn;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzm:Landroid/os/Bundle;

    .line 35
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzfgn;->zzf(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfgn;

    move-object v7, p2

    goto :goto_1

    :cond_5
    move-object v7, v0

    .line 36
    :goto_1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcgl;->zzx()Lcom/google/android/gms/internal/ads/zzfco;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzfco;->zzc(I)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcqv;

    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfen;->zzc()Lcom/google/android/gms/internal/ads/zzgcd;

    move-result-object p2

    .line 38
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcgl;->zzB()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p3

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzdga;->zza()Lcom/google/android/gms/internal/ads/zzcrk;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcrk;->zzi()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcrk;->zzh(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-direct {p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzcqv;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/common/util/concurrent/ListenableFuture;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeko;->zzf:Lcom/google/android/gms/internal/ads/zzcqv;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzekn;

    move-object v4, p2

    move-object v5, p0

    move-object v6, p4

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzekn;-><init>(Lcom/google/android/gms/internal/ads/zzeko;Lcom/google/android/gms/internal/ads/zzekg;Lcom/google/android/gms/internal/ads/zzfgn;Lcom/google/android/gms/internal/ads/zzfgc;Lcom/google/android/gms/internal/ads/zzdga;)V

    .line 40
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcqv;->zze(Lcom/google/android/gms/internal/ads/zzgbo;)V

    return v3
.end method
