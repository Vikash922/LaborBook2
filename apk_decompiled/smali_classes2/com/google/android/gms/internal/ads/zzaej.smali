.class public final Lcom/google/android/gms/internal/ads/zzaej;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:[B

.field private zzb:Z

.field private zzc:I

.field private zzd:J

.field private zze:I

.field private zzf:I

.field private zzg:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaej;->zza:[B

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaei;Lcom/google/android/gms/internal/ads/zzaeh;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzc:I

    if-lez v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzd:J

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzaej;->zze:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzf:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzg:I

    move-object v1, p1

    move-object v7, p2

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzaei;->zzt(JIIILcom/google/android/gms/internal/ads/zzaeh;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzc:I

    :cond_0
    return-void
.end method

.method public final zzb()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzb:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzc:I

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzaei;JIIILcom/google/android/gms/internal/ads/zzaeh;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzg:I

    add-int v1, p5, p6

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v1, "TrueHD chunk samples must be contiguous in the sample queue."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdc;->zzg(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzb:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzc:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzc:I

    if-nez v0, :cond_2

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzd:J

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzaej;->zze:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzf:I

    :cond_2
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzf:I

    add-int/2addr p2, p5

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzf:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzg:I

    const/16 p2, 0x10

    if-lt v1, p2, :cond_3

    .line 2
    invoke-virtual {p0, p1, p7}, Lcom/google/android/gms/internal/ads/zzaej;->zza(Lcom/google/android/gms/internal/ads/zzaei;Lcom/google/android/gms/internal/ads/zzaeh;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzadd;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzb:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaej;->zza:[B

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzadd;->zzh([BII)V

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzadd;->zzj()V

    .line 3
    sget p1, Lcom/google/android/gms/internal/ads/zzacb;->zza:I

    const/4 p1, 0x4

    aget-byte p1, v0, p1

    const/4 v1, -0x8

    if-ne p1, v1, :cond_1

    const/4 p1, 0x5

    aget-byte p1, v0, p1

    const/16 v1, 0x72

    if-ne p1, v1, :cond_1

    const/4 p1, 0x6

    aget-byte p1, v0, p1

    const/16 v1, 0x6f

    if-ne p1, v1, :cond_1

    const/4 p1, 0x7

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xfe

    const/16 v0, 0xba

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaej;->zzb:Z

    :cond_1
    :goto_0
    return-void
.end method
