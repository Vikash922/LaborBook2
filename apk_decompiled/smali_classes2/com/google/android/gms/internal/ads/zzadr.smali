.class public final Lcom/google/android/gms/internal/ads/zzadr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field public final zza:Ljava/util/List;

.field public final zzb:I

.field public final zzc:I

.field public final zzd:I

.field public final zze:I

.field public final zzf:I

.field public final zzg:I

.field public final zzh:I

.field public final zzi:I

.field public final zzj:F

.field public final zzk:I

.field public final zzl:Ljava/lang/String;

.field public final zzm:Lcom/google/android/gms/internal/ads/zzfn;


# direct methods
.method private constructor <init>(Ljava/util/List;IIIIIIIIIIFILjava/lang/String;Lcom/google/android/gms/internal/ads/zzfn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzadr;->zza:Ljava/util/List;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzadr;->zzb:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzadr;->zzc:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzadr;->zzd:I

    iput p7, p0, Lcom/google/android/gms/internal/ads/zzadr;->zze:I

    iput p8, p0, Lcom/google/android/gms/internal/ads/zzadr;->zzf:I

    iput p9, p0, Lcom/google/android/gms/internal/ads/zzadr;->zzg:I

    iput p10, p0, Lcom/google/android/gms/internal/ads/zzadr;->zzh:I

    iput p11, p0, Lcom/google/android/gms/internal/ads/zzadr;->zzi:I

    iput p12, p0, Lcom/google/android/gms/internal/ads/zzadr;->zzj:F

    iput p13, p0, Lcom/google/android/gms/internal/ads/zzadr;->zzk:I

    iput-object p14, p0, Lcom/google/android/gms/internal/ads/zzadr;->zzl:Ljava/lang/String;

    iput-object p15, p0, Lcom/google/android/gms/internal/ads/zzadr;->zzm:Lcom/google/android/gms/internal/ads/zzfn;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzek;)Lcom/google/android/gms/internal/ads/zzadr;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzadr;->zzc(Lcom/google/android/gms/internal/ads/zzek;ZLcom/google/android/gms/internal/ads/zzfn;)Lcom/google/android/gms/internal/ads/zzadr;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzek;Lcom/google/android/gms/internal/ads/zzfn;)Lcom/google/android/gms/internal/ads/zzadr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzadr;->zzc(Lcom/google/android/gms/internal/ads/zzek;ZLcom/google/android/gms/internal/ads/zzfn;)Lcom/google/android/gms/internal/ads/zzadr;

    move-result-object p0

    return-object p0
.end method

