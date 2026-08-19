.class final Lcom/google/android/gms/internal/ads/zzfyd;
.super Lcom/google/android/gms/internal/ads/zzfuy;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field final transient zza:Lcom/google/android/gms/internal/ads/zzfuo;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzfuo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfuy;-><init>(Ljava/util/Map;)V

    .line 2
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfuo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfyd;->zza:Lcom/google/android/gms/internal/ads/zzfuo;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic zza()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfyd;->zza:Lcom/google/android/gms/internal/ads/zzfuo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfuo;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method final zzj()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfvp;->zzk()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method final zzl()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfvp;->zzm()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
