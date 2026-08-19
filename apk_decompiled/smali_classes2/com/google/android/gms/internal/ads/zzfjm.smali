.class final Lcom/google/android/gms/internal/ads/zzfjm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfjn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfjn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjm;->zza:Lcom/google/android/gms/internal/ads/zzfjn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjm;->zza:Lcom/google/android/gms/internal/ads/zzfjn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfjn;->zze(Lcom/google/android/gms/internal/ads/zzfjn;)Lcom/google/android/gms/internal/ads/zzfiz;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfjn;->zze(Lcom/google/android/gms/internal/ads/zzfjn;)Lcom/google/android/gms/internal/ads/zzfiz;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzfjn;->zze:Lcom/google/android/gms/ads/internal/client/zzfp;

    iget v2, v2, Lcom/google/android/gms/ads/internal/client/zzfp;->zzb:I

    .line 2
    invoke-static {v2}, Lcom/google/android/gms/ads/AdFormat;->getAdFormat(I)Lcom/google/android/gms/ads/AdFormat;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfjn;->zzg(Lcom/google/android/gms/internal/ads/zzfjn;)Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    .line 1
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfiz;->zzd(Lcom/google/android/gms/ads/AdFormat;J)V

    :cond_0
    return-void
.end method
