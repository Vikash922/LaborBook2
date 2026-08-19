.class final Lcom/google/android/gms/internal/ads/zzhq;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhs;Lcom/google/android/gms/internal/ads/zzdq;Lcom/google/android/gms/internal/ads/zzhr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhq;->zza:Lcom/google/android/gms/internal/ads/zzdq;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    const-string p1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhq;->zza:Lcom/google/android/gms/internal/ads/zzdq;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzhp;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Lcom/google/android/gms/internal/ads/zzhq;)V

    .line 2
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdq;->zzi(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
