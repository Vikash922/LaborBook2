.class public final Lcom/google/android/gms/internal/ads/zzdyd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhey;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhfh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdyd;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdyd;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzdyc;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfen;->zzc()Lcom/google/android/gms/internal/ads/zzgcd;

    move-result-object v0

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgcd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdyd;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdxi;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdxi;->zza()Lcom/google/android/gms/internal/ads/zzdxh;

    move-result-object v1

    .line 2
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdxh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdyd;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhex;->zza(Lcom/google/android/gms/internal/ads/zzhfh;)Lcom/google/android/gms/internal/ads/zzhes;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdyc;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdyc;-><init>(Lcom/google/android/gms/internal/ads/zzgcd;Lcom/google/android/gms/internal/ads/zzdxh;Lcom/google/android/gms/internal/ads/zzhes;)V

    return-object v3
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdyd;->zza()Lcom/google/android/gms/internal/ads/zzdyc;

    move-result-object v0

    return-object v0
.end method
