.class public abstract Lcom/google/android/gms/internal/ads/zzfjn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field protected final zza:Lcom/google/android/gms/ads/internal/ClientApi;

.field protected final zzb:Landroid/content/Context;

.field protected final zzc:I

.field protected final zzd:Lcom/google/android/gms/internal/ads/zzboy;

.field protected zze:Lcom/google/android/gms/ads/internal/client/zzfp;

.field protected final zzf:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzg:Lcom/google/android/gms/ads/internal/client/zzce;

.field private final zzh:Ljava/util/Queue;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzfiu;

.field private final zzj:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzk:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzl:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzm:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private zzn:Lcom/google/android/gms/internal/ads/zzfiz;

.field private final zzo:Lcom/google/android/gms/common/util/Clock;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzboy;Lcom/google/android/gms/ads/internal/client/zzfp;Lcom/google/android/gms/ads/internal/client/zzce;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfiu;Lcom/google/android/gms/common/util/Clock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zza:Lcom/google/android/gms/ads/internal/ClientApi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzb:Landroid/content/Context;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzc:I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzd:Lcom/google/android/gms/internal/ads/zzboy;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zze:Lcom/google/android/gms/ads/internal/client/zzfp;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzg:Lcom/google/android/gms/ads/internal/client/zzce;

    iget p1, p5, Lcom/google/android/gms/ads/internal/client/zzfp;->zzd:I

    const/4 p2, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-instance p3, Ljava/util/PriorityQueue;

    new-instance p4, Lcom/google/android/gms/internal/ads/zzfjh;

    invoke-direct {p4, p0}, Lcom/google/android/gms/internal/ads/zzfjh;-><init>(Lcom/google/android/gms/internal/ads/zzfjn;)V

    .line 2
    invoke-direct {p3, p1, p4}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzh:Ljava/util/Queue;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzf:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    .line 4
    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzj:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzk:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzi:Lcom/google/android/gms/internal/ads/zzfiu;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzl:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzm:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzo:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method

