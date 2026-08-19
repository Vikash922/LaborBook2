.class public final Lcom/google/android/gms/internal/ads/zzadl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaeb;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzadn;

.field private final zzb:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzadn;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzadl;->zza:Lcom/google/android/gms/internal/ads/zzadn;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzb:J

    return-void
.end method

.method private final zzb(JJ)Lcom/google/android/gms/internal/ads/zzaec;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadl;->zza:Lcom/google/android/gms/internal/ads/zzadn;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzadn;->zze:I

    const-wide/32 v1, 0xf4240

    mul-long/2addr p1, v1

    int-to-long v0, v0

    div-long/2addr p1, v0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaec;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzadl;->zzb:J

    add-long/2addr v1, p3

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzaec;-><init>(JJ)V

    return-object v0
.end method


# virtual methods
.method public final zza()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadl;->zza:Lcom/google/android/gms/internal/ads/zzadn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzadn;->zza()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzg(J)Lcom/google/android/gms/internal/ads/zzadz;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadl;->zza:Lcom/google/android/gms/internal/ads/zzadn;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzadn;->zzk:Lcom/google/android/gms/internal/ads/zzadm;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzadm;->zza:[J

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzadm;->zzb:[J

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzadn;->zzb(J)J

    move-result-wide v3

    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 5
    invoke-static {v2, v3, v4, v5, v0}, Lcom/google/android/gms/internal/ads/zzeu;->zzd([JJZZ)I

    move-result v0

    const-wide/16 v3, 0x0

    const/4 v6, -0x1

    if-ne v0, v6, :cond_0

    move-wide v7, v3

    goto :goto_0

    .line 6
    :cond_0
    aget-wide v7, v2, v0

    :goto_0
    if-ne v0, v6, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    aget-wide v3, v1, v0

    .line 8
    :goto_1
    invoke-direct {p0, v7, v8, v3, v4}, Lcom/google/android/gms/internal/ads/zzadl;->zzb(JJ)Lcom/google/android/gms/internal/ads/zzaec;

    move-result-object v3

    iget-wide v7, v3, Lcom/google/android/gms/internal/ads/zzaec;->zzb:J

    cmp-long p1, v7, p1

    if-eqz p1, :cond_3

    .line 9
    array-length p1, v2

    add-int/2addr p1, v6

    if-ne v0, p1, :cond_2

    goto :goto_2

    :cond_2
    add-int/2addr v0, v5

    .line 11
    aget-wide p1, v2, v0

    aget-wide v0, v1, v0

    .line 12
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzadl;->zzb(JJ)Lcom/google/android/gms/internal/ads/zzaec;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzadz;

    .line 13
    invoke-direct {p2, v3, p1}, Lcom/google/android/gms/internal/ads/zzadz;-><init>(Lcom/google/android/gms/internal/ads/zzaec;Lcom/google/android/gms/internal/ads/zzaec;)V

    return-object p2

    .line 9
    :cond_3
    :goto_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzadz;

    .line 10
    invoke-direct {p1, v3, v3}, Lcom/google/android/gms/internal/ads/zzadz;-><init>(Lcom/google/android/gms/internal/ads/zzaec;Lcom/google/android/gms/internal/ads/zzaec;)V

    return-object p1
.end method

.method public final zzh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
