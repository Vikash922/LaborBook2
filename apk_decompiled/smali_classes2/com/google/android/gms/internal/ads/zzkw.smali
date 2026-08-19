.class final Lcom/google/android/gms/internal/ads/zzkw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzuw;

.field public final zzb:Ljava/lang/Object;

.field public final zzc:[Lcom/google/android/gms/internal/ads/zzws;

.field public zzd:Z

.field public zze:Z

.field public zzf:Z

.field public zzg:Lcom/google/android/gms/internal/ads/zzkx;

.field public zzh:Z

.field private final zzi:[Z

.field private final zzj:[Lcom/google/android/gms/internal/ads/zzlx;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzyv;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzll;

.field private zzm:Lcom/google/android/gms/internal/ads/zzkw;

.field private zzn:Lcom/google/android/gms/internal/ads/zzxd;

.field private zzo:Lcom/google/android/gms/internal/ads/zzyw;

.field private zzp:J


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/zzlx;JLcom/google/android/gms/internal/ads/zzyv;Lcom/google/android/gms/internal/ads/zzze;Lcom/google/android/gms/internal/ads/zzll;Lcom/google/android/gms/internal/ads/zzkx;Lcom/google/android/gms/internal/ads/zzyw;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzj:[Lcom/google/android/gms/internal/ads/zzlx;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzp:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzk:Lcom/google/android/gms/internal/ads/zzyv;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzl:Lcom/google/android/gms/internal/ads/zzll;

    iget-object p1, p7, Lcom/google/android/gms/internal/ads/zzkx;->zza:Lcom/google/android/gms/internal/ads/zzuy;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzuy;->zza:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzb:Ljava/lang/Object;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzg:Lcom/google/android/gms/internal/ads/zzkx;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzxd;->zza:Lcom/google/android/gms/internal/ads/zzxd;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzn:Lcom/google/android/gms/internal/ads/zzxd;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzo:Lcom/google/android/gms/internal/ads/zzyw;

    const/4 p1, 0x2

    new-array p2, p1, [Lcom/google/android/gms/internal/ads/zzws;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzc:[Lcom/google/android/gms/internal/ads/zzws;

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzi:[Z

    iget-object p1, p7, Lcom/google/android/gms/internal/ads/zzkx;->zza:Lcom/google/android/gms/internal/ads/zzuy;

    iget-wide p2, p7, Lcom/google/android/gms/internal/ads/zzkx;->zzb:J

    iget-wide p9, p7, Lcom/google/android/gms/internal/ads/zzkx;->zzd:J

    .line 2
    invoke-virtual {p6, p1, p5, p2, p3}, Lcom/google/android/gms/internal/ads/zzll;->zzp(Lcom/google/android/gms/internal/ads/zzuy;Lcom/google/android/gms/internal/ads/zzze;J)Lcom/google/android/gms/internal/ads/zzuw;

    move-result-object p5

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p9, p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzuc;

    const/4 p6, 0x1

    const-wide/16 p7, 0x0

    move-object p4, p1

    invoke-direct/range {p4 .. p10}, Lcom/google/android/gms/internal/ads/zzuc;-><init>(Lcom/google/android/gms/internal/ads/zzuw;ZJJ)V

    move-object p5, p1

    :cond_0
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzkw;->zza:Lcom/google/android/gms/internal/ads/zzuw;

    return-void
.end method

.method private final zzu()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkw;->zzw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzo:Lcom/google/android/gms/internal/ads/zzyw;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzyw;->zza:I

    if-ge v0, v2, :cond_0

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzb(I)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzo:Lcom/google/android/gms/internal/ads/zzyw;

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzyw;->zzc:[Lcom/google/android/gms/internal/ads/zzyp;

    aget-object v1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zzv()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkw;->zzw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzo:Lcom/google/android/gms/internal/ads/zzyw;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzyw;->zza:I

    if-ge v0, v2, :cond_0

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzb(I)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzo:Lcom/google/android/gms/internal/ads/zzyw;

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzyw;->zzc:[Lcom/google/android/gms/internal/ads/zzyp;

    aget-object v1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zzw()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzm:Lcom/google/android/gms/internal/ads/zzkw;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzyw;JZ)J
    .locals 6

    const/4 p4, 0x2

    .line 1
    new-array v5, p4, [Z

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzkw;->zzb(Lcom/google/android/gms/internal/ads/zzyw;JZ[Z)J

    move-result-wide p1

    return-wide p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzyw;JZ[Z)J
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    move v3, v2

    .line 1
    :goto_0
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzyw;->zza:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzkw;->zzi:[Z

    if-nez p4, :cond_0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzkw;->zzo:Lcom/google/android/gms/internal/ads/zzyw;

    invoke-virtual {v1, v6, v3}, Lcom/google/android/gms/internal/ads/zzyw;->zza(Lcom/google/android/gms/internal/ads/zzyw;I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_2
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzkw;->zzj:[Lcom/google/android/gms/internal/ads/zzlx;

    const/4 v6, 0x2

    if-ge v3, v6, :cond_2

    .line 2
    aget-object v4, v4, v3

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzlx;->zzb()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkw;->zzu()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzkw;->zzo:Lcom/google/android/gms/internal/ads/zzyw;

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkw;->zzv()V

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzkw;->zza:Lcom/google/android/gms/internal/ads/zzuw;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzyw;->zzc:[Lcom/google/android/gms/internal/ads/zzyp;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzkw;->zzi:[Z

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzkw;->zzc:[Lcom/google/android/gms/internal/ads/zzws;

    move-object v8, v3

    move-object v10, v14

    move-object/from16 v11, p5

    move-wide/from16 v12, p2

    .line 5
    invoke-interface/range {v7 .. v13}, Lcom/google/android/gms/internal/ads/zzuw;->zzf([Lcom/google/android/gms/internal/ads/zzyp;[Z[Lcom/google/android/gms/internal/ads/zzws;[ZJ)J

    move-result-wide v7

    move v9, v2

    :goto_3
    if-ge v9, v6, :cond_3

    .line 6
    aget-object v10, v4, v9

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzlx;->zzb()I

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzkw;->zzf:Z

    move v9, v2

    :goto_4
    if-ge v9, v6, :cond_6

    aget-object v10, v14, v9

    if-eqz v10, :cond_4

    .line 7
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzyw;->zzb(I)Z

    move-result v10

    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    aget-object v10, v4, v9

    .line 8
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzlx;->zzb()I

    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzkw;->zzf:Z

    goto :goto_6

    .line 9
    :cond_4
    aget-object v10, v3, v9

    if-nez v10, :cond_5

    move v10, v5

    goto :goto_5

    :cond_5
    move v10, v2

    :goto_5
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_6
    return-wide v7
.end method

.method public final zzc()J
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zze:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzg:Lcom/google/android/gms/internal/ads/zzkx;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzkx;->zzb:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzf:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zza:Lcom/google/android/gms/internal/ads/zzuw;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzuw;->zzb()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzg:Lcom/google/android/gms/internal/ads/zzkx;

    .line 3
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzkx;->zze:J

    return-wide v0

    :cond_2
    return-wide v3
.end method

.method public final zzd()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zze:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zza:Lcom/google/android/gms/internal/ads/zzuw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzuw;->zzc()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zze()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzp:J

    return-wide v0
.end method

.method public final zzf()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzg:Lcom/google/android/gms/internal/ads/zzkx;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzkx;->zzb:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzp:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzkw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzm:Lcom/google/android/gms/internal/ads/zzkw;

    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/internal/ads/zzxd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzn:Lcom/google/android/gms/internal/ads/zzxd;

    return-object v0
.end method

.method public final zzi()Lcom/google/android/gms/internal/ads/zzyw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzo:Lcom/google/android/gms/internal/ads/zzyw;

    return-object v0
.end method

.method public final zzj(FLcom/google/android/gms/internal/ads/zzbl;Z)Lcom/google/android/gms/internal/ads/zzyw;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzn:Lcom/google/android/gms/internal/ads/zzxd;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzg:Lcom/google/android/gms/internal/ads/zzkx;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzkx;->zza:Lcom/google/android/gms/internal/ads/zzuy;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzk:Lcom/google/android/gms/internal/ads/zzyv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzj:[Lcom/google/android/gms/internal/ads/zzlx;

    invoke-virtual {v0, v1, p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzyv;->zzo([Lcom/google/android/gms/internal/ads/zzlx;Lcom/google/android/gms/internal/ads/zzxd;Lcom/google/android/gms/internal/ads/zzuy;Lcom/google/android/gms/internal/ads/zzbl;)Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzyw;->zza:I

    if-ge p3, v0, :cond_3

    .line 2
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzyw;->zzb(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzyw;->zzc:[Lcom/google/android/gms/internal/ads/zzyp;

    .line 3
    aget-object v0, v0, p3

    if-nez v0, :cond_0

    aget-object v0, v1, p3

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzlx;->zzb()I

    move v2, p2

    .line 3
    :cond_0
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    goto :goto_2

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzyw;->zzc:[Lcom/google/android/gms/internal/ads/zzyp;

    .line 5
    aget-object v0, v0, p3

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, p2

    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zzyw;->zzc:[Lcom/google/android/gms/internal/ads/zzyp;

    .line 6
    array-length v0, p3

    :goto_3
    if-ge p2, v0, :cond_4

    aget-object v1, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_4
    return-object p1
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzku;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkw;->zzw()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zza:Lcom/google/android/gms/internal/ads/zzuw;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzuw;->zzo(Lcom/google/android/gms/internal/ads/zzku;)Z

    return-void
.end method

.method public final zzl(FLcom/google/android/gms/internal/ads/zzbl;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zze:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zza:Lcom/google/android/gms/internal/ads/zzuw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzuw;->zzg()Lcom/google/android/gms/internal/ads/zzxd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzn:Lcom/google/android/gms/internal/ads/zzxd;

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzkw;->zzj(FLcom/google/android/gms/internal/ads/zzbl;Z)Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzg:Lcom/google/android/gms/internal/ads/zzkx;

    .line 3
    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/zzkx;->zzb:J

    .line 4
    iget-wide p2, p2, Lcom/google/android/gms/internal/ads/zzkx;->zze:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v2

    if-eqz v2, :cond_0

    cmp-long v2, v0, p2

    if-ltz v2, :cond_0

    const-wide/16 v0, -0x1

    add-long/2addr p2, v0

    const-wide/16 v0, 0x0

    .line 5
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_0
    const/4 p2, 0x0

    .line 6
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzkw;->zza(Lcom/google/android/gms/internal/ads/zzyw;JZ)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzp:J

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzg:Lcom/google/android/gms/internal/ads/zzkx;

    .line 7
    iget-wide v2, p3, Lcom/google/android/gms/internal/ads/zzkx;->zzb:J

    sub-long/2addr v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzp:J

    .line 8
    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzkx;->zzb(J)Lcom/google/android/gms/internal/ads/zzkx;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzg:Lcom/google/android/gms/internal/ads/zzkx;

    return-void
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zzuv;J)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzd:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zza:Lcom/google/android/gms/internal/ads/zzuw;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzuw;->zzk(Lcom/google/android/gms/internal/ads/zzuv;J)V

    return-void
.end method

.method public final zzn(J)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkw;->zzw()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zze:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zza:Lcom/google/android/gms/internal/ads/zzuw;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzp:J

    sub-long/2addr p1, v1

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzuw;->zzm(J)V

    :cond_0
    return-void
.end method

.method public final zzo()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkw;->zzu()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zza:Lcom/google/android/gms/internal/ads/zzuw;

    :try_start_0
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzuc;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzl:Lcom/google/android/gms/internal/ads/zzll;

    if-eqz v1, :cond_0

    .line 2
    :try_start_1
    check-cast v0, Lcom/google/android/gms/internal/ads/zzuc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzuc;->zza:Lcom/google/android/gms/internal/ads/zzuw;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzll;->zzi(Lcom/google/android/gms/internal/ads/zzuw;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzll;->zzi(Lcom/google/android/gms/internal/ads/zzuw;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaPeriodHolder"

    const-string v2, "Period release failed."

    .line 4
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzdx;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/ads/zzkw;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzm:Lcom/google/android/gms/internal/ads/zzkw;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkw;->zzu()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzm:Lcom/google/android/gms/internal/ads/zzkw;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkw;->zzv()V

    return-void
.end method

.method public final zzq(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzp:J

    return-void
.end method

.method public final zzr()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zza:Lcom/google/android/gms/internal/ads/zzuw;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzuc;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzg:Lcom/google/android/gms/internal/ads/zzkx;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzkx;->zzd:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    const-wide/high16 v1, -0x8000000000000000L

    .line 2
    :cond_0
    check-cast v0, Lcom/google/android/gms/internal/ads/zzuc;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzuc;->zzn(JJ)V

    :cond_1
    return-void
.end method

.method public final zzs()Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zze:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzf:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zza:Lcom/google/android/gms/internal/ads/zzuw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzuw;->zzb()J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method

.method public final zzt()Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zze:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkw;->zzs()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkw;->zzc()J

    move-result-wide v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkw;->zzg:Lcom/google/android/gms/internal/ads/zzkx;

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzkx;->zzb:J

    sub-long/2addr v3, v5

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method
