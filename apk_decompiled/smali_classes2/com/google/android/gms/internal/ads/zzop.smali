.class public final synthetic Lcom/google/android/gms/internal/ads/zzop;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzov;

.field public final synthetic zzb:Landroid/media/metrics/TrackChangeEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzov;Landroid/media/metrics/TrackChangeEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzop;->zza:Lcom/google/android/gms/internal/ads/zzov;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzop;->zzb:Landroid/media/metrics/TrackChangeEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzop;->zza:Lcom/google/android/gms/internal/ads/zzov;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzop;->zzb:Landroid/media/metrics/TrackChangeEvent;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzov;->zzs(Lcom/google/android/gms/internal/ads/zzov;Landroid/media/metrics/TrackChangeEvent;)V

    return-void
.end method
