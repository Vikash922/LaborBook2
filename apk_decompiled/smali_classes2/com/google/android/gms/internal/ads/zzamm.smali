.class final Lcom/google/android/gms/internal/ads/zzamm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzaei;

.field private final zzb:Landroid/util/SparseArray;

.field private final zzc:Landroid/util/SparseArray;

.field private final zzd:[B

.field private zze:I

.field private zzf:J

.field private zzg:J

.field private zzh:Z

.field private zzi:J

.field private zzj:J

.field private zzk:Z

.field private zzl:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaei;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamm;->zza:Lcom/google/android/gms/internal/ads/zzaei;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzb:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    .line 2
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzc:Landroid/util/SparseArray;

    const/16 p1, 0x80

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzd:[B

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfr;

    const/4 p3, 0x0

    .line 3
    invoke-direct {p2, p1, p3, p3}, Lcom/google/android/gms/internal/ads/zzfr;-><init>([BII)V

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzh:Z

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzc:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzfo;->zza:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfp;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzb:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzfp;->zzd:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public final zzc()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzh:Z

    return-void
.end method

.method public final zzd(JIJZ)V
    .locals 0

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzamm;->zze:I

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzg:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzf:J

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzl:Z

    return-void
.end method

.method public final zze(JIZ)Z
    .locals 11

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzamm;->zze:I

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    iget-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzh:Z

    if-eqz p4, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzf:J

    sub-long/2addr p1, v0

    long-to-int p1, p1

    add-int v9, p3, p1

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzj:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v5, p1

    if-eqz p1, :cond_1

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzi:J

    cmp-long p3, v0, p1

    if-eqz p3, :cond_1

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzk:Z

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzamm;->zza:Lcom/google/android/gms/internal/ads/zzaei;

    sub-long/2addr v0, p1

    long-to-int v8, v0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzaei;->zzt(JIIILcom/google/android/gms/internal/ads/zzaeh;)V

    :cond_1
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzf:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzi:J

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzg:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzj:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzk:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzh:Z

    :goto_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzl:Z

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzk:Z

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzamm;->zze:I

    const/4 p4, 0x5

    if-eq p3, p4, :cond_2

    if-eqz p1, :cond_3

    if-ne p3, v3, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    or-int p1, p2, v2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzk:Z

    const/16 p2, 0x18

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzamm;->zze:I

    return p1
.end method
