.class public final Lcom/google/android/gms/internal/ads/zzrf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzqf;


# static fields
.field private static final zza:Ljava/lang/Object;

.field private static zzb:Ljava/util/concurrent/ScheduledExecutorService;

.field private static zzc:I


# instance fields
.field private zzA:Z

.field private zzB:J

.field private zzC:J

.field private zzD:J

.field private zzE:J

.field private zzF:I

.field private zzG:Z

.field private zzH:Z

.field private zzI:J

.field private zzJ:F

.field private zzK:Ljava/nio/ByteBuffer;

.field private zzL:I

.field private zzM:Ljava/nio/ByteBuffer;

.field private zzN:Z

.field private zzO:Z

.field private zzP:Z

.field private zzQ:Z

.field private zzR:I

.field private zzS:Lcom/google/android/gms/internal/ads/zzf;

.field private zzT:Lcom/google/android/gms/internal/ads/zzph;

.field private zzU:J

.field private zzV:Z

.field private zzW:Z

.field private zzX:Landroid/os/Looper;

.field private zzY:J

.field private zzZ:J

.field private zzaa:Landroid/os/Handler;

.field private final zzab:Lcom/google/android/gms/internal/ads/zzqv;

.field private final zzac:Lcom/google/android/gms/internal/ads/zzql;

.field private final zzd:Landroid/content/Context;

.field private final zze:Lcom/google/android/gms/internal/ads/zzqk;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzrp;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfww;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzfww;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzqj;

.field private final zzj:Ljava/util/ArrayDeque;

.field private zzk:Lcom/google/android/gms/internal/ads/zzrd;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzqz;

.field private final zzm:Lcom/google/android/gms/internal/ads/zzqz;

.field private zzn:Lcom/google/android/gms/internal/ads/zzoz;

.field private zzo:Lcom/google/android/gms/internal/ads/zzqc;

.field private zzp:Lcom/google/android/gms/internal/ads/zzqu;

.field private zzq:Lcom/google/android/gms/internal/ads/zzqu;

.field private zzr:Lcom/google/android/gms/internal/ads/zzck;

.field private zzs:Landroid/media/AudioTrack;

.field private zzt:Lcom/google/android/gms/internal/ads/zzpb;

.field private zzu:Lcom/google/android/gms/internal/ads/zzpg;

.field private zzv:Lcom/google/android/gms/internal/ads/zzqy;

.field private zzw:Lcom/google/android/gms/internal/ads/zze;

.field private zzx:Lcom/google/android/gms/internal/ads/zzqw;

.field private zzy:Lcom/google/android/gms/internal/ads/zzqw;

