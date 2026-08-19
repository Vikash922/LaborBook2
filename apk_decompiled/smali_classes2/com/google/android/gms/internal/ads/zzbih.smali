.class public final synthetic Lcom/google/android/gms/internal/ads/zzbih;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbjj;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzddc;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzclx;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzddc;Lcom/google/android/gms/internal/ads/zzclx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbih;->zza:Lcom/google/android/gms/internal/ads/zzddc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbih;->zzb:Lcom/google/android/gms/internal/ads/zzclx;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbih;->zza:Lcom/google/android/gms/internal/ads/zzddc;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbih;->zzb:Lcom/google/android/gms/internal/ads/zzclx;

    .line 5
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbji;->zza(Lcom/google/android/gms/internal/ads/zzcel;Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgbj;->zzE(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzgbj;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbik;

    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/internal/ads/zzbik;-><init>(Lcom/google/android/gms/internal/ads/zzclx;Ljava/lang/String;)V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbzk;->zza:Lcom/google/android/gms/internal/ads/zzgcd;

    .line 6
    invoke-static {v1, v2, p2}, Lcom/google/android/gms/internal/ads/zzgbs;->zzn(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgaz;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzgbj;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbix;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbix;-><init>(Lcom/google/android/gms/internal/ads/zzcel;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbzk;->zza:Lcom/google/android/gms/internal/ads/zzgcd;

    .line 7
    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzgbs;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgbo;Ljava/util/concurrent/Executor;)V

    return-void
.end method
