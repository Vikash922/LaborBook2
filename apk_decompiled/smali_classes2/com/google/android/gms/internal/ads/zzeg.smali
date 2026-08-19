.class final Lcom/google/android/gms/internal/ads/zzeg;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzei;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzei;Lcom/google/android/gms/internal/ads/zzeh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeg;->zza:Lcom/google/android/gms/internal/ads/zzei;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeg;->zza:Lcom/google/android/gms/internal/ads/zzei;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzei;->zzc(Lcom/google/android/gms/internal/ads/zzei;)Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzef;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzef;-><init>(Lcom/google/android/gms/internal/ads/zzeg;Landroid/content/Context;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
