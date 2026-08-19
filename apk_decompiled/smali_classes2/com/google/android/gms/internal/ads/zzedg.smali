.class public final Lcom/google/android/gms/internal/ads/zzedg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzecf;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcpd;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdoe;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfbp;

.field private final zze:Ljava/util/concurrent/Executor;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzftl;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzdqy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcpd;Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdoe;Lcom/google/android/gms/internal/ads/zzfbp;Lcom/google/android/gms/internal/ads/zzftl;Lcom/google/android/gms/internal/ads/zzdqy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzedg;->zzb:Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedg;->zza:Lcom/google/android/gms/internal/ads/zzcpd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzedg;->zze:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzedg;->zzc:Lcom/google/android/gms/internal/ads/zzdoe;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzedg;->zzd:Lcom/google/android/gms/internal/ads/zzfbp;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzedg;->zzf:Lcom/google/android/gms/internal/ads/zzftl;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzedg;->zzg:Lcom/google/android/gms/internal/ads/zzdqy;

    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzedg;Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7

    .line 1
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbci;->zzcs:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p3

    .line 1
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzedg;->zzg:Lcom/google/android/gms/internal/ads/zzdqy;

    .line 3
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdqy;->zza()Landroid/os/Bundle;

    move-result-object p3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdqm;->zzu:Lcom/google/android/gms/internal/ads/zzdqm;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    .line 6
    invoke-virtual {p3, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzedg;->zzb:Landroid/content/Context;

    .line 7
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzfau;->zzu:Ljava/util/List;

    .line 8
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/zzfbv;->zza(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzedg;->zzc:Lcom/google/android/gms/internal/ads/zzdoe;

    .line 9
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzfbg;->zzb:Lcom/google/android/gms/internal/ads/zzfbf;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfbf;->zzb:Lcom/google/android/gms/internal/ads/zzfax;

    .line 10
    invoke-virtual {v1, v0, p2, v2}, Lcom/google/android/gms/internal/ads/zzdoe;->zza(Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzfax;)Lcom/google/android/gms/internal/ads/zzcel;

    move-result-object v1

    .line 11
    iget-boolean v2, p2, Lcom/google/android/gms/internal/ads/zzfau;->zzW:Z

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzcel;->zzac(Z)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbci;->zzhU:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v2

    .line 13
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p2, Lcom/google/android/gms/internal/ads/zzfau;->zzag:Z

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcel;->zzF()Landroid/view/View;

    move-result-object v2

    .line 15
    invoke-static {p3, v2, p2}, Lcom/google/android/gms/internal/ads/zzcps;->zza(Landroid/content/Context;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfau;)Lcom/google/android/gms/internal/ads/zzcps;

    move-result-object p3

    goto :goto_0

    .line 48
    :cond_1
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcel;->zzF()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzedg;->zzf:Lcom/google/android/gms/internal/ads/zzftl;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzdoh;

    .line 14
    invoke-interface {v3, p2}, Lcom/google/android/gms/internal/ads/zzftl;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/ads/internal/util/zzau;

    invoke-direct {v4, p3, v2, v3}, Lcom/google/android/gms/internal/ads/zzdoh;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/google/android/gms/ads/internal/util/zzau;)V

    move-object p3, v4

    .line 15
    :goto_0
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbci;->zzcs:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v3

    .line 17
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzedg;->zzg:Lcom/google/android/gms/internal/ads/zzdqy;

    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdqy;->zza()Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzdqm;->zzv:Lcom/google/android/gms/internal/ads/zzdqm;

    .line 19
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v4

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    .line 21
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzedg;->zza:Lcom/google/android/gms/internal/ads/zzcpd;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcqw;

    const/4 v5, 0x0

    invoke-direct {v4, p1, p2, v5}, Lcom/google/android/gms/internal/ads/zzcqw;-><init>(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcog;

    .line 22
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzeda;

    invoke-direct {v6, v1}, Lcom/google/android/gms/internal/ads/zzeda;-><init>(Lcom/google/android/gms/internal/ads/zzcel;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfbv;->zzb(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzfav;

    move-result-object v0

    invoke-direct {p1, p3, v1, v6, v0}, Lcom/google/android/gms/internal/ads/zzcog;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcel;Lcom/google/android/gms/internal/ads/zzcqe;Lcom/google/android/gms/internal/ads/zzfav;)V

    .line 23
    invoke-virtual {v3, v4, p1}, Lcom/google/android/gms/internal/ads/zzcpd;->zza(Lcom/google/android/gms/internal/ads/zzcqw;Lcom/google/android/gms/internal/ads/zzcog;)Lcom/google/android/gms/internal/ads/zzcoa;

    move-result-object p1

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object p3

    invoke-virtual {p3, v2}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p3

    .line 25
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzedg;->zzg:Lcom/google/android/gms/internal/ads/zzdqy;

    .line 26
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdqy;->zza()Landroid/os/Bundle;

    move-result-object p3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdqm;->zzw:Lcom/google/android/gms/internal/ads/zzdqm;

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqm;->zza()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    .line 29
    invoke-virtual {p3, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 30
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcoa;->zzi()Lcom/google/android/gms/internal/ads/zzdod;

    move-result-object p3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedg;->zzg:Lcom/google/android/gms/internal/ads/zzdqy;

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqy;->zza()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    .line 32
    invoke-virtual {p3, v1, v3, v5, v2}, Lcom/google/android/gms/internal/ads/zzdod;->zzi(Lcom/google/android/gms/internal/ads/zzcel;ZLcom/google/android/gms/internal/ads/zzbjm;Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcoa;->zzc()Lcom/google/android/gms/internal/ads/zzcvu;

    move-result-object p3

    new-instance v2, Lcom/google/android/gms/internal/ads/zzedb;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzedb;-><init>(Lcom/google/android/gms/internal/ads/zzcel;)V

    .line 34
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbzk;->zzg:Lcom/google/android/gms/internal/ads/zzgcd;

    .line 35
    invoke-virtual {p3, v2, v4}, Lcom/google/android/gms/internal/ads/zzdat;->zzo(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 36
    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzfau;->zzs:Lcom/google/android/gms/internal/ads/zzfaz;

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/zzfaz;->zza:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbci;->zzfp:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 37
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v4

    .line 38
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 39
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcoa;->zzl()Lcom/google/android/gms/internal/ads/zzeby;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzeby;->zze(Z)Z

    move-result v4

    if-eqz v4, :cond_4

    new-array v4, v5, [Ljava/lang/String;

    .line 40
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzcfw;->zza(Lcom/google/android/gms/internal/ads/zzfau;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 41
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/ads/zzcfw;->zzb(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcoa;->zzi()Lcom/google/android/gms/internal/ads/zzdod;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzfaz;->zzb:Ljava/lang/String;

    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqy;->zza()Landroid/os/Bundle;

    move-result-object v0

    .line 44
    invoke-static {v1, p3, v2, v0}, Lcom/google/android/gms/internal/ads/zzdod;->zzj(Lcom/google/android/gms/internal/ads/zzcel;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p3

    .line 45
    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzfau;->zzM:Z

    if-eqz p2, :cond_5

    .line 46
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzedc;

    invoke-direct {p2, v1}, Lcom/google/android/gms/internal/ads/zzedc;-><init>(Lcom/google/android/gms/internal/ads/zzcel;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedg;->zze:Ljava/util/concurrent/Executor;

    invoke-interface {p3, p2, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_5
    new-instance p2, Lcom/google/android/gms/internal/ads/zzedd;

    invoke-direct {p2, p0, v1}, Lcom/google/android/gms/internal/ads/zzedd;-><init>(Lcom/google/android/gms/internal/ads/zzedg;Lcom/google/android/gms/internal/ads/zzcel;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzedg;->zze:Ljava/util/concurrent/Executor;

    .line 47
    invoke-interface {p3, p2, p0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzede;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzede;-><init>(Lcom/google/android/gms/internal/ads/zzcoa;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbzk;->zzg:Lcom/google/android/gms/internal/ads/zzgcd;

    .line 48
    invoke-static {p3, p0, p1}, Lcom/google/android/gms/internal/ads/zzgbs;->zzm(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzftl;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/ads/zzedg;Lcom/google/android/gms/internal/ads/zzcel;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcel;->zzab()V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzedg;->zzd:Lcom/google/android/gms/internal/ads/zzfbp;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcel;->zzq()Lcom/google/android/gms/internal/ads/zzcfn;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfbp;->zza:Lcom/google/android/gms/ads/internal/client/zzfw;

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzcfn;->zzs(Lcom/google/android/gms/ads/internal/client/zzfw;)V

    .line 4
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbci;->zzbv:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p0

    .line 4
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcel;->isAttachedToWindow()Z

    move-result p0

    if-nez p0, :cond_1

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcel;->onPause()V

    const/4 p0, 0x1

    .line 7
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzcel;->zzav(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgbs;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzedf;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzedf;-><init>(Lcom/google/android/gms/internal/ads/zzedg;Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzedg;->zze:Ljava/util/concurrent/Executor;

    .line 2
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgbs;->zzn(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgaz;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
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
