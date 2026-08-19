.class public final Lcom/google/android/gms/internal/ads/zzenv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhey;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhfh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzenv;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzenv;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzenv;->zzc:Lcom/google/android/gms/internal/ads/zzhfh;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzent;
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfen;->zzc()Lcom/google/android/gms/internal/ads/zzgcd;

    move-result-object v0

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgcd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzenv;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdoz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzenv;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcut;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcut;->zza()Lcom/google/android/gms/internal/ads/zzfbp;

    move-result-object v2

    .line 2
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfbp;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzenv;->zzc:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzent;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzent;-><init>(Lcom/google/android/gms/internal/ads/zzgcd;Lcom/google/android/gms/internal/ads/zzdoz;Lcom/google/android/gms/internal/ads/zzfbp;Ljava/lang/String;)V

    return-object v4
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzenv;->zza()Lcom/google/android/gms/internal/ads/zzent;

    move-result-object v0

    return-object v0
.end method
