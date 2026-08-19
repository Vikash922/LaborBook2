.class final Lcom/google/android/gms/internal/ads/zzbzv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgbo;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbzt;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbzr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbzw;Lcom/google/android/gms/internal/ads/zzbzt;Lcom/google/android/gms/internal/ads/zzbzr;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbzv;->zza:Lcom/google/android/gms/internal/ads/zzbzt;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbzv;->zzb:Lcom/google/android/gms/internal/ads/zzbzr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzv;->zzb:Lcom/google/android/gms/internal/ads/zzbzr;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbzr;->zza()V

    return-void
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzv;->zza:Lcom/google/android/gms/internal/ads/zzbzt;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbzt;->zza(Ljava/lang/Object;)V

    return-void
.end method
