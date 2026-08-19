.class final Lcom/google/android/gms/internal/ads/zzgzu;
.super Lcom/google/android/gms/internal/ads/zzgwg;
.source "com.google.android.gms:play-services-ads-api@@24.2.0"


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzgzw;

.field zzb:Lcom/google/android/gms/internal/ads/zzgwi;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzgzy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgzy;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgzu;->zzc:Lcom/google/android/gms/internal/ads/zzgzy;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgwg;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgzw;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzgzw;-><init>(Lcom/google/android/gms/internal/ads/zzgwn;Lcom/google/android/gms/internal/ads/zzgzx;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzu;->zza:Lcom/google/android/gms/internal/ads/zzgzw;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgzu;->zzb()Lcom/google/android/gms/internal/ads/zzgwi;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgzu;->zzb:Lcom/google/android/gms/internal/ads/zzgwi;

    return-void
.end method

.method private final zzb()Lcom/google/android/gms/internal/ads/zzgwi;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzu;->zza:Lcom/google/android/gms/internal/ads/zzgzw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzw;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzw;->zza()Lcom/google/android/gms/internal/ads/zzgwj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgwn;->zzs()Lcom/google/android/gms/internal/ads/zzgwi;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzu;->zzb:Lcom/google/android/gms/internal/ads/zzgwi;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zza()B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzu;->zzb:Lcom/google/android/gms/internal/ads/zzgwi;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgwi;->zza()B

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgzu;->zzb:Lcom/google/android/gms/internal/ads/zzgwi;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzgwi;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgzu;->zzb()Lcom/google/android/gms/internal/ads/zzgwi;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgzu;->zzb:Lcom/google/android/gms/internal/ads/zzgwi;

    :cond_0
    return v0

    .line 1
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
