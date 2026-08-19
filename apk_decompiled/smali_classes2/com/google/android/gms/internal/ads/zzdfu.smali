.class public final Lcom/google/android/gms/internal/ads/zzdfu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhey;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zze:Lcom/google/android/gms/internal/ads/zzhfh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdfu;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdfu;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdfu;->zzc:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdfu;->zzd:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdfu;->zze:Lcom/google/android/gms/internal/ads/zzhfh;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfu;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhfc;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhfc;->zzd()Ljava/util/Map;

    move-result-object v2

    .line 2
    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfu;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhfc;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhfc;->zzd()Ljava/util/Map;

    move-result-object v3

    .line 2
    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfu;->zzc:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhfc;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhfc;->zzd()Ljava/util/Map;

    move-result-object v4

    .line 2
    move-object v0, v4

    check-cast v0, Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfu;->zze:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdfy;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdfy;->zza()Lcom/google/android/gms/internal/ads/zzdib;

    move-result-object v6

    .line 2
    move-object v0, v6

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdib;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdfu;->zzd:Lcom/google/android/gms/internal/ads/zzhfh;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdft;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzdft;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzhfn;Lcom/google/android/gms/internal/ads/zzdib;)V

    return-object v0
.end method
