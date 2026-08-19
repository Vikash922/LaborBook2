.class public final Lcom/google/android/gms/internal/ads/zzbyr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzbzp;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzbzp;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbzk;->zza:Lcom/google/android/gms/internal/ads/zzgcd;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbyq;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbyq;-><init>(Lcom/google/android/gms/internal/ads/zzbyr;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbzp;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgcd;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-object p2
.end method
