.class final Lcom/google/android/gms/internal/ads/zzehb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdfm;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzeci;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfau;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzehd;Lcom/google/android/gms/internal/ads/zzeci;Lcom/google/android/gms/internal/ads/zzfau;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzehb;->zza:Lcom/google/android/gms/internal/ads/zzeci;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzehb;->zzb:Lcom/google/android/gms/internal/ads/zzfau;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfau;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehb;->zzb:Lcom/google/android/gms/internal/ads/zzfau;

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
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzehb;->zza:Lcom/google/android/gms/internal/ads/zzeci;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzeci;->zzb:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzfcn;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzfcn;->zzv(Z)V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfcn;->zzA()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfbw; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p2, "Cannot show rewarded video."

    .line 4
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdfl;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfbw;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdfl;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
