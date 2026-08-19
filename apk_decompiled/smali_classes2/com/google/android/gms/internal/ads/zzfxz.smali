.class final Lcom/google/android/gms/internal/ads/zzfxz;
.super Lcom/google/android/gms/internal/ads/zzfxy;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfya;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfya;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfxz;->zza:Lcom/google/android/gms/internal/ads/zzfya;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfxy;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfxh;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfxz;->zza:Lcom/google/android/gms/internal/ads/zzfya;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfya;->zza()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfxx;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzfxx;-><init>(I)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfyd;

    .line 2
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzfyd;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzfuo;)V

    return-object v2
.end method
