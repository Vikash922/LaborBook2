.class final Lcom/google/android/gms/internal/ads/zzafn;
.super Lcom/google/android/gms/internal/ads/zzafm;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzek;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzek;

.field private zzd:I

.field private zze:Z

.field private zzf:Z

.field private zzg:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaei;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzafm;-><init>(Lcom/google/android/gms/internal/ads/zzaei;)V

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzek;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfq;->zza:[B

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzek;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafn;->zzb:Lcom/google/android/gms/internal/ads/zzek;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzek;

    const/4 v0, 0x4

    .line 3
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzek;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafn;->zzc:Lcom/google/android/gms/internal/ads/zzek;

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/ads/zzek;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzafl;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    move-result p1

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 p1, p1, 0xf

    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzafn;->zzg:I

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 1
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzafl;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Video format not supported: "

    .line 2
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzafl;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final zzb(Lcom/google/android/gms/internal/ads/zzek;J)Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zzm()I

    move-result v2

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zzh()I

    move-result v3

    int-to-long v3, v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzafn;->zze:Z

    if-nez v2, :cond_4

    new-instance v2, Lcom/google/android/gms/internal/ads/zzek;

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v3

    new-array v3, v3, [B

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzek;-><init>([B)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v3

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v4

    invoke-virtual {v1, v3, v6, v4}, Lcom/google/android/gms/internal/ads/zzek;->zzH([BII)V

    .line 16
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzacg;->zza(Lcom/google/android/gms/internal/ads/zzek;)Lcom/google/android/gms/internal/ads/zzacg;

    move-result-object v1

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzacg;->zzb:I

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzafn;->zzd:I

    new-instance v2, Lcom/google/android/gms/internal/ads/zzx;

    .line 17
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    const-string v3, "video/x-flv"

    .line 18
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzE(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    const-string v3, "video/avc"

    .line 19
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzad(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzacg;->zzl:Ljava/lang/String;

    .line 20
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzC(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzacg;->zzc:I

    .line 21
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzai(I)Lcom/google/android/gms/internal/ads/zzx;

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzacg;->zzd:I

    .line 22
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzM(I)Lcom/google/android/gms/internal/ads/zzx;

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzacg;->zzk:F

    .line 23
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzZ(F)Lcom/google/android/gms/internal/ads/zzx;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzacg;->zza:Ljava/util/List;

    .line 24
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzP(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzx;

    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafn;->zza:Lcom/google/android/gms/internal/ads/zzaei;

    .line 26
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzaei;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzafn;->zze:Z

    return v6

    :cond_0
    if-ne v2, v5, :cond_4

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzafn;->zze:Z

    if-eqz v2, :cond_4

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzafn;->zzg:I

    if-ne v2, v5, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v6

    :goto_0
    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzafn;->zzf:Z

    if-nez v7, :cond_2

    if-eqz v2, :cond_4

    move v11, v5

    goto :goto_1

    :cond_2
    move v11, v2

    :goto_1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafn;->zzc:Lcom/google/android/gms/internal/ads/zzek;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v7

    .line 3
    aput-byte v6, v7, v6

    .line 4
    aput-byte v6, v7, v5

    const/4 v8, 0x2

    .line 5
    aput-byte v6, v7, v8

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzafn;->zzd:I

    const/4 v8, 0x4

    rsub-int/lit8 v7, v7, 0x4

    move v12, v6

    .line 6
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v9

    if-lez v9, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v9

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzafn;->zzd:I

    .line 7
    invoke-virtual {v1, v9, v7, v10}, Lcom/google/android/gms/internal/ads/zzek;->zzH([BII)V

    .line 8
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzafn;->zzb:Lcom/google/android/gms/internal/ads/zzek;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzp()I

    move-result v10

    .line 10
    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzafn;->zza:Lcom/google/android/gms/internal/ads/zzaei;

    .line 11
    invoke-interface {v13, v9, v8}, Lcom/google/android/gms/internal/ads/zzaei;->zzr(Lcom/google/android/gms/internal/ads/zzek;I)V

    add-int/lit8 v12, v12, 0x4

    .line 12
    invoke-interface {v13, v1, v10}, Lcom/google/android/gms/internal/ads/zzaei;->zzr(Lcom/google/android/gms/internal/ads/zzek;I)V

    add-int/2addr v12, v10

    goto :goto_2

    :cond_3
    const-wide/16 v1, 0x3e8

    mul-long/2addr v3, v1

    add-long v9, p2, v3

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzafn;->zza:Lcom/google/android/gms/internal/ads/zzaei;

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 13
    invoke-interface/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzaei;->zzt(JIIILcom/google/android/gms/internal/ads/zzaeh;)V

    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzafn;->zzf:Z

    return v5

    :cond_4
    return v6
.end method
