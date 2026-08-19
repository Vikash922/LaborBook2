.class public final Lcom/google/android/gms/internal/ads/zzcva;
.super Lcom/google/android/gms/internal/ads/zzdat;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/client/zza;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdat;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcuz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcuz;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdat;->zzq(Lcom/google/android/gms/internal/ads/zzdas;)V

    return-void
.end method
