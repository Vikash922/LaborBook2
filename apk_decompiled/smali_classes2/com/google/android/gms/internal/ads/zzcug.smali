.class public final Lcom/google/android/gms/internal/ads/zzcug;
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

.field private final zzi:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzhfh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcug;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcug;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcug;->zzc:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcug;->zzd:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcug;->zze:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzcug;->zzf:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzcug;->zzg:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzcug;->zzh:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzcug;->zzi:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzcug;->zzj:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzcug;->zzk:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p13, p0, Lcom/google/android/gms/internal/ads/zzcug;->zzl:Lcom/google/android/gms/internal/ads/zzhfh;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcuf;
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcug;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfft;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcug;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzchg;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzchg;->zza()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v3

    .line 1
    move-object v0, v3

    check-cast v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcug;->zzc:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcug;->zzd:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdwb;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdwb;->zza()Ljava/lang/String;

    move-result-object v5

    .line 1
    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeog;->zzc()Ljava/util/List;

    move-result-object v6

    .line 1
    move-object v0, v6

    check-cast v0, Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcug;->zze:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/pm/PackageInfo;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcug;->zzf:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhex;->zza(Lcom/google/android/gms/internal/ads/zzhfh;)Lcom/google/android/gms/internal/ads/zzhes;

    move-result-object v8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcug;->zzg:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcgp;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgp;->zza()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v9

    .line 1
    move-object v0, v9

    check-cast v0, Lcom/google/android/gms/ads/internal/util/zzg;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcug;->zzh:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcug;->zzi:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzesz;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzesz;->zza()Lcom/google/android/gms/internal/ads/zzesy;

    move-result-object v11

    .line 1
    move-object v0, v11

    check-cast v0, Lcom/google/android/gms/internal/ads/zzesy;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcug;->zzj:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcut;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcut;->zza()Lcom/google/android/gms/internal/ads/zzfbp;

    move-result-object v12

    .line 1
    move-object v0, v12

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfbp;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcug;->zzk:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/google/android/gms/internal/ads/zzdao;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcug;->zzl:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v14

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcuf;

    move-object v1, v0

    invoke-direct/range {v1 .. v14}, Lcom/google/android/gms/internal/ads/zzcuf;-><init>(Lcom/google/android/gms/internal/ads/zzfft;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInfo;Lcom/google/android/gms/internal/ads/zzhes;Lcom/google/android/gms/ads/internal/util/zzg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzesy;Lcom/google/android/gms/internal/ads/zzfbp;Lcom/google/android/gms/internal/ads/zzdao;I)V

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcug;->zza()Lcom/google/android/gms/internal/ads/zzcuf;

    move-result-object v0

    return-object v0
.end method
