.class final Lcom/google/android/gms/internal/ads/zzuh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzwu;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzwu;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfww;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzwu;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuh;->zza:Lcom/google/android/gms/internal/ads/zzwu;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfww;->zzl(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuh;->zzb:Lcom/google/android/gms/internal/ads/zzfww;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfww;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuh;->zzb:Lcom/google/android/gms/internal/ads/zzfww;

    return-object v0
.end method

.method public final zzb()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuh;->zza:Lcom/google/android/gms/internal/ads/zzwu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwu;->zzb()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzc()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuh;->zza:Lcom/google/android/gms/internal/ads/zzwu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwu;->zzc()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzm(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuh;->zza:Lcom/google/android/gms/internal/ads/zzwu;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwu;->zzm(J)V

    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzku;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuh;->zza:Lcom/google/android/gms/internal/ads/zzwu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzwu;->zzo(Lcom/google/android/gms/internal/ads/zzku;)Z

    move-result p1

    return p1
.end method

.method public final zzp()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuh;->zza:Lcom/google/android/gms/internal/ads/zzwu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwu;->zzp()Z

    move-result v0

    return v0
.end method
