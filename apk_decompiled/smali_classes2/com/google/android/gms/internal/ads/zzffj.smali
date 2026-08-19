.class public final Lcom/google/android/gms/internal/ads/zzffj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzffl;

.field private final zzb:Ljava/lang/Object;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/common/util/concurrent/ListenableFuture;

.field private final zze:Ljava/util/List;

.field private final zzf:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzffl;Ljava/lang/Object;Ljava/lang/String;Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/List;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffj;->zza:Lcom/google/android/gms/internal/ads/zzffl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzb:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzd:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzffj;->zze:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzf:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzffl;Ljava/lang/Object;Ljava/lang/String;Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/List;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzffk;)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzffj;-><init>(Lcom/google/android/gms/internal/ads/zzffl;Ljava/lang/Object;Ljava/lang/String;Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/List;Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfez;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfez;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzb:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzc:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzffj;->zza:Lcom/google/android/gms/internal/ads/zzffl;

    .line 2
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzffl;->zzf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzf:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfez;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/google/common/util/concurrent/ListenableFuture;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzffj;->zza:Lcom/google/android/gms/internal/ads/zzffl;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzffl;->zzc(Lcom/google/android/gms/internal/ads/zzffl;)Lcom/google/android/gms/internal/ads/zzffm;

    move-result-object v1

    .line 3
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzffm;->zza(Lcom/google/android/gms/internal/ads/zzfez;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzd:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzffh;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzffh;-><init>(Lcom/google/android/gms/internal/ads/zzffj;Lcom/google/android/gms/internal/ads/zzfez;)V

    .line 4
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbzk;->zzg:Lcom/google/android/gms/internal/ads/zzgcd;

    .line 5
    invoke-interface {v1, v2, v3}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzffi;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzffi;-><init>(Lcom/google/android/gms/internal/ads/zzffj;Lcom/google/android/gms/internal/ads/zzfez;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbzk;->zzg:Lcom/google/android/gms/internal/ads/zzgcd;

    .line 6
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgbs;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgbo;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public final zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzffj;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zza:Lcom/google/android/gms/internal/ads/zzffl;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzffj;->zza()Lcom/google/android/gms/internal/ads/zzfez;

    move-result-object v1

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzffl;->zzb(Ljava/lang/Object;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzffj;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgaz;)Lcom/google/android/gms/internal/ads/zzffj;
    .locals 8

    .line 1
    new-instance v7, Lcom/google/android/gms/internal/ads/zzffj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzffj;->zza:Lcom/google/android/gms/internal/ads/zzffl;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzffl;->zze(Lcom/google/android/gms/internal/ads/zzffl;)Lcom/google/android/gms/internal/ads/zzgcd;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzf:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v2, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgbs;->zzf(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgaz;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v6

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzb:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzc:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzd:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzffj;->zze:Ljava/util/List;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzffj;-><init>(Lcom/google/android/gms/internal/ads/zzffl;Ljava/lang/Object;Ljava/lang/String;Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/List;Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-object v7
.end method

.method public final zzd(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzffj;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzffg;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzffg;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbzk;->zzg:Lcom/google/android/gms/internal/ads/zzgcd;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzffj;->zzg(Lcom/google/android/gms/internal/ads/zzgaz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzffj;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzfex;)Lcom/google/android/gms/internal/ads/zzffj;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfff;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzfff;-><init>(Lcom/google/android/gms/internal/ads/zzfex;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzffj;->zzf(Lcom/google/android/gms/internal/ads/zzgaz;)Lcom/google/android/gms/internal/ads/zzffj;

    move-result-object p1

    return-object p1
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzgaz;)Lcom/google/android/gms/internal/ads/zzffj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zza:Lcom/google/android/gms/internal/ads/zzffl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzffl;->zze(Lcom/google/android/gms/internal/ads/zzffl;)Lcom/google/android/gms/internal/ads/zzgcd;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzffj;->zzg(Lcom/google/android/gms/internal/ads/zzgaz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzffj;

    move-result-object p1

    return-object p1
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzgaz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzffj;
    .locals 8

    .line 1
    new-instance v7, Lcom/google/android/gms/internal/ads/zzffj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzf:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzffj;->zza:Lcom/google/android/gms/internal/ads/zzffl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzb:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzc:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzd:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzffj;->zze:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgbs;->zzn(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgaz;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzffj;-><init>(Lcom/google/android/gms/internal/ads/zzffl;Ljava/lang/Object;Ljava/lang/String;Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/List;Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-object v7
.end method

.method public final zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffj;
    .locals 8

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzd:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzffj;->zze:Ljava/util/List;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzf:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzffj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzffj;->zza:Lcom/google/android/gms/internal/ads/zzffl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzb:Ljava/lang/Object;

    move-object v0, v7

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzffj;-><init>(Lcom/google/android/gms/internal/ads/zzffl;Ljava/lang/Object;Ljava/lang/String;Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/List;Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-object v7
.end method

.method public final zzi(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/internal/ads/zzffj;
    .locals 8

    .line 1
    new-instance v7, Lcom/google/android/gms/internal/ads/zzffj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzffj;->zza:Lcom/google/android/gms/internal/ads/zzffl;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzffl;->zzg(Lcom/google/android/gms/internal/ads/zzffl;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzf:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v2, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzgbs;->zzo(Lcom/google/common/util/concurrent/ListenableFuture;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v6

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzb:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzc:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzffj;->zzd:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzffj;->zze:Ljava/util/List;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzffj;-><init>(Lcom/google/android/gms/internal/ads/zzffl;Ljava/lang/Object;Ljava/lang/String;Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/List;Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-object v7
.end method
