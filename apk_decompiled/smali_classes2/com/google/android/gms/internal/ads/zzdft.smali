.class final Lcom/google/android/gms/internal/ads/zzdft;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcqj;


# instance fields
.field private final zza:Ljava/util/Map;

.field private final zzb:Ljava/util/Map;

.field private final zzc:Ljava/util/Map;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzhfn;

.field private final zze:Lcom/google/android/gms/internal/ads/zzdib;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzhfn;Lcom/google/android/gms/internal/ads/zzdib;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdft;->zza:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdft;->zzb:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdft;->zzc:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdft;->zzd:Lcom/google/android/gms/internal/ads/zzhfn;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdft;->zze:Lcom/google/android/gms/internal/ads/zzdib;

    return-void
.end method


# virtual methods
.method public final zza(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzecf;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdft;->zza:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzecf;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    return-object v1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdft;->zzc:Ljava/util/Map;

    .line 3
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeeo;

    if-eqz p1, :cond_2

    new-instance v1, Lcom/google/android/gms/internal/ads/zzecg;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcql;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzcql;-><init>()V

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzecg;-><init>(Lcom/google/android/gms/internal/ads/zzecf;Lcom/google/android/gms/internal/ads/zzftl;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdft;->zzb:Ljava/util/Map;

    .line 4
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzecf;

    if-nez p1, :cond_5

    :goto_0
    return-object v1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdft;->zze:Lcom/google/android/gms/internal/ads/zzdib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdib;->zze()Lcom/google/android/gms/internal/ads/zzbhe;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdft;->zzd:Lcom/google/android/gms/internal/ads/zzhfn;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfn;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcqj;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcqj;->zza(ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzecf;

    move-result-object p1

    if-nez p1, :cond_5

    :goto_1
    return-object v1

    .line 4
    :cond_5
    new-instance p2, Lcom/google/android/gms/internal/ads/zzecg;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcqm;-><init>()V

    invoke-direct {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzecg;-><init>(Lcom/google/android/gms/internal/ads/zzecf;Lcom/google/android/gms/internal/ads/zzftl;)V

    return-object p2
.end method
