.class public final Lcom/google/android/gms/internal/ads/zzahl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadc;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzek;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzadu;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzadq;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzads;

.field private final zze:Lcom/google/android/gms/internal/ads/zzaei;

.field private zzf:Lcom/google/android/gms/internal/ads/zzadf;

.field private zzg:Lcom/google/android/gms/internal/ads/zzaei;

.field private zzh:Lcom/google/android/gms/internal/ads/zzaei;

.field private zzi:I

.field private zzj:Lcom/google/android/gms/internal/ads/zzav;

.field private zzk:J

.field private zzl:J

.field private zzm:J

.field private zzn:J

.field private zzo:I

.field private zzp:Lcom/google/android/gms/internal/ads/zzahn;

.field private zzq:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzek;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzek;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahl;->zza:Lcom/google/android/gms/internal/ads/zzek;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzadu;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzadu;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzb:Lcom/google/android/gms/internal/ads/zzadu;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzadq;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzadq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzc:Lcom/google/android/gms/internal/ads/zzadq;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzk:J

    new-instance p1, Lcom/google/android/gms/internal/ads/zzads;

    .line 2
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzads;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzd:Lcom/google/android/gms/internal/ads/zzads;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzacx;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzacx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahl;->zze:Lcom/google/android/gms/internal/ads/zzaei;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzh:Lcom/google/android/gms/internal/ads/zzaei;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzn:J

    return-void
.end method

