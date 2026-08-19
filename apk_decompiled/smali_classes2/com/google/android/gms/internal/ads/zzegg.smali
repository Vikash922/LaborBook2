.class final Lcom/google/android/gms/internal/ads/zzegg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdfm;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzeci;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfau;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzegh;Lcom/google/android/gms/internal/ads/zzeci;Lcom/google/android/gms/internal/ads/zzfau;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzegg;->zza:Lcom/google/android/gms/internal/ads/zzeci;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzegg;->zzb:Lcom/google/android/gms/internal/ads/zzfau;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfau;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegg;->zzb:Lcom/google/android/gms/internal/ads/zzfau;

    return-object v0
.end method

.method public final zzb(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzcvp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdfl;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzegg;->zza:Lcom/google/android/gms/internal/ads/zzeci;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzeci;->zzb:Ljava/lang/Object;

    check-cast p3, Lcom/google/android/gms/internal/ads/zzfcn;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzfcn;->zzv(Z)V

    .line 2
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzfcn;->zzz(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfbw; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdfl;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfbw;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdfl;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
