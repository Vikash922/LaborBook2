.class public final Lcom/google/android/gms/internal/ads/zzgoa;
.super Lcom/google/android/gms/internal/ads/zzgpb;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgoi;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgvt;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgvs;

.field private final zzd:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgoi;Lcom/google/android/gms/internal/ads/zzgvt;Lcom/google/android/gms/internal/ads/zzgvs;Ljava/lang/Integer;Lcom/google/android/gms/internal/ads/zzgnz;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgpb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgoa;->zza:Lcom/google/android/gms/internal/ads/zzgoi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgoa;->zzb:Lcom/google/android/gms/internal/ads/zzgvt;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgoa;->zzc:Lcom/google/android/gms/internal/ads/zzgvs;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgoa;->zzd:Ljava/lang/Integer;

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/ads/zzgny;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgny;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgny;-><init>(Lcom/google/android/gms/internal/ads/zzgnz;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic zza()Lcom/google/android/gms/internal/ads/zzgdv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgoa;->zza:Lcom/google/android/gms/internal/ads/zzgoi;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzgoi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgoa;->zza:Lcom/google/android/gms/internal/ads/zzgoi;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzgvs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgoa;->zzc:Lcom/google/android/gms/internal/ads/zzgvs;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzgvt;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgoa;->zzb:Lcom/google/android/gms/internal/ads/zzgvt;

    return-object v0
.end method

.method public final zzf()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgoa;->zzd:Ljava/lang/Integer;

    return-object v0
.end method
