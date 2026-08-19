.class public final Lcom/google/android/gms/internal/ads/zzwr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaei;


# instance fields
.field private zzA:Z

.field private zzB:Lcom/google/android/gms/internal/ads/zzrz;

.field private final zza:Lcom/google/android/gms/internal/ads/zzwl;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzwn;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzwy;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzry;

.field private final zze:Lcom/google/android/gms/internal/ads/zzrt;

.field private zzf:Lcom/google/android/gms/internal/ads/zzwp;

.field private zzg:Lcom/google/android/gms/internal/ads/zzz;

.field private zzh:I

.field private zzi:[J

.field private zzj:[J

.field private zzk:[I

.field private zzl:[I

.field private zzm:[J

.field private zzn:[Lcom/google/android/gms/internal/ads/zzaeh;

.field private zzo:I

.field private zzp:I

.field private zzq:I

.field private zzr:I

.field private zzs:J

.field private zzt:J

.field private zzu:J

.field private zzv:Z

.field private zzw:Z

.field private zzx:Z

.field private zzy:Lcom/google/android/gms/internal/ads/zzz;

.field private zzz:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzze;Lcom/google/android/gms/internal/ads/zzry;Lcom/google/android/gms/internal/ads/zzrt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzd:Lcom/google/android/gms/internal/ads/zzry;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzwr;->zze:Lcom/google/android/gms/internal/ads/zzrt;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzwl;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzwl;-><init>(Lcom/google/android/gms/internal/ads/zzze;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwr;->zza:Lcom/google/android/gms/internal/ads/zzwl;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzwn;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzwn;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzb:Lcom/google/android/gms/internal/ads/zzwn;

    const/16 p1, 0x3e8

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzh:I

    new-array p2, p1, [J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzi:[J

    new-array p2, p1, [J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzj:[J

    new-array p2, p1, [J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzm:[J

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzl:[I

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzk:[I

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzaeh;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzn:[Lcom/google/android/gms/internal/ads/zzaeh;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzwy;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzwm;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzwm;-><init>()V

    .line 2
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzwy;-><init>(Lcom/google/android/gms/internal/ads/zzdk;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzc:Lcom/google/android/gms/internal/ads/zzwy;

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzs:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzt:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzu:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzx:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzw:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzz:Z

    return-void
.end method

.method private final zzB(IIJZ)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v0

    :goto_0
    if-ge v2, p2, :cond_3

    .line 1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzm:[J

    aget-wide v4, v3, p1

    cmp-long v3, v4, p3

    if-gtz v3, :cond_3

    if-eqz p5, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzl:[I

    .line 2
    aget v4, v4, p1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    :cond_0
    move v1, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzh:I

    if-ne p1, v3, :cond_2

    move p1, v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method private final zzC(I)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzq:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzh:I

    if-ge v0, p1, :cond_0

    return v0

    :cond_0
    sub-int/2addr v0, p1

    return v0
.end method

.method private final declared-synchronized zzD(Lcom/google/android/gms/internal/ads/zzkp;Lcom/google/android/gms/internal/ads/zzhn;ZZLcom/google/android/gms/internal/ads/zzwn;)I
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzhn;->zzd:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwr;->zzL()Z

    move-result v0

    const/4 v1, -0x5

    const/4 v2, -0x3

    const/4 v3, -0x4

    if-nez v0, :cond_4

    if-nez p4, :cond_3

    iget-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzv:Z

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzy:Lcom/google/android/gms/internal/ads/zzz;

    if-eqz p2, :cond_2

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    if-eq p2, p3, :cond_2

    .line 2
    :cond_1
    move-object p3, p2

    check-cast p3, Lcom/google/android/gms/internal/ads/zzz;

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzwr;->zzI(Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzkp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_2
    monitor-exit p0

    return v2

    :cond_3
    :goto_0
    const/4 p1, 0x4

    .line 1
    :try_start_1
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzhh;->zzc(I)V

    const-wide/high16 p3, -0x8000000000000000L

    iput-wide p3, p2, Lcom/google/android/gms/internal/ads/zzhn;->zze:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v3

    .line 2
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzc:Lcom/google/android/gms/internal/ads/zzwy;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzp:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzr:I

    add-int/2addr v4, v5

    .line 3
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzwy;->zza(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzwo;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwo;->zza:Lcom/google/android/gms/internal/ads/zzz;

    if-nez p3, :cond_9

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    if-eq v0, p3, :cond_5

    goto :goto_1

    .line 4
    :cond_5
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzr:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzwr;->zzC(I)I

    move-result p1

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzwr;->zzM(I)Z

    move-result p3

    if-nez p3, :cond_6

    const/4 p1, 0x1

    iput-boolean p1, p2, Lcom/google/android/gms/internal/ads/zzhn;->zzd:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v2

    :cond_6
    :try_start_3
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzl:[I

    .line 6
    aget p3, p3, p1

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzhh;->zzc(I)V

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzr:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzo:I

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_8

    if-nez p4, :cond_7

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzv:Z

    if-eqz p3, :cond_8

    :cond_7
    const/high16 p3, 0x20000000

    .line 7
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzhh;->zza(I)V

    :cond_8
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzm:[J

    .line 8
    aget-wide v0, p3, p1

    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzhn;->zze:J

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzk:[I

    .line 9
    aget p2, p2, p1

    iput p2, p5, Lcom/google/android/gms/internal/ads/zzwn;->zza:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzj:[J

    .line 10
    aget-wide p3, p2, p1

    iput-wide p3, p5, Lcom/google/android/gms/internal/ads/zzwn;->zzb:J

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzn:[Lcom/google/android/gms/internal/ads/zzaeh;

    .line 11
    aget-object p1, p2, p1

    iput-object p1, p5, Lcom/google/android/gms/internal/ads/zzwn;->zzc:Lcom/google/android/gms/internal/ads/zzaeh;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v3

    .line 4
    :cond_9
    :goto_1
    :try_start_4
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzwr;->zzI(Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzkp;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method private final declared-synchronized zzE(JZZ)J
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzo:I

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzm:[J

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzq:I

    aget-wide v3, v0, v2

    cmp-long v0, p1, v3

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    iget p4, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzr:I

    if-eq p4, p3, :cond_1

    add-int/lit8 p3, p4, 0x1

    :cond_1
    move v3, p3

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v4, p1

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzwr;->zzB(IIJZ)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzwr;->zzG(I)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    .line 1
    :cond_2
    :goto_0
    monitor-exit p0

    const-wide/16 p1, -0x1

    return-wide p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final declared-synchronized zzF()J
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzo:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzwr;->zzG(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private final zzG(I)J
    .locals 11

    .line 3
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzt:J

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v6, p1, -0x1

    .line 6
    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/ads/zzwr;->zzC(I)I

    move-result v6

    move v7, v4

    :goto_0
    if-ge v7, p1, :cond_3

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzm:[J

    .line 1
    aget-wide v9, v8, v6

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzl:[I

    .line 2
    aget v8, v8, v6

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, -0x1

    if-ne v6, v5, :cond_2

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzh:I

    add-int/2addr v6, v5

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3
    :cond_3
    :goto_1
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzt:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzo:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzo:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzp:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzp:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzq:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzq:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzh:I

    if-lt v1, v2, :cond_4

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzq:I

    :cond_4
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzr:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzr:I

    if-gez v1, :cond_5

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzr:I

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzc:Lcom/google/android/gms/internal/ads/zzwy;

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzwy;->zze(I)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzo:I

    if-nez p1, :cond_7

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzq:I

    if-nez p1, :cond_6

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzh:I

    :cond_6
    add-int/2addr p1, v5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzj:[J

    .line 5
    aget-wide v1, v0, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzk:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1

    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzj:[J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzq:I

    .line 6
    aget-wide v0, p1, v0

    return-wide v0
.end method

.method private final declared-synchronized zzH(JIJILcom/google/android/gms/internal/ads/zzaeh;)V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzo:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzwr;->zzC(I)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzj:[J

    aget-wide v4, v3, v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzk:[I

    aget v0, v3, v0

    int-to-long v6, v0

    add-long/2addr v4, v6

    cmp-long v0, v4, p4

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzd(Z)V

    :cond_1
    const/high16 v0, 0x20000000

    and-int/2addr v0, p3

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzv:Z

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzu:J

    .line 2
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzu:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzo:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzwr;->zzC(I)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzm:[J

    .line 3
    aput-wide p1, v3, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzj:[J

    .line 4
    aput-wide p4, p1, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzk:[I

    .line 5
    aput p6, p1, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzl:[I

    .line 6
    aput p3, p1, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzn:[Lcom/google/android/gms/internal/ads/zzaeh;

    .line 7
    aput-object p7, p1, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzi:[J

    const-wide/16 p2, 0x0

    .line 8
    aput-wide p2, p1, v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzc:Lcom/google/android/gms/internal/ads/zzwy;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzwy;->zzf()Z

    move-result p2

    if-nez p2, :cond_3

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzwy;->zzb()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzwo;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzwo;->zza:Lcom/google/android/gms/internal/ads/zzz;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzy:Lcom/google/android/gms/internal/ads/zzz;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzz;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzy:Lcom/google/android/gms/internal/ads/zzz;

    const/4 p3, 0x0

    if-eqz p2, :cond_6

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzd:Lcom/google/android/gms/internal/ads/zzry;

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzwr;->zze:Lcom/google/android/gms/internal/ads/zzrt;

    .line 11
    move-object p6, p2

    check-cast p6, Lcom/google/android/gms/internal/ads/zzz;

    invoke-interface {p4, p5, p2}, Lcom/google/android/gms/internal/ads/zzry;->zzb(Lcom/google/android/gms/internal/ads/zzrt;Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzrx;

    move-result-object p4

    iget p5, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzp:I

    iget p6, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzo:I

    add-int/2addr p5, p6

    new-instance p6, Lcom/google/android/gms/internal/ads/zzwo;

    invoke-direct {p6, p2, p4, p3}, Lcom/google/android/gms/internal/ads/zzwo;-><init>(Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzrx;Lcom/google/android/gms/internal/ads/zzwq;)V

    .line 12
    invoke-virtual {p1, p5, p6}, Lcom/google/android/gms/internal/ads/zzwy;->zzc(ILjava/lang/Object;)V

    :cond_4
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzo:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzo:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzh:I

    if-ne p1, p2, :cond_5

    add-int/lit16 p1, p2, 0x3e8

    .line 13
    new-array p3, p1, [J

    .line 14
    new-array p4, p1, [J

    .line 15
    new-array p5, p1, [J

    .line 16
    new-array p6, p1, [I

    .line 17
    new-array p7, p1, [I

    .line 18
    new-array v0, p1, [Lcom/google/android/gms/internal/ads/zzaeh;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzq:I

    sub-int/2addr p2, v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzj:[J

    .line 19
    invoke-static {v3, v1, p4, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzm:[J

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzq:I

    .line 20
    invoke-static {v1, v3, p5, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzl:[I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzq:I

    .line 21
    invoke-static {v1, v3, p6, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzk:[I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzq:I

    .line 22
    invoke-static {v1, v3, p7, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzn:[Lcom/google/android/gms/internal/ads/zzaeh;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzq:I

    .line 23
    invoke-static {v1, v3, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzi:[J

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzq:I

    .line 24
    invoke-static {v1, v3, p3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzq:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzj:[J

    .line 25
    invoke-static {v3, v2, p4, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzm:[J

    .line 26
    invoke-static {v3, v2, p5, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzl:[I

    .line 27
    invoke-static {v3, v2, p6, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzk:[I

    .line 28
    invoke-static {v3, v2, p7, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzn:[Lcom/google/android/gms/internal/ads/zzaeh;

    .line 29
    invoke-static {v3, v2, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzi:[J

    .line 30
    invoke-static {v3, v2, p3, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzj:[J

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzm:[J

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzl:[I

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzk:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzn:[Lcom/google/android/gms/internal/ads/zzaeh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzi:[J

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzq:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzh:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    monitor-exit p0

    return-void

    .line 31
    :cond_6
    :try_start_1
    throw p3

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final zzI(Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzkp;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzz;->zzs:Lcom/google/android/gms/internal/ads/zzs;

    .line 1
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzz;->zzs:Lcom/google/android/gms/internal/ads/zzs;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzd:Lcom/google/android/gms/internal/ads/zzry;

    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/ads/zzry;->zza(Lcom/google/android/gms/internal/ads/zzz;)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzz;->zzc(I)Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v4

    iput-object v4, p2, Lcom/google/android/gms/internal/ads/zzkp;->zza:Lcom/google/android/gms/internal/ads/zzz;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzB:Lcom/google/android/gms/internal/ads/zzrz;

    iput-object v4, p2, Lcom/google/android/gms/internal/ads/zzkp;->zzb:Lcom/google/android/gms/internal/ads/zzrz;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zze:Lcom/google/android/gms/internal/ads/zzrt;

    .line 3
    invoke-interface {v3, v0, p1}, Lcom/google/android/gms/internal/ads/zzry;->zzc(Lcom/google/android/gms/internal/ads/zzrt;Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzrz;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzB:Lcom/google/android/gms/internal/ads/zzrz;

    iput-object p1, p2, Lcom/google/android/gms/internal/ads/zzkp;->zzb:Lcom/google/android/gms/internal/ads/zzrz;

    return-void
.end method

.method private final zzJ()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzB:Lcom/google/android/gms/internal/ads/zzrz;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzB:Lcom/google/android/gms/internal/ads/zzrz;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzg:Lcom/google/android/gms/internal/ads/zzz;

    :cond_0
    return-void
.end method

.method private final declared-synchronized zzK()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzr:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zza:Lcom/google/android/gms/internal/ads/zzwl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwl;->zzg()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final zzL()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzr:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzo:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzM(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzB:Lcom/google/android/gms/internal/ads/zzrz;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzl:[I

    aget p1, v0, p1

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p1, v0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private final declared-synchronized zzN(Lcom/google/android/gms/internal/ads/zzz;)Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzx:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzy:Lcom/google/android/gms/internal/ads/zzz;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzc:Lcom/google/android/gms/internal/ads/zzwy;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzwy;->zzf()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzwy;->zzb()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzwo;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzwo;->zza:Lcom/google/android/gms/internal/ads/zzz;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzz;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzwy;->zzb()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzwo;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzwo;->zza:Lcom/google/android/gms/internal/ads/zzz;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzy:Lcom/google/android/gms/internal/ads/zzz;

    goto :goto_0

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzy:Lcom/google/android/gms/internal/ads/zzz;

    .line 4
    :goto_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzz:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzy:Lcom/google/android/gms/internal/ads/zzz;

    .line 5
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzz;->zzk:Ljava/lang/String;

    .line 6
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzay;->zzf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzz:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzA:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized zzA(JZ)Z
    .locals 10

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwr;->zzK()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzr:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzwr;->zzC(I)I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwr;->zzL()Z

    move-result v1

    const/4 v7, 0x0

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzm:[J

    .line 2
    aget-wide v3, v1, v2

    cmp-long v1, p1, v3

    if-ltz v1, :cond_7

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzu:J

    cmp-long v1, p1, v3

    const/4 v8, 0x1

    if-lez v1, :cond_0

    if-eqz p3, :cond_7

    move p3, v8

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzz:Z

    const/4 v9, -0x1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzo:I

    sub-int/2addr v1, v0

    move v0, v7

    :goto_0
    if-ge v0, v1, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzm:[J

    .line 3
    aget-wide v4, v3, v2

    cmp-long v3, v4, p1

    if-gez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzh:I

    if-ne v2, v3, :cond_1

    move v2, v7

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    move v1, v9

    goto :goto_1

    :cond_5
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzo:I

    sub-int v3, p3, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v4, p1

    .line 4
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzwr;->zzB(IIJZ)I

    move-result v1

    :goto_1
    if-ne v1, v9, :cond_6

    goto :goto_2

    .line 3
    :cond_6
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzs:J

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzr:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzr:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v8

    :cond_7
    :goto_2
    monitor-exit p0

    return v7

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzp:I

    return v0
.end method

.method public final zzb()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzp:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzr:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final declared-synchronized zzc(JZ)I
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzr:I

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzwr;->zzC(I)I

    move-result v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwr;->zzL()Z

    move-result v1

    const/4 v7, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzm:[J

    aget-wide v3, v1, v2

    cmp-long v1, p1, v3

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzu:J

    cmp-long v1, p1, v3

    if-lez v1, :cond_2

    if-nez p3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzo:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr p1, v0

    monitor-exit p0

    return p1

    .line 1
    :cond_2
    :goto_0
    :try_start_1
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzo:I

    sub-int v3, p3, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v4, p1

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzwr;->zzB(IIJZ)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p2, -0x1

    monitor-exit p0

    if-ne p1, p2, :cond_3

    return v7

    :cond_3
    return p1

    .line 1
    :cond_4
    :goto_1
    monitor-exit p0

    return v7

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final zzd()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzp:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzo:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzkp;Lcom/google/android/gms/internal/ads/zzhn;IZ)I
    .locals 8

    and-int/lit8 v0, p3, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v5, v0

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzb:Lcom/google/android/gms/internal/ads/zzwn;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p4

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzwr;->zzD(Lcom/google/android/gms/internal/ads/zzkp;Lcom/google/android/gms/internal/ads/zzhn;ZZLcom/google/android/gms/internal/ads/zzwn;)I

    move-result p1

    const/4 p4, -0x4

    if-ne p1, p4, :cond_5

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhh;->zzf()Z

    move-result p1

    if-nez p1, :cond_4

    and-int/lit8 p1, p3, 0x1

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zza:Lcom/google/android/gms/internal/ads/zzwl;

    .line 2
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzwl;->zzd(Lcom/google/android/gms/internal/ads/zzhn;Lcom/google/android/gms/internal/ads/zzwn;)V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zza:Lcom/google/android/gms/internal/ads/zzwl;

    .line 3
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzwl;->zze(Lcom/google/android/gms/internal/ads/zzhn;Lcom/google/android/gms/internal/ads/zzwn;)V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzr:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzr:I

    return p4

    :cond_4
    :goto_2
    move p1, p4

    :cond_5
    return p1
.end method

.method public final synthetic zzf(Lcom/google/android/gms/internal/ads/zzl;IZ)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaeg;->zza(Lcom/google/android/gms/internal/ads/zzaei;Lcom/google/android/gms/internal/ads/zzl;IZ)I

    move-result p1

    return p1
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzl;IZI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzwr;->zza:Lcom/google/android/gms/internal/ads/zzwl;

    invoke-virtual {p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzwl;->zza(Lcom/google/android/gms/internal/ads/zzl;IZ)I

    move-result p1

    return p1
.end method

.method public final declared-synchronized zzh()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzu:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzi()Lcom/google/android/gms/internal/ads/zzz;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzx:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzy:Lcom/google/android/gms/internal/ads/zzz;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final zzj(JZZ)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzwr;->zza:Lcom/google/android/gms/internal/ads/zzwl;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/google/android/gms/internal/ads/zzwr;->zzE(JZZ)J

    move-result-wide p1

    .line 2
    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzwl;->zzc(J)V

    return-void
.end method

.method public final zzk()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zza:Lcom/google/android/gms/internal/ads/zzwl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwr;->zzF()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzwl;->zzc(J)V

    return-void
.end method

.method public final synthetic zzl(J)V
    .locals 0

    return-void
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zzz;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzwr;->zzN(Lcom/google/android/gms/internal/ads/zzz;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzf:Lcom/google/android/gms/internal/ads/zzwp;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzwp;->zzN(Lcom/google/android/gms/internal/ads/zzz;)V

    :cond_0
    return-void
.end method

.method public final zzn()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzB:Lcom/google/android/gms/internal/ads/zzrz;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrz;->zza()Lcom/google/android/gms/internal/ads/zzrr;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzrr;

    throw v0
.end method

.method public final zzo()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzwr;->zzk()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwr;->zzJ()V

    return-void
.end method

.method public final zzp()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzwr;->zzq(Z)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwr;->zzJ()V

    return-void
.end method

.method public final zzq(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zza:Lcom/google/android/gms/internal/ads/zzwl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwl;->zzf()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzo:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzp:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzq:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzr:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzw:Z

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzs:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzt:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzu:J

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzv:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzc:Lcom/google/android/gms/internal/ads/zzwy;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwy;->zzd()V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzy:Lcom/google/android/gms/internal/ads/zzz;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzx:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzz:Z

    :cond_0
    return-void
.end method

.method public final synthetic zzr(Lcom/google/android/gms/internal/ads/zzek;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaeg;->zzb(Lcom/google/android/gms/internal/ads/zzaei;Lcom/google/android/gms/internal/ads/zzek;I)V

    return-void
.end method

.method public final zzs(Lcom/google/android/gms/internal/ads/zzek;II)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzwr;->zza:Lcom/google/android/gms/internal/ads/zzwl;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzwl;->zzh(Lcom/google/android/gms/internal/ads/zzek;I)V

    return-void
.end method

.method public final zzt(JIIILcom/google/android/gms/internal/ads/zzaeh;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzw:Z

    if-eqz v0, :cond_1

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzw:Z

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzz:Z

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzs:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzA:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzy:Lcom/google/android/gms/internal/ads/zzz;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SampleQueue"

    const-string v2, "Overriding unexpected non-sync sample for format: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzdx;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzA:Z

    :cond_2
    or-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    move v3, p3

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzwr;->zza:Lcom/google/android/gms/internal/ads/zzwl;

    int-to-long v0, p4

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzwl;->zzb()J

    move-result-wide v4

    sub-long/2addr v4, v0

    int-to-long v0, p5

    sub-long/2addr v4, v0

    move-object v0, p0

    move-wide v1, p1

    move v6, p4

    move-object v7, p6

    .line 2
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzwr;->zzH(JIJILcom/google/android/gms/internal/ads/zzaeh;)V

    return-void
.end method

.method public final zzu(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzs:J

    return-void
.end method

.method public final zzv(Lcom/google/android/gms/internal/ads/zzwp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzf:Lcom/google/android/gms/internal/ads/zzwp;

    return-void
.end method

.method public final declared-synchronized zzw(I)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    .line 1
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzr:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzo:I

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzd(Z)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzr:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzr:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzx()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzv:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzy(Z)Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwr;->zzL()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzv:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzy:Lcom/google/android/gms/internal/ads/zzz;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzg:Lcom/google/android/gms/internal/ads/zzz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return v0

    :cond_1
    move v1, v0

    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    :cond_3
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzc:Lcom/google/android/gms/internal/ads/zzwy;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzp:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzr:I

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzwy;->zza(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzwo;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzwo;->zza:Lcom/google/android/gms/internal/ads/zzz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzg:Lcom/google/android/gms/internal/ads/zzz;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq p1, v0, :cond_4

    monitor-exit p0

    return v1

    :cond_4
    :try_start_2
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzr:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzwr;->zzC(I)I

    move-result p1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzwr;->zzM(I)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzz(I)Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwr;->zzK()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzp:I

    if-lt p1, v0, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzo:I

    add-int/2addr v1, v0

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzs:J

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzwr;->zzr:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
