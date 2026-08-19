.class public final Lcom/google/android/gms/internal/ads/zzccy;
.super Lcom/google/android/gms/internal/ads/zzccs;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhe;


# static fields
.field private static final zzd:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private zze:Ljava/lang/String;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzcbf;

.field private zzg:Z

.field private final zzh:Lcom/google/android/gms/internal/ads/zzccx;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzccc;

.field private zzj:Ljava/nio/ByteBuffer;

.field private zzk:Z

.field private final zzl:Ljava/lang/Object;

.field private final zzm:Ljava/lang/String;

.field private final zzn:I

.field private zzo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzccy;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcbg;Lcom/google/android/gms/internal/ads/zzcbf;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzccs;-><init>(Lcom/google/android/gms/internal/ads/zzcbg;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzccy;->zzf:Lcom/google/android/gms/internal/ads/zzcbf;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzccx;

    .line 2
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzccx;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzccy;->zzh:Lcom/google/android/gms/internal/ads/zzccx;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzccc;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzccc;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzccy;->zzi:Lcom/google/android/gms/internal/ads/zzccc;

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzccy;->zzl:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcbg;->zzr()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzftu;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzftu;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzftu;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 4
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzccy;->zzm:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcbg;->zzf()I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzccy;->zzn:I

    sget-object p1, Lcom/google/android/gms/internal/ads/zzccy;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public static zzi()I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzccy;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method protected static final zzv(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "cache:"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final zzx()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccy;->zzh:Lcom/google/android/gms/internal/ads/zzccx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccx;->zza()J

    move-result-wide v0

    long-to-int v6, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccy;->zzi:Lcom/google/android/gms/internal/ads/zzccc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccy;->zzj:Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzccc;->zza(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccy;->zzj:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    int-to-float v1, v5

    int-to-float v2, v6

    int-to-float v3, v0

    div-float/2addr v1, v2

    mul-float/2addr v3, v1

    .line 4
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcax;->zzs()I

    move-result v12

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcax;->zzu()I

    move-result v13

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzccy;->zze:Ljava/lang/String;

    .line 7
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzccy;->zzv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    int-to-long v7, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v11, v1

    int-to-long v9, v0

    move-object v2, p0

    .line 8
    invoke-virtual/range {v2 .. v13}, Lcom/google/android/gms/internal/ads/zzccs;->zzn(Ljava/lang/String;Ljava/lang/String;IIJJZII)V

    return-void
.end method


# virtual methods
.method public final release()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzccy;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzge;Lcom/google/android/gms/internal/ads/zzgj;ZI)V
    .locals 0

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzge;Lcom/google/android/gms/internal/ads/zzgj;Z)V
    .locals 0

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzge;Lcom/google/android/gms/internal/ads/zzgj;Z)V
    .locals 0

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzge;Lcom/google/android/gms/internal/ads/zzgj;Z)V
    .locals 0

    .line 1
    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zzgr;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzccy;->zzh:Lcom/google/android/gms/internal/ads/zzccx;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgr;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzccx;->zzb(Lcom/google/android/gms/internal/ads/zzgr;)V

    :cond_0
    return-void
.end method

.method public final zzf()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzccy;->zzg:Z

    return-void
.end method

.method public final zzk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccy;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzl()Ljava/nio/ByteBuffer;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccy;->zzl:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccy;->zzj:Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzccy;->zzk:Z

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzccy;->zzk:Z

    :cond_0
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzccy;->zzg:Z

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccy;->zzj:Ljava/nio/ByteBuffer;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final zzm()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzccy;->zzo:Z

    return v0
.end method

