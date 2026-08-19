.class final Lcom/google/android/gms/internal/ads/zzafq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadc;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzek;

.field private zzb:Lcom/google/android/gms/internal/ads/zzadf;

.field private zzc:I

.field private zzd:I

.field private zze:I

.field private zzf:J

.field private zzg:Lcom/google/android/gms/internal/ads/zzagt;

.field private zzh:Lcom/google/android/gms/internal/ads/zzadd;

.field private zzi:Lcom/google/android/gms/internal/ads/zzaft;

.field private zzj:Lcom/google/android/gms/internal/ads/zzaiq;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzek;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzek;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzafq;->zza:Lcom/google/android/gms/internal/ads/zzek;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzafq;->zzf:J

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzadd;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafq;->zza:Lcom/google/android/gms/internal/ads/zzek;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzek;->zzI(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzacr;

    const/4 v3, 0x0

    .line 2
    invoke-virtual {p1, v2, v3, v1, v3}, Lcom/google/android/gms/internal/ads/zzacr;->zzm([BIIZ)Z

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzq()I

    move-result p1

    return p1
.end method

.method private final zzg()V
    .locals 6

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafq;->zzb:Lcom/google/android/gms/internal/ads/zzadf;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzadf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzadf;->zzG()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafq;->zzb:Lcom/google/android/gms/internal/ads/zzadf;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaea;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, 0x0

    .line 2
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzaea;-><init>(JJ)V

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzadf;->zzP(Lcom/google/android/gms/internal/ads/zzaeb;)V

    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzafq;->zzc:I

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzadd;Lcom/google/android/gms/internal/ads/zzady;)I
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzafq;->zzc:I

    const/4 v4, 0x4

    const-wide/16 v5, -0x1

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v3, :cond_19

    if-eq v3, v8, :cond_18

    const/4 v10, -0x1

    if-eq v3, v7, :cond_a

    const/4 v5, 0x5

    if-eq v3, v4, :cond_5

    if-eq v3, v5, :cond_1

    const/4 v1, 0x6

    if-ne v3, v1, :cond_0

    return v10

    .line 23
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 42
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 20
    :cond_1
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzafq;->zzi:Lcom/google/android/gms/internal/ads/zzaft;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzafq;->zzh:Lcom/google/android/gms/internal/ads/zzadd;

    if-eq v1, v3, :cond_3

    :cond_2
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzafq;->zzh:Lcom/google/android/gms/internal/ads/zzadd;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaft;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzafq;->zzf:J

    .line 21
    invoke-direct {v3, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzaft;-><init>(Lcom/google/android/gms/internal/ads/zzadd;J)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzafq;->zzi:Lcom/google/android/gms/internal/ads/zzaft;

    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafq;->zzj:Lcom/google/android/gms/internal/ads/zzaiq;

    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzaiq;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzafq;->zzi:Lcom/google/android/gms/internal/ads/zzaft;

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzaiq;->zzb(Lcom/google/android/gms/internal/ads/zzadd;Lcom/google/android/gms/internal/ads/zzady;)I

    move-result v1

    if-ne v1, v8, :cond_4

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzady;->zza:J

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzafq;->zzf:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzady;->zza:J

    :cond_4
    return v1

    .line 7
    :cond_5
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzf()J

    move-result-wide v6

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzafq;->zzf:J

    cmp-long v3, v6, v10

    if-nez v3, :cond_9

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafq;->zza:Lcom/google/android/gms/internal/ads/zzek;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v2

    .line 24
    invoke-interface {v1, v2, v9, v8, v8}, Lcom/google/android/gms/internal/ads/zzadd;->zzm([BIIZ)Z

    move-result v2

    if-nez v2, :cond_6

    .line 25
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafq;->zzg()V

    goto :goto_0

    .line 26
    :cond_6
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzj()V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafq;->zzj:Lcom/google/android/gms/internal/ads/zzaiq;

    if-nez v2, :cond_7

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaiq;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzajy;->zza:Lcom/google/android/gms/internal/ads/zzajy;

    const/16 v6, 0x8

    .line 27
    invoke-direct {v2, v3, v6}, Lcom/google/android/gms/internal/ads/zzaiq;-><init>(Lcom/google/android/gms/internal/ads/zzajy;I)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzafq;->zzj:Lcom/google/android/gms/internal/ads/zzaiq;

    :cond_7
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaft;

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzafq;->zzf:J

    .line 28
    invoke-direct {v2, v1, v6, v7}, Lcom/google/android/gms/internal/ads/zzaft;-><init>(Lcom/google/android/gms/internal/ads/zzadd;J)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzafq;->zzi:Lcom/google/android/gms/internal/ads/zzaft;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafq;->zzj:Lcom/google/android/gms/internal/ads/zzaiq;

    .line 29
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaiq;->zzi(Lcom/google/android/gms/internal/ads/zzadd;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafq;->zzj:Lcom/google/android/gms/internal/ads/zzaiq;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzafv;

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzafq;->zzf:J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzafq;->zzb:Lcom/google/android/gms/internal/ads/zzadf;

    .line 40
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    move-object v10, v3

    check-cast v10, Lcom/google/android/gms/internal/ads/zzadf;

    invoke-direct {v2, v6, v7, v3}, Lcom/google/android/gms/internal/ads/zzafv;-><init>(JLcom/google/android/gms/internal/ads/zzadf;)V

    .line 31
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaiq;->zze(Lcom/google/android/gms/internal/ads/zzadf;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzafq;->zzg:Lcom/google/android/gms/internal/ads/zzagt;

    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzagt;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafq;->zzb:Lcom/google/android/gms/internal/ads/zzadf;

    .line 38
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzadf;

    const/16 v3, 0x400

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzadf;->zzw(II)Lcom/google/android/gms/internal/ads/zzaei;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzx;

    .line 34
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    const-string v4, "image/jpeg"

    .line 35
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzE(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzav;

    new-array v6, v8, [Lcom/google/android/gms/internal/ads/zzau;

    aput-object v1, v6, v9

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v4, v7, v8, v6}, Lcom/google/android/gms/internal/ads/zzav;-><init>(J[Lcom/google/android/gms/internal/ads/zzau;)V

    .line 36
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzW(Lcom/google/android/gms/internal/ads/zzav;)Lcom/google/android/gms/internal/ads/zzx;

    .line 37
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v1

    .line 34
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzaei;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzafq;->zzc:I

    goto :goto_0

    .line 41
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafq;->zzg()V

    :goto_0
    return v9

    :cond_9
    iput-wide v10, v2, Lcom/google/android/gms/internal/ads/zzady;->zza:J

    return v8

    :cond_a
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzafq;->zzd:I

    const v3, 0xffe1

    if-ne v2, v3, :cond_16

    .line 8
    new-instance v2, Lcom/google/android/gms/internal/ads/zzek;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzafq;->zze:I

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzek;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v3

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzafq;->zze:I

    .line 9
    invoke-interface {v1, v3, v9, v4}, Lcom/google/android/gms/internal/ads/zzadd;->zzi([BII)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzafq;->zzg:Lcom/google/android/gms/internal/ads/zzagt;

    if-nez v3, :cond_15

    .line 10
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzek;->zzy(C)Ljava/lang/String;

    move-result-object v3

    const-string v4, "http://ns.adobe.com/xap/1.0/"

    .line 11
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 12
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzek;->zzy(C)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzd()J

    move-result-wide v3

    cmp-long v1, v3, v5

    if-nez v1, :cond_c

    :cond_b
    :goto_1
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 13
    :cond_c
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzafw;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzafs;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_1

    :cond_d
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzafs;->zzb:Ljava/util/List;

    .line 14
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v11, v7, :cond_e

    goto :goto_1

    .line 15
    :cond_e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v7, v10

    move-wide v11, v5

    move-wide v13, v11

    move-wide/from16 v17, v13

    move-wide/from16 v19, v17

    move v10, v9

    :goto_2
    if-ltz v7, :cond_13

    .line 16
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/ads/zzafr;

    .line 17
    iget-object v8, v15, Lcom/google/android/gms/internal/ads/zzafr;->zza:Ljava/lang/String;

    const-string v9, "video/mp4"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v8, v10

    if-nez v7, :cond_f

    .line 18
    iget-wide v9, v15, Lcom/google/android/gms/internal/ads/zzafr;->zzc:J

    sub-long/2addr v3, v9

    const-wide/16 v9, 0x0

    goto :goto_3

    .line 19
    :cond_f
    iget-wide v9, v15, Lcom/google/android/gms/internal/ads/zzafr;->zzb:J

    sub-long v9, v3, v9

    :goto_3
    move-wide/from16 v21, v3

    move-wide v3, v9

    move-wide/from16 v9, v21

    if-eqz v8, :cond_10

    cmp-long v15, v3, v9

    if-eqz v15, :cond_10

    sub-long v19, v9, v3

    move-wide/from16 v17, v3

    const/4 v8, 0x0

    :cond_10
    if-nez v7, :cond_11

    move-wide v13, v9

    :cond_11
    if-nez v7, :cond_12

    move-wide v11, v3

    :cond_12
    add-int/lit8 v7, v7, -0x1

    move v10, v8

    const/4 v9, 0x0

    goto :goto_2

    :cond_13
    cmp-long v2, v17, v5

    if-eqz v2, :cond_b

    cmp-long v2, v19, v5

    if-eqz v2, :cond_b

    cmp-long v2, v11, v5

    if-eqz v2, :cond_b

    cmp-long v2, v13, v5

    if-nez v2, :cond_14

    goto :goto_1

    :cond_14
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzafs;->zza:J

    new-instance v8, Lcom/google/android/gms/internal/ads/zzagt;

    move-object v10, v8

    move-wide v15, v1

    invoke-direct/range {v10 .. v20}, Lcom/google/android/gms/internal/ads/zzagt;-><init>(JJJJJ)V

    .line 12
    :goto_4
    iput-object v8, v0, Lcom/google/android/gms/internal/ads/zzafq;->zzg:Lcom/google/android/gms/internal/ads/zzagt;

    if-eqz v8, :cond_17

    iget-wide v1, v8, Lcom/google/android/gms/internal/ads/zzagt;->zzd:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzafq;->zzf:J

    goto :goto_5

    :cond_15
    move v2, v9

    goto :goto_6

    .line 19
    :cond_16
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzafq;->zze:I

    .line 20
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzadd;->zzk(I)V

    :cond_17
    :goto_5
    const/4 v2, 0x0

    .line 12
    :goto_6
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzafq;->zzc:I

    return v2

    :cond_18
    move v2, v9

    .line 4
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzafq;->zza:Lcom/google/android/gms/internal/ads/zzek;

    .line 5
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzek;->zzI(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v4

    .line 6
    invoke-interface {v1, v4, v2, v7}, Lcom/google/android/gms/internal/ads/zzadd;->zzi([BII)V

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzq()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzafq;->zze:I

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzafq;->zzc:I

    return v2

    :cond_19
    move v2, v9

    .line 1
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzafq;->zza:Lcom/google/android/gms/internal/ads/zzek;

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzek;->zzI(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v9

    .line 2
    invoke-interface {v1, v9, v2, v7}, Lcom/google/android/gms/internal/ads/zzadd;->zzi([BII)V

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzq()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzafq;->zzd:I

    const v2, 0xffda

    if-ne v1, v2, :cond_1b

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzafq;->zzf:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_1a

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzafq;->zzc:I

    goto :goto_7

    .line 4
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzafq;->zzg()V

    goto :goto_7

    :cond_1b
    const v2, 0xffd0

    if-lt v1, v2, :cond_1c

    const v2, 0xffd9

    if-le v1, v2, :cond_1d

    :cond_1c
    const v2, 0xff01

    if-eq v1, v2, :cond_1d

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzafq;->zzc:I

    :cond_1d
    :goto_7
    const/4 v1, 0x0

    return v1
.end method

.method public final synthetic zzc()Lcom/google/android/gms/internal/ads/zzadc;
    .locals 0

    return-object p0
.end method

.method public final synthetic zzd()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v0

    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzadf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafq;->zzb:Lcom/google/android/gms/internal/ads/zzadf;

    return-void
.end method

.method public final zzf(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzafq;->zzc:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafq;->zzj:Lcom/google/android/gms/internal/ads/zzaiq;

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzafq;->zzc:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafq;->zzj:Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzaiq;->zzf(JJ)V

    :cond_1
    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzadd;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzafq;->zza(Lcom/google/android/gms/internal/ads/zzadd;)I

    move-result v0

    const v1, 0xffd8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzafq;->zza(Lcom/google/android/gms/internal/ads/zzadd;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzafq;->zzd:I

    const v1, 0xffe0

    const/4 v3, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafq;->zza:Lcom/google/android/gms/internal/ads/zzek;

    .line 3
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzI(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v1

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzacr;

    .line 4
    invoke-virtual {v4, v1, v2, v3, v2}, Lcom/google/android/gms/internal/ads/zzacr;->zzm([BIIZ)Z

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzq()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .line 6
    invoke-virtual {v4, v0, v2}, Lcom/google/android/gms/internal/ads/zzacr;->zzl(IZ)Z

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzafq;->zza(Lcom/google/android/gms/internal/ads/zzadd;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzafq;->zzd:I

    :cond_1
    const v1, 0xffe1

    if-ne v0, v1, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzacr;

    .line 8
    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/ads/zzacr;->zzl(IZ)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafq;->zza:Lcom/google/android/gms/internal/ads/zzek;

    const/4 v1, 0x6

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzek;->zzI(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v3

    .line 10
    invoke-virtual {p1, v3, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzacr;->zzm([BIIZ)Z

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzu()J

    move-result-wide v3

    const-wide/32 v5, 0x45786966    # 5.758429993E-315

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzq()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v2
.end method
