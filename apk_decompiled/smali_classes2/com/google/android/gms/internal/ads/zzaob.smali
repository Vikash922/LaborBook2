.class public final Lcom/google/android/gms/internal/ads/zzaob;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadc;


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzadf;

.field private zzb:Lcom/google/android/gms/internal/ads/zzaei;

.field private zzc:I

.field private zzd:J

.field private zze:Lcom/google/android/gms/internal/ads/zzanz;

.field private zzf:I

.field private zzg:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzc:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzd:J

    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzf:I

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzg:J

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzadd;Lcom/google/android/gms/internal/ads/zzady;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaob;->zzb:Lcom/google/android/gms/internal/ads/zzaei;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget v2, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaob;->zzc:I

    const/4 v3, -0x1

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_f

    const/4 v7, 0x2

    const-wide/16 v8, -0x1

    if-eq v2, v5, :cond_d

    const/4 v10, 0x3

    if-eq v2, v7, :cond_5

    if-eq v2, v10, :cond_2

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzaob;->zzg:J

    cmp-long v2, v10, v8

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v5, v6

    .line 28
    :goto_0
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaob;->zzg:J

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzf()J

    move-result-wide v7

    sub-long/2addr v4, v7

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaob;->zze:Lcom/google/android/gms/internal/ads/zzanz;

    .line 30
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    move-object v7, v2

    check-cast v7, Lcom/google/android/gms/internal/ads/zzanz;

    invoke-interface {v2, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzanz;->zzc(Lcom/google/android/gms/internal/ads/zzadd;J)Z

    move-result v1

    if-eqz v1, :cond_1

    return v3

    :cond_1
    return v6

    .line 22
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaoe;->zza(Lcom/google/android/gms/internal/ads/zzadd;)Landroid/util/Pair;

    move-result-object v2

    .line 23
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaob;->zzf:I

    .line 24
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzaob;->zzd:J

    cmp-long v5, v10, v8

    if-eqz v5, :cond_3

    const-wide v12, 0xffffffffL

    cmp-long v5, v2, v12

    if-nez v5, :cond_3

    move-wide v2, v10

    :cond_3
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaob;->zzf:I

    int-to-long v10, v5

    add-long/2addr v10, v2

    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/zzaob;->zzg:J

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzd()J

    move-result-wide v1

    cmp-long v3, v1, v8

    if-eqz v3, :cond_4

    cmp-long v3, v10, v1

    if-lez v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Data exceeds input length: "

    .line 25
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "WavExtractor"

    invoke-static {v5, v3}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaob;->zzg:J

    move-wide v10, v1

    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaob;->zze:Lcom/google/android/gms/internal/ads/zzanz;

    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzanz;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaob;->zzf:I

    invoke-interface {v1, v2, v10, v11}, Lcom/google/android/gms/internal/ads/zzanz;->zza(IJ)V

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaob;->zzc:I

    return v6

    .line 16
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaoe;->zzb(Lcom/google/android/gms/internal/ads/zzadd;)Lcom/google/android/gms/internal/ads/zzaoc;

    move-result-object v15

    iget v1, v15, Lcom/google/android/gms/internal/ads/zzaoc;->zza:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_6

    .line 17
    new-instance v1, Lcom/google/android/gms/internal/ads/zzany;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaob;->zza:Lcom/google/android/gms/internal/ads/zzadf;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaob;->zzb:Lcom/google/android/gms/internal/ads/zzaei;

    invoke-direct {v1, v2, v3, v15}, Lcom/google/android/gms/internal/ads/zzany;-><init>(Lcom/google/android/gms/internal/ads/zzadf;Lcom/google/android/gms/internal/ads/zzaei;Lcom/google/android/gms/internal/ads/zzaoc;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaob;->zze:Lcom/google/android/gms/internal/ads/zzanz;

    goto :goto_3

    :cond_6
    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaoa;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzaob;->zza:Lcom/google/android/gms/internal/ads/zzadf;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzaob;->zzb:Lcom/google/android/gms/internal/ads/zzaei;

    const-string v16, "audio/g711-alaw"

    const/16 v17, -0x1

    move-object v12, v1

    .line 18
    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/ads/zzaoa;-><init>(Lcom/google/android/gms/internal/ads/zzadf;Lcom/google/android/gms/internal/ads/zzaei;Lcom/google/android/gms/internal/ads/zzaoc;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaob;->zze:Lcom/google/android/gms/internal/ads/zzanz;

    goto :goto_3

    :cond_7
    const/4 v2, 0x7

    if-ne v1, v2, :cond_8

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaoa;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzaob;->zza:Lcom/google/android/gms/internal/ads/zzadf;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzaob;->zzb:Lcom/google/android/gms/internal/ads/zzaei;

    const-string v16, "audio/g711-mlaw"

    const/16 v17, -0x1

    move-object v12, v1

    .line 19
    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/ads/zzaoa;-><init>(Lcom/google/android/gms/internal/ads/zzadf;Lcom/google/android/gms/internal/ads/zzaei;Lcom/google/android/gms/internal/ads/zzaoc;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaob;->zze:Lcom/google/android/gms/internal/ads/zzanz;

    goto :goto_3

    :cond_8
    iget v2, v15, Lcom/google/android/gms/internal/ads/zzaoc;->zze:I

    if-eq v1, v5, :cond_b

    if-eq v1, v10, :cond_a

    const v3, 0xfffe

    if-eq v1, v3, :cond_b

    :cond_9
    move/from16 v17, v6

    goto :goto_2

    :cond_a
    const/16 v3, 0x20

    if-ne v2, v3, :cond_9

    goto :goto_1

    .line 21
    :cond_b
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzeu;->zzn(I)I

    move-result v4

    :goto_1
    move/from16 v17, v4

    :goto_2
    if-eqz v17, :cond_c

    .line 20
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaoa;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzaob;->zza:Lcom/google/android/gms/internal/ads/zzadf;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzaob;->zzb:Lcom/google/android/gms/internal/ads/zzaei;

    const-string v16, "audio/raw"

    move-object v12, v1

    .line 21
    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/ads/zzaoa;-><init>(Lcom/google/android/gms/internal/ads/zzadf;Lcom/google/android/gms/internal/ads/zzaei;Lcom/google/android/gms/internal/ads/zzaoc;Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaob;->zze:Lcom/google/android/gms/internal/ads/zzanz;

    .line 17
    :goto_3
    iput v10, v0, Lcom/google/android/gms/internal/ads/zzaob;->zzc:I

    return v6

    .line 19
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported WAV format type: "

    .line 20
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v1

    throw v1

    .line 8
    :cond_d
    new-instance v2, Lcom/google/android/gms/internal/ads/zzek;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzek;-><init>(I)V

    .line 9
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaod;->zza(Lcom/google/android/gms/internal/ads/zzadd;Lcom/google/android/gms/internal/ads/zzek;)Lcom/google/android/gms/internal/ads/zzaod;

    move-result-object v4

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzaod;->zza:I

    const v10, 0x64733634

    if-eq v5, v10, :cond_e

    .line 10
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzj()V

    goto :goto_4

    .line 11
    :cond_e
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzadd;->zzg(I)V

    .line 12
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v5

    .line 13
    invoke-interface {v1, v5, v6, v3}, Lcom/google/android/gms/internal/ads/zzadd;->zzh([BII)V

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzr()J

    move-result-wide v8

    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/zzaod;->zzb:J

    long-to-int v2, v4

    add-int/2addr v2, v3

    .line 15
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzadd;->zzk(I)V

    .line 10
    :goto_4
    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzaob;->zzd:J

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzaob;->zzc:I

    return v6

    .line 29
    :cond_f
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzf()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-nez v2, :cond_10

    move v2, v5

    goto :goto_5

    :cond_10
    move v2, v6

    .line 3
    :goto_5
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaob;->zzf:I

    if-eq v2, v3, :cond_11

    .line 4
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzadd;->zzk(I)V

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaob;->zzc:I

    goto :goto_6

    .line 5
    :cond_11
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaoe;->zzc(Lcom/google/android/gms/internal/ads/zzadd;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 6
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zze()J

    move-result-wide v2

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzf()J

    move-result-wide v7

    sub-long/2addr v2, v7

    long-to-int v2, v2

    .line 7
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzadd;->zzk(I)V

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzaob;->zzc:I

    :goto_6
    return v6

    .line 5
    :cond_12
    const-string v1, "Unsupported or unrecognized wav file type."

    const/4 v2, 0x0

    .line 6
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

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaob;->zza:Lcom/google/android/gms/internal/ads/zzadf;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzadf;->zzw(II)Lcom/google/android/gms/internal/ads/zzaei;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzb:Lcom/google/android/gms/internal/ads/zzaei;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzadf;->zzG()V

    return-void
.end method

.method public final zzf(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 1
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaob;->zzc:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaob;->zze:Lcom/google/android/gms/internal/ads/zzanz;

    if-eqz p1, :cond_1

    invoke-interface {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzanz;->zzb(J)V

    :cond_1
    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzadd;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaoe;->zzc(Lcom/google/android/gms/internal/ads/zzadd;)Z

    move-result p1

    return p1
.end method