.field private zzz:Lcom/google/android/gms/internal/ads/zzbb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzrf;->zza:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzqt;Lcom/google/android/gms/internal/ads/zzre;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzqt;->zza(Lcom/google/android/gms/internal/ads/zzqt;)Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzd:Landroid/content/Context;

    sget-object v0, Lcom/google/android/gms/internal/ads/zze;->zza:Lcom/google/android/gms/internal/ads/zze;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzw:Lcom/google/android/gms/internal/ads/zze;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object p2, v0

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzqt;->zzb(Lcom/google/android/gms/internal/ads/zzqt;)Lcom/google/android/gms/internal/ads/zzpb;

    move-result-object p2

    .line 1
    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzt:Lcom/google/android/gms/internal/ads/zzpb;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzqt;->zzd(Lcom/google/android/gms/internal/ads/zzqt;)Lcom/google/android/gms/internal/ads/zzqv;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzab:Lcom/google/android/gms/internal/ads/zzqv;

    .line 2
    sget p2, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzqt;->zze(Lcom/google/android/gms/internal/ads/zzqt;)Lcom/google/android/gms/internal/ads/zzql;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/ads/zzql;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzac:Lcom/google/android/gms/internal/ads/zzql;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzqj;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzra;

    invoke-direct {p2, p0, v0}, Lcom/google/android/gms/internal/ads/zzra;-><init>(Lcom/google/android/gms/internal/ads/zzrf;Lcom/google/android/gms/internal/ads/zzre;)V

    .line 4
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzqj;-><init>(Lcom/google/android/gms/internal/ads/zzqi;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzi:Lcom/google/android/gms/internal/ads/zzqj;

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzqk;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzqk;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zze:Lcom/google/android/gms/internal/ads/zzqk;

    .line 6
    new-instance p2, Lcom/google/android/gms/internal/ads/zzrp;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzrp;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzf:Lcom/google/android/gms/internal/ads/zzrp;

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcr;-><init>()V

    .line 8
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfww;->zzq(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzg:Lcom/google/android/gms/internal/ads/zzfww;

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzro;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzro;-><init>()V

    .line 10
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfww;->zzq(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzh:Lcom/google/android/gms/internal/ads/zzfww;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzJ:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzR:I

    new-instance p2, Lcom/google/android/gms/internal/ads/zzf;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzf;-><init>(IF)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzS:Lcom/google/android/gms/internal/ads/zzf;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzqw;

    .line 11
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbb;->zza:Lcom/google/android/gms/internal/ads/zzbb;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    move-object v1, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzqw;-><init>(Lcom/google/android/gms/internal/ads/zzbb;JJLcom/google/android/gms/internal/ads/zzre;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzy:Lcom/google/android/gms/internal/ads/zzqw;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbb;->zza:Lcom/google/android/gms/internal/ads/zzbb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzz:Lcom/google/android/gms/internal/ads/zzbb;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzA:Z

    new-instance p1, Ljava/util/ArrayDeque;

    .line 12
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzj:Ljava/util/ArrayDeque;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzqz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzqz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzl:Lcom/google/android/gms/internal/ads/zzqz;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzqz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzqz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzm:Lcom/google/android/gms/internal/ads/zzqz;

    return-void
.end method

.method static bridge synthetic zzB(Lcom/google/android/gms/internal/ads/zzrf;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzU:J

    return-wide v0
.end method

.method static bridge synthetic zzC(Lcom/google/android/gms/internal/ads/zzrf;)J
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzL()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic zzD(Lcom/google/android/gms/internal/ads/zzrf;)J
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzM()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic zzE(Lcom/google/android/gms/internal/ads/zzrf;)Landroid/media/AudioTrack;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzs:Landroid/media/AudioTrack;

    return-object p0
.end method

.method static bridge synthetic zzF(Lcom/google/android/gms/internal/ads/zzrf;)Lcom/google/android/gms/internal/ads/zzqc;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzo:Lcom/google/android/gms/internal/ads/zzqc;

    return-object p0
.end method

.method public static synthetic zzG(Lcom/google/android/gms/internal/ads/zzrf;)V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzZ:J

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzo:Lcom/google/android/gms/internal/ads/zzqc;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzrj;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzrj;->zza:Lcom/google/android/gms/internal/ads/zzrl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzrl;->zzah(Lcom/google/android/gms/internal/ads/zzrl;Z)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzZ:J

    :cond_0
    return-void
.end method

.method static bridge synthetic zzH(Lcom/google/android/gms/internal/ads/zzrf;Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzP:Z

    return-void
.end method

.method static synthetic zzI(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzqc;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzpz;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->flush()V

    .line 2
    invoke-virtual {p0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/ads/zzqo;

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzqo;-><init>(Lcom/google/android/gms/internal/ads/zzqc;Lcom/google/android/gms/internal/ads/zzpz;)V

    .line 4
    invoke-virtual {p2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzrf;->zza:Ljava/lang/Object;

    monitor-enter p0

    :try_start_1
    sget p1, Lcom/google/android/gms/internal/ads/zzrf;->zzc:I

    add-int/lit8 p1, p1, -0x1

    sput p1, Lcom/google/android/gms/internal/ads/zzrf;->zzc:I

    if-nez p1, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/ads/zzrf;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    invoke-interface {p1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzrf;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p0

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/google/android/gms/internal/ads/zzqo;

    invoke-direct {v1, p1, p3}, Lcom/google/android/gms/internal/ads/zzqo;-><init>(Lcom/google/android/gms/internal/ads/zzqc;Lcom/google/android/gms/internal/ads/zzpz;)V

    .line 4
    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzrf;->zza:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    sget p2, Lcom/google/android/gms/internal/ads/zzrf;->zzc:I

    add-int/lit8 p2, p2, -0x1

    sput p2, Lcom/google/android/gms/internal/ads/zzrf;->zzc:I

    if-nez p2, :cond_3

    sget-object p2, Lcom/google/android/gms/internal/ads/zzrf;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    invoke-interface {p2}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzrf;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    :cond_3
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 7
    throw p0

    :catchall_2
    move-exception p0

    .line 6
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method static bridge synthetic zzK()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzrf;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/google/android/gms/internal/ads/zzrf;->zzc:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final zzL()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzq:Lcom/google/android/gms/internal/ads/zzqu;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzqu;->zzc:I

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzB:J

    .line 2
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzqu;->zzb:I

    int-to-long v3, v0

    div-long/2addr v1, v3

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzC:J

    :goto_0
    return-wide v1
.end method

.method private final zzM()J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzq:Lcom/google/android/gms/internal/ads/zzqu;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzqu;->zzc:I

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzD:J

    .line 2
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzqu;->zzd:I

    int-to-long v3, v0

    sget v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    add-long/2addr v1, v3

    const-wide/16 v5, -0x1

    add-long/2addr v1, v5

    .line 3
    div-long/2addr v1, v3

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzE:J

    :goto_0
    return-wide v1
.end method

.method private final zzN(Lcom/google/android/gms/internal/ads/zzqu;)Landroid/media/AudioTrack;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzqb;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqu;->zza()Lcom/google/android/gms/internal/ads/zzpz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzw:Lcom/google/android/gms/internal/ads/zze;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzR:I

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzqu;->zza:Lcom/google/android/gms/internal/ads/zzz;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzrf;->zzac(Lcom/google/android/gms/internal/ads/zzpz;Lcom/google/android/gms/internal/ads/zze;ILcom/google/android/gms/internal/ads/zzz;)Landroid/media/AudioTrack;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzqb; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzo:Lcom/google/android/gms/internal/ads/zzqc;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzqc;->zza(Ljava/lang/Exception;)V

    .line 3
    :goto_0
    throw p1
.end method

.method private final zzO(J)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzab()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzab:Lcom/google/android/gms/internal/ads/zzqv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzz:Lcom/google/android/gms/internal/ads/zzbb;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzqv;->zzc(Lcom/google/android/gms/internal/ads/zzbb;)Lcom/google/android/gms/internal/ads/zzbb;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbb;->zza:Lcom/google/android/gms/internal/ads/zzbb;

    :goto_0
    move-object v3, v1

    .line 2
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzz:Lcom/google/android/gms/internal/ads/zzbb;

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzab()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzab:Lcom/google/android/gms/internal/ads/zzqv;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzA:Z

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzqv;->zzd(Z)Z

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzA:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzj:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzqw;

    const-wide/16 v4, 0x0

    .line 6
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzq:Lcom/google/android/gms/internal/ads/zzqu;

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzM()J

    move-result-wide v6

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzqu;->zze:I

    .line 8
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/ads/zzeu;->zzt(JI)J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzqw;-><init>(Lcom/google/android/gms/internal/ads/zzbb;JJLcom/google/android/gms/internal/ads/zzre;)V

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzX()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzo:Lcom/google/android/gms/internal/ads/zzqc;

    if-eqz p1, :cond_2

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzA:Z

    check-cast p1, Lcom/google/android/gms/internal/ads/zzrj;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzrj;->zza:Lcom/google/android/gms/internal/ads/zzrl;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzrl;->zzae(Lcom/google/android/gms/internal/ads/zzrl;)Lcom/google/android/gms/internal/ads/zzpx;

    move-result-object p1

    .line 11
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzpx;->zzw(Z)V

    :cond_2
    return-void
.end method

.method private final zzP(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzqe;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzM:Ljava/nio/ByteBuffer;

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzm:Lcom/google/android/gms/internal/ads/zzqz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqz;->zzc()Z

    move-result p2

    if-nez p2, :cond_e

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzM:Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzs:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzM:Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v1, p2, v2}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzU:J

    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    if-gez v0, :cond_8

    .line 5
    sget p2, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v5, 0x18

    if-lt p2, v5, :cond_1

    const/4 p2, -0x6

    if-eq v0, p2, :cond_2

    :cond_1
    const/16 p2, -0x20

    if-ne v0, p2, :cond_4

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzM()J

    move-result-wide v5

    cmp-long p2, v5, v3

    if-lez p2, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzs:Landroid/media/AudioTrack;

    .line 7
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzrf;->zzaa(Landroid/media/AudioTrack;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzQ()V

    goto :goto_0

    :cond_4
    move v2, v1

    .line 6
    :goto_0
    new-instance p2, Lcom/google/android/gms/internal/ads/zzqe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzq:Lcom/google/android/gms/internal/ads/zzqu;

    .line 9
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzqu;->zza:Lcom/google/android/gms/internal/ads/zzz;

    invoke-direct {p2, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzqe;-><init>(ILcom/google/android/gms/internal/ads/zzz;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzo:Lcom/google/android/gms/internal/ads/zzqc;

    if-eqz v0, :cond_5

    .line 10
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzqc;->zza(Ljava/lang/Exception;)V

    :cond_5
    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzqe;->zzb:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzd:Landroid/content/Context;

    if-nez v0, :cond_6

    goto :goto_1

    .line 12
    :cond_6
    sget-object p1, Lcom/google/android/gms/internal/ads/zzpb;->zza:Lcom/google/android/gms/internal/ads/zzpb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzt:Lcom/google/android/gms/internal/ads/zzpb;

    .line 13
    throw p2

    .line 11
    :cond_7
    :goto_1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzqz;->zzb(Ljava/lang/Exception;)V

    return-void

    .line 14
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqz;->zza()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzs:Landroid/media/AudioTrack;

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzrf;->zzaa(Landroid/media/AudioTrack;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzE:J

    cmp-long p1, v5, v3

    if-lez p1, :cond_9

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzW:Z

    :cond_9
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzQ:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzo:Lcom/google/android/gms/internal/ads/zzqc;

    if-eqz p1, :cond_a

    if-ge v0, p2, :cond_a

    check-cast p1, Lcom/google/android/gms/internal/ads/zzrj;

    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzq:Lcom/google/android/gms/internal/ads/zzqu;

    .line 16
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzqu;->zzc:I

    if-nez p1, :cond_b

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzD:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzD:J

    :cond_b
    if-ne v0, p2, :cond_e

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzM:Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzK:Ljava/nio/ByteBuffer;

    if-ne p1, p2, :cond_c

    goto :goto_2

    :cond_c
    move v2, v1

    .line 17
    :goto_2
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzE:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzF:I

    int-to-long v0, v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzL:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzE:J

    :cond_d
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzM:Ljava/nio/ByteBuffer;

    :cond_e
    :goto_3
    return-void
.end method

.method private final zzQ()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzq:Lcom/google/android/gms/internal/ads/zzqu;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzqu;->zzc:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzV:Z

    :cond_0
    return-void
.end method

.method private final zzR()V
    .locals 5
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "audioCapabilities"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzu:Lcom/google/android/gms/internal/ads/zzpg;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzd:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzX:Landroid/os/Looper;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzpg;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzqp;

    .line 2
    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzqp;-><init>(Lcom/google/android/gms/internal/ads/zzrf;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzw:Lcom/google/android/gms/internal/ads/zze;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzT:Lcom/google/android/gms/internal/ads/zzph;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzpg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzqp;Lcom/google/android/gms/internal/ads/zze;Lcom/google/android/gms/internal/ads/zzph;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzu:Lcom/google/android/gms/internal/ads/zzpg;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpg;->zzc()Lcom/google/android/gms/internal/ads/zzpb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzt:Lcom/google/android/gms/internal/ads/zzpb;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzt:Lcom/google/android/gms/internal/ads/zzpb;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method private final zzS()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzO:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzO:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzi:Lcom/google/android/gms/internal/ads/zzqj;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzM()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzqj;->zzb(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzs:Landroid/media/AudioTrack;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzrf;->zzaa(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzP:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzs:Landroid/media/AudioTrack;

    .line 3
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    :cond_1
    return-void
.end method

.method private final zzT(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzqe;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzrf;->zzP(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzM:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzr:Lcom/google/android/gms/internal/ads/zzck;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzck;->zzh()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzr:Lcom/google/android/gms/internal/ads/zzck;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzck;->zzg()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzr:Lcom/google/android/gms/internal/ads/zzck;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzck;->zzb()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzrf;->zzV(Ljava/nio/ByteBuffer;)V

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzrf;->zzP(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzM:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzK:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzr:Lcom/google/android/gms/internal/ads/zzck;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzK:Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzck;->zze(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzK:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 9
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzrf;->zzV(Ljava/nio/ByteBuffer;)V

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzrf;->zzP(J)V

    :cond_4
    :goto_1
    return-void
.end method

.method private final zzU(Lcom/google/android/gms/internal/ads/zzbb;)V
    .locals 8

    new-instance v7, Lcom/google/android/gms/internal/ads/zzqw;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-wide v2, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzqw;-><init>(Lcom/google/android/gms/internal/ads/zzbb;JJLcom/google/android/gms/internal/ads/zzre;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzZ()Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzx:Lcom/google/android/gms/internal/ads/zzqw;

    return-void

    :cond_0
    iput-object v7, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzy:Lcom/google/android/gms/internal/ads/zzqw;

    return-void
.end method

.method private final zzV(Ljava/nio/ByteBuffer;)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzrf;->zzM:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    .line 2
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzrf;->zzq:Lcom/google/android/gms/internal/ads/zzqu;

    .line 3
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzqu;->zzc:I

    if-nez v1, :cond_15

    const-wide/16 v1, 0x14

    .line 4
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzeu;->zzs(J)J

    move-result-wide v1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzrf;->zzq:Lcom/google/android/gms/internal/ads/zzqu;

    .line 5
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzqu;->zze:I

    .line 6
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzeu;->zzp(JI)J

    move-result-wide v1

    long-to-int v1, v1

    .line 7
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzM()J

    move-result-wide v2

    int-to-long v4, v1

    cmp-long v6, v2, v4

    if-gez v6, :cond_15

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzrf;->zzq:Lcom/google/android/gms/internal/ads/zzqu;

    .line 8
    iget v7, v6, Lcom/google/android/gms/internal/ads/zzqu;->zzg:I

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzqu;->zzd:I

    .line 9
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 10
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    long-to-int v2, v2

    .line 11
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_14

    if-ge v2, v1, :cond_14

    const/high16 v12, 0x50000000

    const/high16 v13, 0x10000000

    const/16 v14, 0x16

    const/16 v15, 0x15

    const/4 v10, 0x4

    const/4 v3, 0x3

    const/4 v11, 0x2

    if-eq v7, v11, :cond_a

    if-eq v7, v3, :cond_9

    if-eq v7, v10, :cond_7

    if-eq v7, v15, :cond_6

    if-eq v7, v14, :cond_5

    if-eq v7, v13, :cond_4

    if-eq v7, v12, :cond_3

    const/high16 v12, 0x60000000

    if-ne v7, v12, :cond_2

    .line 12
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    .line 13
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    .line 14
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    .line 15
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v15

    and-int/lit16 v15, v15, 0xff

    goto :goto_2

    .line 57
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 58
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 16
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    .line 17
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    .line 18
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    goto :goto_3

    .line 19
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    goto/16 :goto_5

    .line 20
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    .line 21
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    .line 22
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x10

    .line 23
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x18

    :goto_2
    or-int/2addr v12, v13

    or-int/2addr v12, v14

    or-int/2addr v12, v15

    goto :goto_6

    .line 24
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    .line 25
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    .line 26
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x18

    :goto_3
    or-int/2addr v12, v13

    or-int/2addr v12, v14

    goto :goto_6

    .line 27
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v12

    const/high16 v13, 0x3f800000    # 1.0f

    .line 28
    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    const/high16 v13, -0x40800000    # -1.0f

    invoke-static {v13, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    const/4 v13, 0x0

    cmpg-float v13, v12, v13

    if-gez v13, :cond_8

    neg-float v12, v12

    const/high16 v13, -0x31000000

    goto :goto_4

    :cond_8
    const/high16 v13, 0x4f000000

    :goto_4
    mul-float/2addr v12, v13

    float-to-int v12, v12

    goto :goto_6

    .line 29
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    goto :goto_6

    .line 30
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x18

    :goto_5
    or-int/2addr v12, v13

    :goto_6
    int-to-long v12, v12

    int-to-long v14, v2

    mul-long/2addr v12, v14

    .line 31
    div-long/2addr v12, v4

    long-to-int v12, v12

    if-eq v7, v11, :cond_13

    if-eq v7, v3, :cond_12

    if-eq v7, v10, :cond_10

    const/16 v3, 0x15

    if-eq v7, v3, :cond_f

    const/16 v3, 0x16

    if-eq v7, v3, :cond_e

    const/high16 v3, 0x10000000

    if-eq v7, v3, :cond_d

    const/high16 v3, 0x50000000

    if-eq v7, v3, :cond_c

    const/high16 v3, 0x60000000

    if-ne v7, v3, :cond_b

    shr-int/lit8 v3, v12, 0x8

    shr-int/lit8 v10, v12, 0x10

    shr-int/lit8 v11, v12, 0x18

    int-to-byte v12, v12

    int-to-byte v11, v11

    .line 32
    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v10, v10

    .line 33
    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v3

    .line 34
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 35
    invoke-virtual {v8, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_7

    .line 56
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 57
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_c
    shr-int/lit8 v3, v12, 0x8

    shr-int/lit8 v10, v12, 0x10

    shr-int/lit8 v11, v12, 0x18

    int-to-byte v11, v11

    .line 36
    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v10, v10

    .line 37
    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v3

    .line 38
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_d
    shr-int/lit8 v3, v12, 0x10

    shr-int/lit8 v10, v12, 0x18

    int-to-byte v10, v10

    .line 39
    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v3

    .line 40
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_e
    shr-int/lit8 v3, v12, 0x8

    shr-int/lit8 v10, v12, 0x10

    shr-int/lit8 v11, v12, 0x18

    int-to-byte v12, v12

    .line 41
    invoke-virtual {v8, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v3

    .line 42
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v10

    .line 43
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v11

    .line 44
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_f
    shr-int/lit8 v3, v12, 0x8

    shr-int/lit8 v10, v12, 0x10

    shr-int/lit8 v11, v12, 0x18

    int-to-byte v3, v3

    .line 45
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v10

    .line 46
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v11

    .line 47
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_10
    if-gez v12, :cond_11

    int-to-float v3, v12

    neg-float v3, v3

    const/high16 v10, -0x31000000

    div-float/2addr v3, v10

    .line 48
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_11
    int-to-float v3, v12

    const/high16 v10, 0x4f000000

    div-float/2addr v3, v10

    .line 49
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_12
    shr-int/lit8 v3, v12, 0x18

    int-to-byte v3, v3

    .line 50
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_13
    shr-int/lit8 v3, v12, 0x10

    shr-int/lit8 v10, v12, 0x18

    int-to-byte v3, v3

    .line 51
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v10

    .line 52
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 53
    :goto_7
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int v10, v9, v6

    if-ne v3, v10, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 54
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    goto/16 :goto_1

    :cond_14
    move-object/from16 v1, p1

    .line 55
    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 56
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-object v1, v8

    goto :goto_8

    :cond_15
    move-object/from16 v1, p1

    :goto_8
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzrf;->zzM:Ljava/nio/ByteBuffer;

    :cond_16
    return-void
.end method

.method private final zzW()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzZ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzs:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzJ:F

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setVolume(F)I

    :cond_0
    return-void
.end method

.method private final zzX()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzq:Lcom/google/android/gms/internal/ads/zzqu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqu;->zzi:Lcom/google/android/gms/internal/ads/zzck;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzr:Lcom/google/android/gms/internal/ads/zzck;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzck;->zzc()V

    return-void
.end method

.method private final zzY()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzqe;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzr:Lcom/google/android/gms/internal/ads/zzck;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzck;->zzh()Z

    move-result v0

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzrf;->zzP(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzM:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    return v3

    :cond_0
    return v4

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzr:Lcom/google/android/gms/internal/ads/zzck;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzck;->zzd()V

    .line 4
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzrf;->zzT(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzr:Lcom/google/android/gms/internal/ads/zzck;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzck;->zzg()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzM:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    :goto_0
    move v3, v4

    :cond_4
    return v3
.end method

.method private final zzZ()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzs:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static zzaa(Landroid/media/AudioTrack;)Z
    .locals 2

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioTrack;->isOffloadedPlayback()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final zzab()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzq:Lcom/google/android/gms/internal/ads/zzqu;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzqu;->zzc:I

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqu;->zza:Lcom/google/android/gms/internal/ads/zzz;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzz;->zzG:I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static final zzac(Lcom/google/android/gms/internal/ads/zzpz;Lcom/google/android/gms/internal/ads/zze;ILcom/google/android/gms/internal/ads/zzz;)Landroid/media/AudioTrack;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzqb;
        }
    .end annotation

    .line 1
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzc:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpz;->zza:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeu;->zzx(III)Landroid/media/AudioFormat;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zze;->zza()Lcom/google/android/gms/internal/ads/zzc;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzc;->zza:Landroid/media/AudioAttributes;

    .line 3
    new-instance v1, Landroid/media/AudioTrack$Builder;

    invoke-direct {v1}, Landroid/media/AudioTrack$Builder;-><init>()V

    .line 4
    invoke-virtual {v1, p1}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v0}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpz;->zze:I

    .line 7
    invoke-virtual {p1, v1}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p2}, Landroid/media/AudioTrack$Builder;->setSessionId(I)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    sget p2, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v1, 0x1d

    if-lt p2, v1, :cond_0

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzd:Z

    .line 9
    invoke-virtual {p1, p2}, Landroid/media/AudioTrack$Builder;->setOffloadedPlayback(Z)Landroid/media/AudioTrack$Builder;

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 12
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getState()I

    move-result v2

    if-ne v2, v0, :cond_1

    return-object p1

    .line 13
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/media/AudioTrack;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzb:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzc:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzpz;->zza:I

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzd:Z

    new-instance p0, Lcom/google/android/gms/internal/ads/zzqb;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v6, p3

    .line 14
    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzqb;-><init>(IIIILcom/google/android/gms/internal/ads/zzz;ZLjava/lang/Exception;)V

    throw p0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    move-object v7, p1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzb:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzc:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzpz;->zza:I

    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzpz;->zzd:Z

    new-instance p0, Lcom/google/android/gms/internal/ads/zzqb;

    const/4 v1, 0x0

    move-object v0, p0

    move-object v5, p3

    .line 11
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzqb;-><init>(IIIILcom/google/android/gms/internal/ads/zzz;ZLjava/lang/Exception;)V

    throw p0
.end method


# virtual methods
.method public final zzA(Lcom/google/android/gms/internal/ads/zzz;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzrf;->zza(Lcom/google/android/gms/internal/ads/zzz;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzJ(Lcom/google/android/gms/internal/ads/zzpb;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzX:Landroid/os/Looper;

    if-eq v1, v0, :cond_2

    const-string p1, "null"

    if-nez v1, :cond_0

    move-object v1, p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    .line 1
    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Current looper ("

    .line 4
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is not the playback looper ("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzt:Lcom/google/android/gms/internal/ads/zzpb;

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzpb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzt:Lcom/google/android/gms/internal/ads/zzpb;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzo:Lcom/google/android/gms/internal/ads/zzqc;

    if-eqz p1, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzrj;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzrj;->zza:Lcom/google/android/gms/internal/ads/zzrl;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzrl;->zzai(Lcom/google/android/gms/internal/ads/zzrl;)V

    :cond_3
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzz;)I
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzR()V

    const-string v0, "audio/raw"

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    .line 3
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzz;->zzG:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeu;->zzK(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid PCM encoding: "

    .line 4
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DefaultAudioSink"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    if-eq p1, v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzt:Lcom/google/android/gms/internal/ads/zzpb;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzw:Lcom/google/android/gms/internal/ads/zze;

    .line 5
    invoke-virtual {v0, p1, v3}, Lcom/google/android/gms/internal/ads/zzpb;->zzb(Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zze;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public final zzb(Z)J
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzZ()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzH:Z

    if-eqz p1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzi:Lcom/google/android/gms/internal/ads/zzqj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqj;->zza()J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzq:Lcom/google/android/gms/internal/ads/zzqu;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzM()J

    move-result-wide v2

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzqu;->zze:I

    .line 3
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzeu;->zzt(JI)J

    move-result-wide v2

    .line 2
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzj:Ljava/util/ArrayDeque;

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzqw;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzqw;->zzc:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzqw;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzy:Lcom/google/android/gms/internal/ads/zzqw;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzy:Lcom/google/android/gms/internal/ads/zzqw;

    .line 7
    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzqw;->zzc:J

    sub-long/2addr v0, v3

    .line 8
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzbb;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbb;->zzb:F

    .line 9
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeu;->zzq(JF)J

    move-result-wide v2

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzab:Lcom/google/android/gms/internal/ads/zzqv;

    .line 11
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzqv;->zza(J)J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzy:Lcom/google/android/gms/internal/ads/zzqw;

    .line 12
    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzqw;->zzb:J

    add-long/2addr v4, v0

    sub-long/2addr v0, v2

    .line 13
    iput-wide v0, p1, Lcom/google/android/gms/internal/ads/zzqw;->zzd:J

    goto :goto_1

    .line 20
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzy:Lcom/google/android/gms/internal/ads/zzqw;

    .line 14
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzqw;->zzb:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzqw;->zzd:J

    add-long v4, v0, v2

    .line 13
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzab:Lcom/google/android/gms/internal/ads/zzqv;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqv;->zzb()J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzq:Lcom/google/android/gms/internal/ads/zzqu;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzqu;->zze:I

    .line 16
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzeu;->zzt(JI)J

    move-result-wide v2

    add-long/2addr v4, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzY:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzq:Lcom/google/android/gms/internal/ads/zzqu;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzqu;->zze:I

    sub-long v2, v0, v2

    .line 17
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzeu;->zzt(JI)J

    move-result-wide v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzY:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzZ:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzZ:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzaa:Landroid/os/Handler;

    if-nez p1, :cond_3

    new-instance p1, Landroid/os/Handler;

    .line 18
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzaa:Landroid/os/Handler;

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzaa:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzaa:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzqn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzqn;-><init>(Lcom/google/android/gms/internal/ads/zzrf;)V

    const-wide/16 v1, 0x64

    .line 20
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-wide v4

    :cond_5
    :goto_2
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzbb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzz:Lcom/google/android/gms/internal/ads/zzbb;

    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzpk;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzV:Z

    if-eqz v0, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzpk;->zza:Lcom/google/android/gms/internal/ads/zzpk;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzac:Lcom/google/android/gms/internal/ads/zzql;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzw:Lcom/google/android/gms/internal/ads/zze;

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzql;->zza(Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zze;)Lcom/google/android/gms/internal/ads/zzpk;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzz;I[I)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzqa;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzR()V

    const-string v0, "audio/raw"

    .line 2
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, -0x1

    if-eqz v0, :cond_1

    .line 3
    iget v0, v3, Lcom/google/android/gms/internal/ads/zzz;->zzG:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeu;->zzK(I)Z

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdc;->zzd(Z)V

    .line 4
    iget v5, v3, Lcom/google/android/gms/internal/ads/zzz;->zzE:I

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeu;->zzk(I)I

    move-result v6

    mul-int/2addr v6, v5

    new-instance v7, Lcom/google/android/gms/internal/ads/zzfwt;

    .line 6
    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzfwt;-><init>()V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzg:Lcom/google/android/gms/internal/ads/zzfww;

    .line 7
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzfwt;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfwt;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzab:Lcom/google/android/gms/internal/ads/zzqv;

    .line 8
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzqv;->zze()[Lcom/google/android/gms/internal/ads/zzcn;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzfwt;->zzg([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwt;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzck;

    .line 9
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfwt;->zzi()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v7

    invoke-direct {v8, v7}, Lcom/google/android/gms/internal/ads/zzck;-><init>(Lcom/google/android/gms/internal/ads/zzfww;)V

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzr:Lcom/google/android/gms/internal/ads/zzck;

    .line 10
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzck;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzr:Lcom/google/android/gms/internal/ads/zzck;

    :cond_0
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzf:Lcom/google/android/gms/internal/ads/zzrp;

    .line 11
    iget v9, v3, Lcom/google/android/gms/internal/ads/zzz;->zzH:I

    iget v10, v3, Lcom/google/android/gms/internal/ads/zzz;->zzI:I

    invoke-virtual {v7, v9, v10}, Lcom/google/android/gms/internal/ads/zzrp;->zzq(II)V

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzrf;->zze:Lcom/google/android/gms/internal/ads/zzqk;

    move-object/from16 v9, p3

    .line 12
    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/ads/zzqk;->zzo([I)V

    .line 13
    new-instance v7, Lcom/google/android/gms/internal/ads/zzcl;

    .line 14
    iget v9, v3, Lcom/google/android/gms/internal/ads/zzz;->zzF:I

    invoke-direct {v7, v9, v5, v0}, Lcom/google/android/gms/internal/ads/zzcl;-><init>(III)V

    .line 15
    :try_start_0
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzck;->zza(Lcom/google/android/gms/internal/ads/zzcl;)Lcom/google/android/gms/internal/ads/zzcl;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcm; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzcl;->zzd:I

    .line 18
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzcl;->zzb:I

    .line 19
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzcl;->zzc:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeu;->zzi(I)I

    move-result v9

    .line 20
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzeu;->zzk(I)I

    move-result v10

    mul-int/2addr v10, v0

    move-object v11, v8

    const/4 v8, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqa;

    .line 16
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzqa;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzz;)V

    throw v0

    .line 39
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzck;

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzck;-><init>(Lcom/google/android/gms/internal/ads/zzfww;)V

    .line 22
    iget v5, v3, Lcom/google/android/gms/internal/ads/zzz;->zzF:I

    .line 23
    sget-object v6, Lcom/google/android/gms/internal/ads/zzpk;->zza:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzt:Lcom/google/android/gms/internal/ads/zzpb;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzw:Lcom/google/android/gms/internal/ads/zze;

    .line 24
    invoke-virtual {v6, v3, v7}, Lcom/google/android/gms/internal/ads/zzpb;->zzb(Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zze;)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 26
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 27
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v8, 0x2

    move-object v11, v0

    move v10, v4

    move v9, v6

    move v6, v10

    move/from16 v20, v7

    move v7, v5

    move/from16 v5, v20

    .line 20
    :goto_0
    const-string v0, ") for: "

    if-eqz v5, :cond_c

    if-eqz v9, :cond_b

    .line 30
    iget v0, v3, Lcom/google/android/gms/internal/ads/zzz;->zzj:I

    .line 31
    iget-object v12, v3, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    const-string v13, "audio/vnd.dts.hd;profile=lbr"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    if-ne v0, v4, :cond_2

    const v0, 0xbb800

    .line 32
    :cond_2
    invoke-static {v7, v9, v5}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v12

    const/4 v13, -0x2

    const/4 v14, 0x1

    if-eq v12, v13, :cond_3

    move v13, v14

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    .line 33
    :goto_1
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    if-eq v10, v4, :cond_4

    move v13, v10

    goto :goto_2

    :cond_4
    move v13, v14

    :goto_2
    const v15, 0x3d090

    if-eqz v8, :cond_9

    const-wide/32 v16, 0xf4240

    if-eq v8, v14, :cond_8

    const/4 v14, 0x5

    const/16 v2, 0x8

    if-ne v5, v14, :cond_5

    const v15, 0x7a120

    goto :goto_3

    :cond_5
    if-ne v5, v2, :cond_6

    const v15, 0xf4240

    move v5, v2

    :cond_6
    :goto_3
    if-eq v0, v4, :cond_7

    sget-object v14, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 40
    invoke-static {v0, v2, v14}, Lcom/google/android/gms/internal/ads/zzfzs;->zzb(IILjava/math/RoundingMode;)I

    move-result v0

    goto :goto_4

    .line 41
    :cond_7
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzrh;->zzb(I)I

    move-result v0

    :goto_4
    int-to-long v14, v15

    move/from16 p3, v5

    int-to-long v4, v0

    mul-long/2addr v14, v4

    .line 40
    div-long v14, v14, v16

    .line 42
    invoke-static {v14, v15}, Lcom/google/android/gms/internal/ads/zzfzz;->zzb(J)I

    move-result v0

    move/from16 v14, p3

    goto :goto_6

    .line 38
    :cond_8
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzrh;->zzb(I)I

    move-result v0

    int-to-long v14, v0

    const-wide/32 v18, 0x2faf080

    mul-long v14, v14, v18

    div-long v14, v14, v16

    .line 39
    invoke-static {v14, v15}, Lcom/google/android/gms/internal/ads/zzfzz;->zzb(J)I

    move-result v0

    goto :goto_5

    :cond_9
    mul-int/lit8 v0, v12, 0x4

    .line 34
    invoke-static {v15, v7, v13}, Lcom/google/android/gms/internal/ads/zzrh;->zza(III)I

    move-result v4

    const v14, 0xb71b0

    .line 35
    invoke-static {v14, v7, v13}, Lcom/google/android/gms/internal/ads/zzrh;->zza(III)I

    move-result v14

    .line 36
    sget v15, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    .line 37
    invoke-static {v0, v14}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_5
    move v14, v5

    :goto_6
    int-to-double v4, v0

    double-to-int v0, v4

    .line 43
    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v13

    const/4 v2, -0x1

    add-int/2addr v0, v2

    .line 44
    div-int/2addr v0, v13

    mul-int/2addr v0, v13

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzV:Z

    new-instance v15, Lcom/google/android/gms/internal/ads/zzqu;

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/4 v12, 0x0

    move-object v2, v15

    move-object/from16 v3, p1

    move v4, v6

    move v5, v8

    move v6, v10

    move v8, v9

    move v9, v14

    move v10, v0

    move/from16 v14, v16

    invoke-direct/range {v2 .. v14}, Lcom/google/android/gms/internal/ads/zzqu;-><init>(Lcom/google/android/gms/internal/ads/zzz;IIIIIIILcom/google/android/gms/internal/ads/zzck;ZZZ)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzZ()Z

    move-result v0

    if-eqz v0, :cond_a

    iput-object v15, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzp:Lcom/google/android/gms/internal/ads/zzqu;

    return-void

    :cond_a
    iput-object v15, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzq:Lcom/google/android/gms/internal/ads/zzqu;

    return-void

    .line 28
    :cond_b
    new-instance v2, Lcom/google/android/gms/internal/ads/zzqa;

    .line 29
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid output channel config (mode="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzqa;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzz;)V

    throw v2

    .line 20
    :cond_c
    new-instance v2, Lcom/google/android/gms/internal/ads/zzqa;

    .line 28
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid output encoding (mode="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzqa;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzz;)V

    throw v2

    .line 24
    :cond_d
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqa;

    .line 25
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Unable to configure passthrough for: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzqa;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzz;)V

    throw v0
.end method

.method public final zzf()V
    .locals 12

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzZ()Z

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_5

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzB:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzC:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzD:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzE:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzW:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzF:I

    new-instance v11, Lcom/google/android/gms/internal/ads/zzqw;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzz:Lcom/google/android/gms/internal/ads/zzbb;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v6, 0x0

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzqw;-><init>(Lcom/google/android/gms/internal/ads/zzbb;JJLcom/google/android/gms/internal/ads/zzre;)V

    iput-object v11, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzy:Lcom/google/android/gms/internal/ads/zzqw;

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzI:J

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzx:Lcom/google/android/gms/internal/ads/zzqw;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzj:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->clear()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzK:Ljava/nio/ByteBuffer;

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzL:I

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzM:Ljava/nio/ByteBuffer;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzO:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzN:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzP:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzf:Lcom/google/android/gms/internal/ads/zzrp;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrp;->zzp()V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzX()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzi:Lcom/google/android/gms/internal/ads/zzqj;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqj;->zzh()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzs:Landroid/media/AudioTrack;

    .line 5
    invoke-virtual {v4}, Landroid/media/AudioTrack;->pause()V

    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzs:Landroid/media/AudioTrack;

    .line 6
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzrf;->zzaa(Landroid/media/AudioTrack;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzk:Lcom/google/android/gms/internal/ads/zzrd;

    .line 19
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/internal/ads/zzrd;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzs:Landroid/media/AudioTrack;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzrd;->zzb(Landroid/media/AudioTrack;)V

    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzq:Lcom/google/android/gms/internal/ads/zzqu;

    .line 8
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzqu;->zza()Lcom/google/android/gms/internal/ads/zzpz;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzp:Lcom/google/android/gms/internal/ads/zzqu;

    if-eqz v5, :cond_2

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzq:Lcom/google/android/gms/internal/ads/zzqu;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzp:Lcom/google/android/gms/internal/ads/zzqu;

    .line 9
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqj;->zzc()V

    .line 10
    sget v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v5, 0x18

    if-lt v0, v5, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzv:Lcom/google/android/gms/internal/ads/zzqy;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqy;->zzb()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzv:Lcom/google/android/gms/internal/ads/zzqy;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzs:Landroid/media/AudioTrack;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzo:Lcom/google/android/gms/internal/ads/zzqc;

    new-instance v6, Landroid/os/Handler;

    .line 12
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-object v7, Lcom/google/android/gms/internal/ads/zzrf;->zza:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    sget-object v8, Lcom/google/android/gms/internal/ads/zzrf;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v8, :cond_4

    const-string v8, "ExoPlayer:AudioTrackReleaseThread"

    new-instance v9, Lcom/google/android/gms/internal/ads/zzet;

    invoke-direct {v9, v8}, Lcom/google/android/gms/internal/ads/zzet;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-static {v9}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v8

    sput-object v8, Lcom/google/android/gms/internal/ads/zzrf;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_4
    sget v8, Lcom/google/android/gms/internal/ads/zzrf;->zzc:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/google/android/gms/internal/ads/zzrf;->zzc:I

    sget-object v8, Lcom/google/android/gms/internal/ads/zzrf;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzqm;

    invoke-direct {v9, v0, v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzqm;-><init>(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzqc;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzpz;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x14

    .line 14
    invoke-interface {v8, v9, v4, v5, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 15
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzs:Landroid/media/AudioTrack;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzm:Lcom/google/android/gms/internal/ads/zzqz;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqz;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzl:Lcom/google/android/gms/internal/ads/zzqz;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqz;->zza()V

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzY:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzZ:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzaa:Landroid/os/Handler;

    if-eqz v0, :cond_6

    .line 18
    move-object v2, v0

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public final zzg()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzG:Z

    return-void
.end method

.method public final zzh()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzQ:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzZ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzi:Lcom/google/android/gms/internal/ads/zzqj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqj;->zzk()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzs:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzrf;->zzaa(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzs:Landroid/media/AudioTrack;

    .line 2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_1
    return-void
.end method

.method public final zzi()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzQ:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzZ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzi:Lcom/google/android/gms/internal/ads/zzqj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqj;->zzf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzs:Landroid/media/AudioTrack;

    .line 2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    return-void
.end method

.method public final zzj()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzqe;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzN:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzZ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzY()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzS()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzN:Z

    :cond_0
    return-void
.end method

.method public final zzk()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzu:Lcom/google/android/gms/internal/ads/zzpg;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpg;->zzi()V

    :cond_0
    return-void
.end method

.method public final zzl()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzg:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 2
    check-cast v4, Lcom/google/android/gms/internal/ads/zzcn;

    .line 3
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcn;->zzf()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzh:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 4
    check-cast v4, Lcom/google/android/gms/internal/ads/zzcn;

    .line 5
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcn;->zzf()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzr:Lcom/google/android/gms/internal/ads/zzck;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzck;->zzf()V

    :cond_2
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzQ:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzV:Z

    return-void
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zze;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzw:Lcom/google/android/gms/internal/ads/zze;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zze;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzw:Lcom/google/android/gms/internal/ads/zze;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzu:Lcom/google/android/gms/internal/ads/zzpg;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzpg;->zzg(Lcom/google/android/gms/internal/ads/zze;)V

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzf()V

    return-void
.end method

.method public final zzn(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzR:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzR:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzf()V

    :cond_0
    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzf;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzS:Lcom/google/android/gms/internal/ads/zzf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzf;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzs:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzS:Lcom/google/android/gms/internal/ads/zzf;

    .line 2
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzf;->zza:I

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzS:Lcom/google/android/gms/internal/ads/zzf;

    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/ads/zzdg;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzi:Lcom/google/android/gms/internal/ads/zzqj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzqj;->zze(Lcom/google/android/gms/internal/ads/zzdg;)V

    return-void
.end method

.method public final zzq(Lcom/google/android/gms/internal/ads/zzqc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzo:Lcom/google/android/gms/internal/ads/zzqc;

    return-void
.end method

.method public final zzr(II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzs:Landroid/media/AudioTrack;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzrf;->zzaa(Landroid/media/AudioTrack;)Z

    :cond_0
    return-void
.end method

.method public final zzs(Lcom/google/android/gms/internal/ads/zzbb;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbb;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzbb;->zzb:F

    .line 2
    sget v2, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/high16 v2, 0x41000000    # 8.0f

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const v3, 0x3dcccccd    # 0.1f

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 2
    iget v4, p1, Lcom/google/android/gms/internal/ads/zzbb;->zzc:F

    .line 4
    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 5
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbb;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzz:Lcom/google/android/gms/internal/ads/zzbb;

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzrf;->zzU(Lcom/google/android/gms/internal/ads/zzbb;)V

    return-void
.end method

.method public final zzt(Lcom/google/android/gms/internal/ads/zzoz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzn:Lcom/google/android/gms/internal/ads/zzoz;

    return-void
.end method

.method public final zzu(Landroid/media/AudioDeviceInfo;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzph;

    .line 1
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzph;-><init>(Landroid/media/AudioDeviceInfo;)V

    .line 2
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzT:Lcom/google/android/gms/internal/ads/zzph;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzu:Lcom/google/android/gms/internal/ads/zzpg;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzpg;->zzh(Landroid/media/AudioDeviceInfo;)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzs:Landroid/media/AudioTrack;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzT:Lcom/google/android/gms/internal/ads/zzph;

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzqq;->zza(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzph;)V

    :cond_2
    return-void
.end method

.method public final zzv(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzA:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzz:Lcom/google/android/gms/internal/ads/zzbb;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzrf;->zzU(Lcom/google/android/gms/internal/ads/zzbb;)V

    return-void
.end method

.method public final zzw(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzJ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzJ:F

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzW()V

    :cond_0
    return-void
.end method

.method public final zzx(Ljava/nio/ByteBuffer;JI)Z
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzqb;,
            Lcom/google/android/gms/internal/ads/zzqe;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v5, p4

    .line 1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzK:Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    if-eqz v0, :cond_1

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v7

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzd(Z)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzp:Lcom/google/android/gms/internal/ads/zzqu;

    const/4 v8, 0x0

    if-eqz v0, :cond_6

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzY()Z

    move-result v0

    if-nez v0, :cond_2

    return v7

    :cond_2
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzp:Lcom/google/android/gms/internal/ads/zzqu;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzq:Lcom/google/android/gms/internal/ads/zzqu;

    .line 3
    iget v10, v9, Lcom/google/android/gms/internal/ads/zzqu;->zzc:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzqu;->zzc:I

    if-ne v10, v11, :cond_3

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzqu;->zzg:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzqu;->zzg:I

    if-ne v10, v11, :cond_3

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzqu;->zze:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzqu;->zze:I

    if-ne v10, v11, :cond_3

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzqu;->zzf:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzqu;->zzf:I

    if-ne v10, v11, :cond_3

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzqu;->zzd:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzqu;->zzd:I

    if-ne v10, v11, :cond_3

    iget-boolean v10, v9, Lcom/google/android/gms/internal/ads/zzqu;->zzj:Z

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzqu;->zzj:Z

    iget-boolean v9, v9, Lcom/google/android/gms/internal/ads/zzqu;->zzk:Z

    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzqu;->zzk:Z

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzq:Lcom/google/android/gms/internal/ads/zzqu;

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzp:Lcom/google/android/gms/internal/ads/zzqu;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzs:Landroid/media/AudioTrack;

    if-eqz v0, :cond_5

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzrf;->zzaa(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzq:Lcom/google/android/gms/internal/ads/zzqu;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzqu;->zzk:Z

    goto :goto_2

    .line 4
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzS()V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzy()Z

    move-result v0

    if-eqz v0, :cond_4

    return v7

    .line 6
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzf()V

    .line 8
    :cond_5
    :goto_2
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzrf;->zzO(J)V

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzZ()Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_5

    .line 70
    :cond_7
    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzl:Lcom/google/android/gms/internal/ads/zzqz;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqz;->zzc()Z

    move-result v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzqb; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_8

    return v7

    :cond_8
    :try_start_1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzq:Lcom/google/android/gms/internal/ads/zzqu;

    if-eqz v0, :cond_9

    .line 10
    move-object v11, v0

    check-cast v11, Lcom/google/android/gms/internal/ads/zzqu;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzrf;->zzN(Lcom/google/android/gms/internal/ads/zzqu;)Landroid/media/AudioTrack;

    move-result-object v0

    goto :goto_3

    .line 11
    :cond_9
    throw v8
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzqb; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    move-object v11, v0

    .line 34
    :try_start_2
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzq:Lcom/google/android/gms/internal/ads/zzqu;

    .line 12
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzqu;->zzh:I

    const v13, 0xf4240

    if-le v12, v13, :cond_2d

    new-instance v12, Lcom/google/android/gms/internal/ads/zzqu;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzqu;->zza:Lcom/google/android/gms/internal/ads/zzz;

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzqu;->zzb:I

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzqu;->zzc:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzqu;->zzd:I

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzqu;->zze:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzqu;->zzf:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzqu;->zzg:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzqu;->zzi:Lcom/google/android/gms/internal/ads/zzck;

    move/from16 v16, v14

    iget-boolean v14, v0, Lcom/google/android/gms/internal/ads/zzqu;->zzj:Z

    iget-boolean v14, v0, Lcom/google/android/gms/internal/ads/zzqu;->zzk:Z

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzqu;->zzl:Z

    const/16 v25, 0x0

    const/16 v26, 0x0

    const v22, 0xf4240

    const/16 v24, 0x0

    move/from16 v0, v16

    move-object v14, v12

    move/from16 v16, v13

    move/from16 v17, v0

    move/from16 v18, v8

    move/from16 v19, v7

    move/from16 v20, v6

    move/from16 v21, v10

    move-object/from16 v23, v9

    invoke-direct/range {v14 .. v26}, Lcom/google/android/gms/internal/ads/zzqu;-><init>(Lcom/google/android/gms/internal/ads/zzz;IIIIIIILcom/google/android/gms/internal/ads/zzck;ZZZ)V
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzqb; {:try_start_2 .. :try_end_2} :catch_2

    .line 13
    :try_start_3
    invoke-direct {v1, v12}, Lcom/google/android/gms/internal/ads/zzrf;->zzN(Lcom/google/android/gms/internal/ads/zzqu;)Landroid/media/AudioTrack;

    move-result-object v0

    iput-object v12, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzq:Lcom/google/android/gms/internal/ads/zzqu;
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzqb; {:try_start_3 .. :try_end_3} :catch_1

    .line 10
    :goto_3
    :try_start_4
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzs:Landroid/media/AudioTrack;

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzrf;->zzaa(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzs:Landroid/media/AudioTrack;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzk:Lcom/google/android/gms/internal/ads/zzrd;

    if-nez v6, :cond_a

    new-instance v6, Lcom/google/android/gms/internal/ads/zzrd;

    .line 18
    invoke-direct {v6, v1}, Lcom/google/android/gms/internal/ads/zzrd;-><init>(Lcom/google/android/gms/internal/ads/zzrf;)V

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzk:Lcom/google/android/gms/internal/ads/zzrd;

    :cond_a
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzk:Lcom/google/android/gms/internal/ads/zzrd;

    .line 19
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzrd;->zza(Landroid/media/AudioTrack;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzq:Lcom/google/android/gms/internal/ads/zzqu;

    .line 20
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzqu;->zzk:Z

    .line 21
    :cond_b
    sget v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v6, 0x1f

    if-lt v0, v6, :cond_c

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzn:Lcom/google/android/gms/internal/ads/zzoz;

    if-eqz v0, :cond_c

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzs:Landroid/media/AudioTrack;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzoz;->zza()Landroid/media/metrics/LogSessionId;

    move-result-object v0

    .line 23
    sget-object v7, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    invoke-virtual {v0, v7}, Landroid/media/metrics/LogSessionId;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 24
    invoke-virtual {v6, v0}, Landroid/media/AudioTrack;->setLogSessionId(Landroid/media/metrics/LogSessionId;)V

    :cond_c
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzs:Landroid/media/AudioTrack;

    .line 25
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    iput v0, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzR:I

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzi:Lcom/google/android/gms/internal/ads/zzqj;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzs:Landroid/media/AudioTrack;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzq:Lcom/google/android/gms/internal/ads/zzqu;

    .line 26
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzqu;->zzc:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_d

    const/4 v8, 0x1

    goto :goto_4

    :cond_d
    const/4 v8, 0x0

    :goto_4
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzqu;->zzg:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzqu;->zzd:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzqu;->zzh:I

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzqj;->zzd(Landroid/media/AudioTrack;ZIII)V

    .line 27
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzW()V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzS:Lcom/google/android/gms/internal/ads/zzf;

    .line 28
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzf;->zza:I

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzT:Lcom/google/android/gms/internal/ads/zzph;

    if-eqz v0, :cond_e

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzs:Landroid/media/AudioTrack;

    .line 29
    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzqq;->zza(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzph;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzu:Lcom/google/android/gms/internal/ads/zzpg;

    if-eqz v0, :cond_e

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzT:Lcom/google/android/gms/internal/ads/zzph;

    .line 30
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzph;->zza:Landroid/media/AudioDeviceInfo;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzpg;->zzh(Landroid/media/AudioDeviceInfo;)V

    :cond_e
    sget v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v6, 0x18

    if-lt v0, v6, :cond_f

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzu:Lcom/google/android/gms/internal/ads/zzpg;

    if-eqz v0, :cond_f

    new-instance v6, Lcom/google/android/gms/internal/ads/zzqy;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzs:Landroid/media/AudioTrack;

    .line 31
    invoke-direct {v6, v7, v0}, Lcom/google/android/gms/internal/ads/zzqy;-><init>(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzpg;)V

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzv:Lcom/google/android/gms/internal/ads/zzqy;

    :cond_f
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzH:Z

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzo:Lcom/google/android/gms/internal/ads/zzqc;

    if-eqz v0, :cond_10

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzq:Lcom/google/android/gms/internal/ads/zzqu;

    .line 32
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzqu;->zza()Lcom/google/android/gms/internal/ads/zzpz;

    move-result-object v6

    check-cast v0, Lcom/google/android/gms/internal/ads/zzrj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzrj;->zza:Lcom/google/android/gms/internal/ads/zzrl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzrl;->zzae(Lcom/google/android/gms/internal/ads/zzrl;)Lcom/google/android/gms/internal/ads/zzpx;

    move-result-object v0

    .line 33
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzpx;->zzo(Lcom/google/android/gms/internal/ads/zzpz;)V
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/zzqb; {:try_start_4 .. :try_end_4} :catch_2

    .line 8
    :cond_10
    :goto_5
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzl:Lcom/google/android/gms/internal/ads/zzqz;

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqz;->zza()V

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzH:Z

    const-wide/16 v6, 0x0

    if-eqz v0, :cond_11

    .line 37
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzI:J

    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzG:Z

    iput-boolean v8, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzH:Z

    .line 38
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzrf;->zzO(J)V

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzQ:Z

    if-eqz v0, :cond_11

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzi()V

    :cond_11
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzi:Lcom/google/android/gms/internal/ads/zzqj;

    .line 40
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzM()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/internal/ads/zzqj;->zzj(J)Z

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzK:Ljava/nio/ByteBuffer;

    if-nez v8, :cond_2a

    .line 41
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v8, v9, :cond_12

    const/4 v8, 0x1

    goto :goto_6

    :cond_12
    const/4 v8, 0x0

    :goto_6
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzdc;->zzd(Z)V

    .line 42
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v8

    if-nez v8, :cond_13

    const/4 v8, 0x1

    return v8

    :cond_13
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzq:Lcom/google/android/gms/internal/ads/zzqu;

    .line 43
    iget v9, v8, Lcom/google/android/gms/internal/ads/zzqu;->zzc:I

    if-eqz v9, :cond_22

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzF:I

    if-nez v9, :cond_22

    .line 44
    iget v8, v8, Lcom/google/android/gms/internal/ads/zzqu;->zzg:I

    const/16 v9, 0x14

    if-eq v8, v9, :cond_20

    const/16 v9, 0x1e

    const/4 v10, -0x2

    const/16 v11, 0x400

    const/4 v12, -0x1

    if-eq v8, v9, :cond_19

    packed-switch v8, :pswitch_data_0

    const/16 v9, 0x10

    packed-switch v8, :pswitch_data_1

    .line 6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected audio encoding: "

    .line 87
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :pswitch_0
    sget v8, Lcom/google/android/gms/internal/ads/zzacf;->zza:I

    new-array v8, v9, [B

    .line 47
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    .line 48
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 49
    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzej;

    invoke-direct {v10, v8, v9}, Lcom/google/android/gms/internal/ads/zzej;-><init>([BI)V

    .line 50
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzacf;->zzb(Lcom/google/android/gms/internal/ads/zzej;)Lcom/google/android/gms/internal/ads/zzacd;

    move-result-object v8

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzacd;->zzc:I

    goto/16 :goto_b

    :pswitch_1
    const/16 v8, 0x200

    goto/16 :goto_b

    .line 51
    :pswitch_2
    sget v8, Lcom/google/android/gms/internal/ads/zzacb;->zza:I

    .line 52
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    .line 53
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    add-int/lit8 v11, v11, -0xa

    move v13, v8

    :goto_7
    if-gt v13, v11, :cond_15

    add-int/lit8 v14, v13, 0x4

    .line 54
    invoke-static {v2, v14}, Lcom/google/android/gms/internal/ads/zzeu;->zzj(Ljava/nio/ByteBuffer;I)I

    move-result v14

    and-int/2addr v14, v10

    const v15, -0x78d9046

    if-ne v14, v15, :cond_14

    sub-int/2addr v13, v8

    goto :goto_8

    :cond_14
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_15
    move v13, v12

    :goto_8
    if-ne v13, v12, :cond_16

    const/4 v8, 0x0

    goto :goto_b

    .line 55
    :cond_16
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v13

    add-int/lit8 v8, v8, 0x7

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    .line 56
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    add-int/2addr v10, v13

    const/16 v11, 0xbb

    if-ne v8, v11, :cond_17

    const/16 v8, 0x9

    goto :goto_9

    :cond_17
    const/16 v8, 0x8

    :goto_9
    add-int/2addr v10, v8

    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    shr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0x7

    const/16 v10, 0x28

    shl-int v8, v10, v8

    mul-int/2addr v8, v9

    goto :goto_b

    :pswitch_3
    const/16 v8, 0x800

    goto :goto_b

    :goto_a
    :pswitch_4
    move v8, v11

    goto :goto_b

    .line 57
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    invoke-static {v2, v8}, Lcom/google/android/gms/internal/ads/zzeu;->zzj(Ljava/nio/ByteBuffer;I)I

    move-result v8

    .line 58
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzadv;->zzc(I)I

    move-result v8

    if-eq v8, v12, :cond_18

    goto :goto_b

    .line 87
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 59
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 70
    :pswitch_6
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacb;->zza(Ljava/nio/ByteBuffer;)I

    move-result v8

    :goto_b
    const/4 v12, 0x1

    goto/16 :goto_f

    .line 60
    :cond_19
    :pswitch_7
    sget v8, Lcom/google/android/gms/internal/ads/zzadb;->zza:I

    const/4 v8, 0x0

    .line 61
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v9

    const v13, -0xde4bec0

    if-eq v9, v13, :cond_1f

    .line 62
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v9

    const v13, -0x17bd3b8f

    if-ne v9, v13, :cond_1a

    goto :goto_a

    .line 63
    :cond_1a
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v9

    const v8, 0x25205864

    if-ne v9, v8, :cond_1b

    const/16 v8, 0x1000

    goto :goto_b

    .line 64
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    .line 65
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    if-eq v9, v10, :cond_1e

    if-eq v9, v12, :cond_1d

    const/16 v10, 0x1f

    if-eq v9, v10, :cond_1c

    add-int/lit8 v9, v8, 0x4

    add-int/lit8 v8, v8, 0x5

    .line 69
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    const/4 v10, 0x1

    and-int/2addr v9, v10

    shl-int/lit8 v9, v9, 0x6

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xfc

    const/4 v10, 0x2

    goto :goto_d

    :cond_1c
    const/4 v10, 0x2

    add-int/lit8 v9, v8, 0x5

    .line 66
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    and-int/lit8 v9, v9, 0x7

    shl-int/lit8 v9, v9, 0x4

    add-int/lit8 v8, v8, 0x6

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    goto :goto_c

    :cond_1d
    const/4 v10, 0x2

    add-int/lit8 v9, v8, 0x4

    .line 67
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    and-int/lit8 v9, v9, 0x7

    shl-int/lit8 v9, v9, 0x4

    add-int/lit8 v8, v8, 0x7

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    :goto_c
    and-int/lit8 v8, v8, 0x3c

    :goto_d
    shr-int/2addr v8, v10

    or-int/2addr v8, v9

    const/4 v12, 0x1

    goto :goto_e

    :cond_1e
    const/4 v10, 0x2

    add-int/lit8 v9, v8, 0x4

    add-int/lit8 v8, v8, 0x5

    .line 68
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    const/4 v12, 0x1

    and-int/2addr v8, v12

    shl-int/lit8 v8, v8, 0x6

    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    and-int/lit16 v9, v9, 0xfc

    shr-int/2addr v9, v10

    or-int/2addr v8, v9

    :goto_e
    add-int/2addr v8, v12

    mul-int/lit8 v8, v8, 0x20

    goto :goto_f

    :cond_1f
    const/4 v12, 0x1

    move v8, v11

    goto :goto_f

    :cond_20
    const/4 v12, 0x1

    .line 45
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadx;->zzb(Ljava/nio/ByteBuffer;)I

    move-result v8

    :goto_f
    iput v8, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzF:I

    if-eqz v8, :cond_21

    goto :goto_10

    :cond_21
    return v12

    :cond_22
    :goto_10
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzx:Lcom/google/android/gms/internal/ads/zzqw;

    if-eqz v8, :cond_24

    .line 71
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzY()Z

    move-result v8

    if-nez v8, :cond_23

    const/4 v8, 0x0

    return v8

    .line 72
    :cond_23
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzrf;->zzO(J)V

    const/4 v8, 0x0

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzx:Lcom/google/android/gms/internal/ads/zzqw;

    :cond_24
    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzI:J

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzq:Lcom/google/android/gms/internal/ads/zzqu;

    .line 73
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzL()J

    move-result-wide v11

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzf:Lcom/google/android/gms/internal/ads/zzrp;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzrp;->zzo()J

    move-result-wide v13

    sub-long/2addr v11, v13

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzqu;->zza:Lcom/google/android/gms/internal/ads/zzz;

    .line 74
    iget v10, v10, Lcom/google/android/gms/internal/ads/zzz;->zzF:I

    invoke-static {v11, v12, v10}, Lcom/google/android/gms/internal/ads/zzeu;->zzt(JI)J

    move-result-wide v10

    add-long/2addr v8, v10

    iget-boolean v10, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzG:Z

    if-nez v10, :cond_26

    sub-long v10, v8, v3

    .line 75
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/32 v12, 0x30d40

    cmp-long v10, v10, v12

    if-lez v10, :cond_26

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzo:Lcom/google/android/gms/internal/ads/zzqc;

    if-eqz v10, :cond_25

    new-instance v11, Lcom/google/android/gms/internal/ads/zzqd;

    .line 76
    invoke-direct {v11, v3, v4, v8, v9}, Lcom/google/android/gms/internal/ads/zzqd;-><init>(JJ)V

    invoke-interface {v10, v11}, Lcom/google/android/gms/internal/ads/zzqc;->zza(Ljava/lang/Exception;)V

    :cond_25
    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzG:Z

    :cond_26
    iget-boolean v10, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzG:Z

    if-eqz v10, :cond_28

    .line 77
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzY()Z

    move-result v10

    if-nez v10, :cond_27

    const/4 v10, 0x0

    return v10

    :cond_27
    const/4 v10, 0x0

    sub-long v8, v3, v8

    iget-wide v11, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzI:J

    add-long/2addr v11, v8

    iput-wide v11, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzI:J

    iput-boolean v10, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzG:Z

    .line 78
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzrf;->zzO(J)V

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzo:Lcom/google/android/gms/internal/ads/zzqc;

    if-eqz v10, :cond_28

    cmp-long v6, v8, v6

    if-eqz v6, :cond_28

    check-cast v10, Lcom/google/android/gms/internal/ads/zzrj;

    iget-object v6, v10, Lcom/google/android/gms/internal/ads/zzrj;->zza:Lcom/google/android/gms/internal/ads/zzrl;

    .line 79
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzrl;->zzao()V

    :cond_28
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzq:Lcom/google/android/gms/internal/ads/zzqu;

    .line 80
    iget v6, v6, Lcom/google/android/gms/internal/ads/zzqu;->zzc:I

    if-nez v6, :cond_29

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzB:J

    .line 81
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    iput-wide v6, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzB:J

    goto :goto_11

    .line 86
    :cond_29
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzC:J

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzF:I

    int-to-long v8, v8

    int-to-long v10, v5

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzC:J

    .line 81
    :goto_11
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzK:Ljava/nio/ByteBuffer;

    iput v5, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzL:I

    .line 82
    :cond_2a
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzrf;->zzT(J)V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzK:Ljava/nio/ByteBuffer;

    .line 83
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_2b

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzK:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzL:I

    const/4 v3, 0x1

    return v3

    :cond_2b
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 84
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzM()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzqj;->zzi(J)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "DefaultAudioSink"

    const-string v2, "Resetting stalled audio track"

    .line 85
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzf()V

    return v3

    :cond_2c
    return v2

    :catch_1
    move-exception v0

    .line 14
    :try_start_5
    invoke-virtual {v11, v0}, Lcom/google/android/gms/internal/ads/zzqb;->addSuppressed(Ljava/lang/Throwable;)V

    .line 15
    :cond_2d
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzQ()V

    .line 16
    throw v11
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/zzqb; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v0

    .line 59
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzqb;->zzb:Z

    if-nez v2, :cond_2e

    .line 11
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzrf;->zzl:Lcom/google/android/gms/internal/ads/zzqz;

    .line 35
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzqz;->zzb(Ljava/lang/Exception;)V

    const/4 v2, 0x0

    return v2

    .line 34
    :cond_2e
    throw v0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public final zzy()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzZ()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzs:Landroid/media/AudioTrack;

    .line 2
    invoke-virtual {v0}, Landroid/media/AudioTrack;->isOffloadedPlayback()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzP:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzi:Lcom/google/android/gms/internal/ads/zzqj;

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzM()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzqj;->zzg(J)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final zzz()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzZ()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrf;->zzN:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrf;->zzy()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method
