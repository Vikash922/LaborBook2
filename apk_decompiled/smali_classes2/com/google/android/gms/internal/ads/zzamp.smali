.class public final Lcom/google/android/gms/internal/ads/zzamp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzank;

.field private zzb:Ljava/lang/String;

.field private zzc:Lcom/google/android/gms/internal/ads/zzaei;

.field private zzd:Lcom/google/android/gms/internal/ads/zzamo;

.field private zze:Z

.field private final zzf:[Z

.field private final zzg:Lcom/google/android/gms/internal/ads/zzamy;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzamy;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzamy;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzamy;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzamy;

.field private zzl:J

.field private zzm:J

.field private final zzn:Lcom/google/android/gms/internal/ads/zzek;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzank;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zza:Lcom/google/android/gms/internal/ads/zzank;

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzf:[Z

    new-instance p1, Lcom/google/android/gms/internal/ads/zzamy;

    const/16 p2, 0x20

    const/16 v0, 0x80

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzamy;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzg:Lcom/google/android/gms/internal/ads/zzamy;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzamy;

    const/16 p2, 0x21

    .line 2
    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzamy;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzh:Lcom/google/android/gms/internal/ads/zzamy;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzamy;

    const/16 p2, 0x22

    .line 3
    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzamy;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzi:Lcom/google/android/gms/internal/ads/zzamy;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzamy;

    const/16 p2, 0x27

    .line 4
    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzamy;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzj:Lcom/google/android/gms/internal/ads/zzamy;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzamy;

    const/16 p2, 0x28

    .line 5
    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzamy;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzk:Lcom/google/android/gms/internal/ads/zzamy;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzm:J

    .line 6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzek;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzek;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzn:Lcom/google/android/gms/internal/ads/zzek;

    return-void
.end method

.method private final zzf(JIIJ)V
    .locals 18
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output",
            "sampleReader"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p4

    move-wide/from16 v2, p5

    .line 1
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzd:Lcom/google/android/gms/internal/ads/zzamo;

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzamp;->zze:Z

    move-wide/from16 v6, p1

    move/from16 v8, p3

    invoke-virtual {v4, v6, v7, v8, v5}, Lcom/google/android/gms/internal/ads/zzamo;->zza(JIZ)V

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzamp;->zze:Z

    if-nez v4, :cond_2

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzg:Lcom/google/android/gms/internal/ads/zzamy;

    .line 2
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzamy;->zzd(I)Z

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzh:Lcom/google/android/gms/internal/ads/zzamy;

    .line 3
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzamy;->zzd(I)Z

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzi:Lcom/google/android/gms/internal/ads/zzamy;

    .line 4
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzamy;->zzd(I)Z

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzamy;->zze()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzamy;->zze()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzamy;->zze()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzb:Ljava/lang/String;

    iget v8, v4, Lcom/google/android/gms/internal/ads/zzamy;->zzb:I

    iget v9, v5, Lcom/google/android/gms/internal/ads/zzamy;->zzb:I

    add-int/2addr v9, v8

    iget v10, v6, Lcom/google/android/gms/internal/ads/zzamy;->zzb:I

    add-int/2addr v9, v10

    .line 5
    new-array v9, v9, [B

    iget-object v10, v4, Lcom/google/android/gms/internal/ads/zzamy;->zza:[B

    const/4 v11, 0x0

    .line 6
    invoke-static {v10, v11, v9, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, v5, Lcom/google/android/gms/internal/ads/zzamy;->zza:[B

    iget v10, v4, Lcom/google/android/gms/internal/ads/zzamy;->zzb:I

    iget v12, v5, Lcom/google/android/gms/internal/ads/zzamy;->zzb:I

    .line 7
    invoke-static {v8, v11, v9, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzamy;->zza:[B

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzamy;->zzb:I

    iget v10, v5, Lcom/google/android/gms/internal/ads/zzamy;->zzb:I

    add-int/2addr v4, v10

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzamy;->zzb:I

    .line 8
    invoke-static {v8, v11, v9, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, v5, Lcom/google/android/gms/internal/ads/zzamy;->zza:[B

    const/4 v6, 0x3

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzamy;->zzb:I

    const/4 v8, 0x0

    .line 9
    invoke-static {v4, v6, v5, v8}, Lcom/google/android/gms/internal/ads/zzfq;->zzd([BIILcom/google/android/gms/internal/ads/zzfn;)Lcom/google/android/gms/internal/ads/zzfk;

    move-result-object v4

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzfk;->zzb:Lcom/google/android/gms/internal/ads/zzff;

    if-eqz v5, :cond_0

    iget v6, v5, Lcom/google/android/gms/internal/ads/zzff;->zzf:I

    iget-object v8, v5, Lcom/google/android/gms/internal/ads/zzff;->zze:[I

    iget v15, v5, Lcom/google/android/gms/internal/ads/zzff;->zzd:I

    iget v14, v5, Lcom/google/android/gms/internal/ads/zzff;->zzc:I

    iget-boolean v13, v5, Lcom/google/android/gms/internal/ads/zzff;->zzb:Z

    iget v12, v5, Lcom/google/android/gms/internal/ads/zzff;->zza:I

    move-object/from16 v16, v8

    move/from16 v17, v6

    .line 10
    invoke-static/range {v12 .. v17}, Lcom/google/android/gms/internal/ads/zzdh;->zzd(IZII[II)Ljava/lang/String;

    move-result-object v8

    :cond_0
    new-instance v5, Lcom/google/android/gms/internal/ads/zzx;

    .line 11
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 12
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzx;->zzO(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    const-string v6, "video/mp2t"

    .line 13
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzE(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    const-string v6, "video/hevc"

    .line 14
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzad(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 15
    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/ads/zzx;->zzC(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzfk;->zze:I

    .line 16
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzai(I)Lcom/google/android/gms/internal/ads/zzx;

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzfk;->zzf:I

    .line 17
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzM(I)Lcom/google/android/gms/internal/ads/zzx;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzi;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzi;-><init>()V

    iget v7, v4, Lcom/google/android/gms/internal/ads/zzfk;->zzi:I

    .line 18
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzi;->zzc(I)Lcom/google/android/gms/internal/ads/zzi;

    iget v7, v4, Lcom/google/android/gms/internal/ads/zzfk;->zzj:I

    .line 19
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzi;->zzb(I)Lcom/google/android/gms/internal/ads/zzi;

    iget v7, v4, Lcom/google/android/gms/internal/ads/zzfk;->zzk:I

    .line 20
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzi;->zzd(I)Lcom/google/android/gms/internal/ads/zzi;

    iget v7, v4, Lcom/google/android/gms/internal/ads/zzfk;->zzc:I

    add-int/lit8 v7, v7, 0x8

    .line 21
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzi;->zzf(I)Lcom/google/android/gms/internal/ads/zzi;

    iget v7, v4, Lcom/google/android/gms/internal/ads/zzfk;->zzd:I

    add-int/lit8 v7, v7, 0x8

    .line 22
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzi;->zza(I)Lcom/google/android/gms/internal/ads/zzi;

    .line 23
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzi;->zzg()Lcom/google/android/gms/internal/ads/zzk;

    move-result-object v6

    .line 24
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzD(Lcom/google/android/gms/internal/ads/zzk;)Lcom/google/android/gms/internal/ads/zzx;

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzfk;->zzg:F

    .line 25
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzZ(F)Lcom/google/android/gms/internal/ads/zzx;

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzfk;->zzh:I

    .line 26
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzx;->zzU(I)Lcom/google/android/gms/internal/ads/zzx;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzfk;->zza:I

    const/4 v6, 0x1

    add-int/2addr v4, v6

    .line 27
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzV(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 28
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzx;->zzP(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzx;

    .line 29
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzc:Lcom/google/android/gms/internal/ads/zzaei;

    .line 30
    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/ads/zzaei;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzz;->zzq:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    move v11, v6

    .line 31
    :cond_1
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzftw;->zzl(Z)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzamp;->zza:Lcom/google/android/gms/internal/ads/zzank;

    .line 32
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzank;->zzf(I)V

    iput-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzamp;->zze:Z

    :cond_2
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzj:Lcom/google/android/gms/internal/ads/zzamy;

    .line 33
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzamy;->zzd(I)Z

    move-result v5

    const/4 v6, 0x5

    if-eqz v5, :cond_3

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzamy;->zza:[B

    iget v7, v4, Lcom/google/android/gms/internal/ads/zzamy;->zzb:I

    .line 34
    invoke-static {v5, v7}, Lcom/google/android/gms/internal/ads/zzfq;->zzc([BI)I

    move-result v5

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzn:Lcom/google/android/gms/internal/ads/zzek;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzamy;->zza:[B

    .line 35
    invoke-virtual {v7, v4, v5}, Lcom/google/android/gms/internal/ads/zzek;->zzJ([BI)V

    .line 36
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzamp;->zza:Lcom/google/android/gms/internal/ads/zzank;

    .line 37
    invoke-virtual {v4, v2, v3, v7}, Lcom/google/android/gms/internal/ads/zzank;->zzc(JLcom/google/android/gms/internal/ads/zzek;)V

    :cond_3
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzk:Lcom/google/android/gms/internal/ads/zzamy;

    .line 38
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzamy;->zzd(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzamy;->zza:[B

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzamy;->zzb:I

    .line 39
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/ads/zzfq;->zzc([BI)I

    move-result v1

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzamp;->zzn:Lcom/google/android/gms/internal/ads/zzek;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzamy;->zza:[B

    .line 40
    invoke-virtual {v5, v4, v1}, Lcom/google/android/gms/internal/ads/zzek;->zzJ([BI)V

    .line 41
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzek;->zzM(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzamp;->zza:Lcom/google/android/gms/internal/ads/zzank;

    .line 42
    invoke-virtual {v1, v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzank;->zzc(JLcom/google/android/gms/internal/ads/zzek;)V

    :cond_4
    return-void
.end method

.method private final zzg([BII)V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sampleReader"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzd:Lcom/google/android/gms/internal/ads/zzamo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzamo;->zzb([BII)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamp;->zze:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzg:Lcom/google/android/gms/internal/ads/zzamy;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzamy;->zza([BII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzh:Lcom/google/android/gms/internal/ads/zzamy;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzamy;->zza([BII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzi:Lcom/google/android/gms/internal/ads/zzamy;

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzamy;->zza([BII)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzj:Lcom/google/android/gms/internal/ads/zzamy;

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzamy;->zza([BII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzk:Lcom/google/android/gms/internal/ads/zzamy;

    .line 6
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzamy;->zza([BII)V

    return-void
.end method

.method private final zzh(JIIJ)V
    .locals 8
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sampleReader"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzd:Lcom/google/android/gms/internal/ads/zzamo;

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzamp;->zze:Z

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzamo;->zzd(JIIJZ)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zze:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzg:Lcom/google/android/gms/internal/ads/zzamy;

    .line 2
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/ads/zzamy;->zzc(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzh:Lcom/google/android/gms/internal/ads/zzamy;

    .line 3
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/ads/zzamy;->zzc(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzi:Lcom/google/android/gms/internal/ads/zzamy;

    .line 4
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/ads/zzamy;->zzc(I)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzj:Lcom/google/android/gms/internal/ads/zzamy;

    .line 5
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/ads/zzamy;->zzc(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzk:Lcom/google/android/gms/internal/ads/zzamy;

    .line 6
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/ads/zzamy;->zzc(I)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzek;)V
    .locals 17

    move-object/from16 v7, p0

    .line 1
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzamp;->zzc:Lcom/google/android/gms/internal/ads/zzaei;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    .line 3
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v9

    iget-wide v1, v7, Lcom/google/android/gms/internal/ads/zzamp;->zzl:J

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v7, Lcom/google/android/gms/internal/ads/zzamp;->zzl:J

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzamp;->zzc:Lcom/google/android/gms/internal/ads/zzaei;

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v2

    move-object/from16 v10, p1

    invoke-interface {v1, v10, v2}, Lcom/google/android/gms/internal/ads/zzaei;->zzr(Lcom/google/android/gms/internal/ads/zzek;I)V

    :goto_0
    if-ge v0, v8, :cond_0

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzamp;->zzf:[Z

    .line 6
    invoke-static {v9, v0, v8, v1}, Lcom/google/android/gms/internal/ads/zzfq;->zza([BII[Z)I

    move-result v1

    if-eq v1, v8, :cond_4

    add-int/lit8 v2, v1, 0x3

    .line 7
    aget-byte v2, v9, v2

    and-int/lit8 v2, v2, 0x7e

    const/4 v3, 0x3

    if-lez v1, :cond_1

    add-int/lit8 v4, v1, -0x1

    .line 8
    aget-byte v5, v9, v4

    if-nez v5, :cond_1

    const/4 v3, 0x4

    move v12, v3

    move v11, v4

    goto :goto_1

    :cond_1
    move v11, v1

    move v12, v3

    :goto_1
    sub-int v1, v11, v0

    if-lez v1, :cond_2

    .line 9
    invoke-direct {v7, v9, v0, v11}, Lcom/google/android/gms/internal/ads/zzamp;->zzg([BII)V

    :cond_2
    sub-int v13, v8, v11

    iget-wide v3, v7, Lcom/google/android/gms/internal/ads/zzamp;->zzl:J

    int-to-long v5, v13

    sub-long v14, v3, v5

    if-gez v1, :cond_3

    neg-int v0, v1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    move v4, v0

    shr-int/lit8 v16, v2, 0x1

    iget-wide v5, v7, Lcom/google/android/gms/internal/ads/zzamp;->zzm:J

    move-object/from16 v0, p0

    move-wide v1, v14

    move v3, v13

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzamp;->zzf(JIIJ)V

    iget-wide v5, v7, Lcom/google/android/gms/internal/ads/zzamp;->zzm:J

    move/from16 v4, v16

    .line 11
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzamp;->zzh(JIIJ)V

    add-int v0, v11, v12

    goto :goto_0

    .line 12
    :cond_4
    invoke-direct {v7, v9, v0, v8}, Lcom/google/android/gms/internal/ads/zzamp;->zzg([BII)V

    :cond_5
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzadf;Lcom/google/android/gms/internal/ads/zzanu;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzanu;->zzc()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzanu;->zzb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzb:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzanu;->zza()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzadf;->zzw(II)Lcom/google/android/gms/internal/ads/zzaei;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzc:Lcom/google/android/gms/internal/ads/zzaei;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzamo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzc:Lcom/google/android/gms/internal/ads/zzaei;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzamo;-><init>(Lcom/google/android/gms/internal/ads/zzaei;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzd:Lcom/google/android/gms/internal/ads/zzamo;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamp;->zza:Lcom/google/android/gms/internal/ads/zzank;

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzank;->zzd(Lcom/google/android/gms/internal/ads/zzadf;Lcom/google/android/gms/internal/ads/zzanu;)V

    return-void
.end method

.method public final zzc(Z)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzc:Lcom/google/android/gms/internal/ads/zzaei;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zza:Lcom/google/android/gms/internal/ads/zzank;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzank;->zze()V

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzl:J

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzm:J

    const/4 v3, 0x0

    move-object v0, p0

    .line 4
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzamp;->zzf(JIIJ)V

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzl:J

    const/16 v11, 0x30

    iget-wide v12, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzm:J

    const/4 v10, 0x0

    move-object v7, p0

    .line 5
    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/internal/ads/zzamp;->zzh(JIIJ)V

    :cond_0
    return-void
.end method

.method public final zzd(JI)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzm:J

    return-void
.end method

.method public final zze()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzl:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzm:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzf:[Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfq;->zzi([Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzg:Lcom/google/android/gms/internal/ads/zzamy;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamy;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzh:Lcom/google/android/gms/internal/ads/zzamy;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamy;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzi:Lcom/google/android/gms/internal/ads/zzamy;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamy;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzj:Lcom/google/android/gms/internal/ads/zzamy;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamy;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzk:Lcom/google/android/gms/internal/ads/zzamy;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamy;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamp;->zza:Lcom/google/android/gms/internal/ads/zzank;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzank;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamp;->zzd:Lcom/google/android/gms/internal/ads/zzamo;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamo;->zzc()V

    :cond_0
    return-void
.end method
