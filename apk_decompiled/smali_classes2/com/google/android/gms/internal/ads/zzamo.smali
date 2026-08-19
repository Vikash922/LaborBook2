.class final Lcom/google/android/gms/internal/ads/zzamo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzaei;

.field private zzb:J

.field private zzc:Z

.field private zzd:I

.field private zze:J

.field private zzf:Z

.field private zzg:Z

.field private zzh:Z

.field private zzi:Z

.field private zzj:Z

.field private zzk:J

.field private zzl:J

.field private zzm:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaei;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zza:Lcom/google/android/gms/internal/ads/zzaei;

    return-void
.end method

.method private final zze(I)V
    .locals 8

    .line 1
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzl:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-eqz v0, :cond_1

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzb:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzk:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzm:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zza:Lcom/google/android/gms/internal/ads/zzaei;

    sub-long/2addr v3, v5

    long-to-int v4, v3

    const/4 v6, 0x0

    move v3, v7

    move v5, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzaei;->zzt(JIIILcom/google/android/gms/internal/ads/zzaeh;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final zza(JIZ)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzj:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzg:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzc:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzm:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzj:Z

    return-void

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzh:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzg:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_1
    if-eqz p4, :cond_4

    iget-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzi:Z

    if-eqz p4, :cond_4

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzb:J

    sub-long/2addr p1, v0

    long-to-int p1, p1

    add-int/2addr p3, p1

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzamo;->zze(I)V

    :cond_4
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzb:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzk:J

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zze:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzl:J

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzc:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzm:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzi:Z

    return-void
.end method

.method public final zzb([BII)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzf:Z

    if-eqz v0, :cond_2

    add-int/lit8 v0, p2, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzd:I

    sub-int/2addr v0, v1

    if-ge v0, p3, :cond_1

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0x80

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzg:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzf:Z

    return-void

    :cond_1
    sub-int/2addr p3, p2

    add-int/2addr v1, p3

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzd:I

    :cond_2
    return-void
.end method

.method public final zzc()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzf:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzg:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzh:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzi:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzj:Z

    return-void
.end method

.method public final zzd(JIIJZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzg:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzh:Z

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzamo;->zze:J

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzd:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzb:J

    const/16 p1, 0x20

    const/4 p2, 0x1

    if-lt p4, p1, :cond_4

    const/16 p1, 0x28

    if-ne p4, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzi:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzj:Z

    if-nez p1, :cond_2

    if-eqz p7, :cond_1

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzamo;->zze(I)V

    :cond_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzi:Z

    :cond_2
    const/16 p1, 0x23

    if-le p4, p1, :cond_3

    const/16 p1, 0x27

    if-ne p4, p1, :cond_4

    :cond_3
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzj:Z

    xor-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzh:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzj:Z

    :cond_4
    :goto_0
    const/16 p1, 0x10

    if-lt p4, p1, :cond_5

    const/16 p1, 0x15

    if-gt p4, p1, :cond_5

    move p1, p2

    goto :goto_1

    :cond_5
    move p1, v0

    :goto_1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzc:Z

    if-nez p1, :cond_6

    const/16 p1, 0x9

    if-gt p4, p1, :cond_7

    :cond_6
    move v0, p2

    :cond_7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamo;->zzf:Z

    return-void
.end method
