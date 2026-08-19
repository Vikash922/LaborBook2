.class final Lcom/google/android/gms/internal/ads/zzekn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgbo;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzekg;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfgn;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfgc;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzdga;

.field final synthetic zze:Lcom/google/android/gms/internal/ads/zzeko;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeko;Lcom/google/android/gms/internal/ads/zzekg;Lcom/google/android/gms/internal/ads/zzfgn;Lcom/google/android/gms/internal/ads/zzfgc;Lcom/google/android/gms/internal/ads/zzdga;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzekn;->zza:Lcom/google/android/gms/internal/ads/zzekg;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzekn;->zzb:Lcom/google/android/gms/internal/ads/zzfgn;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzekn;->zzc:Lcom/google/android/gms/internal/ads/zzfgc;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzekn;->zzd:Lcom/google/android/gms/internal/ads/zzdga;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzekn;->zze:Lcom/google/android/gms/internal/ads/zzeko;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzfN:Lcom/google/android/gms/internal/ads/zzbbz;

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

    const-string v0, "Native ad failed to load"

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekn;->zzd:Lcom/google/android/gms/internal/ads/zzdga;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdga;->zza()Lcom/google/android/gms/internal/ads/zzcrk;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzcrk;->zza(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdga;->zzb()Lcom/google/android/gms/internal/ads/zzcve;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcve;->zzdz(Lcom/google/android/gms/ads/internal/client/zze;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekn;->zze:Lcom/google/android/gms/internal/ads/zzeko;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeko;->zzc(Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzcgl;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcgl;->zzA()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzekm;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/ads/zzekm;-><init>(Lcom/google/android/gms/internal/ads/zzekn;Lcom/google/android/gms/ads/internal/client/zze;)V

    .line 7
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8
    iget v2, v1, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    const-string v3, "NativeAdLoader.onFailure"

    invoke-static {v2, p1, v3}, Lcom/google/android/gms/internal/ads/zzfcm;->zzb(ILjava/lang/Throwable;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzekn;->zza:Lcom/google/android/gms/internal/ads/zzekg;

    .line 9
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzekg;->zza()V

    .line 10
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbeb;->zzc:Lcom/google/android/gms/internal/ads/zzbds;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbds;->zze()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzekn;->zzb:Lcom/google/android/gms/internal/ads/zzfgn;

    if-eqz v2, :cond_1

    .line 13
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzfgn;->zzc(Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekn;->zzc:Lcom/google/android/gms/internal/ads/zzfgc;

    .line 14
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzfgc;->zzh(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfgc;

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzfgc;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfgc;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzfgn;->zza(Lcom/google/android/gms/internal/ads/zzfgc;)Lcom/google/android/gms/internal/ads/zzfgn;

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfgn;->zzh()V

    return-void

    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeko;->zze(Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzfgq;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzekn;->zzc:Lcom/google/android/gms/internal/ads/zzfgc;

    .line 11
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzfgc;->zza(Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/internal/ads/zzfgc;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzfgc;->zzh(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzfgc;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzfgc;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfgc;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzfgc;->zzm()Lcom/google/android/gms/internal/ads/zzfgg;

    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfgq;->zzc(Lcom/google/android/gms/internal/ads/zzfgg;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekn;->zze:Lcom/google/android/gms/internal/ads/zzeko;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcqg;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcqg;->zzn()Lcom/google/android/gms/internal/ads/zzczj;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeko;->zzd(Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzeke;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeke;->zzd()Lcom/google/android/gms/internal/ads/zzejr;

    move-result-object v2

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzczj;->zza(Lcom/google/android/gms/internal/ads/zzejr;)Lcom/google/android/gms/internal/ads/zzczj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzekn;->zza:Lcom/google/android/gms/internal/ads/zzekg;

    .line 4
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzekg;->zzb(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeko;->zzc(Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzcgl;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcgl;->zzA()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzekl;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzekl;-><init>(Lcom/google/android/gms/internal/ads/zzekn;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbeb;->zzc:Lcom/google/android/gms/internal/ads/zzbds;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbds;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzekn;->zzb:Lcom/google/android/gms/internal/ads/zzfgn;

    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcqg;->zzp()Lcom/google/android/gms/internal/ads/zzfbg;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfbg;->zzb:Lcom/google/android/gms/internal/ads/zzfbf;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfgn;->zzg(Lcom/google/android/gms/internal/ads/zzfbf;)Lcom/google/android/gms/internal/ads/zzfgn;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcqg;->zzl()Lcom/google/android/gms/internal/ads/zzcuv;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcuv;->zzg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfgn;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzekn;->zzc:Lcom/google/android/gms/internal/ads/zzfgc;

    .line 14
    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/zzfgc;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfgc;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfgn;->zza(Lcom/google/android/gms/internal/ads/zzfgc;)Lcom/google/android/gms/internal/ads/zzfgn;

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfgn;->zzh()V

    goto :goto_0

    .line 16
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeko;->zze(Lcom/google/android/gms/internal/ads/zzeko;)Lcom/google/android/gms/internal/ads/zzfgq;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzekn;->zzc:Lcom/google/android/gms/internal/ads/zzfgc;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcqg;->zzp()Lcom/google/android/gms/internal/ads/zzfbg;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfbg;->zzb:Lcom/google/android/gms/internal/ads/zzfbf;

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzfgc;->zzb(Lcom/google/android/gms/internal/ads/zzfbf;)Lcom/google/android/gms/internal/ads/zzfgc;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcqg;->zzl()Lcom/google/android/gms/internal/ads/zzcuv;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcuv;->zzg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/ads/zzfgc;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfgc;

    .line 9
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzfgc;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfgc;

    .line 10
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzfgc;->zzm()Lcom/google/android/gms/internal/ads/zzfgg;

    move-result-object p1

    .line 11
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfgq;->zzc(Lcom/google/android/gms/internal/ads/zzfgg;)V

    .line 16
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
