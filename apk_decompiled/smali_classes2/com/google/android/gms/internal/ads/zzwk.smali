.class final Lcom/google/android/gms/internal/ads/zzwk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzyy;


# instance fields
.field public zza:J

.field public zzb:J

.field public zzc:Lcom/google/android/gms/internal/ads/zzyx;

.field public zzd:Lcom/google/android/gms/internal/ads/zzwk;


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p3, 0x10000

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzwk;->zze(JI)V

    return-void
.end method


# virtual methods
.method public final zza(J)I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwk;->zza:J

    sub-long/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwk;->zzc:Lcom/google/android/gms/internal/ads/zzyx;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzyx;->zzb:I

    long-to-int p1, p1

    return p1
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzwk;
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwk;->zzc:Lcom/google/android/gms/internal/ads/zzyx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwk;->zzd:Lcom/google/android/gms/internal/ads/zzwk;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwk;->zzd:Lcom/google/android/gms/internal/ads/zzwk;

    return-object v1
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzyx;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwk;->zzc:Lcom/google/android/gms/internal/ads/zzyx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzyx;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzyy;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwk;->zzd:Lcom/google/android/gms/internal/ads/zzwk;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzwk;->zzc:Lcom/google/android/gms/internal/ads/zzyx;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zze(JI)V
    .locals 2

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzwk;->zzc:Lcom/google/android/gms/internal/ads/zzyx;

    if-nez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzwk;->zza:J

    const-wide/32 v0, 0x10000

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzwk;->zzb:J

    return-void
.end method
