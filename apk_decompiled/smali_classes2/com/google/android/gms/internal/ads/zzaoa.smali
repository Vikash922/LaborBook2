.class final Lcom/google/android/gms/internal/ads/zzaoa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzanz;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzadf;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzaei;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzaoc;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzz;

.field private final zze:I

.field private zzf:J

.field private zzg:I

.field private zzh:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzadf;Lcom/google/android/gms/internal/ads/zzaei;Lcom/google/android/gms/internal/ads/zzaoc;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoa;->zza:Lcom/google/android/gms/internal/ads/zzadf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaoa;->zzb:Lcom/google/android/gms/internal/ads/zzaei;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaoa;->zzc:Lcom/google/android/gms/internal/ads/zzaoc;

    iget p1, p3, Lcom/google/android/gms/internal/ads/zzaoc;->zzb:I

    iget p2, p3, Lcom/google/android/gms/internal/ads/zzaoc;->zze:I

    mul-int/2addr p1, p2

    iget p2, p3, Lcom/google/android/gms/internal/ads/zzaoc;->zzd:I

    div-int/lit8 p1, p1, 0x8

    if-ne p2, p1, :cond_0

    iget p2, p3, Lcom/google/android/gms/internal/ads/zzaoc;->zzc:I

    mul-int/2addr p2, p1

    mul-int/lit8 v0, p2, 0x8

    div-int/lit8 p2, p2, 0xa

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaoa;->zze:I

    new-instance p2, Lcom/google/android/gms/internal/ads/zzx;

    .line 3
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    const-string v1, "audio/wav"

    .line 4
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzE(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 5
    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/ads/zzx;->zzad(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 6
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzA(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 7
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzY(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 8
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzx;->zzT(I)Lcom/google/android/gms/internal/ads/zzx;

    iget p1, p3, Lcom/google/android/gms/internal/ads/zzaoc;->zzb:I

    .line 9
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzx;->zzB(I)Lcom/google/android/gms/internal/ads/zzx;

    iget p1, p3, Lcom/google/android/gms/internal/ads/zzaoc;->zzc:I

    .line 10
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzx;->zzae(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 11
    invoke-virtual {p2, p5}, Lcom/google/android/gms/internal/ads/zzx;->zzX(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 12
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaoa;->zzd:Lcom/google/android/gms/internal/ads/zzz;

    return-void

    .line 1
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Expected block size: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; got: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final zza(IJ)V
    .locals 7

    int-to-long v3, p1

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaof;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaoa;->zzc:Lcom/google/android/gms/internal/ads/zzaoc;

    const/4 v2, 0x1

    move-object v0, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzaof;-><init>(Lcom/google/android/gms/internal/ads/zzaoc;IJJ)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaoa;->zza:Lcom/google/android/gms/internal/ads/zzadf;

    .line 2
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzadf;->zzP(Lcom/google/android/gms/internal/ads/zzaeb;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaoa;->zzb:Lcom/google/android/gms/internal/ads/zzaei;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzaoa;->zzd:Lcom/google/android/gms/internal/ads/zzz;

    .line 3
    invoke-interface {p2, p3}, Lcom/google/android/gms/internal/ads/zzaei;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaof;->zza()J

    move-result-wide v0

    .line 4
    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzaei;->zzl(J)V

    return-void
.end method

.method public final zzb(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaoa;->zzf:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaoa;->zzg:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaoa;->zzh:J

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzadd;J)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const/4 v6, 0x1

    if-lez v5, :cond_1

    .line 1
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzaoa;->zzg:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzaoa;->zze:I

    if-ge v7, v8, :cond_1

    sub-int/2addr v8, v7

    int-to-long v7, v8

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v5, v7

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzaoa;->zzb:Lcom/google/android/gms/internal/ads/zzaei;

    move-object/from16 v8, p1

    .line 2
    invoke-interface {v7, v8, v5, v6}, Lcom/google/android/gms/internal/ads/zzaei;->zzf(Lcom/google/android/gms/internal/ads/zzl;IZ)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    move-wide v1, v3

    goto :goto_0

    :cond_0
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaoa;->zzg:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaoa;->zzg:I

    int-to-long v3, v5

    sub-long/2addr v1, v3

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaoa;->zzc:Lcom/google/android/gms/internal/ads/zzaoc;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaoa;->zzg:I

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzaoc;->zzd:I

    .line 3
    div-int/2addr v2, v3

    if-lez v2, :cond_2

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzaoa;->zzf:J

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzaoa;->zzh:J

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzaoc;->zzc:I

    int-to-long v13, v1

    sget-object v15, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v11, 0xf4240

    .line 4
    invoke-static/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/zzeu;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v9

    add-long v12, v7, v9

    mul-int v15, v2, v3

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzaoa;->zzg:I

    sub-int/2addr v1, v15

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzaoa;->zzb:Lcom/google/android/gms/internal/ads/zzaei;

    const/4 v14, 0x1

    const/16 v17, 0x0

    move/from16 v16, v1

    .line 5
    invoke-interface/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzaei;->zzt(JIIILcom/google/android/gms/internal/ads/zzaeh;)V

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaoa;->zzh:J

    int-to-long v7, v2

    add-long/2addr v3, v7

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaoa;->zzh:J

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaoa;->zzg:I

    :cond_2
    if-gtz v5, :cond_3

    return v6

    :cond_3
    const/4 v1, 0x0

    return v1
.end method
