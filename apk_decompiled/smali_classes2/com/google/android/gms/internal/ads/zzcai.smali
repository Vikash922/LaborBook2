.class final Lcom/google/android/gms/internal/ads/zzcai;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcak;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcak;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcai;->zza:Lcom/google/android/gms/internal/ads/zzcak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcai;->zza:Lcom/google/android/gms/internal/ads/zzcak;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcak;->zzi(Lcom/google/android/gms/internal/ads/zzcak;)Lcom/google/android/gms/internal/ads/zzcal;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcak;->zzv(Lcom/google/android/gms/internal/ads/zzcak;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcak;->zzi(Lcom/google/android/gms/internal/ads/zzcak;)Lcom/google/android/gms/internal/ads/zzcal;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcal;->zzg()V

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcak;->zzl(Lcom/google/android/gms/internal/ads/zzcak;Z)V

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcak;->zzi(Lcom/google/android/gms/internal/ads/zzcak;)Lcom/google/android/gms/internal/ads/zzcal;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcal;->zze()V

    :cond_1
    return-void
.end method
