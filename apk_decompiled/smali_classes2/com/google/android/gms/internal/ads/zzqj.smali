.class final Lcom/google/android/gms/internal/ads/zzqj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private zzA:J

.field private zzB:Z

.field private zzC:J

.field private zzD:J

.field private zzE:Z

.field private zzF:J

.field private zzG:Lcom/google/android/gms/internal/ads/zzdg;

.field private final zza:Lcom/google/android/gms/internal/ads/zzqi;

.field private final zzb:[J

.field private zzc:Landroid/media/AudioTrack;

.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/ads/zzqh;

.field private zzf:I

.field private zzg:J

.field private zzh:F

.field private zzi:Z

.field private zzj:J

.field private zzk:J

.field private zzl:Ljava/lang/reflect/Method;

.field private zzm:J

.field private zzn:Z

.field private zzo:Z

.field private zzp:J

.field private zzq:J

.field private zzr:J

.field private zzs:J

.field private zzt:I

.field private zzu:I

.field private zzv:J

.field private zzw:J

.field private zzx:J

.field private zzy:J

.field private zzz:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzqi;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzqi;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqj;->zza:Lcom/google/android/gms/internal/ads/zzqi;

    :try_start_0
    const-class p1, Landroid/media/AudioTrack;

    const-string v0, "getLatency"

    const/4 v1, 0x0

    .line 2
    move-object v2, v1

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzl:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/16 p1, 0xa

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzb:[J

    sget-object p1, Lcom/google/android/gms/internal/ads/zzdg;->zza:Lcom/google/android/gms/internal/ads/zzdg;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzG:Lcom/google/android/gms/internal/ads/zzdg;

    return-void
.end method

.method private final zzl()J
    .locals 10

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzv:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqj;->zzn()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzy:J

    .line 2
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzG:Lcom/google/android/gms/internal/ads/zzdg;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdg;->zzb()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzq:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x5

    cmp-long v4, v4, v6

    if-ltz v4, :cond_7

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzc:Landroid/media/AudioTrack;

    .line 8
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-object v5, v4

    check-cast v5, Landroid/media/AudioTrack;

    .line 5
    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v4

    int-to-long v6, v4

    .line 7
    sget v4, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    const/16 v8, 0x1d

    if-gt v4, v8, :cond_4

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_3

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzr:J

    cmp-long v4, v6, v8

    if-lez v4, :cond_2

    const/4 v4, 0x3

    if-ne v5, v4, :cond_2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzw:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_6

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzw:J

    goto :goto_0

    :cond_2
    move-wide v6, v8

    :cond_3
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzw:J

    :cond_4
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzr:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_5

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzs:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzs:J

    :cond_5
    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzr:J

    .line 5
    :cond_6
    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzq:J

    :cond_7
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzr:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzF:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzs:J

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private final zzm()J
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqj;->zzl()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzf:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeu;->zzt(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method private final zzn()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzc:Landroid/media/AudioTrack;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzx:J

    return-wide v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzG:Lcom/google/android/gms/internal/ads/zzdg;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdg;->zzb()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeu;->zzs(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzv:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzh:F

    .line 3
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeu;->zzq(JF)J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzf:I

    .line 4
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeu;->zzp(JI)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzx:J

    add-long/2addr v2, v0

    return-wide v2
.end method

.method private final zzo()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzj:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzu:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzt:I

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzk:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzA:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzD:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzi:Z

    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 24

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzc:Landroid/media/AudioTrack;

    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v2, v1

    check-cast v2, Landroid/media/AudioTrack;

    .line 2
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x3e8

    if-ne v2, v3, :cond_8

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzG:Lcom/google/android/gms/internal/ads/zzdg;

    .line 3
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdg;->zzc()J

    move-result-wide v9

    div-long/2addr v9, v7

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzk:J

    sub-long v11, v9, v11

    const-wide/16 v13, 0x7530

    cmp-long v2, v11, v13

    if-ltz v2, :cond_2

    .line 4
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqj;->zzm()J

    move-result-wide v11

    cmp-long v2, v11, v5

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 31
    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzb:[J

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzt:I

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzh:F

    .line 5
    invoke-static {v11, v12, v15}, Lcom/google/android/gms/internal/ads/zzeu;->zzr(JF)J

    move-result-wide v11

    sub-long/2addr v11, v9

    aput-wide v11, v2, v13

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzt:I

    add-int/2addr v11, v4

    const/16 v12, 0xa

    rem-int/2addr v11, v12

    iput v11, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzt:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzu:I

    if-ge v11, v12, :cond_1

    add-int/2addr v11, v4

    iput v11, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzu:I

    :cond_1
    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzk:J

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzj:J

    const/4 v11, 0x0

    :goto_0
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzu:I

    if-ge v11, v12, :cond_2

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzj:J

    .line 6
    aget-wide v17, v2, v11

    int-to-long v12, v12

    div-long v17, v17, v12

    add-long v14, v14, v17

    iput-wide v14, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzj:J

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqj;->zze:Lcom/google/android/gms/internal/ads/zzqh;

    .line 41
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    move-object v11, v2

    check-cast v11, Lcom/google/android/gms/internal/ads/zzqh;

    .line 8
    invoke-virtual {v2, v9, v10}, Lcom/google/android/gms/internal/ads/zzqh;->zzg(J)Z

    move-result v11

    const-wide/32 v20, 0x4c4b40

    if-nez v11, :cond_3

    const/4 v4, 0x0

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzqh;->zzb()J

    move-result-wide v14

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzqh;->zza()J

    move-result-wide v12

    .line 10
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqj;->zzm()J

    move-result-wide v18

    sub-long v22, v14, v9

    .line 11
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(J)J

    move-result-wide v22

    cmp-long v11, v22, v20

    if-lez v11, :cond_4

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzqj;->zza:Lcom/google/android/gms/internal/ads/zzqi;

    const/4 v4, 0x0

    move-wide/from16 v16, v9

    .line 12
    invoke-interface/range {v11 .. v19}, Lcom/google/android/gms/internal/ads/zzqi;->zzd(JJJJ)V

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzqh;->zzd()V

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzf:I

    .line 14
    invoke-static {v12, v13, v11}, Lcom/google/android/gms/internal/ads/zzeu;->zzt(JI)J

    move-result-wide v16

    sub-long v16, v16, v18

    .line 15
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    cmp-long v11, v16, v20

    if-lez v11, :cond_5

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzqj;->zza:Lcom/google/android/gms/internal/ads/zzqi;

    move-wide/from16 v16, v9

    .line 16
    invoke-interface/range {v11 .. v19}, Lcom/google/android/gms/internal/ads/zzqi;->zzc(JJJJ)V

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzqh;->zzd()V

    goto :goto_1

    .line 18
    :cond_5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzqh;->zzc()V

    .line 8
    :goto_1
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzo:Z

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzl:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_8

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzp:J

    sub-long v11, v9, v11

    const-wide/32 v13, 0x7a120

    cmp-long v11, v11, v13

    if-ltz v11, :cond_8

    const/4 v11, 0x0

    :try_start_0
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzc:Landroid/media/AudioTrack;

    if-eqz v12, :cond_6

    new-array v4, v4, [Ljava/lang/Object;

    .line 19
    invoke-virtual {v2, v12, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    sget v4, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    move-object v4, v2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v12, v2

    mul-long/2addr v12, v7

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzg:J

    sub-long/2addr v12, v14

    iput-wide v12, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzm:J

    .line 20
    invoke-static {v12, v13, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iput-wide v12, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzm:J

    cmp-long v2, v12, v20

    if-lez v2, :cond_7

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqj;->zza:Lcom/google/android/gms/internal/ads/zzqi;

    .line 21
    invoke-interface {v2, v12, v13}, Lcom/google/android/gms/internal/ads/zzqi;->zza(J)V

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzm:J

    goto :goto_2

    .line 22
    :cond_6
    throw v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzl:Ljava/lang/reflect/Method;

    .line 21
    :cond_7
    :goto_2
    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzp:J

    .line 4
    :cond_8
    :goto_3
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzG:Lcom/google/android/gms/internal/ads/zzdg;

    .line 23
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdg;->zzc()J

    move-result-wide v9

    div-long/2addr v9, v7

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqj;->zze:Lcom/google/android/gms/internal/ads/zzqh;

    .line 40
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/ads/zzqh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzqh;->zzf()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzqh;->zza()J

    move-result-wide v5

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzf:I

    .line 25
    invoke-static {v5, v6, v11}, Lcom/google/android/gms/internal/ads/zzeu;->zzt(JI)J

    move-result-wide v5

    .line 26
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzqh;->zzb()J

    move-result-wide v11

    sub-long v11, v9, v11

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzh:F

    .line 27
    invoke-static {v11, v12, v2}, Lcom/google/android/gms/internal/ads/zzeu;->zzq(JF)J

    move-result-wide v11

    add-long/2addr v5, v11

    goto :goto_5

    .line 39
    :cond_9
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzu:I

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v2, :cond_b

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzv:J

    cmp-long v2, v13, v11

    if-eqz v2, :cond_a

    .line 28
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqj;->zzn()J

    move-result-wide v13

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzf:I

    .line 29
    invoke-static {v13, v14, v2}, Lcom/google/android/gms/internal/ads/zzeu;->zzt(JI)J

    move-result-wide v13

    goto :goto_4

    .line 30
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqj;->zzm()J

    move-result-wide v13

    goto :goto_4

    :cond_b
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzj:J

    add-long/2addr v13, v9

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzh:F

    .line 31
    invoke-static {v13, v14, v2}, Lcom/google/android/gms/internal/ads/zzeu;->zzq(JF)J

    move-result-wide v13

    .line 29
    :goto_4
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzm:J

    sub-long/2addr v13, v7

    .line 32
    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzv:J

    cmp-long v2, v7, v11

    if-eqz v2, :cond_c

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzy:J

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzf:I

    .line 33
    invoke-static {v7, v8, v2}, Lcom/google/android/gms/internal/ads/zzeu;->zzt(JI)J

    move-result-wide v7

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 27
    :cond_c
    :goto_5
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzB:Z

    if-eq v2, v4, :cond_d

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzA:J

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzD:J

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzz:J

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzC:J

    :cond_d
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzD:J

    sub-long v7, v9, v7

    const-wide/32 v11, 0xf4240

    cmp-long v2, v7, v11

    if-gez v2, :cond_e

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzC:J

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzh:F

    .line 34
    invoke-static {v7, v8, v2}, Lcom/google/android/gms/internal/ads/zzeu;->zzq(JF)J

    move-result-wide v17

    add-long v13, v13, v17

    const-wide/16 v15, 0x3e8

    mul-long/2addr v7, v15

    div-long/2addr v7, v11

    mul-long/2addr v5, v7

    sub-long v7, v15, v7

    mul-long/2addr v7, v13

    add-long/2addr v5, v7

    div-long/2addr v5, v15

    :cond_e
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzi:Z

    if-nez v2, :cond_f

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzz:J

    cmp-long v2, v5, v7

    if-lez v2, :cond_f

    .line 35
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    if-ne v1, v3, :cond_f

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzi:Z

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzz:J

    sub-long v1, v5, v1

    .line 36
    sget v3, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzh:F

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzeu;->zzv(J)J

    move-result-wide v1

    .line 37
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzeu;->zzr(JF)J

    move-result-wide v1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzG:Lcom/google/android/gms/internal/ads/zzdg;

    .line 38
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdg;->zza()J

    move-result-wide v7

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzeu;->zzv(J)J

    move-result-wide v1

    sub-long/2addr v7, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzqj;->zza:Lcom/google/android/gms/internal/ads/zzqi;

    .line 39
    invoke-interface {v1, v7, v8}, Lcom/google/android/gms/internal/ads/zzqi;->zzb(J)V

    :cond_f
    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzA:J

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzz:J

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzqj;->zzB:Z

    return-wide v5
.end method

.method public final zzb(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqj;->zzl()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzx:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzG:Lcom/google/android/gms/internal/ads/zzdg;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdg;->zzb()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeu;->zzs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzv:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzy:J

    return-void
.end method

.method public final zzc()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqj;->zzo()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzc:Landroid/media/AudioTrack;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqj;->zze:Lcom/google/android/gms/internal/ads/zzqh;

    return-void
.end method

.method public final zzd(Landroid/media/AudioTrack;ZIII)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzc:Landroid/media/AudioTrack;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzd:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzqh;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzqh;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqj;->zze:Lcom/google/android/gms/internal/ads/zzqh;

    .line 2
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzf:I

    if-eqz p2, :cond_0

    .line 3
    sget p1, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    .line 4
    :cond_0
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzeu;->zzK(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzo:Z

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p1, :cond_1

    .line 5
    div-int/2addr p5, p4

    int-to-long p4, p5

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzf:I

    invoke-static {p4, p5, p1}, Lcom/google/android/gms/internal/ads/zzeu;->zzt(JI)J

    move-result-wide p4

    goto :goto_0

    :cond_1
    move-wide p4, p2

    :goto_0
    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzg:J

    const-wide/16 p4, 0x0

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzr:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzs:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzE:Z

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzF:J

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzn:Z

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzv:J

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzw:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzp:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzm:J

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzh:F

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzdg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzG:Lcom/google/android/gms/internal/ads/zzdg;

    return-void
.end method

.method public final zzf()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzv:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzG:Lcom/google/android/gms/internal/ads/zzdg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdg;->zzb()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeu;->zzs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzv:J

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqj;->zze:Lcom/google/android/gms/internal/ads/zzqh;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzqh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqh;->zze()V

    return-void
.end method

.method public final zzg(J)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqj;->zza()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzf:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeu;->zzp(JI)J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final zzh()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzc:Landroid/media/AudioTrack;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzi(J)Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzw:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzG:Lcom/google/android/gms/internal/ads/zzdg;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdg;->zzb()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzw:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0xc8

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzj(J)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzc:Landroid/media/AudioTrack;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzn:Z

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzqj;->zzg(J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzn:Z

    const/4 p2, 0x1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    if-eq v0, p2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqj;->zza:Lcom/google/android/gms/internal/ads/zzqi;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzd:I

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzg:J

    .line 3
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzeu;->zzv(J)J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzqi;->zze(IJ)V

    :cond_0
    return p2
.end method

.method public final zzk()Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqj;->zzo()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzv:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqj;->zze:Lcom/google/android/gms/internal/ads/zzqh;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzqh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqh;->zze()V

    const/4 v0, 0x1

    return v0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqj;->zzl()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqj;->zzx:J

    const/4 v0, 0x0

    return v0
.end method
