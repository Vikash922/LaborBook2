.class final Lcom/google/android/gms/internal/ads/zzcif;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzexj;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzhfh;

.field final zzb:Lcom/google/android/gms/internal/ads/zzhfh;

.field final zzc:Lcom/google/android/gms/internal/ads/zzhfh;

.field final zzd:Lcom/google/android/gms/internal/ads/zzhfh;

.field final zze:Lcom/google/android/gms/internal/ads/zzhfh;

.field final zzf:Lcom/google/android/gms/internal/ads/zzhfh;

.field private final zzg:Landroid/content/Context;

.field private final zzh:Lcom/google/android/gms/ads/internal/client/zzr;

.field private final zzi:Ljava/lang/String;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzchv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzchv;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzr;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzj:Lcom/google/android/gms/internal/ads/zzchv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzg:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzh:Lcom/google/android/gms/ads/internal/client/zzr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzi:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhez;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhey;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcif;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    .line 2
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzhez;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhey;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzchv;->zzK:Lcom/google/android/gms/internal/ads/zzhfh;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzejs;

    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/ads/zzejs;-><init>(Lcom/google/android/gms/internal/ads/zzhfh;)V

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzhex;->zzc(Lcom/google/android/gms/internal/ads/zzhfh;)Lcom/google/android/gms/internal/ads/zzhfh;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzc:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejx;->zza()Lcom/google/android/gms/internal/ads/zzejx;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhex;->zzc(Lcom/google/android/gms/internal/ads/zzhfh;)Lcom/google/android/gms/internal/ads/zzhfh;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzd:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdad;->zza()Lcom/google/android/gms/internal/ads/zzdad;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhex;->zzc(Lcom/google/android/gms/internal/ads/zzhfh;)Lcom/google/android/gms/internal/ads/zzhfh;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/gms/internal/ads/zzcif;->zze:Lcom/google/android/gms/internal/ads/zzhfh;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzchv;->zza:Lcom/google/android/gms/internal/ads/zzhfh;

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzchv;->zzQ:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfbr;->zza()Lcom/google/android/gms/internal/ads/zzfbr;

    move-result-object v7

    new-instance p1, Lcom/google/android/gms/internal/ads/zzexh;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzexh;-><init>(Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;Lcom/google/android/gms/internal/ads/zzhfh;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhex;->zzc(Lcom/google/android/gms/internal/ads/zzhfh;)Lcom/google/android/gms/internal/ads/zzhfh;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzf:Lcom/google/android/gms/internal/ads/zzhfh;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzeix;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzf:Lcom/google/android/gms/internal/ads/zzhfh;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzeix;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/ads/zzexg;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzc:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/ads/zzejr;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzj:Lcom/google/android/gms/internal/ads/zzchv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzchv;->zzF(Lcom/google/android/gms/internal/ads/zzchv;)Lcom/google/android/gms/internal/ads/zzcgo;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzchg;->zzc(Lcom/google/android/gms/internal/ads/zzcgo;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v7

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzchv;->zzK:Lcom/google/android/gms/internal/ads/zzhfh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfh;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/gms/internal/ads/zzdre;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzg:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzh:Lcom/google/android/gms/ads/internal/client/zzr;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcif;->zzi:Ljava/lang/String;

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzeix;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzexg;Lcom/google/android/gms/internal/ads/zzejr;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzdre;)V

    return-object v9
.end method
