.class final Lcom/google/android/gms/internal/ads/zzcmo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbjj;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcmp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcmp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmo;->zza:Lcom/google/android/gms/internal/ads/zzcmp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmo;->zza:Lcom/google/android/gms/internal/ads/zzcmp;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzcmp;->zzg(Lcom/google/android/gms/internal/ads/zzcmp;Ljava/util/Map;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcmp;->zzb(Lcom/google/android/gms/internal/ads/zzcmp;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcmn;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzcmn;-><init>(Lcom/google/android/gms/internal/ads/zzcmo;)V

    .line 2
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
