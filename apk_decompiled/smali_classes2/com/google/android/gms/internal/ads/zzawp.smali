.class public final Lcom/google/android/gms/internal/ads/zzawp;
.super Lcom/google/android/gms/internal/ads/zzaxo;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# static fields
.field private static final zzh:Lcom/google/android/gms/internal/ads/zzaxp;


# instance fields
.field private final zzi:Lcom/google/android/gms/internal/ads/zzarv;

.field private final zzj:Landroid/content/Context;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzatt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaxp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaxp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzawp;->zzh:Lcom/google/android/gms/internal/ads/zzaxp;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzawb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzarz;IILandroid/content/Context;Lcom/google/android/gms/internal/ads/zzarm;Lcom/google/android/gms/internal/ads/zzarv;Lcom/google/android/gms/internal/ads/zzatt;)V
    .locals 8

    move-object v7, p0

    .line 1
    const-string v3, "0eX3+h8Ltl5Zobd4L6G06UqDuFfRlHQ71PPApHgzDdE="

    const/16 v6, 0x1b

    const-string v2, "I6IO+LQt3rQ7IR+La1Wf05vP+T+JXIE2+dXiYoVRp9J6etcZYK5uAv7Y0XaXL0/V"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzaxo;-><init>(Lcom/google/android/gms/internal/ads/zzawb;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzarz;II)V

    move-object v0, p7

    iput-object v0, v7, Lcom/google/android/gms/internal/ads/zzawp;->zzj:Landroid/content/Context;

    move-object/from16 v0, p9

    iput-object v0, v7, Lcom/google/android/gms/internal/ads/zzawp;->zzi:Lcom/google/android/gms/internal/ads/zzarv;

    move-object/from16 v0, p10

    iput-object v0, v7, Lcom/google/android/gms/internal/ads/zzawp;->zzk:Lcom/google/android/gms/internal/ads/zzatt;

    return-void
.end method

