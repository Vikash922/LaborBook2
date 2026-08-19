.class public final Lcom/google/android/gms/internal/ads/zzfcb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfau;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfax;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfio;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfig;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfgn;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzclx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfio;Lcom/google/android/gms/internal/ads/zzfig;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzfax;Lcom/google/android/gms/internal/ads/zzclx;Lcom/google/android/gms/internal/ads/zzfgn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfcb;->zza:Lcom/google/android/gms/internal/ads/zzfau;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfcb;->zzb:Lcom/google/android/gms/internal/ads/zzfax;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcb;->zzc:Lcom/google/android/gms/internal/ads/zzfio;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfcb;->zzd:Lcom/google/android/gms/internal/ads/zzfig;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfcb;->zzf:Lcom/google/android/gms/internal/ads/zzclx;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfcb;->zze:Lcom/google/android/gms/internal/ads/zzfgn;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzcxm;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x2

    .line 2
    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzfcb;->zzb(Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzcxm;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzb(Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzcxm;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcb;->zza:Lcom/google/android/gms/internal/ads/zzfau;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzfau;->zzai:Z

    if-nez v1, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfcb;->zzc:Lcom/google/android/gms/internal/ads/zzfio;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfcb;->zze:Lcom/google/android/gms/internal/ads/zzfgn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfau;->zzax:Lcom/google/android/gms/ads/internal/util/client/zzv;

    invoke-virtual {p2, p1, v0, v1, p3}, Lcom/google/android/gms/internal/ads/zzfio;->zzd(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;Lcom/google/android/gms/internal/ads/zzfgn;Lcom/google/android/gms/internal/ads/zzcxm;)V

    return-void

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfcb;->zzd:Lcom/google/android/gms/internal/ads/zzfig;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcb;->zzb:Lcom/google/android/gms/internal/ads/zzfax;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfax;->zzb:Ljava/lang/String;

    .line 2
    invoke-virtual {p3, p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzfig;->zza(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final zzc(Ljava/util/List;I)V
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zzkf:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzclx;->zzj(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfcb;->zzf:Lcom/google/android/gms/internal/ads/zzclx;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zze()Ljava/util/Random;

    move-result-object v2

    .line 7
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzclx;->zze(Ljava/lang/String;Ljava/util/Random;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgbs;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 7
    :goto_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfca;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/ads/zzfca;-><init>(Lcom/google/android/gms/internal/ads/zzfcb;I)V

    .line 8
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbzk;->zza:Lcom/google/android/gms/internal/ads/zzgcd;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgbs;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgbo;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    :cond_1
    return-void
.end method
