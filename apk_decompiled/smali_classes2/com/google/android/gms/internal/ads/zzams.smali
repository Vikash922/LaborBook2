.class public final Lcom/google/android/gms/internal/ads/zzams;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzek;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzadu;

.field private final zzc:Ljava/lang/String;

.field private final zzd:I

.field private final zze:Ljava/lang/String;

.field private zzf:Lcom/google/android/gms/internal/ads/zzaei;

.field private zzg:Ljava/lang/String;

.field private zzh:I

.field private zzi:I

.field private zzj:Z

.field private zzk:Z

.field private zzl:J

.field private zzm:I

.field private zzn:J


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zzh:I

    new-instance v1, Lcom/google/android/gms/internal/ads/zzek;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzek;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzams;->zza:Lcom/google/android/gms/internal/ads/zzek;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v1

    const/4 v2, -0x1

    .line 2
    aput-byte v2, v1, v0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzadu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzadu;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zzb:Lcom/google/android/gms/internal/ads/zzadu;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zzn:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzams;->zzc:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzams;->zzd:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzams;->zze:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzek;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zzf:Lcom/google/android/gms/internal/ads/zzaei;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v0

    if-lez v0, :cond_a

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zzh:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_2

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzams;->zzm:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzams;->zzi:I

    sub-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzams;->zzf:Lcom/google/android/gms/internal/ads/zzaei;

    .line 26
    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzaei;->zzr(Lcom/google/android/gms/internal/ads/zzek;I)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzams;->zzi:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzams;->zzi:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zzm:I

    if-lt v1, v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zzn:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 27
    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzams;->zzf:Lcom/google/android/gms/internal/ads/zzaei;

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzams;->zzn:J

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzams;->zzm:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 28
    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzaei;->zzt(JIIILcom/google/android/gms/internal/ads/zzaeh;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zzn:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzams;->zzl:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zzn:J

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzams;->zzi:I

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzams;->zzh:I

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zza()I

    move-result v0

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzams;->zzi:I

    const/4 v5, 0x4

    rsub-int/lit8 v4, v4, 0x4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzams;->zza:Lcom/google/android/gms/internal/ads/zzek;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v6

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzams;->zzi:I

    .line 8
    invoke-virtual {p1, v6, v7, v0}, Lcom/google/android/gms/internal/ads/zzek;->zzH([BII)V

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzams;->zzi:I

    add-int/2addr v6, v0

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzams;->zzi:I

    if-lt v6, v5, :cond_0

    .line 9
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zzb:Lcom/google/android/gms/internal/ads/zzadu;

    .line 10
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzek;->zzg()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzadu;->zza(I)Z

    move-result v6

    if-nez v6, :cond_3

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzams;->zzi:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzams;->zzh:I

    goto/16 :goto_0

    :cond_3
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzadu;->zzc:I

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzams;->zzm:I

    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzams;->zzj:Z

    if-nez v6, :cond_4

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzadu;->zzg:I

    int-to-long v6, v6

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzadu;->zzd:I

    const-wide/32 v9, 0xf4240

    mul-long/2addr v6, v9

    int-to-long v8, v8

    .line 11
    div-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzams;->zzl:J

    new-instance v6, Lcom/google/android/gms/internal/ads/zzx;

    .line 12
    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzams;->zzg:Ljava/lang/String;

    .line 13
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzx;->zzO(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzams;->zze:Ljava/lang/String;

    .line 14
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzx;->zzE(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzadu;->zzb:Ljava/lang/String;

    .line 15
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzx;->zzad(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    const/16 v7, 0x1000

    .line 16
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzx;->zzT(I)Lcom/google/android/gms/internal/ads/zzx;

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzadu;->zze:I

    .line 17
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzx;->zzB(I)Lcom/google/android/gms/internal/ads/zzx;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzadu;->zzd:I

    .line 18
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzae(I)Lcom/google/android/gms/internal/ads/zzx;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zzc:Ljava/lang/String;

    .line 19
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzS(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zzd:I

    .line 20
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzab(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 21
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object v0

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzams;->zzf:Lcom/google/android/gms/internal/ads/zzaei;

    .line 22
    invoke-interface {v6, v0}, Lcom/google/android/gms/internal/ads/zzaei;->zzm(Lcom/google/android/gms/internal/ads/zzz;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzams;->zzj:Z

    .line 23
    :cond_4
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zzf:Lcom/google/android/gms/internal/ads/zzaei;

    .line 24
    invoke-interface {v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzaei;->zzr(Lcom/google/android/gms/internal/ads/zzek;I)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzams;->zzh:I

    goto/16 :goto_0

    .line 28
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzc()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzek;->zzd()I

    move-result v5

    :goto_2
    if-ge v4, v5, :cond_9

    add-int/lit8 v6, v4, 0x1

    .line 3
    aget-byte v7, v0, v4

    and-int/lit16 v8, v7, 0xff

    const/16 v9, 0xff

    if-ne v8, v9, :cond_6

    move v8, v2

    goto :goto_3

    :cond_6
    move v8, v3

    :goto_3
    iget-boolean v9, p0, Lcom/google/android/gms/internal/ads/zzams;->zzk:Z

    if-eqz v9, :cond_7

    and-int/lit16 v7, v7, 0xe0

    const/16 v9, 0xe0

    if-ne v7, v9, :cond_7

    move v7, v2

    goto :goto_4

    :cond_7
    move v7, v3

    :goto_4
    iput-boolean v8, p0, Lcom/google/android/gms/internal/ads/zzams;->zzk:Z

    if-eqz v7, :cond_8

    .line 4
    invoke-virtual {p1, v6}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzams;->zzk:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzams;->zza:Lcom/google/android/gms/internal/ads/zzek;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzN()[B

    move-result-object v3

    .line 5
    aget-byte v0, v0, v4

    aput-byte v0, v3, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzams;->zzi:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzams;->zzh:I

    goto/16 :goto_0

    :cond_8
    move v4, v6

    goto :goto_2

    .line 6
    :cond_9
    invoke-virtual {p1, v5}, Lcom/google/android/gms/internal/ads/zzek;->zzL(I)V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzadf;Lcom/google/android/gms/internal/ads/zzanu;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzanu;->zzc()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzanu;->zzb()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zzg:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzanu;->zza()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzadf;->zzw(II)Lcom/google/android/gms/internal/ads/zzaei;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzams;->zzf:Lcom/google/android/gms/internal/ads/zzaei;

    return-void
.end method

.method public final zzc(Z)V
    .locals 0

    return-void
.end method

.method public final zzd(JI)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzams;->zzn:J

    return-void
.end method

.method public final zze()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zzh:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zzi:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zzk:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzams;->zzn:J

    return-void
.end method
