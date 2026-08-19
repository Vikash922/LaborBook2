.class public final Lcom/google/android/gms/internal/ads/zzmh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field public final zza:J

.field public final zzb:Lcom/google/android/gms/internal/ads/zzbl;

.field public final zzc:I

.field public final zzd:Lcom/google/android/gms/internal/ads/zzuy;

.field public final zze:J

.field public final zzf:Lcom/google/android/gms/internal/ads/zzbl;

.field public final zzg:I

.field public final zzh:Lcom/google/android/gms/internal/ads/zzuy;

.field public final zzi:J

.field public final zzj:J


# direct methods
.method public constructor <init>(JLcom/google/android/gms/internal/ads/zzbl;ILcom/google/android/gms/internal/ads/zzuy;JLcom/google/android/gms/internal/ads/zzbl;ILcom/google/android/gms/internal/ads/zzuy;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzmh;->zza:J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzmh;->zzb:Lcom/google/android/gms/internal/ads/zzbl;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzmh;->zzc:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzmh;->zzd:Lcom/google/android/gms/internal/ads/zzuy;

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zzmh;->zze:J

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzmh;->zzf:Lcom/google/android/gms/internal/ads/zzbl;

    iput p9, p0, Lcom/google/android/gms/internal/ads/zzmh;->zzg:I

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzmh;->zzh:Lcom/google/android/gms/internal/ads/zzuy;

    iput-wide p11, p0, Lcom/google/android/gms/internal/ads/zzmh;->zzi:J

    iput-wide p13, p0, Lcom/google/android/gms/internal/ads/zzmh;->zzj:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzmh;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzmh;->zza:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzmh;->zza:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzmh;->zzc:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzmh;->zzc:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzmh;->zze:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzmh;->zze:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzmh;->zzg:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzmh;->zzg:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzmh;->zzi:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzmh;->zzi:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzmh;->zzj:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzmh;->zzj:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzmh;->zzb:Lcom/google/android/gms/internal/ads/zzbl;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzmh;->zzb:Lcom/google/android/gms/internal/ads/zzbl;

    .line 2
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzmh;->zzd:Lcom/google/android/gms/internal/ads/zzuy;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzmh;->zzd:Lcom/google/android/gms/internal/ads/zzuy;

    .line 3
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzmh;->zzf:Lcom/google/android/gms/internal/ads/zzbl;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzmh;->zzf:Lcom/google/android/gms/internal/ads/zzbl;

    .line 4
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzmh;->zzh:Lcom/google/android/gms/internal/ads/zzuy;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzmh;->zzh:Lcom/google/android/gms/internal/ads/zzuy;

    .line 5
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 12

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzmh;->zza:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzmh;->zzb:Lcom/google/android/gms/internal/ads/zzbl;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzmh;->zzc:I

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzmh;->zzd:Lcom/google/android/gms/internal/ads/zzuy;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzmh;->zze:J

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzmh;->zzf:Lcom/google/android/gms/internal/ads/zzbl;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzmh;->zzg:I

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzmh;->zzh:Lcom/google/android/gms/internal/ads/zzuy;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzmh;->zzi:J

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzmh;->zzj:J

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    filled-new-array/range {v2 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