.method private final zzc()Lcom/google/android/gms/internal/ads/zzatq;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzcT:Lcom/google/android/gms/internal/ads/zzbbz;

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

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzcY:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawp;->zzi:Lcom/google/android/gms/internal/ads/zzarv;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzarv;->zza()I

    move-result v0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawp;->zze:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzawp;->zzj:Landroid/content/Context;

    const/4 v3, 0x0

    .line 6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, ""

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8
    new-instance v2, Lcom/google/android/gms/internal/ads/zzatq;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzatq;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawp;->zzk:Lcom/google/android/gms/internal/ads/zzatt;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzatt;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    if-eqz v3, :cond_1

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzatt;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    int-to-long v3, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    invoke-interface {v1, v3, v4, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_1
    const-string v0, "E"

    :goto_1
    iput-object v0, v2, Lcom/google/android/gms/internal/ads/zzatq;->zza:Ljava/lang/String;

    return-object v2
.end method

.method private final zzd()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawp;->zza:Lcom/google/android/gms/internal/ads/zzawb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawb;->zzk()Ljava/util/concurrent/Future;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawb;->zzk()Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawb;->zzc()Lcom/google/android/gms/internal/ads/zzasu;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzasu;->zzaf()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzasu;->zzg()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected final zza()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzawp;->zzh:Lcom/google/android/gms/internal/ads/zzaxp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawp;->zzj:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzaxp;->zza(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzatq;

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzatq;->zza:Ljava/lang/String;

    .line 4
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzawe;->zzd(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzatq;->zza:Ljava/lang/String;

    const-string v4, "E"

    .line 5
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzatq;->zza:Ljava/lang/String;

    const-string v3, "0000000000000000000000000000000000000000000000000000000000000000"

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_0
    const/4 v2, 0x0

    .line 7
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzawe;->zzd(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-nez v3, :cond_1

    const/4 v3, 0x5

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzawe;->zzd(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 10
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 11
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move v3, v4

    .line 7
    :goto_1
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzawp;->zzk:Lcom/google/android/gms/internal/ads/zzatt;

    if-eqz v6, :cond_3

    .line 30
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawp;->zzc()Lcom/google/android/gms/internal/ads/zzatq;

    move-result-object v1

    goto/16 :goto_4

    :cond_3
    if-ne v3, v4, :cond_4

    .line 40
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzawp;->zzi:Lcom/google/android/gms/internal/ads/zzarv;

    .line 12
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzarv;->zzd()Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v5, 0x1

    .line 13
    :cond_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 14
    sget-object v6, Lcom/google/android/gms/internal/ads/zzbci;->zzcH:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v6

    .line 14
    check-cast v6, Ljava/lang/Boolean;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzbci;->zzcG:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v7

    .line 17
    check-cast v7, Ljava/lang/Boolean;

    .line 18
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzawp;->zzb()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_5
    move-object v7, v2

    .line 20
    :goto_2
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzawp;->zza:Lcom/google/android/gms/internal/ads/zzawb;

    .line 21
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzawb;->zzo()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 20
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzawe;->zzd(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 22
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawp;->zzd()Ljava/lang/String;

    move-result-object v7

    :cond_6
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzawp;->zze:Ljava/lang/reflect/Method;

    filled-new-array {v1, v5, v7}, [Ljava/lang/Object;

    move-result-object v1

    .line 23
    invoke-virtual {v6, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 24
    new-instance v5, Lcom/google/android/gms/internal/ads/zzatq;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/ads/zzatq;-><init>(Ljava/lang/String;)V

    iget-object v1, v5, Lcom/google/android/gms/internal/ads/zzatq;->zza:Ljava/lang/String;

    .line 25
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzawe;->zzd(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v5, Lcom/google/android/gms/internal/ads/zzatq;->zza:Ljava/lang/String;

    const-string v6, "E"

    .line 26
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_7
    add-int/lit8 v3, v3, -0x1

    if-eq v3, v4, :cond_9

    const/4 v1, 0x4

    if-eq v3, v1, :cond_8

    goto :goto_3

    .line 27
    :cond_8
    throw v2

    .line 28
    :cond_9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzawp;->zzd()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzawe;->zzd(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    iput-object v1, v5, Lcom/google/android/gms/internal/ads/zzatq;->zza:Ljava/lang/String;

    :cond_a
    :goto_3
    move-object v1, v5

    .line 31
    :goto_4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 32
    :cond_b
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzatq;

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzawp;->zzd:Lcom/google/android/gms/internal/ads/zzarz;

    .line 34
    monitor-enter v2

    if-eqz v1, :cond_c

    :try_start_1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzatq;->zza:Ljava/lang/String;

    .line 35
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzarz;->zzv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzarz;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzatq;->zzb:J

    .line 36
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzarz;->zzV(J)Lcom/google/android/gms/internal/ads/zzarz;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzatq;->zzc:Ljava/lang/String;

    .line 37
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzarz;->zzX(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzarz;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzatq;->zzd:Ljava/lang/String;

    .line 38
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzarz;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzarz;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzatq;->zze:Ljava/lang/String;

    .line 39
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzarz;->zzu(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzarz;

    .line 40
    :cond_c
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 33
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method protected final zzb()Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    .line 1
    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbci;->zzcI:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v2

    .line 2
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzawe;->zzf(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v7, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 5
    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "user"

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbci;->zzcJ:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzawe;->zzf(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 9
    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawp;->zzj:Landroid/content/Context;

    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzawp;->zza:Lcom/google/android/gms/internal/ads/zzawb;

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzawb;->zzj()Ljava/util/concurrent/ExecutorService;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-gt v2, v3, :cond_1

    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v3, "S"

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgcm;->zze()Lcom/google/android/gms/internal/ads/zzgcm;

    move-result-object v2

    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v8, Lcom/google/android/gms/internal/ads/zzaxq;

    invoke-direct {v8, v2}, Lcom/google/android/gms/internal/ads/zzaxq;-><init>(Lcom/google/android/gms/internal/ads/zzgcm;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    .line 15
    invoke-virtual/range {v3 .. v8}, Landroid/content/pm/PackageManager;->requestChecksums(Ljava/lang/String;ZILjava/util/List;Landroid/content/pm/PackageManager$OnChecksumsReadyListener;)V

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgcm;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    :goto_0
    return-object v0
.end method