.method public final zzt(Ljava/lang/String;)Z
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzccy;->zze:Ljava/lang/String;

    const-string v3, "error"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzccy;->zzv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgm;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgm;-><init>()V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzccy;->zzb:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzgm;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgm;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzccy;->zzf:Lcom/google/android/gms/internal/ads/zzcbf;

    iget v7, v6, Lcom/google/android/gms/internal/ads/zzcbf;->zzd:I

    .line 4
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzgm;->zzc(I)Lcom/google/android/gms/internal/ads/zzgm;

    iget v7, v6, Lcom/google/android/gms/internal/ads/zzcbf;->zze:I

    .line 5
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzgm;->zzd(I)Lcom/google/android/gms/internal/ads/zzgm;

    const/4 v7, 0x1

    .line 6
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzgm;->zzb(Z)Lcom/google/android/gms/internal/ads/zzgm;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgm;->zze(Lcom/google/android/gms/internal/ads/zzhe;)Lcom/google/android/gms/internal/ads/zzgm;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgm;->zzg()Lcom/google/android/gms/internal/ads/zzgr;

    move-result-object v10

    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzcbf;->zzi:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcca;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzccy;->zza:Landroid/content/Context;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzccy;->zzm:Ljava/lang/String;

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzccy;->zzn:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v8, v0

    .line 9
    invoke-direct/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzcca;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzge;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzhe;Lcom/google/android/gms/internal/ads/zzcbz;)V

    move-object v10, v0

    .line 10
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgj;

    const-wide/16 v15, -0x1

    const/16 v17, 0x0

    const-wide/16 v13, 0x0

    move-object v11, v0

    .line 12
    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzgj;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 11
    invoke-interface {v10, v0}, Lcom/google/android/gms/internal/ads/zzge;->zzb(Lcom/google/android/gms/internal/ads/zzgj;)J

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzccy;->zzc:Ljava/lang/ref/WeakReference;

    .line 13
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcbg;

    if-eqz v0, :cond_1

    .line 14
    invoke-interface {v0, v4, v1}, Lcom/google/android/gms/internal/ads/zzcbg;->zzt(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzccs;)V

    .line 15
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 16
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v8

    .line 17
    sget-object v11, Lcom/google/android/gms/internal/ads/zzbci;->zzO:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v11

    .line 17
    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sget-object v13, Lcom/google/android/gms/internal/ads/zzbci;->zzN:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v13

    .line 20
    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzcbf;->zzc:I

    .line 21
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzccy;->zzj:Ljava/nio/ByteBuffer;

    const/16 v6, 0x2000

    new-array v15, v6, [B

    move-wide/from16 v16, v8

    :goto_0
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzccy;->zzj:Ljava/nio/ByteBuffer;

    .line 22
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 23
    invoke-interface {v10, v15, v5, v7}, Lcom/google/android/gms/internal/ads/zzge;->zza([BII)I

    move-result v7

    const/4 v6, -0x1

    if-ne v7, v6, :cond_2

    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzccy;->zzo:Z

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzccy;->zzi:Lcom/google/android/gms/internal/ads/zzccc;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzccy;->zzj:Ljava/nio/ByteBuffer;

    .line 29
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzccc;->zza(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    long-to-int v0, v6

    int-to-long v6, v0

    .line 30
    invoke-virtual {v1, v2, v4, v6, v7}, Lcom/google/android/gms/internal/ads/zzccs;->zzj(Ljava/lang/String;Ljava/lang/String;J)V

    :goto_1
    const/4 v3, 0x1

    goto :goto_3

    :cond_2
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzccy;->zzl:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzccy;->zzg:Z

    if-nez v5, :cond_3

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzccy;->zzj:Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v18, v3

    const/4 v3, 0x0

    .line 24
    :try_start_2
    invoke-virtual {v5, v15, v3, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_3
    move-object/from16 v18, v3

    .line 25
    :goto_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzccy;->zzj:Ljava/nio/ByteBuffer;

    .line 26
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-gtz v3, :cond_4

    .line 31
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzccy;->zzx()V

    goto :goto_1

    :goto_3
    return v3

    :cond_4
    const/4 v3, 0x1

    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzccy;->zzg:Z

    if-nez v5, :cond_7

    .line 27
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    sub-long v19, v5, v16

    cmp-long v7, v19, v11

    if-ltz v7, :cond_5

    .line 28
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzccy;->zzx()V

    move-wide/from16 v16, v5

    :cond_5
    sub-long/2addr v5, v8

    const-wide/16 v19, 0x3e8

    mul-long v19, v19, v13

    cmp-long v5, v5, v19

    if-gtz v5, :cond_6

    move-object/from16 v3, v18

    const/4 v5, 0x0

    const/16 v6, 0x2000

    goto :goto_0

    :cond_6
    const-string v3, "downloadTimeout"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout exceeded. Limit: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " sec"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/io/IOException;

    .line 34
    invoke-direct {v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    goto :goto_6

    .line 31
    :cond_7
    :try_start_5
    const-string v3, "externalAbort"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    new-instance v0, Ljava/io/IOException;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzccy;->zzj:Ljava/nio/ByteBuffer;

    .line 32
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Precache abort at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_1
    move-exception v0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v18, v3

    .line 25
    :goto_4
    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :catch_2
    move-exception v0

    move-object/from16 v18, v3

    :goto_5
    move-object/from16 v3, v18

    .line 34
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 35
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to preload url "

    .line 36
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 37
    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1, v2, v4, v3, v0}, Lcom/google/android/gms/internal/ads/zzccs;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2
.end method
