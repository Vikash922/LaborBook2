.class final Lcom/google/android/gms/internal/ads/zzpe;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzpg;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzpg;Lcom/google/android/gms/internal/ads/zzpf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpe;->zza:Lcom/google/android/gms/internal/ads/zzpg;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpe;->isInitialStickyBroadcast()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpe;->zza:Lcom/google/android/gms/internal/ads/zzpg;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpg;->zzb(Lcom/google/android/gms/internal/ads/zzpg;)Lcom/google/android/gms/internal/ads/zze;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpg;->zzd(Lcom/google/android/gms/internal/ads/zzpg;)Lcom/google/android/gms/internal/ads/zzph;

    move-result-object v2

    .line 2
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzpb;->zzd(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/internal/ads/zze;Lcom/google/android/gms/internal/ads/zzph;)Lcom/google/android/gms/internal/ads/zzpb;

    move-result-object p1

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzpg;->zzf(Lcom/google/android/gms/internal/ads/zzpg;Lcom/google/android/gms/internal/ads/zzpb;)V

    :cond_0
    return-void
.end method
