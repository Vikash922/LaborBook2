.class public final Lcom/google/android/gms/internal/ads/zzgdb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/ads/zzgcz;)Lcom/google/android/gms/internal/ads/zzgdr;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgcz;->zza()Lcom/google/android/gms/internal/ads/zzgtb;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgdr;->zzb(Lcom/google/android/gms/internal/ads/zzgtb;)Lcom/google/android/gms/internal/ads/zzgdr;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzgdr;Lcom/google/android/gms/internal/ads/zzgda;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgdr;->zzf()Lcom/google/android/gms/internal/ads/zzgtb;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzgda;->zza(Lcom/google/android/gms/internal/ads/zzgtb;)V

    return-void
.end method
