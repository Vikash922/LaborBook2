.class final Lcom/google/android/gms/internal/ads/zzbaw;
.super Lcom/google/android/gms/internal/ads/zzbzp;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbbc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbbc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbaw;->zza:Lcom/google/android/gms/internal/ads/zzbbc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbzp;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbaw;->zza:Lcom/google/android/gms/internal/ads/zzbbc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbc;->zze(Lcom/google/android/gms/internal/ads/zzbbc;)V

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbzp;->cancel(Z)Z

    move-result p1

    return p1
.end method