.method private final declared-synchronized zzA(Ljava/lang/Object;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzj:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzi:Lcom/google/android/gms/internal/ads/zzfiu;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfiu;->zzc()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzm:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfjn;->zzy(Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_1

    move v1, v0

    .line 5
    :cond_1
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzfjn;->zzG(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final declared-synchronized zzB()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzl:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzg:Lcom/google/android/gms/ads/internal/client/zzce;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zze:Lcom/google/android/gms/ads/internal/client/zzfp;

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzce;->zze(Lcom/google/android/gms/ads/internal/client/zzfp;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 3
    :catch_0
    :try_start_2
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "Failed to call onAdsAvailable"

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
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

.method private final declared-synchronized zzC()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzl:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzg:Lcom/google/android/gms/ads/internal/client/zzce;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zze:Lcom/google/android/gms/ads/internal/client/zzfp;

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzce;->zzf(Lcom/google/android/gms/ads/internal/client/zzfp;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 3
    :catch_0
    :try_start_2
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "Failed to call onAdsExhausted"

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
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

.method private final declared-synchronized zzD()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzm:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzh:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfqf;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfjl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfjl;-><init>(Lcom/google/android/gms/internal/ads/zzfjn;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfqf;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzk:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfjm;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfjm;-><init>(Lcom/google/android/gms/internal/ads/zzfjn;)V

    .line 4
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
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

.method private final declared-synchronized zzE(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 4

    const-string v0, "Preloading "

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzj:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget p1, p1, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/16 v3, 0x8

    if-eq p1, v3, :cond_0

    const/16 v3, 0xa

    if-eq p1, v3, :cond_0

    const/16 v3, 0xb

    if-eq p1, v3, :cond_0

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzfjn;->zzG(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zze:Lcom/google/android/gms/ads/internal/client/zzfp;

    .line 3
    iget v1, p1, Lcom/google/android/gms/ads/internal/client/zzfp;->zzb:I

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/zzfp;->zza:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", for adUnitId:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", Ad load failed. Stop preloading due to non-retriable error:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzf:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
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

.method private final declared-synchronized zzF()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzh:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfjf;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfjf;->zzd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
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

.method private final declared-synchronized zzG(Z)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzi:Lcom/google/android/gms/internal/ads/zzfiu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfiu;->zze()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfiu;->zzb()V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzk:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfji;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfji;-><init>(Lcom/google/android/gms/internal/ads/zzfjn;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfiu;->zza()J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    invoke-interface {p1, v1, v2, v3, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private static final zzH(Lcom/google/android/gms/ads/internal/client/zzdx;)Ljava/lang/String;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzcuv;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p0, Lcom/google/android/gms/internal/ads/zzcuv;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcuv;->zzl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzfjn;Lcom/google/android/gms/ads/internal/client/zzdx;)D
    .locals 0

    .line 1
    instance-of p0, p1, Lcom/google/android/gms/internal/ads/zzcuv;

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcuv;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcuv;->zzc()D

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzfjn;)Lcom/google/android/gms/internal/ads/zzfiz;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzn:Lcom/google/android/gms/internal/ads/zzfiz;

    return-object p0
.end method

.method static bridge synthetic zzg(Lcom/google/android/gms/internal/ads/zzfjn;)Lcom/google/android/gms/common/util/Clock;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzo:Lcom/google/android/gms/common/util/Clock;

    return-object p0
.end method

.method static bridge synthetic zzj(Lcom/google/android/gms/internal/ads/zzfjn;Lcom/google/android/gms/ads/internal/client/zzdx;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfjn;->zzH(Lcom/google/android/gms/ads/internal/client/zzdx;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zzl(Lcom/google/android/gms/internal/ads/zzfjn;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfjn;->zzz(Ljava/lang/Throwable;)V

    return-void
.end method

.method static bridge synthetic zzm(Lcom/google/android/gms/internal/ads/zzfjn;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfjn;->zzA(Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic zzn(Lcom/google/android/gms/internal/ads/zzfjn;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfjn;->zzB()V

    return-void
.end method

.method static bridge synthetic zzo(Lcom/google/android/gms/internal/ads/zzfjn;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfjn;->zzC()V

    return-void
.end method

.method static bridge synthetic zzp(Lcom/google/android/gms/internal/ads/zzfjn;Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfjn;->zzE(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method private final declared-synchronized zzy(Ljava/lang/Object;)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfjf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzo:Lcom/google/android/gms/common/util/Clock;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzfjf;-><init>(Ljava/lang/Object;Lcom/google/android/gms/common/util/Clock;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzh:Ljava/util/Queue;

    .line 2
    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfjn;->zza(Ljava/lang/Object;)Lcom/google/android/gms/ads/internal/client/zzdx;

    move-result-object p1

    .line 4
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    .line 5
    sget-object v3, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfqf;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzfjj;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/ads/zzfjj;-><init>(Lcom/google/android/gms/internal/ads/zzfjn;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfqf;->post(Ljava/lang/Runnable;)Z

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfjk;

    invoke-direct {v3, p0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzfjk;-><init>(Lcom/google/android/gms/internal/ads/zzfjn;JLcom/google/android/gms/ads/internal/client/zzdx;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzk:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    invoke-interface {p1, v3}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfji;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfji;-><init>(Lcom/google/android/gms/internal/ads/zzfjn;)V

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfjf;->zza()J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    invoke-interface {p1, v1, v2, v3, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final declared-synchronized zzz(Ljava/lang/Throwable;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzj:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzfiq;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfiq;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfiq;->zza()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfjn;->zzG(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method protected abstract zza(Ljava/lang/Object;)Lcom/google/android/gms/ads/internal/client/zzdx;
.end method

.method protected abstract zzb(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;
.end method

.method protected final declared-synchronized zzd()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzh:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzf()Lcom/google/android/gms/internal/ads/zzfjn;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfji;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfji;-><init>(Lcom/google/android/gms/internal/ads/zzfjn;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzk:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected final declared-synchronized zzh()Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzh:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfjf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfjf;->zzc()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzi()Ljava/lang/Object;
    .locals 11

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzi:Lcom/google/android/gms/internal/ads/zzfiu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfiu;->zzc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzh:Ljava/util/Queue;

    .line 2
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfjf;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzm:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 5
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfjf;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zze:Lcom/google/android/gms/ads/internal/client/zzfp;

    .line 6
    iget v3, v3, Lcom/google/android/gms/ads/internal/client/zzfp;->zzb:I

    invoke-static {v3}, Lcom/google/android/gms/ads/AdFormat;->getAdFormat(I)Lcom/google/android/gms/ads/AdFormat;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfjf;->zzc()Ljava/lang/Object;

    move-result-object v3

    .line 7
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzfjn;->zza(Ljava/lang/Object;)Lcom/google/android/gms/ads/internal/client/zzdx;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfjn;->zzH(Lcom/google/android/gms/ads/internal/client/zzdx;)Ljava/lang/String;

    move-result-object v10

    if-eqz v0, :cond_2

    if-eqz v5, :cond_2

    if-eqz v10, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfjf;->zzb()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfjf;->zzb()J

    move-result-wide v6

    cmp-long v0, v3, v6

    if-gez v0, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzn:Lcom/google/android/gms/internal/ads/zzfiz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzo:Lcom/google/android/gms/common/util/Clock;

    .line 8
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zze:Lcom/google/android/gms/ads/internal/client/zzfp;

    .line 9
    iget v8, v0, Lcom/google/android/gms/ads/internal/client/zzfp;->zzd:I

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfjn;->zzd()I

    move-result v9

    .line 11
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzfiz;->zzg(Lcom/google/android/gms/ads/AdFormat;JIILjava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 12
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfjn;->zzr()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    monitor-exit p0

    return-object v2

    :cond_3
    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfjf;->zzc()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzk()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfjn;->zzh()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfjn;->zza(Ljava/lang/Object;)Lcom/google/android/gms/ads/internal/client/zzdx;

    move-result-object v0

    .line 3
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfjn;->zzH(Lcom/google/android/gms/ads/internal/client/zzdx;)Ljava/lang/String;

    move-result-object v0
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

.method protected final zzq()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzh:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method protected final declared-synchronized zzr()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfjn;->zzF()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfjn;->zzD()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzj:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzf:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzh:Ljava/util/Queue;

    .line 5
    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zze:Lcom/google/android/gms/ads/internal/client/zzfp;

    iget v2, v2, Lcom/google/android/gms/ads/internal/client/zzfp;->zzd:I

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzb()Lcom/google/android/gms/internal/ads/zzazb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzazb;->zza()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zze:Lcom/google/android/gms/ads/internal/client/zzfp;

    .line 8
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzfp;->zza:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v1, "Empty activity context at preloading: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzb:Landroid/content/Context;

    .line 10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfjn;->zzb(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfjn;->zzb(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 10
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfjg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfjg;-><init>(Lcom/google/android/gms/internal/ads/zzfjn;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzk:Ljava/util/concurrent/ScheduledExecutorService;

    .line 12
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgbs;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgbo;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 5
    :cond_2
    :goto_1
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

.method public final declared-synchronized zzs(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzi:Lcom/google/android/gms/internal/ads/zzfiu;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfiu;->zzd(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzt()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzf:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzl:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfji;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfji;-><init>(Lcom/google/android/gms/internal/ads/zzfjn;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzk:Ljava/util/concurrent/ScheduledExecutorService;

    .line 3
    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
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

.method public final zzu(Lcom/google/android/gms/internal/ads/zzfiz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzn:Lcom/google/android/gms/internal/ads/zzfiz;

    return-void
.end method

.method public final zzv()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzf:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzl:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method protected final zzw(I)V
    .locals 8

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zze:Lcom/google/android/gms/ads/internal/client/zzfp;

    .line 2
    iget v1, v1, Lcom/google/android/gms/ads/internal/client/zzfp;->zzb:I

    invoke-static {v1}, Lcom/google/android/gms/ads/AdFormat;->getAdFormat(I)Lcom/google/android/gms/ads/AdFormat;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zze:Lcom/google/android/gms/ads/internal/client/zzfp;

    .line 3
    iget v4, v1, Lcom/google/android/gms/ads/internal/client/zzfp;->zzd:I

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zze:Lcom/google/android/gms/ads/internal/client/zzfp;

    new-instance v2, Lcom/google/android/gms/ads/internal/client/zzfp;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/client/zzfp;->zza:Ljava/lang/String;

    iget v6, v1, Lcom/google/android/gms/ads/internal/client/zzfp;->zzb:I

    iget-object v7, v1, Lcom/google/android/gms/ads/internal/client/zzfp;->zzc:Lcom/google/android/gms/ads/internal/client/zzm;

    if-lez p1, :cond_1

    move v1, p1

    goto :goto_1

    .line 14
    :cond_1
    iget v1, v1, Lcom/google/android/gms/ads/internal/client/zzfp;->zzd:I

    .line 4
    :goto_1
    invoke-direct {v2, v5, v6, v7, v1}, Lcom/google/android/gms/ads/internal/client/zzfp;-><init>(Ljava/lang/String;ILcom/google/android/gms/ads/internal/client/zzm;I)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zze:Lcom/google/android/gms/ads/internal/client/zzfp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzh:Ljava/util/Queue;

    .line 5
    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v2

    if-le v2, p1, :cond_4

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbci;->zzu:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    if-ge v0, p1, :cond_3

    .line 8
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzfjf;

    if-eqz v5, :cond_2

    .line 9
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 10
    :cond_3
    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 11
    invoke-interface {v1, v2}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 12
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzn:Lcom/google/android/gms/internal/ads/zzfiz;

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzo:Lcom/google/android/gms/common/util/Clock;

    .line 13
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    move v5, p1

    .line 14
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzfiz;->zza(Lcom/google/android/gms/ads/AdFormat;IIJ)V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzx()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfjn;->zzF()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzh:Ljava/util/Queue;

    .line 2
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
