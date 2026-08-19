.class public final Lcom/google/android/gms/internal/ads/zzffb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzffl;

.field private final zzb:Ljava/lang/Object;

.field private final zzc:Ljava/util/List;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzffl;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzffk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffb;->zza:Lcom/google/android/gms/internal/ads/zzffl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzffb;->zzb:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzffb;->zzc:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzffj;
    .locals 9

    .line 1
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzffb;->zzc:Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgbs;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzgbq;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzffa;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzffa;-><init>()V

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbzk;->zzg:Lcom/google/android/gms/internal/ads/zzgcd;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgbq;->zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    new-instance v8, Lcom/google/android/gms/internal/ads/zzffj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzffb;->zza:Lcom/google/android/gms/internal/ads/zzffl;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzffl;->zze(Lcom/google/android/gms/internal/ads/zzffl;)Lcom/google/android/gms/internal/ads/zzgcd;

    move-result-object v2

    .line 3
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzgbq;->zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v6

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzffb;->zzb:Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzffj;-><init>(Lcom/google/android/gms/internal/ads/zzffl;Ljava/lang/Object;Ljava/lang/String;Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/List;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzffk;)V

    return-object v8
.end method
