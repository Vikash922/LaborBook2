.class final Lcom/google/android/gms/internal/ads/zzcmm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbjj;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcmp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcmp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmm;->zza:Lcom/google/android/gms/internal/ads/zzcmp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmm;->zza:Lcom/google/android/gms/internal/ads/zzcmp;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzcmp;->zzg(Lcom/google/android/gms/internal/ads/zzcmp;Ljava/util/Map;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcmp;->zzb(Lcom/google/android/gms/internal/ads/zzcmp;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcml;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzcml;-><init>(Lcom/google/android/gms/internal/ads/zzcmm;)V

    .line 2
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
