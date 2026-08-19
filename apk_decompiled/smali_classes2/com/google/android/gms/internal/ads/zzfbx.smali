.class public final synthetic Lcom/google/android/gms/internal/ads/zzfbx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbjj;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzddc;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzclx;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfio;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzeat;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzddc;Lcom/google/android/gms/internal/ads/zzclx;Lcom/google/android/gms/internal/ads/zzfio;Lcom/google/android/gms/internal/ads/zzeat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbx;->zza:Lcom/google/android/gms/internal/ads/zzddc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfbx;->zzb:Lcom/google/android/gms/internal/ads/zzclx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfbx;->zzc:Lcom/google/android/gms/internal/ads/zzfio;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfbx;->zzd:Lcom/google/android/gms/internal/ads/zzeat;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbx;->zza:Lcom/google/android/gms/internal/ads/zzddc;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcel;

    .line 1
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzbji;->zzc(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzddc;)V

    const-string v0, "u"

    .line 2
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_0

    .line 3
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "URL missing from click GMSG."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbx;->zzd:Lcom/google/android/gms/internal/ads/zzeat;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfbx;->zzc:Lcom/google/android/gms/internal/ads/zzfio;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfbx;->zzb:Lcom/google/android/gms/internal/ads/zzclx;

    .line 5
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbji;->zza(Lcom/google/android/gms/internal/ads/zzcel;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfbz;

    invoke-direct {v3, p1, v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzfbz;-><init>(Lcom/google/android/gms/internal/ads/zzcel;Lcom/google/android/gms/internal/ads/zzclx;Lcom/google/android/gms/internal/ads/zzfio;Lcom/google/android/gms/internal/ads/zzeat;)V

    .line 6
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbzk;->zza:Lcom/google/android/gms/internal/ads/zzgcd;

    invoke-static {p2, v3, p1}, Lcom/google/android/gms/internal/ads/zzgbs;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgbo;Ljava/util/concurrent/Executor;)V

    return-void
.end method
