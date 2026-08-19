.class public final Lcom/google/android/gms/internal/ads/zzfah;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzekh;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/util/concurrent/Executor;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcgl;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzezx;

.field private final zze:Lcom/google/android/gms/internal/ads/zzeyl;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfbh;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfgq;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzfbn;

.field private zzi:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzcgl;Lcom/google/android/gms/internal/ads/zzeyl;Lcom/google/android/gms/internal/ads/zzezx;Lcom/google/android/gms/internal/ads/zzfbn;Lcom/google/android/gms/internal/ads/zzfbh;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfah;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfah;->zzb:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfah;->zzc:Lcom/google/android/gms/internal/ads/zzcgl;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfah;->zze:Lcom/google/android/gms/internal/ads/zzeyl;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfah;->zzd:Lcom/google/android/gms/internal/ads/zzezx;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfah;->zzh:Lcom/google/android/gms/internal/ads/zzfbn;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzfah;->zzf:Lcom/google/android/gms/internal/ads/zzfbh;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcgl;->zzy()Lcom/google/android/gms/internal/ads/zzfgq;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfah;->zzg:Lcom/google/android/gms/internal/ads/zzfgq;

    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzfah;Lcom/google/android/gms/internal/ads/zzeyj;)Lcom/google/android/gms/internal/ads/zzdnm;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfah;->zzk(Lcom/google/android/gms/internal/ads/zzeyj;)Lcom/google/android/gms/internal/ads/zzdnm;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzfah;Lcom/google/android/gms/internal/ads/zzeyj;)Lcom/google/android/gms/internal/ads/zzdnm;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfah;->zzk(Lcom/google/android/gms/internal/ads/zzeyj;)Lcom/google/android/gms/internal/ads/zzdnm;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzfah;)Lcom/google/android/gms/internal/ads/zzeyl;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfah;->zze:Lcom/google/android/gms/internal/ads/zzeyl;

    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzfah;)Lcom/google/android/gms/internal/ads/zzezx;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfah;->zzd:Lcom/google/android/gms/internal/ads/zzezx;

    return-object p0
.end method

.method static bridge synthetic zzg(Lcom/google/android/gms/internal/ads/zzfah;)Lcom/google/android/gms/internal/ads/zzfgq;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfah;->zzg:Lcom/google/android/gms/internal/ads/zzfgq;

    return-object p0
.end method

