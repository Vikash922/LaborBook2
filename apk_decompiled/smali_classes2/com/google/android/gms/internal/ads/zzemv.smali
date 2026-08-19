.class public final Lcom/google/android/gms/internal/ads/zzemv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhey;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhfh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzemv;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzemt;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemv;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzchg;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzchg;->zza()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v0

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfen;->zzc()Lcom/google/android/gms/internal/ads/zzgcd;

    move-result-object v1

    .line 2
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgcd;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzemt;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzemt;-><init>(Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzgcd;)V

    return-object v2
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzemv;->zza()Lcom/google/android/gms/internal/ads/zzemt;

    move-result-object v0

    return-object v0
.end method
