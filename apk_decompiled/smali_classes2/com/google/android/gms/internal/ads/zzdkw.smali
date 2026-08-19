.class final Lcom/google/android/gms/internal/ads/zzdkw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgbo;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbzp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdkx;Lcom/google/android/gms/internal/ads/zzbzp;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdkw;->zza:Lcom/google/android/gms/internal/ads/zzbzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "Failed to load media data due to video view load failure."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkw;->zza:Lcom/google/android/gms/internal/ads/zzbzp;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbzp;->zzd(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcel;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkw;->zza:Lcom/google/android/gms/internal/ads/zzbzp;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcce;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdkv;

    .line 2
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdkv;-><init>(Lcom/google/android/gms/internal/ads/zzbzp;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzcce;-><init>(Ljava/util/function/Consumer;)V

    const-string v0, "/video"

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcel;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjj;)V

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcel;->zzaa()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkw;->zza:Lcom/google/android/gms/internal/ads/zzbzp;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzefy;

    const/4 v1, 0x1

    const-string v2, "Missing webview from video view future."

    .line 4
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzefy;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbzp;->zzd(Ljava/lang/Throwable;)Z

    return-void
.end method
