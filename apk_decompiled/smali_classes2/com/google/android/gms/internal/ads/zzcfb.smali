.class public final synthetic Lcom/google/android/gms/internal/ads/zzcfb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcfd;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzeby;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcfd;Lcom/google/android/gms/internal/ads/zzeby;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->zza:Lcom/google/android/gms/internal/ads/zzcfd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfb;->zzb:Lcom/google/android/gms/internal/ads/zzeby;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcfc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->zza:Lcom/google/android/gms/internal/ads/zzcfd;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcfc;-><init>(Lcom/google/android/gms/internal/ads/zzcfd;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->zzb:Lcom/google/android/gms/internal/ads/zzeby;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzeby;->zzf(Lcom/google/android/gms/internal/ads/zzcfc;)V

    return-void
.end method
