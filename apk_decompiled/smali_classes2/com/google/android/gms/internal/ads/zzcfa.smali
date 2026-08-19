.class public final synthetic Lcom/google/android/gms/internal/ads/zzcfa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzeca;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeca;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfa;->zza:Lcom/google/android/gms/internal/ads/zzeca;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfa;->zza:Lcom/google/android/gms/internal/ads/zzeca;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzB()Lcom/google/android/gms/internal/ads/zzebv;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeca;->zza()Lcom/google/android/gms/internal/ads/zzfjv;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzebv;->zzi(Lcom/google/android/gms/internal/ads/zzfjv;)V

    return-void
.end method
