.class public final Lcom/google/android/gms/internal/ads/zzagf;
.super Lcom/google/android/gms/internal/ads/zzagm;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:I

.field public final zzc:I

.field public final zzd:J

.field public final zze:J

.field private final zzg:[Lcom/google/android/gms/internal/ads/zzagm;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIJJ[Lcom/google/android/gms/internal/ads/zzagm;)V
    .locals 1

    .line 1
    const-string v0, "CHAP"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzagm;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagf;->zza:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzagf;->zzb:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzagf;->zzc:I

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzagf;->zzd:J

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zzagf;->zze:J

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzagf;->zzg:[Lcom/google/android/gms/internal/ads/zzagm;

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
    check-cast p1, Lcom/google/android/gms/internal/ads/zzagf;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzagf;->zzb:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzagf;->zzb:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzagf;->zzc:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzagf;->zzc:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzagf;->zzd:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzagf;->zzd:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzagf;->zze:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzagf;->zze:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzagf;->zza:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzagf;->zza:Ljava/lang/String;

    .line 2
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzagf;->zzg:[Lcom/google/android/gms/internal/ads/zzagm;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzagf;->zzg:[Lcom/google/android/gms/internal/ads/zzagm;

    .line 3
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzagf;->zzb:I

    add-int/lit16 v0, v0, 0x20f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzagf;->zza:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzagf;->zze:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzagf;->zzd:J

    mul-int/lit8 v0, v0, 0x1f

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzagf;->zzc:I

    add-int/2addr v0, v6

    mul-int/lit8 v0, v0, 0x1f

    long-to-int v4, v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
