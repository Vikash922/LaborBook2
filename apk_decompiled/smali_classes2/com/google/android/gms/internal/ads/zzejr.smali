.class public final Lcom/google/android/gms/internal/ads/zzejr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/ads/admanager/AppEventListener;
.implements Lcom/google/android/gms/internal/ads/zzcya;
.implements Lcom/google/android/gms/internal/ads/zzcwq;
.implements Lcom/google/android/gms/internal/ads/zzcvf;
.implements Lcom/google/android/gms/internal/ads/zzcvw;
.implements Lcom/google/android/gms/ads/internal/client/zza;
.implements Lcom/google/android/gms/internal/ads/zzcvc;
.implements Lcom/google/android/gms/internal/ads/zzcxo;
.implements Lcom/google/android/gms/internal/ads/zzcvs;
.implements Lcom/google/android/gms/internal/ads/zzddc;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzdre;

.field final zzb:Ljava/util/concurrent/BlockingQueue;

.field private final zzc:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzd:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zze:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzf:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzg:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzh:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzi:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzj:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdre;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzejr;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    .line 6
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzh:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzi:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzj:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zziV:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzb:Ljava/util/concurrent/BlockingQueue;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzejr;->zza:Lcom/google/android/gms/internal/ads/zzdre;

    return-void
.end method

.method private final zzo()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzi:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzj:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzb:Ljava/util/concurrent/BlockingQueue;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzejc;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/zzejc;-><init>(Landroid/util/Pair;)V

    .line 3
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzexz;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexy;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzh:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzkQ:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzejp;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzejp;-><init>()V

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzexz;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexy;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzb:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Landroid/util/Pair;

    .line 2
    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "The queue for app events is full, dropping the new event."

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejr;->zza:Lcom/google/android/gms/internal/ads/zzdre;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdre;->zza()Lcom/google/android/gms/internal/ads/zzdrd;

    move-result-object v0

    const-string v1, "action"

    const-string v2, "dae_action"

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdrd;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdrd;

    const-string v1, "dae_name"

    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdrd;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdrd;

    const-string p1, "dae_data"

    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdrd;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdrd;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdrd;->zzj()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzejj;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzejj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzexz;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexy;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final zza()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeiz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeiz;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzexz;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexy;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeja;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeja;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzexz;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexy;)V

    return-void
.end method

.method public final zzb()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzejk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzejk;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzexz;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexy;)V

    return-void
.end method

.method public final zzc()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzejm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzejm;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzexz;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexy;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzejn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzejn;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzexz;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexy;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzejo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzejo;-><init>()V

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzexz;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexy;)V

    return-void
.end method

.method public final zzdd()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzkQ:Lcom/google/android/gms/internal/ads/zzbbz;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzejp;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzejp;-><init>()V

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzexz;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexy;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzejb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzejb;-><init>()V

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzexz;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexy;)V

    return-void
.end method

.method public final zzdl(Lcom/google/android/gms/internal/ads/zzbuy;)V
    .locals 0

    return-void
.end method

.method public final zzdm(Lcom/google/android/gms/internal/ads/zzfbg;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzh:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzj:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final zzdq(Lcom/google/android/gms/internal/ads/zzbvk;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzdz(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzejd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzejd;-><init>(Lcom/google/android/gms/ads/internal/client/zze;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzexz;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexy;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeje;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzeje;-><init>(Lcom/google/android/gms/ads/internal/client/zze;)V

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzexz;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexy;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzejf;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzejf;-><init>(Lcom/google/android/gms/ads/internal/client/zze;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzexz;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexy;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzh:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzb:Ljava/util/concurrent/BlockingQueue;

    .line 5
    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    return-void
.end method

.method public final zze()V
    .locals 0

    return-void
.end method

.method public final zzf()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zzg()Lcom/google/android/gms/ads/internal/client/zzbk;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzbk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zzh(Lcom/google/android/gms/ads/internal/client/zzt;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzejq;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzejq;-><init>(Lcom/google/android/gms/ads/internal/client/zzt;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzejr;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzexz;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexy;)V

    return-void
.end method

.method public final declared-synchronized zzi()Lcom/google/android/gms/ads/internal/client/zzcl;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzcl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zzj(Lcom/google/android/gms/ads/internal/client/zzbk;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/ads/internal/client/zzbn;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/ads/internal/client/zzdq;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejr;->zze:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzm(Lcom/google/android/gms/ads/internal/client/zzcl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzi:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejr;->zzo()V

    return-void
.end method

.method public final zzn(Lcom/google/android/gms/ads/internal/client/zzcs;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzr(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeji;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzeji;-><init>(Lcom/google/android/gms/ads/internal/client/zze;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzg:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzexz;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexy;)V

    return-void
.end method

.method public final zzs()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeiy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeiy;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzexz;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexy;)V

    return-void
.end method

.method public final declared-synchronized zzt()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzejg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzejg;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzexz;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexy;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzejh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzejh;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzf:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzexz;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexy;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzj:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzejr;->zzo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public final zzu()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzejl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzejl;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzejr;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzexz;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzexy;)V

    return-void
.end method