.method private final zzg(Lcom/google/android/gms/internal/ads/zzadd;)I
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput",
            "realTrackOutput"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzahl;->zzi:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    :try_start_0
    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzahl;->zzm(Lcom/google/android/gms/internal/ads/zzadd;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v3

    :cond_0
    :goto_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahl;->zzp:Lcom/google/android/gms/internal/ads/zzahn;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x1

    if-nez v2, :cond_18

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahl;->zzb:Lcom/google/android/gms/internal/ads/zzadu;

    .line 2
    new-instance v14, Lcom/google/android/gms/internal/ads/zzek;

    iget v9, v2, Lcom/google/android/gms/internal/ads/zzadu;->zzc:I

    invoke-direct {v14, v9}, Lcom/google/android/gms/internal/ads/zzek;-><init>(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v9

    iget v10, v2, Lcom/google/android/gms/internal/ads/zzadu;->zzc:I

    .line 3
    invoke-interface {v1, v9, v4, v10}, Lcom/google/android/gms/internal/ads/zzadd;->zzh([BII)V

    iget v9, v2, Lcom/google/android/gms/internal/ads/zzadu;->zza:I

    and-int/2addr v9, v8

    const/16 v10, 0x24

    const/16 v11, 0x15

    if-eqz v9, :cond_1

    iget v9, v2, Lcom/google/android/gms/internal/ads/zzadu;->zze:I

    if-eq v9, v8, :cond_3

    move v11, v10

    goto :goto_1

    .line 7
    :cond_1
    iget v9, v2, Lcom/google/android/gms/internal/ads/zzadu;->zze:I

    if-eq v9, v8, :cond_2

    goto :goto_1

    :cond_2
    const/16 v11, 0xd

    .line 3
    :cond_3
    :goto_1
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    move-result v9

    add-int/lit8 v12, v11, 0x4

    const v13, 0x496e666f

    const v15, 0x56425249

    const v8, 0x58696e67

    if-lt v9, v12, :cond_4

    .line 4
    invoke-virtual {v14, v11}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 5
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v9

    if-eq v9, v8, :cond_6

    if-ne v9, v13, :cond_4

    move v9, v13

    goto :goto_2

    .line 19
    :cond_4
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    move-result v9

    const/16 v11, 0x28

    if-lt v9, v11, :cond_5

    .line 6
    invoke-virtual {v14, v10}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 7
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v9

    if-ne v9, v15, :cond_5

    move v9, v15

    goto :goto_2

    :cond_5
    move v9, v4

    :cond_6
    :goto_2
    if-eq v9, v13, :cond_9

    if-eq v9, v15, :cond_8

    if-eq v9, v8, :cond_9

    .line 20
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzj()V

    :cond_7
    :goto_3
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 34
    :cond_8
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzd()J

    move-result-wide v9

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzf()J

    move-result-wide v11

    move-object v13, v2

    .line 8
    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/zzaho;->zzb(JJLcom/google/android/gms/internal/ads/zzadu;Lcom/google/android/gms/internal/ads/zzek;)Lcom/google/android/gms/internal/ads/zzaho;

    move-result-object v8

    iget v9, v2, Lcom/google/android/gms/internal/ads/zzadu;->zzc:I

    .line 9
    invoke-interface {v1, v9}, Lcom/google/android/gms/internal/ads/zzadd;->zzk(I)V

    goto/16 :goto_6

    .line 10
    :cond_9
    invoke-static {v2, v14}, Lcom/google/android/gms/internal/ads/zzahp;->zzb(Lcom/google/android/gms/internal/ads/zzadu;Lcom/google/android/gms/internal/ads/zzek;)Lcom/google/android/gms/internal/ads/zzahp;

    move-result-object v10

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzahl;->zzc:Lcom/google/android/gms/internal/ads/zzadq;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzadq;->zza()Z

    move-result v12

    if-nez v12, :cond_a

    iget v12, v10, Lcom/google/android/gms/internal/ads/zzahp;->zzd:I

    if-eq v12, v3, :cond_a

    iget v13, v10, Lcom/google/android/gms/internal/ads/zzahp;->zze:I

    if-eq v13, v3, :cond_a

    iput v12, v11, Lcom/google/android/gms/internal/ads/zzadq;->zza:I

    iput v13, v11, Lcom/google/android/gms/internal/ads/zzadq;->zzb:I

    :cond_a
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzf()J

    move-result-wide v11

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzd()J

    move-result-wide v13

    const-wide/16 v16, -0x1

    cmp-long v13, v13, v16

    if-eqz v13, :cond_b

    iget-wide v13, v10, Lcom/google/android/gms/internal/ads/zzahp;->zzc:J

    cmp-long v15, v13, v16

    if-eqz v15, :cond_b

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzd()J

    move-result-wide v18

    add-long/2addr v13, v11

    cmp-long v15, v18, v13

    if-eqz v15, :cond_b

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzd()J

    move-result-wide v3

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v7, "Data size mismatch between stream ("

    .line 11
    invoke-direct {v15, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ") and Xing frame ("

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "), using Xing value."

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Mp3Extractor"

    .line 12
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzdx;->zze(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzadu;->zzc:I

    .line 13
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzadd;->zzk(I)V

    if-ne v9, v8, :cond_c

    .line 14
    invoke-static {v10, v11, v12}, Lcom/google/android/gms/internal/ads/zzahq;->zzb(Lcom/google/android/gms/internal/ads/zzahp;J)Lcom/google/android/gms/internal/ads/zzahq;

    move-result-object v8

    goto :goto_6

    :cond_c
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzd()J

    move-result-wide v3

    .line 15
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzahp;->zza()J

    move-result-wide v24

    cmp-long v7, v24, v5

    if-nez v7, :cond_d

    goto/16 :goto_3

    :cond_d
    iget-wide v7, v10, Lcom/google/android/gms/internal/ads/zzahp;->zzc:J

    cmp-long v9, v7, v16

    if-eqz v9, :cond_e

    add-long v3, v11, v7

    iget-object v9, v10, Lcom/google/android/gms/internal/ads/zzahp;->zza:Lcom/google/android/gms/internal/ads/zzadu;

    iget v9, v9, Lcom/google/android/gms/internal/ads/zzadu;->zzc:I

    :goto_4
    int-to-long v13, v9

    sub-long/2addr v7, v13

    move-wide/from16 v27, v3

    goto :goto_5

    :cond_e
    cmp-long v7, v3, v16

    if-eqz v7, :cond_7

    sub-long v7, v3, v11

    .line 19
    iget-object v9, v10, Lcom/google/android/gms/internal/ads/zzahp;->zza:Lcom/google/android/gms/internal/ads/zzadu;

    iget v9, v9, Lcom/google/android/gms/internal/ads/zzadu;->zzc:I

    goto :goto_4

    :goto_5
    const-wide/32 v22, 0x7a1200

    .line 15
    sget-object v26, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    move-wide/from16 v20, v7

    .line 16
    invoke-static/range {v20 .. v26}, Lcom/google/android/gms/internal/ads/zzeu;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v3

    .line 17
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzfzz;->zzb(J)I

    move-result v31

    iget-wide v3, v10, Lcom/google/android/gms/internal/ads/zzahp;->zzb:J

    sget-object v9, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 18
    invoke-static {v7, v8, v3, v4, v9}, Lcom/google/android/gms/internal/ads/zzfzu;->zzb(JJLjava/math/RoundingMode;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzfzz;->zzb(J)I

    move-result v32

    iget-object v3, v10, Lcom/google/android/gms/internal/ads/zzahp;->zza:Lcom/google/android/gms/internal/ads/zzadu;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzahi;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzadu;->zzc:I

    int-to-long v3, v3

    add-long v29, v11, v3

    const/16 v33, 0x0

    move-object/from16 v26, v8

    .line 19
    invoke-direct/range {v26 .. v33}, Lcom/google/android/gms/internal/ads/zzahi;-><init>(JJIIZ)V

    .line 20
    :goto_6
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahl;->zzj:Lcom/google/android/gms/internal/ads/zzav;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzf()J

    move-result-wide v9

    if-eqz v3, :cond_12

    .line 21
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzav;->zza()I

    move-result v4

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v4, :cond_12

    .line 22
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzav;->zzb(I)Lcom/google/android/gms/internal/ads/zzau;

    move-result-object v11

    instance-of v12, v11, Lcom/google/android/gms/internal/ads/zzagp;

    if-eqz v12, :cond_11

    .line 23
    check-cast v11, Lcom/google/android/gms/internal/ads/zzagp;

    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzav;->zza()I

    move-result v4

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v4, :cond_10

    .line 25
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzav;->zzb(I)Lcom/google/android/gms/internal/ads/zzau;

    move-result-object v12

    instance-of v13, v12, Lcom/google/android/gms/internal/ads/zzagr;

    if-eqz v13, :cond_f

    .line 26
    check-cast v12, Lcom/google/android/gms/internal/ads/zzagr;

    iget-object v13, v12, Lcom/google/android/gms/internal/ads/zzagr;->zzf:Ljava/lang/String;

    const-string v14, "TLEN"

    .line 27
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 28
    iget-object v3, v12, Lcom/google/android/gms/internal/ads/zzagr;->zzb:Lcom/google/android/gms/internal/ads/zzfww;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfww;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzeu;->zzs(J)J

    move-result-wide v3

    goto :goto_9

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_10
    move-wide v3, v5

    .line 23
    :goto_9
    invoke-static {v9, v10, v11, v3, v4}, Lcom/google/android/gms/internal/ads/zzahk;->zzb(JLcom/google/android/gms/internal/ads/zzagp;J)Lcom/google/android/gms/internal/ads/zzahk;

    move-result-object v3

    goto :goto_a

    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_12
    const/4 v3, 0x0

    :goto_a
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzahl;->zzq:Z

    if-eqz v4, :cond_13

    new-instance v3, Lcom/google/android/gms/internal/ads/zzahm;

    .line 29
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzahm;-><init>()V

    goto :goto_d

    :cond_13
    if-eqz v3, :cond_14

    move-object v8, v3

    goto :goto_b

    :cond_14
    if-nez v8, :cond_15

    const/4 v8, 0x0

    :cond_15
    :goto_b
    if-nez v8, :cond_16

    .line 59
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahl;->zza:Lcom/google/android/gms/internal/ads/zzek;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v4

    const/4 v7, 0x4

    const/4 v8, 0x0

    .line 30
    invoke-interface {v1, v4, v8, v7}, Lcom/google/android/gms/internal/ads/zzadd;->zzh([BII)V

    .line 31
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 32
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzadu;->zza(I)Z

    new-instance v3, Lcom/google/android/gms/internal/ads/zzahi;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzd()J

    move-result-wide v8

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzf()J

    move-result-wide v10

    iget v12, v2, Lcom/google/android/gms/internal/ads/zzadu;->zzf:I

    iget v13, v2, Lcom/google/android/gms/internal/ads/zzadu;->zzc:I

    const/4 v14, 0x0

    move-object v7, v3

    .line 33
    invoke-direct/range {v7 .. v14}, Lcom/google/android/gms/internal/ads/zzahi;-><init>(JJIIZ)V

    goto :goto_c

    :cond_16
    move-object v3, v8

    :goto_c
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzahl;->zzg:Lcom/google/android/gms/internal/ads/zzaei;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzahn;->zza()J

    move-result-wide v7

    .line 34
    invoke-interface {v4, v7, v8}, Lcom/google/android/gms/internal/ads/zzaei;->zzl(J)V

    .line 29
    :goto_d
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzahl;->zzp:Lcom/google/android/gms/internal/ads/zzahn;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzahl;->zzf:Lcom/google/android/gms/internal/ads/zzadf;

    .line 35
    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/zzadf;->zzP(Lcom/google/android/gms/internal/ads/zzaeb;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzx;

    .line 36
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    const-string v4, "audio/mpeg"

    .line 37
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzE(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzadu;->zzb:Ljava/lang/String;

    .line 38
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzad(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    const/16 v4, 0x1000

    .line 39
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzT(I)Lcom/google/android/gms/internal/ads/zzx;

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzadu;->zze:I

    .line 40
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzB(I)Lcom/google/android/gms/internal/ads/zzx;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzadu;->zzd:I

    .line 41
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzx;->zzae(I)Lcom/google/android/gms/internal/ads/zzx;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahl;->zzc:Lcom/google/android/gms/internal/ads/zzadq;

    iget v4, v2, Lcom/google/android/gms/internal/ads/zzadq;->zza:I

    .line 42
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzI(I)Lcom/google/android/gms/internal/ads/zzx;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzadq;->zzb:I

    .line 43
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzx;->zzJ(I)Lcom/google/android/gms/internal/ads/zzx;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahl;->zzj:Lcom/google/android/gms/internal/ads/zzav;

    .line 44
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzx;->zzW(Lcom/google/android/gms/internal/ads/zzav;)Lcom/google/android/gms/internal/ads/zzx;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahl;->zzp:Lcom/google/android/gms/internal/ads/zzahn;

    .line 45
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzahn;->zzc()I

    move-result v2

    const v4, -0x7fffffff

    if-eq v2, v4, :cond_17

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahl;->zzp:Lcom/google/android/gms/internal/ads/zzahn;

    .line 46
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzahn;->zzc()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzx;->zzA(I)Lcom/google/android/gms/internal/ads/zzx;

    :cond_17
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahl;->zzh:Lcom/google/android/gms/internal/ads/zzaei;

    .line 47
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzaei;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzf()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzahl;->zzm:J

    goto :goto_e

    .line 7
    :cond_18
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzahl;->zzm:J

    const-wide/16 v7, 0x0

    cmp-long v4, v2, v7

    if-eqz v4, :cond_19

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzf()J

    move-result-wide v7

    cmp-long v4, v7, v2

    if-gez v4, :cond_19

    sub-long/2addr v2, v7

    long-to-int v2, v2

    .line 48
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzadd;->zzk(I)V

    .line 47
    :cond_19
    :goto_e
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzahl;->zzo:I

    if-nez v2, :cond_1f

    .line 49
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzj()V

    .line 50
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzahl;->zzl(Lcom/google/android/gms/internal/ads/zzadd;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v3, -0x1

    goto/16 :goto_12

    :cond_1a
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahl;->zza:Lcom/google/android/gms/internal/ads/zzek;

    const/4 v3, 0x0

    .line 51
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 52
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v2

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzahl;->zzi:I

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzahl;->zzk(IJ)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 53
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzadv;->zzb(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1b

    goto :goto_f

    .line 54
    :cond_1b
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahl;->zzb:Lcom/google/android/gms/internal/ads/zzadu;

    .line 55
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzadu;->zza(I)Z

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzahl;->zzk:J

    cmp-long v2, v7, v5

    if-nez v2, :cond_1c

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzahl;->zzp:Lcom/google/android/gms/internal/ads/zzahn;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzf()J

    move-result-wide v4

    .line 56
    invoke-interface {v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzahn;->zze(J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzahl;->zzk:J

    :cond_1c
    iget v2, v3, Lcom/google/android/gms/internal/ads/zzadu;->zzc:I

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzahl;->zzo:I

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzf()J

    move-result-wide v4

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzahl;->zzn:J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzahl;->zzp:Lcom/google/android/gms/internal/ads/zzahn;

    instance-of v5, v4, Lcom/google/android/gms/internal/ads/zzahj;

    if-nez v5, :cond_1d

    goto :goto_10

    .line 60
    :cond_1d
    check-cast v4, Lcom/google/android/gms/internal/ads/zzahj;

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzahl;->zzl:J

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzadu;->zzg:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 61
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzahl;->zzh(J)J

    const/4 v1, 0x0

    .line 62
    throw v1

    :cond_1e
    :goto_f
    const/4 v3, 0x1

    .line 54
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzadd;->zzk(I)V

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzahl;->zzi:I

    goto :goto_11

    :cond_1f
    :goto_10
    const/4 v3, 0x1

    .line 56
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzahl;->zzh:Lcom/google/android/gms/internal/ads/zzaei;

    .line 57
    invoke-interface {v4, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaei;->zzf(Lcom/google/android/gms/internal/ads/zzl;IZ)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_20

    move v3, v2

    goto :goto_12

    :cond_20
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzahl;->zzo:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzahl;->zzo:I

    if-lez v2, :cond_21

    :goto_11
    const/4 v3, 0x0

    :goto_12
    return v3

    :cond_21
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzahl;->zzh:Lcom/google/android/gms/internal/ads/zzaei;

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzahl;->zzl:J

    .line 58
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzahl;->zzh(J)J

    move-result-wide v5

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahl;->zzb:Lcom/google/android/gms/internal/ads/zzadu;

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzadu;->zzc:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 59
    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzaei;->zzt(JIIILcom/google/android/gms/internal/ads/zzaeh;)V

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzahl;->zzl:J

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzadu;->zzg:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzahl;->zzl:J

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzahl;->zzo:I

    return v1
.end method

.method private final zzh(J)J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzb:Lcom/google/android/gms/internal/ads/zzadu;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzk:J

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzadu;->zzd:I

    int-to-long v3, v0

    const-wide/32 v5, 0xf4240

    mul-long/2addr p1, v5

    div-long/2addr p1, v3

    add-long/2addr v1, p1

    return-wide v1
.end method

.method private final zzj()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzp:Lcom/google/android/gms/internal/ads/zzahn;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzahi;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzahn;->zzh()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzn:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzp:Lcom/google/android/gms/internal/ads/zzahn;

    .line 2
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzahn;->zzd()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzp:Lcom/google/android/gms/internal/ads/zzahn;

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/zzahi;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzn:J

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzahi;->zzf(J)Lcom/google/android/gms/internal/ads/zzahi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzp:Lcom/google/android/gms/internal/ads/zzahn;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzf:Lcom/google/android/gms/internal/ads/zzadf;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzadf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzp:Lcom/google/android/gms/internal/ads/zzahn;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzadf;->zzP(Lcom/google/android/gms/internal/ads/zzaeb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzg:Lcom/google/android/gms/internal/ads/zzaei;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    check-cast v0, Lcom/google/android/gms/internal/ads/zzaei;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzp:Lcom/google/android/gms/internal/ads/zzahn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzahn;->zza()J

    :cond_0
    return-void
.end method

.method private static zzk(IJ)Z
    .locals 4

    const v0, -0x1f400

    and-int/2addr p0, v0

    int-to-long v0, p0

    const-wide/32 v2, -0x1f400

    and-long p0, p1, v2

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final zzl(Lcom/google/android/gms/internal/ads/zzadd;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzp:Lcom/google/android/gms/internal/ads/zzahn;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzahn;->zzd()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzadd;->zze()J

    move-result-wide v4

    const-wide/16 v6, -0x4

    add-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahl;->zza:Lcom/google/android/gms/internal/ads/zzek;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p1, v0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzadd;->zzm([BIIZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v3

    :catch_0
    return v1
.end method

.method private final zzm(Lcom/google/android/gms/internal/ads/zzadd;Z)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzj()V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzf()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzd:Lcom/google/android/gms/internal/ads/zzads;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzads;->zza(Lcom/google/android/gms/internal/ads/zzadd;Lcom/google/android/gms/internal/ads/zzagj;)Lcom/google/android/gms/internal/ads/zzav;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzj:Lcom/google/android/gms/internal/ads/zzav;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzc:Lcom/google/android/gms/internal/ads/zzadq;

    .line 3
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzadq;->zzb(Lcom/google/android/gms/internal/ads/zzav;)Z

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzadd;->zze()J

    move-result-wide v2

    long-to-int v0, v2

    if-nez p2, :cond_1

    .line 4
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzadd;->zzk(I)V

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    move v2, v0

    :goto_0
    move v3, v2

    move v4, v3

    .line 5
    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahl;->zzl(Lcom/google/android/gms/internal/ads/zzadd;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    if-lez v3, :cond_3

    goto :goto_4

    .line 14
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzahl;->zzj()V

    .line 15
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 19
    :cond_4
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzahl;->zza:Lcom/google/android/gms/internal/ads/zzek;

    .line 6
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    .line 7
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v5

    if-eqz v2, :cond_5

    int-to-long v7, v2

    invoke-static {v5, v7, v8}, Lcom/google/android/gms/internal/ads/zzahl;->zzk(IJ)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 8
    :cond_5
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzadv;->zzb(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_b

    :cond_6
    if-eq v6, p2, :cond_7

    const/high16 v2, 0x20000

    goto :goto_2

    :cond_7
    const v2, 0x8000

    :goto_2
    add-int/lit8 v3, v4, 0x1

    if-ne v4, v2, :cond_9

    if-eqz p2, :cond_8

    return v1

    .line 16
    :cond_8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzahl;->zzj()V

    .line 17
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_9
    if-eqz p2, :cond_a

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzj()V

    add-int v2, v0, v3

    .line 10
    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/zzadd;->zzg(I)V

    goto :goto_3

    .line 11
    :cond_a
    invoke-interface {p1, v6}, Lcom/google/android/gms/internal/ads/zzadd;->zzk(I)V

    :goto_3
    move v2, v1

    move v4, v3

    move v3, v2

    goto :goto_1

    :cond_b
    add-int/lit8 v3, v3, 0x1

    if-ne v3, v6, :cond_c

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzb:Lcom/google/android/gms/internal/ads/zzadu;

    .line 12
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzadu;->zza(I)Z

    move v2, v5

    goto :goto_6

    :cond_c
    const/4 v5, 0x4

    if-ne v3, v5, :cond_e

    :goto_4
    if-eqz p2, :cond_d

    add-int/2addr v0, v4

    .line 18
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzadd;->zzk(I)V

    goto :goto_5

    .line 19
    :cond_d
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzj()V

    .line 18
    :goto_5
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzi:I

    return v6

    :cond_e
    :goto_6
    add-int/lit8 v7, v7, -0x4

    .line 13
    invoke-interface {p1, v7}, Lcom/google/android/gms/internal/ads/zzadd;->zzg(I)V

    goto :goto_1
.end method


# virtual methods
.method public final zza()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzq:Z

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzadd;Lcom/google/android/gms/internal/ads/zzady;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzg:Lcom/google/android/gms/internal/ads/zzaei;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget p2, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahl;->zzg(Lcom/google/android/gms/internal/ads/zzadd;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzp:Lcom/google/android/gms/internal/ads/zzahn;

    instance-of p2, p2, Lcom/google/android/gms/internal/ads/zzahj;

    if-eqz p2, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzl:J

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzahl;->zzh(J)J

    move-result-wide v0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzp:Lcom/google/android/gms/internal/ads/zzahn;

    .line 5
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzahn;->zza()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzp:Lcom/google/android/gms/internal/ads/zzahn;

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/zzahj;

    const/4 p1, 0x0

    .line 7
    throw p1

    :cond_1
    :goto_0
    return p1
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

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzf:Lcom/google/android/gms/internal/ads/zzadf;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzadf;->zzw(II)Lcom/google/android/gms/internal/ads/zzaei;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzg:Lcom/google/android/gms/internal/ads/zzaei;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzh:Lcom/google/android/gms/internal/ads/zzaei;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzf:Lcom/google/android/gms/internal/ads/zzadf;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzadf;->zzG()V

    return-void
.end method

.method public final zzf(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzi:I

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzk:J

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzl:J

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzo:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahl;->zzp:Lcom/google/android/gms/internal/ads/zzahn;

    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zzahj;

    if-nez p2, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzahj;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzadd;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzahl;->zzm(Lcom/google/android/gms/internal/ads/zzadd;Z)Z

    move-result p1

    return p1
.end method
