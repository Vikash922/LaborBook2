.class public abstract Lcom/google/android/gms/internal/ads/zzgkw;
.super Lcom/google/android/gms/internal/ads/zzgdc;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgdc;-><init>()V

    return-void
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzgne;)Lcom/google/android/gms/internal/ads/zzgkw;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgku;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzgku;-><init>(Lcom/google/android/gms/internal/ads/zzgne;Lcom/google/android/gms/internal/ads/zzgkv;)V

    return-object v0
.end method


# virtual methods
.method public abstract zza(Ljava/lang/Class;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public abstract zzb(Lcom/google/android/gms/internal/ads/zzgdh;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method

.method public abstract zzc(Lcom/google/android/gms/internal/ads/zzgnj;Lcom/google/android/gms/internal/ads/zzglq;Lcom/google/android/gms/internal/ads/zzgdl;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
