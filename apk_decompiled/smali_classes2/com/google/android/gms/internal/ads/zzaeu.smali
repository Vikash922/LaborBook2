.class public final Lcom/google/android/gms/internal/ads/zzaeu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadc;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzek;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzaes;

.field private final zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/ads/zzajy;

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/ads/zzadf;

.field private zzg:Lcom/google/android/gms/internal/ads/zzaev;

.field private zzh:J

.field private zzi:[Lcom/google/android/gms/internal/ads/zzaex;

.field private zzj:J

.field private zzk:Lcom/google/android/gms/internal/ads/zzaex;

.field private zzl:I

.field private zzm:J

.field private zzn:J

.field private zzo:I

.field private zzp:Z


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzajy;->zza:Lcom/google/android/gms/internal/ads/zzajy;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzaeu;-><init>(ILcom/google/android/gms/internal/ads/zzajy;)V

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzajy;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzd:Lcom/google/android/gms/internal/ads/zzajy;

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    const/4 v0, 0x0

    if-eq p2, p1, :cond_0

    move p2, v0

    :cond_0
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzc:Z

    new-instance p1, Lcom/google/android/gms/internal/ads/zzek;

    const/16 p2, 0xc

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzek;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zza:Lcom/google/android/gms/internal/ads/zzek;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaes;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzaes;-><init>(Lcom/google/android/gms/internal/ads/zzaet;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzb:Lcom/google/android/gms/internal/ads/zzaes;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzadw;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzadw;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzf:Lcom/google/android/gms/internal/ads/zzadf;

    new-array p1, v0, [Lcom/google/android/gms/internal/ads/zzaex;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzi:[Lcom/google/android/gms/internal/ads/zzaex;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzm:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzn:J

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzl:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzh:J

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzaeu;)[Lcom/google/android/gms/internal/ads/zzaex;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzi:[Lcom/google/android/gms/internal/ads/zzaex;

    return-object p0
.end method

.method private final zzg(I)Lcom/google/android/gms/internal/ads/zzaex;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzi:[Lcom/google/android/gms/internal/ads/zzaex;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzaex;->zzf(I)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzadd;Lcom/google/android/gms/internal/ads/zzady;)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 15
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzj:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_2

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzf()J

    move-result-wide v9

    cmp-long v6, v2, v9

    if-ltz v6, :cond_1

    const-wide/32 v11, 0x40000

    add-long/2addr v11, v9

    cmp-long v6, v2, v11

    if-lez v6, :cond_0

    goto :goto_0

    :cond_0
    sub-long/2addr v2, v9

    long-to-int v2, v2

    .line 1
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzadd;->zzk(I)V

    goto :goto_1

    :cond_1
    :goto_0
    move-object/from16 v6, p2

    .line 15
    iput-wide v2, v6, Lcom/google/android/gms/internal/ads/zzady;->zza:J

    move v2, v7

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v8

    :goto_2
    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzj:J

    if-eqz v2, :cond_3

    return v7

    :cond_3
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zze:I

    const/16 v3, 0xc

    const/4 v6, 0x0

    if-eqz v2, :cond_2d

    const v9, 0x6c726468

    const v10, 0x5453494c

    const/4 v11, 0x2

    if-eq v2, v7, :cond_2a

    const/4 v12, 0x3

    if-eq v2, v11, :cond_1e

    const v11, 0x69766f6d

    const/4 v13, 0x4

    const/16 v9, 0x10

    if-eq v2, v12, :cond_16

    const/4 v12, 0x5

    const/16 v4, 0x8

    if-eq v2, v13, :cond_14

    if-eq v2, v12, :cond_c

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzf()J

    move-result-wide v12

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzn:J

    cmp-long v2, v12, v14

    if-ltz v2, :cond_4

    const/4 v8, -0x1

    goto/16 :goto_4

    :cond_4
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzk:Lcom/google/android/gms/internal/ads/zzaex;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaex;->zzg(Lcom/google/android/gms/internal/ads/zzadd;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzk:Lcom/google/android/gms/internal/ads/zzaex;

    return v8

    :cond_6
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzf()J

    move-result-wide v5

    const-wide/16 v12, 0x1

    and-long/2addr v5, v12

    cmp-long v2, v5, v12

    if-nez v2, :cond_7

    .line 2
    invoke-interface {v1, v7}, Lcom/google/android/gms/internal/ads/zzadd;->zzk(I)V

    :cond_7
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zza:Lcom/google/android/gms/internal/ads/zzek;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v5

    .line 3
    invoke-interface {v1, v5, v8, v3}, Lcom/google/android/gms/internal/ads/zzadd;->zzh([BII)V

    .line 4
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzi()I

    move-result v5

    if-ne v5, v10, :cond_9

    .line 6
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzi()I

    move-result v2

    if-ne v2, v11, :cond_8

    goto :goto_3

    :cond_8
    move v3, v4

    .line 8
    :goto_3
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzadd;->zzk(I)V

    .line 9
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzj()V

    goto :goto_4

    .line 10
    :cond_9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzi()I

    move-result v2

    const v3, 0x4b4e554a    # 1.352225E7f

    if-ne v5, v3, :cond_a

    int-to-long v2, v2

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzf()J

    move-result-wide v4

    add-long/2addr v4, v2

    const-wide/16 v1, 0x8

    add-long/2addr v4, v1

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzj:J

    goto :goto_4

    .line 11
    :cond_a
    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/zzadd;->zzk(I)V

    .line 12
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzj()V

    .line 13
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzaeu;->zzg(I)Lcom/google/android/gms/internal/ads/zzaex;

    move-result-object v3

    if-nez v3, :cond_b

    int-to-long v2, v2

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzf()J

    move-result-wide v4

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzj:J

    goto :goto_4

    .line 14
    :cond_b
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzaex;->zzd(I)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzk:Lcom/google/android/gms/internal/ads/zzaex;

    :goto_4
    return v8

    .line 16
    :cond_c
    new-instance v2, Lcom/google/android/gms/internal/ads/zzek;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzo:I

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzek;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v3

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzo:I

    .line 17
    invoke-interface {v1, v3, v8, v5}, Lcom/google/android/gms/internal/ads/zzadd;->zzi([BII)V

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v1

    if-ge v1, v9, :cond_d

    const-wide/16 v5, 0x0

    goto :goto_6

    .line 34
    :cond_d
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    move-result v1

    .line 19
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzi()I

    move-result v3

    int-to-long v3, v3

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzm:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_e

    const-wide/16 v5, 0x0

    goto :goto_5

    :cond_e
    const-wide/16 v3, 0x8

    add-long/2addr v5, v3

    .line 21
    :goto_5
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 22
    :cond_f
    :goto_6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v1

    if-lt v1, v9, :cond_11

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzi()I

    move-result v1

    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzi()I

    move-result v3

    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzi()I

    move-result v4

    int-to-long v10, v4

    add-long/2addr v10, v5

    .line 26
    invoke-virtual {v2, v13}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 27
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaeu;->zzg(I)Lcom/google/android/gms/internal/ads/zzaex;

    move-result-object v1

    if-eqz v1, :cond_f

    and-int/2addr v3, v9

    if-ne v3, v9, :cond_10

    move v3, v7

    goto :goto_7

    :cond_10
    move v3, v8

    .line 28
    :goto_7
    invoke-virtual {v1, v10, v11, v3}, Lcom/google/android/gms/internal/ads/zzaex;->zzb(JZ)V

    goto :goto_6

    :cond_11
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzi:[Lcom/google/android/gms/internal/ads/zzaex;

    .line 29
    array-length v2, v1

    move v3, v8

    :goto_8
    if-ge v3, v2, :cond_12

    aget-object v4, v1, v3

    .line 30
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzaex;->zzc()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_12
    iput-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzp:Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzi:[Lcom/google/android/gms/internal/ads/zzaex;

    .line 31
    array-length v1, v1

    if-nez v1, :cond_13

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzf:Lcom/google/android/gms/internal/ads/zzadf;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaea;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzh:J

    const-wide/16 v5, 0x0

    .line 32
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzaea;-><init>(JJ)V

    .line 33
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzadf;->zzP(Lcom/google/android/gms/internal/ads/zzaeb;)V

    goto :goto_9

    :cond_13
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzf:Lcom/google/android/gms/internal/ads/zzadf;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaer;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzh:J

    invoke-direct {v2, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzaer;-><init>(Lcom/google/android/gms/internal/ads/zzaeu;J)V

    .line 34
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzadf;->zzP(Lcom/google/android/gms/internal/ads/zzaeb;)V

    :goto_9
    const/4 v1, 0x6

    .line 33
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zze:I

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzm:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzj:J

    return v8

    .line 21
    :cond_14
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zza:Lcom/google/android/gms/internal/ads/zzek;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v3

    .line 35
    invoke-interface {v1, v3, v8, v4}, Lcom/google/android/gms/internal/ads/zzadd;->zzi([BII)V

    .line 36
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 37
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzi()I

    move-result v3

    .line 38
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzi()I

    move-result v2

    const v4, 0x31786469

    if-ne v3, v4, :cond_15

    iput v12, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zze:I

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzo:I

    goto :goto_a

    :cond_15
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzf()J

    move-result-wide v3

    int-to-long v1, v2

    add-long/2addr v3, v1

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzj:J

    :goto_a
    return v8

    :cond_16
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzm:J

    const-wide/16 v14, -0x1

    cmp-long v2, v4, v14

    if-eqz v2, :cond_18

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzf()J

    move-result-wide v14

    cmp-long v2, v14, v4

    if-nez v2, :cond_17

    goto :goto_b

    .line 47
    :cond_17
    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzj:J

    return v8

    .line 38
    :cond_18
    :goto_b
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zza:Lcom/google/android/gms/internal/ads/zzek;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v4

    .line 39
    invoke-interface {v1, v4, v8, v3}, Lcom/google/android/gms/internal/ads/zzadd;->zzh([BII)V

    .line 40
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzj()V

    .line 41
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzb:Lcom/google/android/gms/internal/ads/zzaes;

    .line 42
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzaes;->zza(Lcom/google/android/gms/internal/ads/zzek;)V

    .line 43
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzi()I

    move-result v2

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzaes;->zza:I

    const v6, 0x46464952

    if-ne v5, v6, :cond_19

    .line 44
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzadd;->zzk(I)V

    return v8

    :cond_19
    if-ne v5, v10, :cond_1d

    if-eq v2, v11, :cond_1a

    goto :goto_d

    :cond_1a
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzf()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzm:J

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzaes;->zzb:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x8

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzn:J

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzp:Z

    if-nez v4, :cond_1c

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzg:Lcom/google/android/gms/internal/ads/zzaev;

    .line 48
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/internal/ads/zzaev;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzaev;->zzb:I

    and-int/2addr v4, v9

    if-eq v4, v9, :cond_1b

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzf:Lcom/google/android/gms/internal/ads/zzadf;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaea;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzh:J

    const-wide/16 v9, 0x0

    .line 46
    invoke-direct {v3, v4, v5, v9, v10}, Lcom/google/android/gms/internal/ads/zzaea;-><init>(JJ)V

    .line 47
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzadf;->zzP(Lcom/google/android/gms/internal/ads/zzaeb;)V

    iput-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzp:Z

    goto :goto_c

    :cond_1b
    iput v13, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zze:I

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzj:J

    return v8

    :cond_1c
    :goto_c
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzf()J

    move-result-wide v1

    const-wide/16 v3, 0xc

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzj:J

    const/4 v1, 0x6

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zze:I

    return v8

    .line 44
    :cond_1d
    :goto_d
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzf()J

    move-result-wide v1

    iget v3, v4, Lcom/google/android/gms/internal/ads/zzaes;->zzb:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x8

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzj:J

    return v8

    .line 47
    :cond_1e
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzl:I

    add-int/lit8 v2, v2, -0x4

    .line 49
    new-instance v3, Lcom/google/android/gms/internal/ads/zzek;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzek;-><init>(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v4

    .line 50
    invoke-interface {v1, v4, v8, v2}, Lcom/google/android/gms/internal/ads/zzadd;->zzi([BII)V

    .line 51
    invoke-static {v9, v3}, Lcom/google/android/gms/internal/ads/zzaey;->zzc(ILcom/google/android/gms/internal/ads/zzek;)Lcom/google/android/gms/internal/ads/zzaey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaey;->zza()I

    move-result v2

    if-ne v2, v9, :cond_29

    .line 53
    const-class v2, Lcom/google/android/gms/internal/ads/zzaev;

    .line 54
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaey;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzaeq;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzaev;

    if-eqz v2, :cond_28

    .line 55
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzg:Lcom/google/android/gms/internal/ads/zzaev;

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzaev;->zzc:I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzaev;->zza:I

    int-to-long v3, v3

    int-to-long v9, v2

    mul-long/2addr v3, v9

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzh:J

    new-instance v2, Ljava/util/ArrayList;

    .line 56
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaey;->zza:Lcom/google/android/gms/internal/ads/zzfww;

    .line 57
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move v4, v8

    move v5, v4

    :goto_e
    if-ge v4, v3, :cond_27

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 58
    check-cast v9, Lcom/google/android/gms/internal/ads/zzaeq;

    .line 59
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzaeq;->zza()I

    move-result v10

    const v13, 0x6c727473

    if-ne v10, v13, :cond_26

    .line 60
    check-cast v9, Lcom/google/android/gms/internal/ads/zzaey;

    add-int/lit8 v10, v5, 0x1

    const-class v13, Lcom/google/android/gms/internal/ads/zzaew;

    .line 61
    invoke-virtual {v9, v13}, Lcom/google/android/gms/internal/ads/zzaey;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzaeq;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/ads/zzaew;

    const-class v14, Lcom/google/android/gms/internal/ads/zzaez;

    .line 62
    invoke-virtual {v9, v14}, Lcom/google/android/gms/internal/ads/zzaey;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzaeq;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/ads/zzaez;

    const-string v15, "AviExtractor"

    if-nez v13, :cond_1f

    const-string v5, "Missing Stream Header"

    .line 63
    invoke-static {v15, v5}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :cond_1f
    if-nez v14, :cond_20

    .line 76
    const-string v5, "Missing Stream Format"

    .line 64
    invoke-static {v15, v5}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 65
    :cond_20
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzaew;->zzc()J

    move-result-wide v11

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzaez;->zza:Lcom/google/android/gms/internal/ads/zzz;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzz;->zzb()Lcom/google/android/gms/internal/ads/zzx;

    move-result-object v15

    .line 66
    invoke-virtual {v15, v5}, Lcom/google/android/gms/internal/ads/zzx;->zzN(I)Lcom/google/android/gms/internal/ads/zzx;

    iget v6, v13, Lcom/google/android/gms/internal/ads/zzaew;->zze:I

    if-eqz v6, :cond_21

    .line 67
    invoke-virtual {v15, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzT(I)Lcom/google/android/gms/internal/ads/zzx;

    :cond_21
    const-class v6, Lcom/google/android/gms/internal/ads/zzafa;

    .line 68
    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/ads/zzaey;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzaeq;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzafa;

    if-eqz v6, :cond_22

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzafa;->zza:Ljava/lang/String;

    .line 69
    invoke-virtual {v15, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzQ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    :cond_22
    iget-object v6, v14, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 70
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzay;->zzb(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v7, :cond_24

    const/4 v9, 0x2

    if-ne v6, v9, :cond_23

    const/4 v6, 0x2

    goto :goto_f

    :cond_23
    const/4 v6, 0x0

    goto :goto_10

    :cond_24
    :goto_f
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzf:Lcom/google/android/gms/internal/ads/zzadf;

    .line 71
    invoke-interface {v9, v5, v6}, Lcom/google/android/gms/internal/ads/zzadf;->zzw(II)Lcom/google/android/gms/internal/ads/zzaei;

    move-result-object v6

    .line 72
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v9

    invoke-interface {v6, v9}, Lcom/google/android/gms/internal/ads/zzaei;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    .line 73
    invoke-interface {v6, v11, v12}, Lcom/google/android/gms/internal/ads/zzaei;->zzl(J)V

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzh:J

    .line 74
    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzh:J

    new-instance v9, Lcom/google/android/gms/internal/ads/zzaex;

    .line 75
    invoke-direct {v9, v5, v13, v6}, Lcom/google/android/gms/internal/ads/zzaex;-><init>(ILcom/google/android/gms/internal/ads/zzaew;Lcom/google/android/gms/internal/ads/zzaei;)V

    move-object v6, v9

    :goto_10
    if-eqz v6, :cond_25

    .line 76
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    move v5, v10

    :cond_26
    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x3

    goto/16 :goto_e

    .line 75
    :cond_27
    new-array v1, v8, [Lcom/google/android/gms/internal/ads/zzaex;

    .line 77
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/ads/zzaex;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzi:[Lcom/google/android/gms/internal/ads/zzaex;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzf:Lcom/google/android/gms/internal/ads/zzadf;

    .line 78
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzadf;->zzG()V

    const/4 v1, 0x3

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zze:I

    return v8

    .line 54
    :cond_28
    const-string v1, "AviHeader not found"

    const/4 v2, 0x0

    .line 55
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v1

    throw v1

    :cond_29
    move-object v2, v6

    .line 51
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaey;->zza()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected header list type "

    .line 52
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v1

    throw v1

    .line 14
    :cond_2a
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zza:Lcom/google/android/gms/internal/ads/zzek;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v4

    .line 79
    invoke-interface {v1, v4, v8, v3}, Lcom/google/android/gms/internal/ads/zzadd;->zzi([BII)V

    .line 80
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzb:Lcom/google/android/gms/internal/ads/zzaes;

    .line 81
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaes;->zza(Lcom/google/android/gms/internal/ads/zzek;)V

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzaes;->zza:I

    if-ne v3, v10, :cond_2c

    .line 83
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzi()I

    move-result v2

    if-ne v2, v9, :cond_2b

    .line 84
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzaes;->zzb:I

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzl:I

    const/4 v1, 0x2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zze:I

    return v8

    .line 83
    :cond_2b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "hdrl expected, found: "

    .line 84
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v1

    throw v1

    :cond_2c
    const/4 v2, 0x0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "LIST expected, found: "

    .line 82
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v1

    throw v1

    :cond_2d
    move-object v2, v6

    .line 85
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzaeu;->zzi(Lcom/google/android/gms/internal/ads/zzadd;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 86
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzadd;->zzk(I)V

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zze:I

    return v8

    .line 1
    :cond_2e
    const-string v1, "AVI Header List not found"

    .line 87
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v1

    throw v1
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
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zze:I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzc:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzd:Lcom/google/android/gms/internal/ads/zzajy;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzakb;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzakb;-><init>(Lcom/google/android/gms/internal/ads/zzadf;Lcom/google/android/gms/internal/ads/zzajy;)V

    move-object p1, v1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzf:Lcom/google/android/gms/internal/ads/zzadf;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzj:J

    return-void
.end method

.method public final zzf(JJ)V
    .locals 3

    const-wide/16 p3, -0x1

    .line 1
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzj:J

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzk:Lcom/google/android/gms/internal/ads/zzaex;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzi:[Lcom/google/android/gms/internal/ads/zzaex;

    array-length p4, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_0

    aget-object v2, p3, v1

    .line 2
    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzaex;->zze(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzi:[Lcom/google/android/gms/internal/ads/zzaex;

    .line 3
    array-length p1, p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    :goto_1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zze:I

    return-void

    :cond_2
    const/4 p1, 0x6

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zze:I

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzadd;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zza:Lcom/google/android/gms/internal/ads/zzek;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v1

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-interface {p1, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzadd;->zzh([BII)V

    .line 2
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzi()I

    move-result p1

    const v1, 0x46464952

    if-eq p1, v1, :cond_0

    return v3

    :cond_0
    const/4 p1, 0x4

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzi()I

    move-result p1

    const v0, 0x20495641

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v3
.end method
