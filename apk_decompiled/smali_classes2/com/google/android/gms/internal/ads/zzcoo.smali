.class public final Lcom/google/android/gms/internal/ads/zzcoo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhey;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcog;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zze:Lcom/google/android/gms/internal/ads/zzhfh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcog;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoo;->zza:Lcom/google/android/gms/internal/ads/zzcog;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcoo;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcoo;->zzc:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcoo;->zzd:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcoo;->zze:Lcom/google/android/gms/internal/ads/zzhfh;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzcog;Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzfbp;)Lcom/google/android/gms/internal/ads/zzdcu;
    .locals 1

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzdcu;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcoe;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzcoe;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzfbp;)V

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbzk;->zzg:Lcom/google/android/gms/internal/ads/zzgcd;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzdcu;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 3
    move-object p1, p0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdcu;

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoo;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcoo;->zzc:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzchg;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzchg;->zza()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v1

    .line 1
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcoo;->zzd:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcqx;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcqx;->zza()Lcom/google/android/gms/internal/ads/zzfau;

    move-result-object v2

    .line 1
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfau;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcoo;->zze:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzcut;

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcut;->zza()Lcom/google/android/gms/internal/ads/zzfbp;

    move-result-object v3

    .line 1
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfbp;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcoo;->zza:Lcom/google/android/gms/internal/ads/zzcog;

    invoke-static {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcoo;->zza(Lcom/google/android/gms/internal/ads/zzcog;Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzfbp;)Lcom/google/android/gms/internal/ads/zzdcu;

    move-result-object v0

    return-object v0
.end method
