.class public final Lcom/google/android/gms/internal/ads/zzdpd;
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


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpd;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdpd;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdpd;->zzc:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdpd;->zzd:Lcom/google/android/gms/internal/ads/zzhfh;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdpd;->zze:Lcom/google/android/gms/internal/ads/zzhfh;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdpd;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcgs;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgs;->zza()Landroid/content/Context;

    move-result-object v0

    .line 2
    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpd;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdwb;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdwb;->zza()Ljava/lang/String;

    move-result-object v1

    .line 2
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdpd;->zzc:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzchg;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzchg;->zza()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v2

    .line 2
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdpd;->zzd:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbbn$zza$zza;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdpd;->zze:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzbbg;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzbbm;

    .line 5
    invoke-direct {v6, v0}, Lcom/google/android/gms/internal/ads/zzbbm;-><init>(Landroid/content/Context;)V

    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/ads/zzbbg;-><init>(Lcom/google/android/gms/internal/ads/zzbbm;)V

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn$zzar;->zzd()Lcom/google/android/gms/internal/ads/zzbbn$zzar$zza;

    move-result-object v0

    iget v6, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->buddyApkVersion:I

    .line 7
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzbbn$zzar$zza;->zzg(I)Lcom/google/android/gms/internal/ads/zzbbn$zzar$zza;

    iget v6, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    .line 8
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzbbn$zzar$zza;->zzi(I)Lcom/google/android/gms/internal/ads/zzbbn$zzar$zza;

    const/4 v6, 0x1

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->isClientJar:Z

    if-eq v6, v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 9
    :goto_0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzbbn$zzar$zza;->zzh(I)Lcom/google/android/gms/internal/ads/zzbbn$zzar$zza;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbn()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbn$zzar;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdpc;

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/google/android/gms/internal/ads/zzdpc;-><init>(Lcom/google/android/gms/internal/ads/zzbbn$zza$zza;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbbn$zzar;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzbbg;->zzb(Lcom/google/android/gms/internal/ads/zzbbf;)V

    .line 12
    move-object v0, v5

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbg;

    return-object v5
.end method
