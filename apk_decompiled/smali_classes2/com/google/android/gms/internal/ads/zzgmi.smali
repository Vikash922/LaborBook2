.class public final Lcom/google/android/gms/internal/ads/zzgmi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzgmi;


# instance fields
.field private final zzb:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgmg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgmg;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgnw;->zza(Lcom/google/android/gms/internal/ads/zzgnv;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgmi;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgmi;->zza:Lcom/google/android/gms/internal/ads/zzgmi;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgnq;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgnq;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgnu;

    const/4 v3, 0x0

    .line 2
    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzgnu;-><init>(Lcom/google/android/gms/internal/ads/zzgnq;Lcom/google/android/gms/internal/ads/zzgnt;)V

    .line 3
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmi;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/ads/zzgmi;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgmi;->zza:Lcom/google/android/gms/internal/ads/zzgmi;

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgnp;Lcom/google/android/gms/internal/ads/zzgdz;)Lcom/google/android/gms/internal/ads/zzgdh;
    .locals 1
    .param p2    # Lcom/google/android/gms/internal/ads/zzgdz;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmi;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgnu;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgnu;->zza(Lcom/google/android/gms/internal/ads/zzgnp;Lcom/google/android/gms/internal/ads/zzgdz;)Lcom/google/android/gms/internal/ads/zzgdh;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgnp;)Lcom/google/android/gms/internal/ads/zzgdv;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmi;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgnu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgnu;->zzb(Lcom/google/android/gms/internal/ads/zzgnp;)Lcom/google/android/gms/internal/ads/zzgdv;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzgdh;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgdz;)Lcom/google/android/gms/internal/ads/zzgnp;
    .locals 1
    .param p3    # Lcom/google/android/gms/internal/ads/zzgdz;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmi;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgnu;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgnu;->zzc(Lcom/google/android/gms/internal/ads/zzgdh;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgdz;)Lcom/google/android/gms/internal/ads/zzgnp;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzgdv;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgnp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmi;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgnu;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgnu;->zzd(Lcom/google/android/gms/internal/ads/zzgdv;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgnp;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized zzf(Lcom/google/android/gms/internal/ads/zzglb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgnq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgmi;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgnu;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzgnq;-><init>(Lcom/google/android/gms/internal/ads/zzgnu;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgnq;->zza(Lcom/google/android/gms/internal/ads/zzglb;)Lcom/google/android/gms/internal/ads/zzgnq;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgnu;

    const/4 v2, 0x0

    .line 2
    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzgnu;-><init>(Lcom/google/android/gms/internal/ads/zzgnq;Lcom/google/android/gms/internal/ads/zzgnt;)V

    .line 3
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
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

.method public final declared-synchronized zzg(Lcom/google/android/gms/internal/ads/zzglf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgnq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgmi;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgnu;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzgnq;-><init>(Lcom/google/android/gms/internal/ads/zzgnu;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgnq;->zzb(Lcom/google/android/gms/internal/ads/zzglf;)Lcom/google/android/gms/internal/ads/zzgnq;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgnu;

    const/4 v2, 0x0

    .line 2
    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzgnu;-><init>(Lcom/google/android/gms/internal/ads/zzgnq;Lcom/google/android/gms/internal/ads/zzgnt;)V

    .line 3
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
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

.method public final declared-synchronized zzh(Lcom/google/android/gms/internal/ads/zzgmn;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgnq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgmi;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgnu;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzgnq;-><init>(Lcom/google/android/gms/internal/ads/zzgnu;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgnq;->zzc(Lcom/google/android/gms/internal/ads/zzgmn;)Lcom/google/android/gms/internal/ads/zzgnq;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgnu;

    const/4 v2, 0x0

    .line 2
    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzgnu;-><init>(Lcom/google/android/gms/internal/ads/zzgnq;Lcom/google/android/gms/internal/ads/zzgnt;)V

    .line 3
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
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

.method public final declared-synchronized zzi(Lcom/google/android/gms/internal/ads/zzgmr;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgnq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgmi;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgnu;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzgnq;-><init>(Lcom/google/android/gms/internal/ads/zzgnu;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgnq;->zzd(Lcom/google/android/gms/internal/ads/zzgmr;)Lcom/google/android/gms/internal/ads/zzgnq;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgnu;

    const/4 v2, 0x0

    .line 3
    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzgnu;-><init>(Lcom/google/android/gms/internal/ads/zzgnq;Lcom/google/android/gms/internal/ads/zzgnt;)V

    .line 4
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
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

.method public final zzj(Lcom/google/android/gms/internal/ads/zzgnp;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmi;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgnu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgnu;->zzi(Lcom/google/android/gms/internal/ads/zzgnp;)Z

    move-result p1

    return p1
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzgnp;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmi;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgnu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgnu;->zzj(Lcom/google/android/gms/internal/ads/zzgnp;)Z

    move-result p1

    return p1
.end method
