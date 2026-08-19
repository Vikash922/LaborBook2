.class public final Lcom/google/android/gms/internal/ads/zzgvt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgvs;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgvs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgvt;->zza:Lcom/google/android/gms/internal/ads/zzgvs;

    return-void
.end method

.method public static zzb([BLcom/google/android/gms/internal/ads/zzgdz;)Lcom/google/android/gms/internal/ads/zzgvt;
    .locals 0

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgvt;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgvs;->zzb([B)Lcom/google/android/gms/internal/ads/zzgvs;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzgvt;-><init>(Lcom/google/android/gms/internal/ads/zzgvs;)V

    return-object p1
.end method

.method public static zzc(I)Lcom/google/android/gms/internal/ads/zzgvt;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgvt;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgno;->zzb(I)[B

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgvs;->zzb([B)Lcom/google/android/gms/internal/ads/zzgvs;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgvt;-><init>(Lcom/google/android/gms/internal/ads/zzgvs;)V

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvt;->zza:Lcom/google/android/gms/internal/ads/zzgvs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgvs;->zza()I

    move-result v0

    return v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzgdz;)[B
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgvt;->zza:Lcom/google/android/gms/internal/ads/zzgvs;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgvs;->zzd()[B

    move-result-object p1

    return-object p1
.end method
