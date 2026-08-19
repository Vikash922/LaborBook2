.class final Lcom/google/android/gms/internal/ads/zzrv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzry;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzz;)I
    .locals 0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzz;->zzs:Lcom/google/android/gms/internal/ads/zzs;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzrt;Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzrx;
    .locals 0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzrx;->zza:Lcom/google/android/gms/internal/ads/zzrx;

    return-object p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzrt;Lcom/google/android/gms/internal/ads/zzz;)Lcom/google/android/gms/internal/ads/zzrz;
    .locals 2

    .line 1
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzz;->zzs:Lcom/google/android/gms/internal/ads/zzs;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzrz;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzrr;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzsb;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzsb;-><init>(I)V

    const/16 v1, 0x1771

    invoke-direct {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzrr;-><init>(Ljava/lang/Throwable;I)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzrz;-><init>(Lcom/google/android/gms/internal/ads/zzrr;)V

    return-object p1
.end method
