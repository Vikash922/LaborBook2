.class public final Lcom/google/android/gms/ads/nonagon/signalgeneration/zzg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhey;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhfh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzg;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p4, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzg;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzg;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcgs;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgs;->zza()Landroid/content/Context;

    move-result-object v0

    .line 2
    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcjv;->zza()Lcom/google/android/gms/internal/ads/zzbbr;

    move-result-object v1

    .line 2
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbbr;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeog;->zzc()Ljava/util/List;

    move-result-object v2

    .line 2
    move-object v3, v2

    check-cast v3, Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzg;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzchg;

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzchg;->zza()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v3

    .line 2
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    new-instance v4, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;

    .line 6
    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbr;Ljava/util/List;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    return-object v4
.end method
