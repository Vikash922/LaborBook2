.class public final Lcom/google/android/gms/internal/ads/zzang;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadc;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzer;

.field private final zzb:Landroid/util/SparseArray;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzek;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzane;

.field private zze:Z

.field private zzf:Z

.field private zzg:Z

.field private zzh:J

.field private zzi:Lcom/google/android/gms/internal/ads/zzand;

.field private zzj:Lcom/google/android/gms/internal/ads/zzadf;

.field private zzk:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzer;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzer;-><init>(J)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzang;->zza:Lcom/google/android/gms/internal/ads/zzer;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzek;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzek;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzang;->zzc:Lcom/google/android/gms/internal/ads/zzek;

    new-instance v0, Landroid/util/SparseArray;

    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzang;->zzb:Landroid/util/SparseArray;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzane;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzane;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzang;->zzd:Lcom/google/android/gms/internal/ads/zzane;

    return-void
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

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzang;->zzj:Lcom/google/android/gms/internal/ads/zzadf;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzd()J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v3, v10, v12

    if-eqz v3, :cond_1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzang;->zzd:Lcom/google/android/gms/internal/ads/zzane;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzane;->zze()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzane;->zza(Lcom/google/android/gms/internal/ads/zzadd;Lcom/google/android/gms/internal/ads/zzady;)I

    move-result v1

    return v1

    .line 1
    :cond_1
    :goto_0
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzang;->zzk:Z

    const/4 v14, 0x1

    if-nez v4, :cond_3

    iput-boolean v14, v0, Lcom/google/android/gms/internal/ads/zzang;->zzk:Z

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzang;->zzd:Lcom/google/android/gms/internal/ads/zzane;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzane;->zzb()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    new-instance v15, Lcom/google/android/gms/internal/ads/zzand;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzane;->zzd()Lcom/google/android/gms/internal/ads/zzer;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzane;->zzb()J

    move-result-wide v6

    move-object v4, v15

    move-wide v8, v10

    .line 2
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzand;-><init>(Lcom/google/android/gms/internal/ads/zzer;JJ)V

    iput-object v15, v0, Lcom/google/android/gms/internal/ads/zzang;->zzi:Lcom/google/android/gms/internal/ads/zzand;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzang;->zzj:Lcom/google/android/gms/internal/ads/zzadf;

    .line 3
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzacn;->zzb()Lcom/google/android/gms/internal/ads/zzaeb;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/ads/zzadf;->zzP(Lcom/google/android/gms/internal/ads/zzaeb;)V

    goto :goto_1

    .line 38
    :cond_2
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzang;->zzj:Lcom/google/android/gms/internal/ads/zzadf;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzaea;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzane;->zzb()J

    move-result-wide v7

    const-wide/16 v14, 0x0

    .line 4
    invoke-direct {v6, v7, v8, v14, v15}, Lcom/google/android/gms/internal/ads/zzaea;-><init>(JJ)V

    .line 5
    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/ads/zzadf;->zzP(Lcom/google/android/gms/internal/ads/zzaeb;)V

    .line 3
    :cond_3
    :goto_1
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzang;->zzi:Lcom/google/android/gms/internal/ads/zzand;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzacn;->zze()Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    .line 38
    :cond_4
    invoke-virtual {v5, v1, v2}, Lcom/google/android/gms/internal/ads/zzacn;->zza(Lcom/google/android/gms/internal/ads/zzadd;Lcom/google/android/gms/internal/ads/zzady;)I

    move-result v1

    return v1

    .line 6
    :cond_5
    :goto_2
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzj()V

    if-eqz v3, :cond_6

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zze()J

    move-result-wide v2

    sub-long/2addr v10, v2

    goto :goto_3

    :cond_6
    move-wide v10, v12

    :goto_3
    cmp-long v2, v10, v12

    const/4 v3, -0x1

    if-eqz v2, :cond_8

    const-wide/16 v5, 0x4

    cmp-long v2, v10, v5

    if-ltz v2, :cond_7

    goto :goto_4

    :cond_7
    return v3

    :cond_8
    :goto_4
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzang;->zzc:Lcom/google/android/gms/internal/ads/zzek;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v5

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 7
    invoke-interface {v1, v5, v7, v6, v4}, Lcom/google/android/gms/internal/ads/zzadd;->zzm([BIIZ)Z

    move-result v5

    if-nez v5, :cond_9

    return v3

    .line 8
    :cond_9
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v5

    const/16 v6, 0x1b9

    if-ne v5, v6, :cond_a

    return v3

    :cond_a
    const/16 v3, 0x1ba

    if-ne v5, v3, :cond_b

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v3

    const/16 v4, 0xa

    .line 10
    invoke-interface {v1, v3, v7, v4}, Lcom/google/android/gms/internal/ads/zzadd;->zzh([BII)V

    const/16 v3, 0x9

    .line 11
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0xe

    .line 13
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzadd;->zzk(I)V

    return v7

    :cond_b
    const/16 v3, 0x1bb

    const/4 v6, 0x2

    const/4 v8, 0x6

    if-ne v5, v3, :cond_c

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v3

    .line 14
    invoke-interface {v1, v3, v7, v6}, Lcom/google/android/gms/internal/ads/zzadd;->zzh([BII)V

    .line 15
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzq()I

    move-result v2

    add-int/2addr v2, v8

    .line 17
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzadd;->zzk(I)V

    return v7

    :cond_c
    shr-int/lit8 v3, v5, 0x8

    const/4 v4, 0x1

    if-eq v3, v4, :cond_d

    .line 18
    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/ads/zzadd;->zzk(I)V

    return v7

    :cond_d
    and-int/lit16 v3, v5, 0xff

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzang;->zzb:Landroid/util/SparseArray;

    .line 19
    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/ads/zzanf;

    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzang;->zze:Z

    if-nez v11, :cond_13

    if-nez v10, :cond_11

    const/16 v11, 0xbd

    const-string v12, "video/mp2p"

    const/4 v13, 0x0

    if-ne v3, v11, :cond_e

    new-instance v5, Lcom/google/android/gms/internal/ads/zzaly;

    .line 20
    invoke-direct {v5, v13, v7, v12}, Lcom/google/android/gms/internal/ads/zzaly;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzang;->zzf:Z

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzf()J

    move-result-wide v11

    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/zzang;->zzh:J

    :goto_5
    move-object v13, v5

    goto :goto_6

    :cond_e
    const/4 v4, 0x1

    and-int/lit16 v11, v5, 0xe0

    const/16 v14, 0xc0

    if-ne v11, v14, :cond_f

    .line 37
    new-instance v5, Lcom/google/android/gms/internal/ads/zzams;

    .line 21
    invoke-direct {v5, v13, v7, v12}, Lcom/google/android/gms/internal/ads/zzams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzang;->zzf:Z

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzf()J

    move-result-wide v11

    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/zzang;->zzh:J

    goto :goto_5

    :cond_f
    and-int/lit16 v5, v5, 0xf0

    const/16 v11, 0xe0

    if-ne v5, v11, :cond_10

    .line 22
    new-instance v5, Lcom/google/android/gms/internal/ads/zzami;

    .line 23
    invoke-direct {v5, v13, v12}, Lcom/google/android/gms/internal/ads/zzami;-><init>(Lcom/google/android/gms/internal/ads/zzanx;Ljava/lang/String;)V

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzang;->zzg:Z

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzf()J

    move-result-wide v11

    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/zzang;->zzh:J

    goto :goto_5

    :cond_10
    :goto_6
    if-eqz v13, :cond_11

    .line 20
    new-instance v5, Lcom/google/android/gms/internal/ads/zzanu;

    const/high16 v10, -0x80000000

    const/16 v11, 0x100

    .line 24
    invoke-direct {v5, v10, v3, v11}, Lcom/google/android/gms/internal/ads/zzanu;-><init>(III)V

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzang;->zzj:Lcom/google/android/gms/internal/ads/zzadf;

    .line 25
    invoke-interface {v13, v10, v5}, Lcom/google/android/gms/internal/ads/zzamg;->zzb(Lcom/google/android/gms/internal/ads/zzadf;Lcom/google/android/gms/internal/ads/zzanu;)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzang;->zza:Lcom/google/android/gms/internal/ads/zzer;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzanf;

    .line 26
    invoke-direct {v10, v13, v5}, Lcom/google/android/gms/internal/ads/zzanf;-><init>(Lcom/google/android/gms/internal/ads/zzamg;Lcom/google/android/gms/internal/ads/zzer;)V

    .line 27
    invoke-virtual {v9, v3, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_11
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzang;->zzf:Z

    const-wide/32 v11, 0x100000

    if-eqz v3, :cond_12

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzang;->zzg:Z

    if-eqz v3, :cond_12

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzang;->zzh:J

    const-wide/16 v13, 0x2000

    add-long/2addr v11, v13

    :cond_12
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzf()J

    move-result-wide v13

    cmp-long v3, v13, v11

    if-lez v3, :cond_13

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzang;->zze:Z

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzang;->zzj:Lcom/google/android/gms/internal/ads/zzadf;

    .line 28
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzadf;->zzG()V

    :cond_13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v3

    .line 29
    invoke-interface {v1, v3, v7, v6}, Lcom/google/android/gms/internal/ads/zzadd;->zzh([BII)V

    .line 30
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 31
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzq()I

    move-result v3

    add-int/2addr v3, v8

    if-nez v10, :cond_14

    .line 32
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzadd;->zzk(I)V

    goto :goto_7

    .line 33
    :cond_14
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzI(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v4

    .line 34
    invoke-interface {v1, v4, v7, v3}, Lcom/google/android/gms/internal/ads/zzadd;->zzi([BII)V

    .line 35
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 36
    invoke-virtual {v10, v2}, Lcom/google/android/gms/internal/ads/zzanf;->zza(Lcom/google/android/gms/internal/ads/zzek;)V

    .line 37
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzb()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzek;->zzK(I)V

    :goto_7
    return v7
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzang;->zzj:Lcom/google/android/gms/internal/ads/zzadf;

    return-void
.end method

.method public final zzf(JJ)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzang;->zza:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzf()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzd()J

    move-result-wide v0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_1

    cmp-long p2, v0, p3

    if-eqz p2, :cond_1

    :cond_0
    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzer;->zzi(J)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzang;->zzi:Lcom/google/android/gms/internal/ads/zzand;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzacn;->zzd(J)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzang;->zzb:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p2, p3, :cond_3

    .line 4
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzanf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzanf;->zzb()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzadd;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xe

    new-array v1, v0, [B

    check-cast p1, Lcom/google/android/gms/internal/ads/zzacr;

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p1, v1, v2, v0, v2}, Lcom/google/android/gms/internal/ads/zzacr;->zzm([BIIZ)Z

    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x1

    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x2

    aget-byte v6, v1, v5

    and-int/lit16 v6, v6, 0xff

    const/4 v7, 0x3

    aget-byte v8, v1, v7

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    const/16 v4, 0x8

    shl-int/2addr v6, v4

    or-int/2addr v0, v6

    or-int/2addr v0, v8

    const/16 v6, 0x1ba

    if-eq v0, v6, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x4

    aget-byte v6, v1, v0

    and-int/lit16 v6, v6, 0xc4

    const/16 v8, 0x44

    if-eq v6, v8, :cond_1

    return v2

    :cond_1
    const/4 v6, 0x6

    aget-byte v6, v1, v6

    and-int/2addr v6, v0

    if-eq v6, v0, :cond_2

    return v2

    :cond_2
    aget-byte v6, v1, v4

    and-int/2addr v6, v0

    if-eq v6, v0, :cond_3

    return v2

    :cond_3
    const/16 v0, 0x9

    aget-byte v0, v1, v0

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_4

    return v2

    :cond_4
    const/16 v0, 0xc

    aget-byte v0, v1, v0

    and-int/2addr v0, v7

    if-eq v0, v7, :cond_5

    return v2

    :cond_5
    const/16 v0, 0xd

    aget-byte v0, v1, v0

    and-int/lit8 v0, v0, 0x7

    .line 2
    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzacr;->zzl(IZ)Z

    .line 3
    invoke-virtual {p1, v1, v2, v7, v2}, Lcom/google/android/gms/internal/ads/zzacr;->zzm([BIIZ)Z

    aget-byte p1, v1, v2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    aget-byte v0, v1, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v4

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    or-int/2addr p1, v0

    or-int/2addr p1, v1

    if-ne p1, v3, :cond_6

    return v3

    :cond_6
    return v2
.end method
