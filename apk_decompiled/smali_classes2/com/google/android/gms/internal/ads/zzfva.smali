.class final Lcom/google/android/gms/internal/ads/zzfva;
.super Lcom/google/android/gms/internal/ads/zzfxp;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfvc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfvc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfva;->zza:Lcom/google/android/gms/internal/ads/zzfvc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfxp;-><init>()V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfva;->zza:Lcom/google/android/gms/internal/ads/zzfvc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfvc;->zza:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfvv;->zza(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfvb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfva;->zza:Lcom/google/android/gms/internal/ads/zzfvc;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfvb;-><init>(Lcom/google/android/gms/internal/ads/zzfvc;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfxp;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfva;->zza:Lcom/google/android/gms/internal/ads/zzfvc;

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfvc;->zzb:Lcom/google/android/gms/internal/ads/zzfvp;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfvp;->zzo(Lcom/google/android/gms/internal/ads/zzfvp;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method final zza()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfva;->zza:Lcom/google/android/gms/internal/ads/zzfvc;

    return-object v0
.end method
