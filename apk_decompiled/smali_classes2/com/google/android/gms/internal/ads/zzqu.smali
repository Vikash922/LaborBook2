.class final Lcom/google/android/gms/internal/ads/zzqu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzz;

.field public final zzb:I

.field public final zzc:I

.field public final zzd:I

.field public final zze:I

.field public final zzf:I

.field public final zzg:I

.field public final zzh:I

.field public final zzi:Lcom/google/android/gms/internal/ads/zzck;

.field public final zzj:Z

.field public final zzk:Z

.field public final zzl:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzz;IIIIIIILcom/google/android/gms/internal/ads/zzck;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqu;->zza:Lcom/google/android/gms/internal/ads/zzz;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzb:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzc:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzd:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzqu;->zze:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzf:I

    iput p7, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzg:I

    iput p8, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzh:I

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzi:Lcom/google/android/gms/internal/ads/zzck;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzj:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzk:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzl:Z

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzpz;
    .locals 9

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzc:I

    new-instance v8, Lcom/google/android/gms/internal/ads/zzpz;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzf:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzqu;->zze:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzg:I

    const/4 v5, 0x0

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzqu;->zzh:I

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzpz;-><init>(IIIZZI)V

    return-object v8
.end method
