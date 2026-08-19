.class public final Lcom/google/android/gms/internal/ads/zzdsv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdsf;


# instance fields
.field private final zza:J

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdsk;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfal;


# direct methods
.method constructor <init>(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdsk;Lcom/google/android/gms/internal/ads/zzcgl;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzdsv;->zza:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdsv;->zzb:Lcom/google/android/gms/internal/ads/zzdsk;

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzcgl;->zzv()Lcom/google/android/gms/internal/ads/zzfan;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/zzfan;->zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfan;

    .line 2
    invoke-interface {p1, p6}, Lcom/google/android/gms/internal/ads/zzfan;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfan;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfan;->zzc()Lcom/google/android/gms/internal/ads/zzfao;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfao;->zza()Lcom/google/android/gms/internal/ads/zzfal;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsv;->zzc:Lcom/google/android/gms/internal/ads/zzfal;

    return-void
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzdsv;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdsv;->zza:J

    return-wide v0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzdsv;)Lcom/google/android/gms/internal/ads/zzdsk;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdsv;->zzb:Lcom/google/android/gms/internal/ads/zzdsk;

    return-object p0
.end method


# virtual methods
.method public final zza()V
    .locals 0

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/ads/internal/client/zzm;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsv;->zzc:Lcom/google/android/gms/internal/ads/zzfal;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdst;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdst;-><init>(Lcom/google/android/gms/internal/ads/zzdsv;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzfal;->zzf(Lcom/google/android/gms/ads/internal/client/zzm;Lcom/google/android/gms/internal/ads/zzbwk;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "#007 Could not call remote method."

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzc()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsv;->zzc:Lcom/google/android/gms/internal/ads/zzfal;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdsu;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdsu;-><init>(Lcom/google/android/gms/internal/ads/zzdsv;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfal;->zzk(Lcom/google/android/gms/internal/ads/zzbwg;)V

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfal;->zzm(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v1, "#007 Could not call remote method."

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
