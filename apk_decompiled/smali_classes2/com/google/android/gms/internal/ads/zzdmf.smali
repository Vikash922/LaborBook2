.class public final Lcom/google/android/gms/internal/ads/zzdmf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbjj;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbgx;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdmt;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhes;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdib;Lcom/google/android/gms/internal/ads/zzdhq;Lcom/google/android/gms/internal/ads/zzdmt;Lcom/google/android/gms/internal/ads/zzhes;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdhq;->zzA()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdib;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbgx;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmf;->zza:Lcom/google/android/gms/internal/ads/zzbgx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdmf;->zzb:Lcom/google/android/gms/internal/ads/zzdmt;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdmf;->zzc:Lcom/google/android/gms/internal/ads/zzhes;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    .line 1
    const-string p1, "asset"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmf;->zza:Lcom/google/android/gms/internal/ads/zzbgx;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmf;->zzc:Lcom/google/android/gms/internal/ads/zzhes;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhes;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbgn;

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzbgx;->zze(Lcom/google/android/gms/internal/ads/zzbgn;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to call onCustomClick for asset "

    .line 3
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmf;->zza:Lcom/google/android/gms/internal/ads/zzbgx;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmf;->zzb:Lcom/google/android/gms/internal/ads/zzdmt;

    const-string v1, "/nativeAdCustomClick"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzdmt;->zzl(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjj;)V

    return-void
.end method
