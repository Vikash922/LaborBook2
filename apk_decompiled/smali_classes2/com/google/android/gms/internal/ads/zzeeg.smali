.class final Lcom/google/android/gms/internal/ads/zzeeg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdfm;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzeci;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfau;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzeeh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeeh;Lcom/google/android/gms/internal/ads/zzeci;Lcom/google/android/gms/internal/ads/zzfau;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zza:Lcom/google/android/gms/internal/ads/zzeci;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzb:Lcom/google/android/gms/internal/ads/zzfau;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzc:Lcom/google/android/gms/internal/ads/zzeeh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfau;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzb:Lcom/google/android/gms/internal/ads/zzfau;

    return-object v0
.end method

.method public final zzb(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzcvp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdfl;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zza:Lcom/google/android/gms/internal/ads/zzeci;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzeci;->zzb:Ljava/lang/Object;

    check-cast p3, Lcom/google/android/gms/internal/ads/zzfcn;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzfcn;->zzv(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzc:Lcom/google/android/gms/internal/ads/zzeeh;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeeh;->zzc(Lcom/google/android/gms/internal/ads/zzeeh;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->clientJarVersion:I

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzaW:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 6
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzfcn;->zzx()V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzfcn;->zzy(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfbw; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p2, "Cannot show interstitial."

    .line 8
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdfl;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfbw;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdfl;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
