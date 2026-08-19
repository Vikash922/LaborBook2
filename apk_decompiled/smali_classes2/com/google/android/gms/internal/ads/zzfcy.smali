.class public final Lcom/google/android/gms/internal/ads/zzfcy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzfdt;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcy;->zza:Lcom/google/android/gms/internal/ads/zzfdt;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcy;->zza:Lcom/google/android/gms/internal/ads/zzfdt;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfdt;->zza:Lcom/google/android/gms/internal/ads/zzfdy;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfdy;->zzc(Lcom/google/android/gms/internal/ads/zzfdy;)V

    :cond_0
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfdt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcy;->zza:Lcom/google/android/gms/internal/ads/zzfdt;

    return-void
.end method
