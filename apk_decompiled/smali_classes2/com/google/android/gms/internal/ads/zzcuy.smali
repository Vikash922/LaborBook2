.class public final Lcom/google/android/gms/internal/ads/zzcuy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhey;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhfh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcux;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcuy;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcuy;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcuy;->zzc:Lcom/google/android/gms/internal/ads/zzhfh;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuy;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuy;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzchg;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzchg;->zza()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v3

    .line 1
    move-object v0, v3

    check-cast v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcuy;->zzc:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcqx;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqx;->zza()Lcom/google/android/gms/internal/ads/zzfau;

    move-result-object v0

    .line 1
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfau;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzbxe;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzbxe;-><init>()V

    .line 4
    move-object v1, v6

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbxe;

    .line 1
    move-object v1, v6

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbxe;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfau;->zzA:Lcom/google/android/gms/internal/ads/zzbxf;

    const/4 v1, 0x0

    if-eqz v4, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfau;->zzs:Lcom/google/android/gms/internal/ads/zzfaz;

    if-nez v0, :cond_0

    move-object v5, v1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfaz;->zzb:Ljava/lang/String;

    move-object v5, v0

    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbxd;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzbxd;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzbxf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbxe;)V

    :cond_1
    return-object v1
.end method
