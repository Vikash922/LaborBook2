.class final Lcom/google/android/gms/internal/ads/zzfaj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/ads/internal/client/zzdn;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfal;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/ads/internal/client/zzdn;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfaj;->zza:Lcom/google/android/gms/ads/internal/client/zzdn;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfaj;->zzb:Lcom/google/android/gms/internal/ads/zzfal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdMetadataChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfaj;->zzb:Lcom/google/android/gms/internal/ads/zzfal;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfal;->zzr(Lcom/google/android/gms/internal/ads/zzfal;)Lcom/google/android/gms/internal/ads/zzdni;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfaj;->zza:Lcom/google/android/gms/ads/internal/client/zzdn;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzdn;->zze()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v1, "#007 Could not call remote method."

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