.method static bridge synthetic zzh(Lcom/google/android/gms/internal/ads/zzfah;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfah;->zzb:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static synthetic zzi(Lcom/google/android/gms/internal/ads/zzfah;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfah;->zzd:Lcom/google/android/gms/internal/ads/zzezx;

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzfcq;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzezx;->zzdz(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method private final zzk(Lcom/google/android/gms/internal/ads/zzeyj;)Lcom/google/android/gms/internal/ads/zzdnm;
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfaf;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfah;->zzc:Lcom/google/android/gms/internal/ads/zzcgl;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgl;->zzh()Lcom/google/android/gms/internal/ads/zzdnm;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcuj;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzcuj;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfah;->zza:Landroid/content/Context;

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcuj;->zzf(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcuj;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfaf;->zza:Lcom/google/android/gms/internal/ads/zzfbp;

    .line 4
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzcuj;->zzk(Lcom/google/android/gms/internal/ads/zzfbp;)Lcom/google/android/gms/internal/ads/zzcuj;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfah;->zzf:Lcom/google/android/gms/internal/ads/zzfbh;

    .line 5
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzcuj;->zzj(Lcom/google/android/gms/internal/ads/zzfbh;)Lcom/google/android/gms/internal/ads/zzcuj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcuj;->zzl()Lcom/google/android/gms/internal/ads/zzcul;

    move-result-object p1

    .line 6
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdnm;->zzd(Lcom/google/android/gms/internal/ads/zzcul;)Lcom/google/android/gms/internal/ads/zzdnm;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdau;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdau;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdau;->zzn()Lcom/google/android/gms/internal/ads/zzdaw;

    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdnm;->zzc(Lcom/google/android/gms/internal/ads/zzdaw;)Lcom/google/android/gms/internal/ads/zzdnm;

    return-object v0
.end method


# virtual methods
.method public final zza()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final zzb(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzekf;Lcom/google/android/gms/internal/ads/zzekg;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbvr;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbvr;-><init>(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;)V

    .line 2
    check-cast p3, Lcom/google/android/gms/internal/ads/zzezz;

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzbvr;->zzb:Ljava/lang/String;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 3
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Ad unit ID should not be null for rewarded video ad."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfah;->zzb:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzfaa;

    invoke-direct {p3, p0}, Lcom/google/android/gms/internal/ads/zzfaa;-><init>(Lcom/google/android/gms/internal/ads/zzfah;)V

    .line 5
    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfah;->zzi:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz p3, :cond_1

    .line 6
    invoke-interface {p3}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result p3

    if-nez p3, :cond_1

    goto/16 :goto_1

    .line 7
    :cond_1
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbeb;->zzc:Lcom/google/android/gms/internal/ads/zzbds;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbds;->zze()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfah;->zze:Lcom/google/android/gms/internal/ads/zzeyl;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzeyl;->zzd()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzeyl;->zzd()Ljava/lang/Object;

    move-result-object p3

    .line 8
    check-cast p3, Lcom/google/android/gms/internal/ads/zzdnn;

    .line 9
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdnn;->zzg()Lcom/google/android/gms/internal/ads/zzfgn;

    move-result-object p3

    .line 10
    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/ads/zzfgn;->zzi(I)Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbvr;->zza:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object v4, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzp:Ljava/lang/String;

    .line 11
    invoke-virtual {p3, v4}, Lcom/google/android/gms/internal/ads/zzfgn;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzm:Landroid/os/Bundle;

    .line 12
    invoke-virtual {p3, v3}, Lcom/google/android/gms/internal/ads/zzfgn;->zzf(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfgn;

    move-object v7, p3

    goto :goto_0

    :cond_2
    move-object v7, v2

    :goto_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfah;->zza:Landroid/content/Context;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbvr;->zza:Lcom/google/android/gms/ads/internal/client/zzm;

    .line 13
    iget-boolean v3, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzf:Z

    invoke-static {p3, v3}, Lcom/google/android/gms/internal/ads/zzfcm;->zza(Landroid/content/Context;Z)V

    .line 14
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbci;->zziY:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v4

    .line 14
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v10, 0x1

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfah;->zzc:Lcom/google/android/gms/internal/ads/zzcgl;

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcgl;->zzk()Lcom/google/android/gms/internal/ads/zzdud;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzdud;->zzo(Z)V

    :cond_3
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/util/Pair;

    new-instance v4, Landroid/util/Pair;

    .line 17
    sget-object v5, Lcom/google/android/gms/internal/ads/zzdqm;->zza:Lcom/google/android/gms/internal/ads/zzdqm;

    .line 18
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v5

    iget-wide v8, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzz:J

    .line 19
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v3, p2

    new-instance p2, Landroid/util/Pair;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzdqm;->zzb:Lcom/google/android/gms/internal/ads/zzdqm;

    .line 20
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v4

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {p2, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p2, v3, v10

    .line 22
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdqo;->zza([Landroid/util/Pair;)Landroid/os/Bundle;

    move-result-object p2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfah;->zzh:Lcom/google/android/gms/internal/ads/zzfbn;

    .line 23
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzfbn;->zzt(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfbn;

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzr;->zzd()Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzfbn;->zzs(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzfbn;

    .line 25
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzfbn;->zzH(Lcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfbn;

    .line 26
    invoke-virtual {v3, p2}, Lcom/google/android/gms/internal/ads/zzfbn;->zzA(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfbn;

    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfbn;->zzJ()Lcom/google/android/gms/internal/ads/zzfbp;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfgm;->zzf(Lcom/google/android/gms/internal/ads/zzfbp;)I

    move-result p2

    .line 28
    invoke-static {p3, p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzfgb;->zzb(Landroid/content/Context;IILcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfgc;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/internal/ads/zzfaf;

    invoke-direct {v9, v2}, Lcom/google/android/gms/internal/ads/zzfaf;-><init>(Lcom/google/android/gms/internal/ads/zzfag;)V

    iput-object p1, v9, Lcom/google/android/gms/internal/ads/zzfaf;->zza:Lcom/google/android/gms/internal/ads/zzfbp;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfah;->zze:Lcom/google/android/gms/internal/ads/zzeyl;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzeym;

    invoke-direct {p2, v9, v2}, Lcom/google/android/gms/internal/ads/zzeym;-><init>(Lcom/google/android/gms/internal/ads/zzeyj;Lcom/google/android/gms/internal/ads/zzbuy;)V

    new-instance p3, Lcom/google/android/gms/internal/ads/zzfab;

    invoke-direct {p3, p0}, Lcom/google/android/gms/internal/ads/zzfab;-><init>(Lcom/google/android/gms/internal/ads/zzfah;)V

    .line 29
    invoke-interface {p1, p2, p3, v2}, Lcom/google/android/gms/internal/ads/zzeyl;->zzc(Lcom/google/android/gms/internal/ads/zzeym;Lcom/google/android/gms/internal/ads/zzeyk;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfah;->zzi:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfae;

    move-object v4, p2

    move-object v5, p0

    move-object v6, p4

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzfae;-><init>(Lcom/google/android/gms/internal/ads/zzfah;Lcom/google/android/gms/internal/ads/zzekg;Lcom/google/android/gms/internal/ads/zzfgn;Lcom/google/android/gms/internal/ads/zzfgc;Lcom/google/android/gms/internal/ads/zzfaf;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfah;->zzb:Ljava/util/concurrent/Executor;

    .line 30
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgbs;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgbo;Ljava/util/concurrent/Executor;)V

    move p2, v10

    :goto_1
    return p2
.end method

.method final zzj(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfah;->zzh:Lcom/google/android/gms/internal/ads/zzfbn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfbn;->zzp()Lcom/google/android/gms/internal/ads/zzfba;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfba;->zza(I)Lcom/google/android/gms/internal/ads/zzfba;

    return-void
.end method
