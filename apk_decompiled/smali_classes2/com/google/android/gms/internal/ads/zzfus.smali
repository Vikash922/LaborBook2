.class public final Lcom/google/android/gms/internal/ads/zzfus;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.2.0"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/ads/zzfuo;)Lcom/google/android/gms/internal/ads/zzfuo;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzfur;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzfup;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfup;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfup;-><init>(Lcom/google/android/gms/internal/ads/zzfuo;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfur;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfur;-><init>(Lcom/google/android/gms/internal/ads/zzfuo;)V

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    return-object p0
.end method
