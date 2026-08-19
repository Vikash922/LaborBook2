.class final Lcom/google/android/gms/internal/ads/zzble;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbzp;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzblg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzblg;Lcom/google/android/gms/internal/ads/zzbzp;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzble;->zza:Lcom/google/android/gms/internal/ads/zzbzp;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzble;->zzb:Lcom/google/android/gms/internal/ads/zzblg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzble;->zza:Lcom/google/android/gms/internal/ads/zzbzp;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzble;->zzb:Lcom/google/android/gms/internal/ads/zzblg;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzblg;->zzb(Lcom/google/android/gms/internal/ads/zzblg;)Lcom/google/android/gms/internal/ads/zzbkt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbkt;->zzp()Lcom/google/android/gms/internal/ads/zzbla;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbzp;->zzc(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzble;->zza:Lcom/google/android/gms/internal/ads/zzbzp;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbzp;->zzd(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConnectionSuspended: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzble;->zza:Lcom/google/android/gms/internal/ads/zzbzp;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbzp;->zzd(Ljava/lang/Throwable;)Z

    return-void
.end method
