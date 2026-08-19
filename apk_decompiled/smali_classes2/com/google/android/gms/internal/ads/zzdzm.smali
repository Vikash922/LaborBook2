.class public final Lcom/google/android/gms/internal/ads/zzdzm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhey;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhfh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzm;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdzm;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzdzl;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzm;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdzi;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdzi;->zza()Lcom/google/android/gms/internal/ads/zzdzh;

    move-result-object v0

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdzh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdzm;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgcd;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdzl;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzdzl;-><init>(Lcom/google/android/gms/internal/ads/zzdzh;Lcom/google/android/gms/internal/ads/zzgcd;)V

    return-object v2
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdzm;->zza()Lcom/google/android/gms/internal/ads/zzdzl;

    move-result-object v0

    return-object v0
.end method
