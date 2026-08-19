.class public final Lcom/google/android/gms/internal/ads/zzdw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdg;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdq;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdu;

.field private final zzd:Ljava/util/concurrent/CopyOnWriteArraySet;

.field private final zze:Ljava/util/ArrayDeque;

.field private final zzf:Ljava/util/ArrayDeque;

.field private final zzg:Ljava/lang/Object;

.field private zzh:Z

.field private zzi:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzdg;Lcom/google/android/gms/internal/ads/zzdu;)V
    .locals 6

    .line 1
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzdw;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzdg;Lcom/google/android/gms/internal/ads/zzdu;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzdg;Lcom/google/android/gms/internal/ads/zzdu;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdw;->zza:Lcom/google/android/gms/internal/ads/zzdg;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdw;->zzd:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdw;->zzc:Lcom/google/android/gms/internal/ads/zzdu;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdw;->zzg:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdw;->zze:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 3
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdw;->zzf:Ljava/util/ArrayDeque;

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdr;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzdr;-><init>(Lcom/google/android/gms/internal/ads/zzdw;)V

    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzdg;->zzd(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/zzdq;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdw;->zzb:Lcom/google/android/gms/internal/ads/zzdq;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzdw;->zzi:Z

    return-void
.end method

.method public static synthetic zzg(Lcom/google/android/gms/internal/ads/zzdw;Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdw;->zzd:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdw;->zzc:Lcom/google/android/gms/internal/ads/zzdu;

    .line 2
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzdv;->zzb(Lcom/google/android/gms/internal/ads/zzdu;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdw;->zzb:Lcom/google/android/gms/internal/ads/zzdq;

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdq;->zzh(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return v1
.end method

.method private final zzh()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdw;->zzi:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdw;->zzb:Lcom/google/android/gms/internal/ads/zzdq;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdq;->zza()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzdu;)Lcom/google/android/gms/internal/ads/zzdw;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/zzdw;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzdw;->zzi:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdw;->zzd:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdw;->zza:Lcom/google/android/gms/internal/ads/zzdg;

    move-object v0, v6

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzdw;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzdg;Lcom/google/android/gms/internal/ads/zzdu;Z)V

    return-object v6
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdw;->zzg:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdw;->zzh:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdw;->zzd:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdv;

    .line 2
    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzdv;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzc()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdw;->zzh()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdw;->zzf:Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdw;->zzb:Lcom/google/android/gms/internal/ads/zzdq;

    const/4 v2, 0x1

    .line 3
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzdq;->zzh(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzdq;->zzb(I)Lcom/google/android/gms/internal/ads/zzdp;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzdq;->zzl(Lcom/google/android/gms/internal/ads/zzdp;)Z

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdw;->zze:Ljava/util/ArrayDeque;

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    .line 6
    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    if-eqz v2, :cond_2

    .line 8
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final zzd(ILcom/google/android/gms/internal/ads/zzdt;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdw;->zzh()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdw;->zzd:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzds;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzds;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/gms/internal/ads/zzdt;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdw;->zzf:Ljava/util/ArrayDeque;

    .line 3
    invoke-virtual {p1, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zze()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdw;->zzh()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdw;->zzg:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdw;->zzh:Z

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdw;->zzd:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdv;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdw;->zzc:Lcom/google/android/gms/internal/ads/zzdu;

    .line 4
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzdv;->zzc(Lcom/google/android/gms/internal/ads/zzdu;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    return-void

    :catchall_0
    move-exception v1

    .line 2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final zzf(Ljava/lang/Object;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdw;->zzh()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdw;->zzd:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdv;

    .line 3
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzdv;->zza:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdw;->zzc:Lcom/google/android/gms/internal/ads/zzdu;

    .line 4
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzdv;->zzc(Lcom/google/android/gms/internal/ads/zzdu;)V

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
