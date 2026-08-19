.class public final synthetic Lcom/google/android/gms/internal/ads/zzedm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcqe;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzeci;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeci;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzedm;->zza:Lcom/google/android/gms/internal/ads/zzeci;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/ads/internal/client/zzea;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedm;->zza:Lcom/google/android/gms/internal/ads/zzeci;

    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeci;->zzb:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbqx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbqx;->zze()Lcom/google/android/gms/ads/internal/client/zzea;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfbw;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzfbw;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