.method private static zzc(Lcom/google/android/gms/internal/ads/zzek;ZLcom/google/android/gms/internal/ads/zzfn;)Lcom/google/android/gms/internal/ads/zzadr;
    .locals 47
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move v2, v3

    goto/16 :goto_17

    :cond_0
    const/16 v4, 0x15

    .line 2
    :try_start_1
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 3
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    move-result v4

    and-int/lit8 v4, v4, 0x3

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    move-result v6
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    :goto_1
    if-ge v8, v5, :cond_2

    .line 5
    :try_start_2
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzek;->zzq()I

    move-result v10

    move v11, v7

    :goto_2
    if-ge v11, v10, :cond_1

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzek;->zzq()I

    move-result v12

    add-int/lit8 v13, v12, 0x4

    add-int/2addr v9, v13

    .line 8
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 9
    :cond_2
    :try_start_3
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 10
    new-array v6, v9, [B

    const/high16 v11, 0x3f800000    # 1.0f

    move-object/from16 v27, p2

    move v12, v7

    move/from16 v24, v11

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/16 v23, -0x1

    const/16 v25, -0x1

    const/16 v26, 0x0

    move v11, v12

    :goto_3
    if-ge v11, v5, :cond_1b

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    move-result v13

    const/16 v14, 0x3f

    and-int/2addr v13, v14

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzek;->zzq()I

    move-result v8

    move v10, v7

    move-object/from16 v14, v27

    :goto_4
    if-ge v10, v8, :cond_1a

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzek;->zzq()I

    move-result v3

    move/from16 v28, v5

    .line 14
    sget-object v5, Lcom/google/android/gms/internal/ads/zzfq;->zza:[B

    invoke-static {v5, v7, v6, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v12, 0x4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    move-result v7

    .line 15
    invoke-static {v2, v7, v6, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0x20

    if-ne v13, v2, :cond_3

    if-nez v10, :cond_4

    add-int v2, v5, v3

    .line 43
    invoke-static {v6, v5, v2}, Lcom/google/android/gms/internal/ads/zzfq;->zze([BII)Lcom/google/android/gms/internal/ads/zzfn;

    move-result-object v14

    move/from16 v29, v8

    move/from16 v36, v13

    const/4 v8, 0x0

    const/4 v10, 0x0

    goto/16 :goto_15

    :cond_3
    move v2, v13

    :cond_4
    const/16 v7, 0x21

    move/from16 v29, v8

    const/16 v8, 0x8

    if-ne v2, v7, :cond_7

    if-nez v10, :cond_6

    add-int v2, v5, v3

    .line 41
    invoke-static {v6, v5, v2, v14}, Lcom/google/android/gms/internal/ads/zzfq;->zzd([BIILcom/google/android/gms/internal/ads/zzfn;)Lcom/google/android/gms/internal/ads/zzfk;

    move-result-object v2

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzfk;->zza:I

    const/4 v12, 0x1

    add-int/2addr v7, v12

    iget v12, v2, Lcom/google/android/gms/internal/ads/zzfk;->zze:I

    iget v15, v2, Lcom/google/android/gms/internal/ads/zzfk;->zzf:I

    move/from16 v16, v7

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzfk;->zzc:I

    add-int/2addr v7, v8

    move/from16 v17, v7

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzfk;->zzd:I

    add-int/2addr v7, v8

    iget v8, v2, Lcom/google/android/gms/internal/ads/zzfk;->zzi:I

    move/from16 v18, v7

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzfk;->zzj:I

    move/from16 v19, v7

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzfk;->zzk:I

    move/from16 v20, v7

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzfk;->zzg:F

    move/from16 v21, v7

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzfk;->zzh:I

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfk;->zzb:Lcom/google/android/gms/internal/ads/zzff;

    if-eqz v2, :cond_5

    move/from16 v22, v7

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzff;->zza:I

    move/from16 v24, v8

    iget-boolean v8, v2, Lcom/google/android/gms/internal/ads/zzff;->zzb:Z

    move/from16 v25, v12

    iget v12, v2, Lcom/google/android/gms/internal/ads/zzff;->zzc:I

    move/from16 v36, v13

    iget v13, v2, Lcom/google/android/gms/internal/ads/zzff;->zzd:I

    move/from16 v27, v15

    iget-object v15, v2, Lcom/google/android/gms/internal/ads/zzff;->zze:[I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzff;->zzf:I

    move/from16 v30, v7

    move/from16 v31, v8

    move/from16 v32, v12

    move/from16 v33, v13

    move-object/from16 v34, v15

    move/from16 v35, v2

    .line 42
    invoke-static/range {v30 .. v35}, Lcom/google/android/gms/internal/ads/zzdh;->zzd(IZII[II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v26, v2

    goto :goto_5

    :cond_5
    move/from16 v22, v7

    move/from16 v24, v8

    move/from16 v25, v12

    move/from16 v36, v13

    move/from16 v27, v15

    :goto_5
    move/from16 v15, v16

    move/from16 v16, v25

    const/4 v8, 0x0

    move/from16 v25, v22

    move/from16 v22, v20

    move/from16 v20, v24

    move/from16 v24, v21

    move/from16 v21, v19

    move/from16 v19, v18

    move/from16 v18, v17

    move/from16 v17, v27

    goto/16 :goto_15

    :cond_6
    move/from16 v36, v13

    goto/16 :goto_13

    :cond_7
    move/from16 v36, v13

    const/16 v7, 0x27

    if-ne v2, v7, :cond_18

    if-nez v10, :cond_18

    add-int v2, v5, v3

    add-int/lit8 v12, v12, 0x6

    const/4 v7, -0x1

    add-int/2addr v2, v7

    .line 16
    :goto_6
    aget-byte v13, v6, v2

    if-nez v13, :cond_8

    if-le v2, v12, :cond_16

    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_8
    if-eqz v13, :cond_16

    if-gt v2, v12, :cond_9

    goto/16 :goto_f

    .line 40
    :cond_9
    new-instance v13, Lcom/google/android/gms/internal/ads/zzfr;

    add-int/lit8 v2, v2, 0x1

    .line 17
    invoke-direct {v13, v6, v12, v2}, Lcom/google/android/gms/internal/ads/zzfr;-><init>([BII)V

    :goto_7
    const/16 v2, 0x10

    .line 18
    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/ads/zzfr;->zzg(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 19
    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/ads/zzfr;->zza(I)I

    move-result v2

    const/4 v12, 0x0

    :goto_8
    const/16 v7, 0xff

    if-ne v2, v7, :cond_a

    add-int/lit16 v12, v12, 0xff

    .line 20
    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/ads/zzfr;->zza(I)I

    move-result v2

    goto :goto_8

    :cond_a
    add-int/2addr v12, v2

    .line 21
    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/ads/zzfr;->zza(I)I

    move-result v2

    const/4 v8, 0x0

    :goto_9
    if-ne v2, v7, :cond_b

    add-int/lit16 v8, v8, 0xff

    const/16 v2, 0x8

    .line 22
    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/ads/zzfr;->zza(I)I

    move-result v27

    move/from16 v2, v27

    goto :goto_9

    :cond_b
    const/16 v7, 0x8

    add-int/2addr v8, v2

    if-eqz v8, :cond_16

    .line 23
    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/ads/zzfr;->zzg(I)Z

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_f

    :cond_c
    const/16 v2, 0xb0

    if-ne v12, v2, :cond_15

    .line 24
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzfr;->zzc()I

    move-result v38

    .line 25
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzfr;->zzh()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 26
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzfr;->zzc()I

    move-result v7

    move/from16 v39, v7

    goto :goto_a

    :cond_d
    const/16 v39, 0x0

    .line 27
    :goto_a
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzfr;->zzc()I

    move-result v7

    const/4 v8, 0x0

    const/16 v41, -0x1

    const/16 v42, -0x1

    const/16 v43, -0x1

    const/16 v44, -0x1

    const/16 v45, -0x1

    const/16 v46, -0x1

    :goto_b
    if-gt v8, v7, :cond_14

    .line 28
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzfr;->zzc()I

    move-result v41

    .line 29
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzfr;->zzc()I

    move-result v42

    const/4 v12, 0x6

    move/from16 v27, v10

    .line 30
    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/zzfr;->zza(I)I

    move-result v10

    const/16 v12, 0x3f

    if-ne v10, v12, :cond_e

    goto/16 :goto_10

    :cond_e
    if-nez v10, :cond_f

    add-int/lit8 v12, v38, -0x1e

    move/from16 v31, v15

    const/4 v15, 0x0

    .line 31
    invoke-static {v15, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_c

    :cond_f
    move/from16 v31, v15

    const/4 v15, 0x0

    add-int v12, v10, v38

    add-int/lit8 v12, v12, -0x1f

    .line 32
    invoke-static {v15, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 33
    :goto_c
    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/zzfr;->zza(I)I

    move-result v44

    if-eqz v2, :cond_12

    const/4 v12, 0x6

    .line 34
    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/zzfr;->zza(I)I

    move-result v12

    const/16 v15, 0x3f

    if-ne v12, v15, :cond_10

    goto :goto_11

    :cond_10
    if-nez v12, :cond_11

    add-int/lit8 v15, v39, -0x1e

    move/from16 v30, v2

    const/4 v2, 0x0

    .line 35
    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    goto :goto_d

    :cond_11
    move/from16 v30, v2

    const/4 v2, 0x0

    add-int v15, v12, v39

    add-int/lit8 v15, v15, -0x1f

    .line 36
    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 37
    :goto_d
    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzfr;->zza(I)I

    move-result v46

    move/from16 v45, v12

    goto :goto_e

    :cond_12
    move/from16 v30, v2

    .line 38
    :goto_e
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzfr;->zzh()Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0xa

    .line 39
    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/ads/zzfr;->zzf(I)V

    :cond_13
    add-int/lit8 v8, v8, 0x1

    move/from16 v43, v10

    move/from16 v10, v27

    move/from16 v2, v30

    move/from16 v15, v31

    goto :goto_b

    :cond_14
    move/from16 v27, v10

    move/from16 v31, v15

    .line 32
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfj;

    add-int/lit8 v40, v7, 0x1

    move-object/from16 v37, v2

    invoke-direct/range {v37 .. v46}, Lcom/google/android/gms/internal/ads/zzfj;-><init>(IIIIIIIII)V

    goto :goto_12

    :cond_15
    move v8, v7

    const/4 v7, -0x1

    goto/16 :goto_7

    :cond_16
    :goto_f
    move/from16 v27, v10

    :goto_10
    move/from16 v31, v15

    :goto_11
    const/4 v2, 0x0

    :goto_12
    if-eqz v2, :cond_19

    if-eqz v14, :cond_19

    .line 16
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzfj;->zza:I

    iget-object v7, v14, Lcom/google/android/gms/internal/ads/zzfn;->zza:Lcom/google/android/gms/internal/ads/zzfww;

    const/4 v8, 0x0

    .line 40
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzfww;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzfd;

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzfd;->zzb:I

    if-ne v2, v7, :cond_17

    move/from16 v10, v27

    move/from16 v15, v31

    const/16 v23, 0x4

    goto :goto_15

    :cond_17
    const/4 v2, 0x5

    move/from16 v23, v2

    goto :goto_14

    :cond_18
    :goto_13
    move/from16 v27, v10

    move/from16 v31, v15

    :cond_19
    const/4 v8, 0x0

    :goto_14
    move/from16 v10, v27

    move/from16 v15, v31

    :goto_15
    add-int v12, v5, v3

    .line 44
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    const/4 v2, 0x1

    add-int/2addr v10, v2

    move v3, v2

    move v7, v8

    move/from16 v5, v28

    move/from16 v8, v29

    move/from16 v13, v36

    const/4 v2, 0x4

    goto/16 :goto_4

    :cond_1a
    move/from16 v28, v5

    move v8, v7

    move/from16 v31, v15

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v27, v14

    const/4 v2, 0x4

    const/4 v3, 0x1

    goto/16 :goto_3

    :cond_1b
    if-nez v9, :cond_1c

    .line 45
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_16

    :cond_1c
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_16
    move-object v13, v0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzadr;

    const/4 v2, 0x1

    add-int/lit8 v14, v4, 0x1

    move-object v12, v0

    invoke-direct/range {v12 .. v27}, Lcom/google/android/gms/internal/ads/zzadr;-><init>(Ljava/util/List;IIIIIIIIIIFILjava/lang/String;Lcom/google/android/gms/internal/ads/zzfn;)V
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    const/4 v2, 0x1

    :goto_17
    if-eq v2, v1, :cond_1d

    .line 2
    const-string v1, "HEVC config"

    goto :goto_18

    .line 46
    :cond_1d
    const-string v1, "L-HEVC config"

    .line 2
    :goto_18
    const-string v2, "Error parsing"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0
.end method
