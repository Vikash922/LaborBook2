.class public final Lcom/google/android/gms/internal/ads/zzdvo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgcd;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgcd;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdwx;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzhes;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgcd;Lcom/google/android/gms/internal/ads/zzgcd;Lcom/google/android/gms/internal/ads/zzdwx;Lcom/google/android/gms/internal/ads/zzhes;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdvo;->zza:Lcom/google/android/gms/internal/ads/zzgcd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdvo;->zzb:Lcom/google/android/gms/internal/ads/zzgcd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdvo;->zzc:Lcom/google/android/gms/internal/ads/zzdwx;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdvo;->zzd:Lcom/google/android/gms/internal/ads/zzhes;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzdvo;Lcom/google/android/gms/internal/ads/zzbuy;)Lcom/google/android/gms/internal/ads/zzdxr;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdvo;->zzc:Lcom/google/android/gms/internal/ads/zzdwx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdwx;->zza(Lcom/google/android/gms/internal/ads/zzbuy;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbci;->zzfF:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdxr;

    return-object p0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdvo;Lcom/google/android/gms/internal/ads/zzbuy;ILcom/google/android/gms/internal/ads/zzdxq;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zzbuy;->zzm:Landroid/os/Bundle;

    if-eqz p3, :cond_0

    const-string v0, "ls"

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdvo;->zzd:Lcom/google/android/gms/internal/ads/zzhes;

    .line 2
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzhes;->zzb()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzdyu;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzdyu;->zzc(Lcom/google/android/gms/internal/ads/zzbuy;I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/internal/ads/zzdvk;

    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/ads/zzdvk;-><init>(Lcom/google/android/gms/internal/ads/zzbuy;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdvo;->zzb:Lcom/google/android/gms/internal/ads/zzgcd;

    .line 3
    invoke-static {p2, p3, p0}, Lcom/google/android/gms/internal/ads/zzgbs;->zzn(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgaz;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/ads/zzbuy;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbuy;->zzd:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzD(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdxq;

    const/4 v1, 0x1

    .line 3
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdxq;-><init>(I)V

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgbs;->zzg(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvo;->zza:Lcom/google/android/gms/internal/ads/zzgcd;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdvl;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzdvl;-><init>(Lcom/google/android/gms/internal/ads/zzdvo;Lcom/google/android/gms/internal/ads/zzbuy;)V

    .line 5
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgcd;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdvm;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzdvm;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdvo;->zzb:Lcom/google/android/gms/internal/ads/zzgcd;

    const-class v3, Ljava/util/concurrent/ExecutionException;

    .line 6
    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzgbs;->zzf(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgaz;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 7
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdvn;

    invoke-direct {v2, p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdvn;-><init>(Lcom/google/android/gms/internal/ads/zzdvo;Lcom/google/android/gms/internal/ads/zzbuy;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdvo;->zzb:Lcom/google/android/gms/internal/ads/zzgcd;

    const-class v1, Lcom/google/android/gms/internal/ads/zzdxq;

    .line 8
    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzgbs;->zzf(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgaz;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
