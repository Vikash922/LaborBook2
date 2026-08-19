.class public final Lcom/google/android/gms/internal/ads/zzame;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzek;

.field private final zzb:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zzc:Ljava/lang/String;

.field private final zzd:I

.field private final zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:Lcom/google/android/gms/internal/ads/zzaei;

.field private zzh:I

.field private zzi:I

.field private zzj:I

.field private zzk:J

.field private zzl:Lcom/google/android/gms/internal/ads/zzz;

.field private zzm:I

.field private zzn:I

.field private zzo:I

.field private zzp:I

.field private zzq:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p4, Lcom/google/android/gms/internal/ads/zzek;

    new-array p3, p3, [B

    invoke-direct {p4, p3}, Lcom/google/android/gms/internal/ads/zzek;-><init>([B)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzame;->zza:Lcom/google/android/gms/internal/ads/zzek;

    const/4 p3, 0x0

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzame;->zzh:I

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzame;->zzq:J

    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzame;->zzb:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p3, -0x1

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzame;->zzo:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzame;->zzp:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzame;->zzc:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzame;->zzd:I

    const-string p1, "video/mp2t"

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzame;->zze:Ljava/lang/String;

    return-void
.end method

.method private final zzf(Lcom/google/android/gms/internal/ads/zzacz;)V
    .locals 4
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 1
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzacz;->zzb:I

    const v1, -0x7fffffff

    if-eq v0, v1, :cond_3

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzacz;->zzc:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzame;->zzl:Lcom/google/android/gms/internal/ads/zzz;

    if-eqz v2, :cond_1

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzz;->zzE:I

    if-ne v1, v3, :cond_1

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzz;->zzF:I

    if-ne v0, v3, :cond_1

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzacz;->zza:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzame;->zzl:Lcom/google/android/gms/internal/ads/zzz;

    if-nez v2, :cond_2

    new-instance v2, Lcom/google/android/gms/internal/ads/zzx;

    .line 2
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzz;->zzb()Lcom/google/android/gms/internal/ads/zzx;

    move-result-object v2

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzame;->zzf:Ljava/lang/String;

    .line 3
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzO(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzame;->zze:Ljava/lang/String;

    .line 4
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzE(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzacz;->zza:Ljava/lang/String;

    .line 5
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzx;->zzad(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 6
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzB(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 7
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzae(I)Lcom/google/android/gms/internal/ads/zzx;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzame;->zzc:Ljava/lang/String;

    .line 8
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzx;->zzS(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzame;->zzd:I

    .line 9
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzx;->zzab(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzame;->zzl:Lcom/google/android/gms/internal/ads/zzz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzame;->zzg:Lcom/google/android/gms/internal/ads/zzaei;

    .line 11
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaei;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private final zzg(Lcom/google/android/gms/internal/ads/zzek;[BI)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzame;->zzi:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzame;->zzi:I

    .line 2
    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzek;->zzH([BII)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzame;->zzi:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzame;->zzi:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzek;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzame;->zzg:Lcom/google/android/gms/internal/ads/zzaei;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v2

    if-lez v2, :cond_20

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzame;->zzh:I

    const/16 v3, 0x8

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-eqz v2, :cond_14

    const/4 v9, 0x5

    const/4 v10, 0x7

    const/4 v11, 0x6

    if-eq v2, v8, :cond_b

    if-eq v2, v5, :cond_a

    const-wide/16 v12, 0x0

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v2, v4, :cond_8

    if-eq v2, v7, :cond_6

    if-eq v2, v9, :cond_3

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v2

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzame;->zzm:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzame;->zzi:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzame;->zzg:Lcom/google/android/gms/internal/ads/zzaei;

    .line 11
    invoke-interface {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzaei;->zzr(Lcom/google/android/gms/internal/ads/zzek;I)V

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzame;->zzi:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzame;->zzi:I

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzame;->zzm:I

    if-ne v3, v2, :cond_0

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzame;->zzq:J

    cmp-long v2, v2, v14

    if-eqz v2, :cond_1

    move v2, v8

    goto :goto_1

    :cond_1
    move v2, v6

    .line 12
    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzame;->zzg:Lcom/google/android/gms/internal/ads/zzaei;

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzame;->zzq:J

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzame;->zzn:I

    if-ne v2, v7, :cond_2

    move v12, v6

    goto :goto_2

    :cond_2
    move v12, v8

    :goto_2
    iget v13, v0, Lcom/google/android/gms/internal/ads/zzame;->zzm:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 13
    invoke-interface/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/zzaei;->zzt(JIIILcom/google/android/gms/internal/ads/zzaeh;)V

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzame;->zzq:J

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzame;->zzk:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzame;->zzq:J

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzame;->zzh:I

    goto :goto_0

    .line 26
    :cond_3
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzame;->zza:Lcom/google/android/gms/internal/ads/zzek;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v3

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzame;->zzp:I

    .line 14
    invoke-direct {v0, v1, v3, v5}, Lcom/google/android/gms/internal/ads/zzame;->zzg(Lcom/google/android/gms/internal/ads/zzek;[BI)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzame;->zzb:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v5

    .line 15
    invoke-static {v5, v3}, Lcom/google/android/gms/internal/ads/zzadb;->zze([BLjava/util/concurrent/atomic/AtomicInteger;)Lcom/google/android/gms/internal/ads/zzacz;

    move-result-object v3

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzame;->zzn:I

    if-ne v5, v4, :cond_4

    .line 16
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzame;->zzf(Lcom/google/android/gms/internal/ads/zzacz;)V

    :cond_4
    iget v4, v3, Lcom/google/android/gms/internal/ads/zzacz;->zzd:I

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzame;->zzm:I

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzacz;->zze:J

    cmp-long v5, v3, v14

    if-nez v5, :cond_5

    goto :goto_3

    :cond_5
    move-wide v12, v3

    :goto_3
    iput-wide v12, v0, Lcom/google/android/gms/internal/ads/zzame;->zzk:J

    .line 17
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzame;->zzg:Lcom/google/android/gms/internal/ads/zzaei;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzame;->zzp:I

    .line 18
    invoke-interface {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzaei;->zzr(Lcom/google/android/gms/internal/ads/zzek;I)V

    iput v11, v0, Lcom/google/android/gms/internal/ads/zzame;->zzh:I

    goto/16 :goto_0

    :cond_6
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzame;->zza:Lcom/google/android/gms/internal/ads/zzek;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v3

    .line 19
    invoke-direct {v0, v1, v3, v11}, Lcom/google/android/gms/internal/ads/zzame;->zzg(Lcom/google/android/gms/internal/ads/zzek;[BI)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v2

    .line 20
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzadb;->zzb([B)I

    move-result v2

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzame;->zzp:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzame;->zzi:I

    if-le v3, v2, :cond_7

    sub-int v2, v3, v2

    sub-int/2addr v3, v2

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzame;->zzi:I

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    move-result v3

    sub-int/2addr v3, v2

    .line 21
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    :cond_7
    iput v9, v0, Lcom/google/android/gms/internal/ads/zzame;->zzh:I

    goto/16 :goto_0

    .line 9
    :cond_8
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzame;->zza:Lcom/google/android/gms/internal/ads/zzek;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v3

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzame;->zzo:I

    .line 22
    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzame;->zzg(Lcom/google/android/gms/internal/ads/zzek;[BI)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v3

    .line 23
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzadb;->zzd([B)Lcom/google/android/gms/internal/ads/zzacz;

    move-result-object v3

    .line 24
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzame;->zzf(Lcom/google/android/gms/internal/ads/zzacz;)V

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzacz;->zzd:I

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzame;->zzm:I

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzacz;->zze:J

    cmp-long v5, v3, v14

    if-nez v5, :cond_9

    goto :goto_4

    :cond_9
    move-wide v12, v3

    :goto_4
    iput-wide v12, v0, Lcom/google/android/gms/internal/ads/zzame;->zzk:J

    .line 25
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzame;->zzg:Lcom/google/android/gms/internal/ads/zzaei;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzame;->zzo:I

    .line 26
    invoke-interface {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzaei;->zzr(Lcom/google/android/gms/internal/ads/zzek;I)V

    iput v11, v0, Lcom/google/android/gms/internal/ads/zzame;->zzh:I

    goto/16 :goto_0

    .line 36
    :cond_a
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzame;->zza:Lcom/google/android/gms/internal/ads/zzek;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v3

    .line 27
    invoke-direct {v0, v1, v3, v10}, Lcom/google/android/gms/internal/ads/zzame;->zzg(Lcom/google/android/gms/internal/ads/zzek;[BI)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v2

    .line 28
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzadb;->zza([B)I

    move-result v2

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzame;->zzo:I

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzame;->zzh:I

    goto/16 :goto_0

    .line 21
    :cond_b
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzame;->zza:Lcom/google/android/gms/internal/ads/zzek;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v12

    const/16 v13, 0x12

    .line 29
    invoke-direct {v0, v1, v12, v13}, Lcom/google/android/gms/internal/ads/zzame;->zzg(Lcom/google/android/gms/internal/ads/zzek;[BI)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v12

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzame;->zzl:Lcom/google/android/gms/internal/ads/zzz;

    if-nez v14, :cond_c

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzame;->zzf:Ljava/lang/String;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzame;->zzc:Ljava/lang/String;

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzame;->zzd:I

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzame;->zze:Ljava/lang/String;

    const/16 v19, 0x0

    move-object/from16 v16, v14

    move-object v14, v12

    move/from16 v17, v13

    move-object/from16 v18, v5

    .line 30
    invoke-static/range {v14 .. v19}, Lcom/google/android/gms/internal/ads/zzadb;->zzc([BLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzs;)Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzame;->zzl:Lcom/google/android/gms/internal/ads/zzz;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzame;->zzg:Lcom/google/android/gms/internal/ads/zzaei;

    .line 31
    invoke-interface {v13, v5}, Lcom/google/android/gms/internal/ads/zzaei;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    .line 32
    :cond_c
    sget v5, Lcom/google/android/gms/internal/ads/zzadb;->zza:I

    .line 33
    aget-byte v5, v12, v6

    const/16 v13, 0x1f

    const/4 v14, -0x1

    const/4 v15, -0x2

    if-eq v5, v15, :cond_f

    if-eq v5, v14, :cond_e

    if-eq v5, v13, :cond_d

    .line 37
    aget-byte v3, v12, v9

    and-int/2addr v3, v4

    shl-int/lit8 v3, v3, 0xc

    aget-byte v4, v12, v11

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v7

    aget-byte v6, v12, v10

    goto :goto_6

    .line 34
    :cond_d
    aget-byte v6, v12, v11

    and-int/2addr v4, v6

    shl-int/lit8 v4, v4, 0xc

    aget-byte v6, v12, v10

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v7

    aget-byte v3, v12, v3

    and-int/lit8 v3, v3, 0x3c

    const/16 v17, 0x2

    shr-int/lit8 v3, v3, 0x2

    or-int/2addr v4, v6

    or-int/2addr v3, v4

    goto :goto_5

    .line 35
    :cond_e
    aget-byte v3, v12, v10

    and-int/2addr v3, v4

    shl-int/lit8 v3, v3, 0xc

    aget-byte v4, v12, v11

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v7

    const/16 v6, 0x9

    aget-byte v6, v12, v6

    and-int/lit8 v6, v6, 0x3c

    const/16 v17, 0x2

    shr-int/lit8 v6, v6, 0x2

    or-int/2addr v3, v4

    or-int/2addr v3, v6

    :goto_5
    add-int/2addr v3, v8

    move v4, v8

    goto :goto_7

    .line 36
    :cond_f
    aget-byte v3, v12, v7

    and-int/2addr v3, v4

    shl-int/lit8 v3, v3, 0xc

    aget-byte v4, v12, v10

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v7

    aget-byte v6, v12, v11

    :goto_6
    and-int/lit16 v6, v6, 0xf0

    shr-int/2addr v6, v7

    or-int/2addr v3, v4

    or-int/2addr v3, v6

    add-int/2addr v3, v8

    const/4 v4, 0x0

    :goto_7
    if-eqz v4, :cond_10

    mul-int/lit8 v3, v3, 0x10

    .line 37
    div-int/lit8 v3, v3, 0xe

    :cond_10
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzame;->zzm:I

    if-eq v5, v15, :cond_13

    if-eq v5, v14, :cond_12

    if-eq v5, v13, :cond_11

    .line 41
    aget-byte v3, v12, v7

    and-int/2addr v3, v8

    shl-int/2addr v3, v11

    aget-byte v4, v12, v9

    and-int/lit16 v4, v4, 0xfc

    const/4 v5, 0x2

    goto :goto_9

    :cond_11
    const/4 v5, 0x2

    .line 38
    aget-byte v3, v12, v9

    and-int/2addr v3, v10

    shl-int/2addr v3, v7

    aget-byte v4, v12, v11

    goto :goto_8

    :cond_12
    const/4 v5, 0x2

    .line 39
    aget-byte v3, v12, v7

    and-int/2addr v3, v10

    shl-int/2addr v3, v7

    aget-byte v4, v12, v10

    :goto_8
    and-int/lit8 v4, v4, 0x3c

    goto :goto_9

    :cond_13
    const/4 v5, 0x2

    .line 40
    aget-byte v3, v12, v9

    and-int/2addr v3, v8

    shl-int/2addr v3, v11

    aget-byte v4, v12, v7

    and-int/lit16 v4, v4, 0xfc

    :goto_9
    shr-int/2addr v4, v5

    or-int/2addr v3, v4

    add-int/2addr v3, v8

    .line 41
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzame;->zzl:Lcom/google/android/gms/internal/ads/zzz;

    .line 42
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzz;->zzF:I

    mul-int/lit8 v3, v3, 0x20

    int-to-long v5, v3

    .line 43
    invoke-static {v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzeu;->zzt(JI)J

    move-result-wide v3

    .line 44
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzfzz;->zzb(J)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzame;->zzk:J

    const/4 v3, 0x0

    .line 45
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzame;->zzg:Lcom/google/android/gms/internal/ads/zzaei;

    const/16 v4, 0x12

    .line 46
    invoke-interface {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzaei;->zzr(Lcom/google/android/gms/internal/ads/zzek;I)V

    iput v11, v0, Lcom/google/android/gms/internal/ads/zzame;->zzh:I

    goto/16 :goto_0

    .line 3
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v2

    if-lez v2, :cond_0

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzame;->zzj:I

    shl-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzame;->zzj:I

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    move-result v5

    or-int/2addr v2, v5

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzame;->zzj:I

    .line 5
    sget v5, Lcom/google/android/gms/internal/ads/zzadb;->zza:I

    const v5, 0x7ffe8001

    if-eq v2, v5, :cond_1c

    const v5, -0x180fe80

    if-eq v2, v5, :cond_1c

    const v5, 0x1fffe800

    if-eq v2, v5, :cond_1c

    const v5, -0xe0ff18

    if-ne v2, v5, :cond_15

    goto :goto_d

    :cond_15
    const v5, 0x64582025

    if-eq v2, v5, :cond_1b

    const v5, 0x25205864

    if-ne v2, v5, :cond_16

    goto :goto_c

    :cond_16
    const v5, 0x40411bf2

    if-eq v2, v5, :cond_1a

    const v5, -0xde4bec0

    if-ne v2, v5, :cond_17

    goto :goto_b

    :cond_17
    const v5, 0x71c442e8

    if-eq v2, v5, :cond_19

    const v5, -0x17bd3b8f

    if-ne v2, v5, :cond_18

    goto :goto_a

    :cond_18
    const/4 v2, 0x0

    goto :goto_e

    :cond_19
    :goto_a
    move v2, v7

    goto :goto_e

    :cond_1a
    :goto_b
    move v2, v4

    goto :goto_e

    :cond_1b
    :goto_c
    const/4 v2, 0x2

    goto :goto_e

    :cond_1c
    :goto_d
    move v2, v8

    :goto_e
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzame;->zzn:I

    if-eqz v2, :cond_14

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzame;->zza:Lcom/google/android/gms/internal/ads/zzek;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v3

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzame;->zzj:I

    shr-int/lit8 v6, v5, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    const/4 v9, 0x0

    .line 6
    aput-byte v6, v3, v9

    shr-int/lit8 v6, v5, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 7
    aput-byte v6, v3, v8

    shr-int/lit8 v6, v5, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    const/4 v9, 0x2

    .line 8
    aput-byte v6, v3, v9

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 9
    aput-byte v5, v3, v4

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzame;->zzi:I

    const/4 v5, 0x0

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzame;->zzj:I

    if-eq v2, v4, :cond_1f

    if-ne v2, v7, :cond_1d

    goto :goto_f

    :cond_1d
    if-ne v2, v8, :cond_1e

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzame;->zzh:I

    goto/16 :goto_0

    :cond_1e
    const/4 v2, 0x2

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzame;->zzh:I

    goto/16 :goto_0

    :cond_1f
    :goto_f
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzame;->zzh:I

    goto/16 :goto_0

    :cond_20
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzadf;Lcom/google/android/gms/internal/ads/zzanu;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzanu;->zzc()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzanu;->zzb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzame;->zzf:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzanu;->zza()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzadf;->zzw(II)Lcom/google/android/gms/internal/ads/zzaei;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzame;->zzg:Lcom/google/android/gms/internal/ads/zzaei;

    return-void
.end method

.method public final zzc(Z)V
    .locals 0

    return-void
.end method

.method public final zzd(JI)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzame;->zzq:J

    return-void
.end method

.method public final zze()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzame;->zzh:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzame;->zzi:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzame;->zzj:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzame;->zzq:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzame;->zzb:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
