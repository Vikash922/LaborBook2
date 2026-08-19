.class public final Lcom/google/android/gms/internal/ads/zzauq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaut;


# static fields
.field private static zzb:Lcom/google/android/gms/internal/ads/zzauq;


# instance fields
.field volatile zza:J

.field private final zzc:Landroid/content/Context;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfoe;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfol;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfon;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzavv;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzfmr;

.field private final zzi:Ljava/util/concurrent/Executor;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzfok;

.field private final zzk:Ljava/util/concurrent/CountDownLatch;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzawk;

.field private final zzm:Lcom/google/android/gms/internal/ads/zzawc;

.field private final zzn:Lcom/google/android/gms/internal/ads/zzavt;

.field private final zzo:Ljava/lang/Object;

.field private volatile zzp:Z

.field private volatile zzq:Z

.field private final zzr:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfmr;Lcom/google/android/gms/internal/ads/zzfoe;Lcom/google/android/gms/internal/ads/zzfol;Lcom/google/android/gms/internal/ads/zzfon;Lcom/google/android/gms/internal/ads/zzavv;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfmm;ILcom/google/android/gms/internal/ads/zzawk;Lcom/google/android/gms/internal/ads/zzawc;Lcom/google/android/gms/internal/ads/zzavt;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zza:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzo:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzq:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzc:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzh:Lcom/google/android/gms/internal/ads/zzfmr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzd:Lcom/google/android/gms/internal/ads/zzfoe;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzauq;->zze:Lcom/google/android/gms/internal/ads/zzfol;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzf:Lcom/google/android/gms/internal/ads/zzfon;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzg:Lcom/google/android/gms/internal/ads/zzavv;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzi:Ljava/util/concurrent/Executor;

    iput p9, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzr:I

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzl:Lcom/google/android/gms/internal/ads/zzawk;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzm:Lcom/google/android/gms/internal/ads/zzawc;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzn:Lcom/google/android/gms/internal/ads/zzavt;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzq:Z

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzk:Ljava/util/concurrent/CountDownLatch;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzauo;

    invoke-direct {p1, p0, p8}, Lcom/google/android/gms/internal/ads/zzauo;-><init>(Lcom/google/android/gms/internal/ads/zzauq;Lcom/google/android/gms/internal/ads/zzfmm;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzj:Lcom/google/android/gms/internal/ads/zzfok;

    return-void
.end method

.method public static declared-synchronized zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzard;Z)Lcom/google/android/gms/internal/ads/zzauq;
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/ads/zzauq;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfmt;->zzc()Lcom/google/android/gms/internal/ads/zzfms;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzard;->zzf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfms;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfms;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzard;->zzi()Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfms;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfms;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfms;->zzh()Lcom/google/android/gms/internal/ads/zzfmt;

    move-result-object p1

    .line 5
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-static {p0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzauq;->zzs(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfmt;Z)Lcom/google/android/gms/internal/ads/zzauq;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzauq;)Lcom/google/android/gms/internal/ads/zzfmr;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzh:Lcom/google/android/gms/internal/ads/zzfmr;

    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzauq;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzo:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic zzi(Lcom/google/android/gms/internal/ads/zzauq;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzp:Z

    return-void
.end method

.method static bridge synthetic zzj(Lcom/google/android/gms/internal/ads/zzauq;)V
    .locals 12

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 2
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzauq;->zzu(I)Lcom/google/android/gms/internal/ads/zzfod;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfod;->zza()Lcom/google/android/gms/internal/ads/zzaxw;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzaxw;->zzk()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfod;->zza()Lcom/google/android/gms/internal/ads/zzaxw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaxw;->zzj()Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    move-object v8, v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    move-object v8, v4

    move-object v9, v8

    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzc:Landroid/content/Context;

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzr:I

    const-string v10, "1"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzh:Lcom/google/android/gms/internal/ads/zzfmr;

    const/4 v6, 0x1

    move-object v11, v3

    .line 3
    invoke-static/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzfnb;->zza(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfmr;)Lcom/google/android/gms/internal/ads/zzfoi;

    move-result-object v4

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzfoi;->zzb:[B

    if-eqz v5, :cond_b

    array-length v6, v5
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzgyk; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v3, 0x0

    .line 4
    :try_start_1
    invoke-static {v5, v3, v6}, Lcom/google/android/gms/internal/ads/zzgwn;->zzv([BII)Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v3

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgxf;->zza()Lcom/google/android/gms/internal/ads/zzgxf;

    move-result-object v5

    .line 6
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzaxt;->zzb(Lcom/google/android/gms/internal/ads/zzgwn;Lcom/google/android/gms/internal/ads/zzgxf;)Lcom/google/android/gms/internal/ads/zzaxt;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/internal/ads/zzgyk; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaxt;->zzc()Lcom/google/android/gms/internal/ads/zzaxw;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzaxw;->zzk()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    .line 10
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaxt;->zzc()Lcom/google/android/gms/internal/ads/zzaxw;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzaxw;->zzj()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    .line 11
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaxt;->zzd()Lcom/google/android/gms/internal/ads/zzgwn;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgwn;->zzA()[B

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_2

    goto/16 :goto_3

    .line 12
    :cond_2
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzauq;->zzu(I)Lcom/google/android/gms/internal/ads/zzfod;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 21
    :cond_3
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfod;->zza()Lcom/google/android/gms/internal/ads/zzaxw;

    move-result-object v5

    .line 13
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaxt;->zzc()Lcom/google/android/gms/internal/ads/zzaxw;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzaxw;->zzk()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzaxw;->zzk()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 14
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaxt;->zzc()Lcom/google/android/gms/internal/ads/zzaxw;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzaxw;->zzj()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzaxw;->zzj()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 12
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzj:Lcom/google/android/gms/internal/ads/zzfok;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzfoi;->zzc:I

    .line 17
    sget-object v6, Lcom/google/android/gms/internal/ads/zzbci;->zzcA:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v6

    .line 17
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x3

    if-ne v4, v6, :cond_5

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzauq;->zze:Lcom/google/android/gms/internal/ads/zzfol;

    .line 19
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzfol;->zza(Lcom/google/android/gms/internal/ads/zzaxt;)Z

    move-result v3

    goto :goto_2

    :cond_5
    const/4 v6, 0x4

    if-ne v4, v6, :cond_7

    .line 26
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzauq;->zze:Lcom/google/android/gms/internal/ads/zzfol;

    .line 20
    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzfol;->zzb(Lcom/google/android/gms/internal/ads/zzaxt;Lcom/google/android/gms/internal/ads/zzfok;)Z

    move-result v3

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzd:Lcom/google/android/gms/internal/ads/zzfoe;

    .line 21
    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzfoe;->zza(Lcom/google/android/gms/internal/ads/zzaxt;Lcom/google/android/gms/internal/ads/zzfok;)Z

    move-result v3

    :goto_2
    if-nez v3, :cond_8

    .line 19
    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzh:Lcom/google/android/gms/internal/ads/zzfmr;

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const/16 v5, 0xfa9

    .line 23
    invoke-virtual {v2, v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzfmr;->zzd(IJ)Lcom/google/android/gms/tasks/Task;

    goto :goto_5

    .line 24
    :cond_8
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzauq;->zzu(I)Lcom/google/android/gms/internal/ads/zzfod;

    move-result-object v3

    if-eqz v3, :cond_c

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzf:Lcom/google/android/gms/internal/ads/zzfon;

    .line 25
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzfon;->zzc(Lcom/google/android/gms/internal/ads/zzfod;)Z

    move-result v3

    if-eqz v3, :cond_9

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzq:Z

    .line 26
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzauq;->zza:J

    goto :goto_5

    .line 11
    :cond_a
    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzh:Lcom/google/android/gms/internal/ads/zzfmr;

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const/16 v5, 0x1392

    .line 16
    invoke-virtual {v2, v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzfmr;->zzd(IJ)Lcom/google/android/gms/tasks/Task;

    goto :goto_5

    .line 32
    :catch_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzh:Lcom/google/android/gms/internal/ads/zzfmr;

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const/16 v5, 0x7ee

    .line 8
    invoke-virtual {v2, v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzfmr;->zzd(IJ)Lcom/google/android/gms/tasks/Task;

    goto :goto_5

    .line 27
    :cond_b
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const/16 v2, 0x1391

    .line 28
    invoke-virtual {v3, v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzfmr;->zzd(IJ)Lcom/google/android/gms/tasks/Task;
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzgyk; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v2

    .line 14
    :try_start_3
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzh:Lcom/google/android/gms/internal/ads/zzfmr;

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const/16 v0, 0xfa2

    .line 30
    invoke-virtual {v3, v0, v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzfmr;->zzc(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 28
    :cond_c
    :goto_5
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzk:Ljava/util/concurrent/CountDownLatch;

    .line 31
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 30
    :goto_6
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzk:Ljava/util/concurrent/CountDownLatch;

    .line 31
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 32
    throw v0
.end method

.method static bridge synthetic zzq(Lcom/google/android/gms/internal/ads/zzauq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzp:Z

    return p0
.end method

.method private static declared-synchronized zzs(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfmt;Z)Lcom/google/android/gms/internal/ads/zzauq;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    const-class v14, Lcom/google/android/gms/internal/ads/zzauq;

    monitor-enter v14

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzauq;->zzb:Lcom/google/android/gms/internal/ads/zzauq;

    if-nez v1, :cond_4

    move/from16 v1, p3

    invoke-static {v0, v8, v1}, Lcom/google/android/gms/internal/ads/zzfmr;->zza(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Lcom/google/android/gms/internal/ads/zzfmr;

    move-result-object v3

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zzdD:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzave;->zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzave;

    move-result-object v1

    move-object/from16 v20, v1

    goto :goto_0

    :cond_0
    move-object/from16 v20, v2

    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zzdE:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-static/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzawk;->zzd(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzawk;

    move-result-object v1

    move-object v11, v1

    goto :goto_1

    :cond_1
    move-object v11, v2

    :goto_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zzcS:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/google/android/gms/internal/ads/zzawc;

    .line 10
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzawc;-><init>()V

    move-object v12, v1

    goto :goto_2

    :cond_2
    move-object v12, v2

    :goto_2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zzda:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/google/android/gms/internal/ads/zzavt;

    .line 13
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzavt;-><init>()V

    move-object v13, v1

    move-object/from16 v1, p2

    goto :goto_3

    :cond_3
    move-object/from16 v1, p2

    move-object v13, v2

    .line 14
    :goto_3
    invoke-static {v0, v8, v3, v1}, Lcom/google/android/gms/internal/ads/zzfni;->zzc(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfmr;Lcom/google/android/gms/internal/ads/zzfmt;)Lcom/google/android/gms/internal/ads/zzfni;

    move-result-object v17

    new-instance v2, Lcom/google/android/gms/internal/ads/zzavu;

    .line 15
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzavu;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v4, Lcom/google/android/gms/internal/ads/zzawi;

    invoke-direct {v4, v0, v2}, Lcom/google/android/gms/internal/ads/zzawi;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzavu;)V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzavv;

    move-object v15, v7

    move-object/from16 v16, p2

    move-object/from16 v18, v4

    move-object/from16 v19, v2

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    invoke-direct/range {v15 .. v23}, Lcom/google/android/gms/internal/ads/zzavv;-><init>(Lcom/google/android/gms/internal/ads/zzfmt;Lcom/google/android/gms/internal/ads/zzfni;Lcom/google/android/gms/internal/ads/zzawi;Lcom/google/android/gms/internal/ads/zzavu;Lcom/google/android/gms/internal/ads/zzave;Lcom/google/android/gms/internal/ads/zzawk;Lcom/google/android/gms/internal/ads/zzawc;Lcom/google/android/gms/internal/ads/zzavt;)V

    .line 17
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzfnr;->zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfmr;)I

    move-result v10

    .line 18
    new-instance v9, Lcom/google/android/gms/internal/ads/zzfmm;

    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/zzfmm;-><init>()V

    new-instance v15, Lcom/google/android/gms/internal/ads/zzauq;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzfoe;

    .line 19
    invoke-direct {v4, v0, v10}, Lcom/google/android/gms/internal/ads/zzfoe;-><init>(Landroid/content/Context;I)V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzfol;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaun;

    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/ads/zzaun;-><init>(Lcom/google/android/gms/internal/ads/zzfmr;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbci;->zzcC:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v2

    .line 21
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {v5, v0, v10, v1, v2}, Lcom/google/android/gms/internal/ads/zzfol;-><init>(Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzfns;Z)V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzfon;

    invoke-direct {v6, v0, v7, v3, v9}, Lcom/google/android/gms/internal/ads/zzfon;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfoo;Lcom/google/android/gms/internal/ads/zzfmr;Lcom/google/android/gms/internal/ads/zzfmm;)V

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v13}, Lcom/google/android/gms/internal/ads/zzauq;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfmr;Lcom/google/android/gms/internal/ads/zzfoe;Lcom/google/android/gms/internal/ads/zzfol;Lcom/google/android/gms/internal/ads/zzfon;Lcom/google/android/gms/internal/ads/zzavv;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzfmm;ILcom/google/android/gms/internal/ads/zzawk;Lcom/google/android/gms/internal/ads/zzawc;Lcom/google/android/gms/internal/ads/zzavt;)V

    sput-object v15, Lcom/google/android/gms/internal/ads/zzauq;->zzb:Lcom/google/android/gms/internal/ads/zzauq;

    .line 22
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzauq;->zzm()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzauq;->zzb:Lcom/google/android/gms/internal/ads/zzauq;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzauq;->zzp()V

    :cond_4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzauq;->zzb:Lcom/google/android/gms/internal/ads/zzauq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v14

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final zzt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzl:Lcom/google/android/gms/internal/ads/zzawk;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawk;->zzh()V

    :cond_0
    return-void
.end method

.method private final zzu(I)Lcom/google/android/gms/internal/ads/zzfod;
    .locals 1

    .line 1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzr:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfnr;->zza(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbci;->zzcA:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzauq;->zze:Lcom/google/android/gms/internal/ads/zzfol;

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfol;->zzc(I)Lcom/google/android/gms/internal/ads/zzfod;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzd:Lcom/google/android/gms/internal/ads/zzfoe;

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfoe;->zzc(I)Lcom/google/android/gms/internal/ads/zzfod;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zzd(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzauq;->zze(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzauq;->zzt()V

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zzcS:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzauq;->zzm:Lcom/google/android/gms/internal/ads/zzawc;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawc;->zzi()V

    .line 5
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzauq;->zzp()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzauq;->zzf:Lcom/google/android/gms/internal/ads/zzfon;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfon;->zza()Lcom/google/android/gms/internal/ads/zzfmu;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v4, 0x0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    .line 8
    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzfmu;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzauq;->zzh:Lcom/google/android/gms/internal/ads/zzfmr;

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v12, v2, v8

    const/4 v15, 0x0

    const/16 v11, 0x1388

    move-object v14, v1

    .line 10
    invoke-virtual/range {v10 .. v15}, Lcom/google/android/gms/internal/ads/zzfmr;->zzf(IJLjava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;

    return-object v1

    :cond_1
    const-string v1, ""

    return-object v1
.end method

.method public final zzf(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzauq;->zzt()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzcS:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzm:Lcom/google/android/gms/internal/ads/zzawc;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawc;->zzj()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzauq;->zzp()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzf:Lcom/google/android/gms/internal/ads/zzfon;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfon;->zza()Lcom/google/android/gms/internal/ads/zzfmu;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 8
    invoke-interface {v0, p1, v3}, Lcom/google/android/gms/internal/ads/zzfmu;->zzc(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzh:Lcom/google/android/gms/internal/ads/zzfmr;

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v6, v5, v1

    const/4 v9, 0x0

    const/16 v5, 0x1389

    move-object v8, p1

    .line 10
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzfmr;->zzf(IJLjava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public final zzg(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p1, "19"

    return-object p1
.end method

.method public final zzh(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzauq;->zzt()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzcS:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzm:Lcom/google/android/gms/internal/ads/zzawc;

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzawc;->zzk(Landroid/content/Context;Landroid/view/View;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzauq;->zzp()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzf:Lcom/google/android/gms/internal/ads/zzfon;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfon;->zza()Lcom/google/android/gms/internal/ads/zzfmu;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 8
    invoke-interface {v0, p1, v3, p2, p3}, Lcom/google/android/gms/internal/ads/zzfmu;->zzb(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzh:Lcom/google/android/gms/internal/ads/zzfmr;

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long v6, p2, v1

    const/4 v9, 0x0

    const/16 v5, 0x138a

    move-object v8, p1

    .line 10
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzfmr;->zzf(IJLjava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public final zzk(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzf:Lcom/google/android/gms/internal/ads/zzfon;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfon;->zza()Lcom/google/android/gms/internal/ads/zzfmu;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfmu;->zzd(Ljava/lang/String;Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfom; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzh:Lcom/google/android/gms/internal/ads/zzfmr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfom;->zza()I

    move-result v1

    const-wide/16 v2, -0x1

    .line 3
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzfmr;->zzc(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    :cond_0
    return-void
.end method

.method public final zzl(III)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zzmb:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 1
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzauq;->zzc:Landroid/content/Context;

    .line 3
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    int-to-float v2, v2

    .line 4
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v9, v2, v3

    move/from16 v3, p2

    int-to-float v3, v3

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v10, v3, v4

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 5
    invoke-static/range {v4 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v4

    .line 6
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzauq;->zzk(Landroid/view/MotionEvent;)V

    .line 7
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 8
    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v10, v2, v4

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v11, v3, v4

    const/16 v18, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    .line 9
    invoke-static/range {v5 .. v18}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v4

    .line 10
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzauq;->zzk(Landroid/view/MotionEvent;)V

    .line 11
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    move/from16 v4, p3

    int-to-long v6, v4

    .line 12
    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v9, v2, v4

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v10, v3, v1

    const/16 v16, 0x0

    const-wide/16 v4, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 13
    invoke-static/range {v4 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzauq;->zzk(Landroid/view/MotionEvent;)V

    .line 15
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    :cond_1
    :goto_0
    return-void
.end method

.method final declared-synchronized zzm()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 2
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzauq;->zzu(I)Lcom/google/android/gms/internal/ads/zzfod;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzf:Lcom/google/android/gms/internal/ads/zzfon;

    .line 3
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfon;->zzc(Lcom/google/android/gms/internal/ads/zzfod;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzq:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzk:Ljava/util/concurrent/CountDownLatch;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzh:Lcom/google/android/gms/internal/ads/zzfmr;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const/16 v0, 0xfad

    .line 6
    invoke-virtual {v2, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzfmr;->zzd(IJ)Lcom/google/android/gms/tasks/Task;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final zzn([Ljava/lang/StackTraceElement;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzn:Lcom/google/android/gms/internal/ads/zzavt;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzavt;->zzb(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final zzo(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzg:Lcom/google/android/gms/internal/ads/zzavv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzavv;->zzd(Landroid/view/View;)V

    return-void
.end method

.method public final zzp()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzp:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzp:Z

    if-nez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzauq;->zza:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xe10

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 2
    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzf:Lcom/google/android/gms/internal/ads/zzfon;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfon;->zzb()Lcom/google/android/gms/internal/ads/zzfod;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzfod;->zzd(J)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzr:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfnr;->zza(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzi:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaup;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzaup;-><init>(Lcom/google/android/gms/internal/ads/zzauq;)V

    .line 5
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 6
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    return-void
.end method

.method public final declared-synchronized zzr()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzauq;->zzq:Z
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
