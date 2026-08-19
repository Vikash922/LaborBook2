.class public final Lcom/google/android/gms/internal/ads/zzexx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeyl;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfdc;

.field private final zzb:Ljava/util/concurrent/Executor;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgbo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfdc;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzexv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzexv;-><init>(Lcom/google/android/gms/internal/ads/zzexx;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzexx;->zzc:Lcom/google/android/gms/internal/ads/zzgbo;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzexx;->zza:Lcom/google/android/gms/internal/ads/zzfdc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzexx;->zzb:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzexx;Lcom/google/android/gms/internal/ads/zzcui;Lcom/google/android/gms/internal/ads/zzeyf;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzexx;->zza:Lcom/google/android/gms/internal/ads/zzfdc;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzeyf;->zzb:Lcom/google/android/gms/internal/ads/zzfdm;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzeyf;->zza:Lcom/google/android/gms/internal/ads/zzbuy;

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfdc;->zzb(Lcom/google/android/gms/internal/ads/zzfdm;)Lcom/google/android/gms/internal/ads/zzfdl;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcui;->zzb()Lcom/google/android/gms/internal/ads/zzcrk;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcrk;->zzg(Lcom/google/android/gms/internal/ads/zzbuy;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzexx;->zzc:Lcom/google/android/gms/internal/ads/zzgbo;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzexx;->zzb:Ljava/util/concurrent/Executor;

    .line 4
    invoke-static {p1, v2, p0}, Lcom/google/android/gms/internal/ads/zzgbs;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgbo;Ljava/util/concurrent/Executor;)V

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzexw;

    invoke-direct {p0, v1, p2, v0}, Lcom/google/android/gms/internal/ads/zzexw;-><init>(Lcom/google/android/gms/internal/ads/zzfdm;Lcom/google/android/gms/internal/ads/zzbuy;Lcom/google/android/gms/internal/ads/zzfdl;)V

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgbs;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzeym;Lcom/google/android/gms/internal/ads/zzeyk;Lcom/google/android/gms/internal/ads/zzcui;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeyh;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzexx;->zza:Lcom/google/android/gms/internal/ads/zzfdc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzexx;->zzb:Ljava/util/concurrent/Executor;

    invoke-direct {p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzeyh;-><init>(Lcom/google/android/gms/internal/ads/zzfdc;Lcom/google/android/gms/internal/ads/zzcui;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeyh;->zzc()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgbj;->zzE(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzgbj;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzext;

    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/internal/ads/zzext;-><init>(Lcom/google/android/gms/internal/ads/zzexx;Lcom/google/android/gms/internal/ads/zzcui;)V

    .line 3
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgbs;->zzn(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgaz;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgbj;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzexu;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzexu;-><init>(Lcom/google/android/gms/internal/ads/zzexx;)V

    const-class p3, Ljava/lang/Exception;

    .line 4
    invoke-static {p1, p3, p2, v0}, Lcom/google/android/gms/internal/ads/zzgbs;->zze(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzftl;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgbj;

    return-object p1
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzeym;Lcom/google/android/gms/internal/ads/zzeyk;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    const/4 p3, 0x0

    .line 1
    move-object v0, p3

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcui;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzexx;->zzb(Lcom/google/android/gms/internal/ads/zzeym;Lcom/google/android/gms/internal/ads/zzeyk;Lcom/google/android/gms/internal/ads/zzcui;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic zzd()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
