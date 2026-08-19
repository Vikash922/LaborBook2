.class public final Lcom/google/android/gms/internal/ads/zzdug;
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

.field private final zzf:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzhfh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdug;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdug;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdug;->zzc:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdug;->zzd:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdug;->zze:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdug;->zzf:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdug;->zzg:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzdug;->zzh:Lcom/google/android/gms/internal/ads/zzhfh;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdug;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzduo;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdug;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/zzdvf;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdug;->zzc:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/ads/zzdtp;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdug;->zzd:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcgs;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgs;->zza()Landroid/content/Context;

    move-result-object v5

    .line 1
    move-object v0, v5

    check-cast v0, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdug;->zze:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzchg;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzchg;->zza()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v6

    .line 1
    move-object v0, v6

    check-cast v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdug;->zzf:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/gms/internal/ads/zzdty;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdug;->zzg:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/gms/internal/ads/zzdva;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzduk;

    .line 4
    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/zzduk;-><init>()V

    .line 1
    move-object v0, v9

    check-cast v0, Lcom/google/android/gms/internal/ads/zzduk;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzduk;

    .line 4
    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/zzduk;-><init>()V

    .line 1
    move-object v0, v10

    check-cast v0, Lcom/google/android/gms/internal/ads/zzduk;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdug;->zzh:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcgx;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgx;->zza()Ljava/lang/String;

    move-result-object v11

    .line 1
    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdud;

    move-object v1, v0

    .line 6
    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/zzdud;-><init>(Lcom/google/android/gms/internal/ads/zzduo;Lcom/google/android/gms/internal/ads/zzdvf;Lcom/google/android/gms/internal/ads/zzdtp;Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzdty;Lcom/google/android/gms/internal/ads/zzdva;Lcom/google/android/gms/internal/ads/zzduk;Lcom/google/android/gms/internal/ads/zzduk;Ljava/lang/String;)V

    .line 7
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdud;

    return-object v0
.end method
