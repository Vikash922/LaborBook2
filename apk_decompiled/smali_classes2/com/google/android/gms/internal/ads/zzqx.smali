.class public final synthetic Lcom/google/android/gms/internal/ads/zzqx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Landroid/media/AudioRouting$OnRoutingChangedListener;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzqy;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzqy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqx;->zza:Lcom/google/android/gms/internal/ads/zzqy;

    return-void
.end method


# virtual methods
.method public final onRoutingChanged(Landroid/media/AudioRouting;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqx;->zza:Lcom/google/android/gms/internal/ads/zzqy;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzqy;->zza(Lcom/google/android/gms/internal/ads/zzqy;Landroid/media/AudioRouting;)V

    return-void
.end method
