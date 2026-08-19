.class public final Lcom/google/android/gms/internal/ads/zzdkj;
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

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdkj;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdkj;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzdki;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfen;->zzc()Lcom/google/android/gms/internal/ads/zzgcd;

    move-result-object v0

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgcd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdkj;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdky;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdky;->zza()Lcom/google/android/gms/internal/ads/zzdkx;

    move-result-object v1

    .line 2
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdkx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdkj;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdld;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdld;->zza()Lcom/google/android/gms/internal/ads/zzdlc;

    move-result-object v2

    .line 2
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzdlc;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdki;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdki;-><init>(Lcom/google/android/gms/internal/ads/zzgcd;Lcom/google/android/gms/internal/ads/zzdkx;Lcom/google/android/gms/internal/ads/zzdlc;)V

    return-object v3
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdkj;->zza()Lcom/google/android/gms/internal/ads/zzdki;

    move-result-object v0

    return-object v0
.end method
