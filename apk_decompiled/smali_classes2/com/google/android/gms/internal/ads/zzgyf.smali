.class public final Lcom/google/android/gms/internal/ads/zzgyf;
.super Ljava/util/AbstractList;
.source "com.google.android.gms:play-services-ads-api@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgyd;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgye;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgyd;Lcom/google/android/gms/internal/ads/zzgye;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgyf;->zza:Lcom/google/android/gms/internal/ads/zzgyd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgyf;->zzb:Lcom/google/android/gms/internal/ads/zzgye;

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyf;->zza:Lcom/google/android/gms/internal/ads/zzgyd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgyf;->zzb:Lcom/google/android/gms/internal/ads/zzgye;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgyd;->zzd(I)I

    move-result p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzgye;->zzb(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyf;->zza:Lcom/google/android/gms/internal/ads/zzgyd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgyd;->size()I

    move-result v0

    return v0
.end method
