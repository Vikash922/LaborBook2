.class public final Lcom/google/android/gms/internal/ads/zzggc;
.super Lcom/google/android/gms/internal/ads/zzgem;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzggk;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgvt;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgvs;

.field private final zzd:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzggk;Lcom/google/android/gms/internal/ads/zzgvt;Lcom/google/android/gms/internal/ads/zzgvs;Ljava/lang/Integer;Lcom/google/android/gms/internal/ads/zzggb;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgem;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzggc;->zza:Lcom/google/android/gms/internal/ads/zzggk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzggc;->zzb:Lcom/google/android/gms/internal/ads/zzgvt;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzggc;->zzc:Lcom/google/android/gms/internal/ads/zzgvs;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzggc;->zzd:Ljava/lang/Integer;

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/ads/zzgga;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgga;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgga;-><init>(Lcom/google/android/gms/internal/ads/zzggb;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/android/gms/internal/ads/zzgdv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggc;->zza:Lcom/google/android/gms/internal/ads/zzggk;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzgvs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggc;->zzc:Lcom/google/android/gms/internal/ads/zzgvs;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzggk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggc;->zza:Lcom/google/android/gms/internal/ads/zzggk;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzgvt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggc;->zzb:Lcom/google/android/gms/internal/ads/zzgvt;

    return-object v0
.end method

.method public final zzf()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzggc;->zzd:Ljava/lang/Integer;

    return-object v0
.end method
