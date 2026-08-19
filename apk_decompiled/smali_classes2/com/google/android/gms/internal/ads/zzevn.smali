.class public final Lcom/google/android/gms/internal/ads/zzevn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzesv;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbza;

.field private final zzb:Z

.field private final zzc:Z

.field private final zzd:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zze:Lcom/google/android/gms/internal/ads/zzgcd;

.field private final zzf:I

.field private final zzg:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbza;ZZLcom/google/android/gms/internal/ads/zzbyp;Lcom/google/android/gms/internal/ads/zzgcd;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzevn;->zza:Lcom/google/android/gms/internal/ads/zzbza;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzevn;->zzb:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzevn;->zzc:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzevn;->zze:Lcom/google/android/gms/internal/ads/zzgcd;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzevn;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    iput p8, p0, Lcom/google/android/gms/internal/ads/zzevn;->zzf:I

    iput p9, p0, Lcom/google/android/gms/internal/ads/zzevn;->zzg:I

    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzevn;Ljava/lang/Exception;)Lcom/google/android/gms/internal/ads/zzevo;
    .locals 1

    .line 1
    const-string v0, "TrustlessTokenSignal"

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzevn;->zza:Lcom/google/android/gms/internal/ads/zzbza;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzevo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzevo;-><init>(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzgX:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzevn;->zzc:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzevo;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzevo;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgbs;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 1
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzevn;->zzg:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzgZ:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzha:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzevn;->zzf:I

    .line 7
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    .line 13
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzevn;->zzb:Z

    :goto_1
    if-nez v0, :cond_3

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzevo;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzevo;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgbs;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 8
    :cond_3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgbs;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzevl;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzevl;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzevn;->zze:Lcom/google/android/gms/internal/ads/zzgcd;

    .line 9
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgbs;->zzm(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzftl;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 10
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbew;->zzb:Lcom/google/android/gms/internal/ads/zzbds;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbds;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzevn;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 12
    invoke-static {v0, v3, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzgbs;->zzo(Lcom/google/common/util/concurrent/ListenableFuture;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzevm;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzevm;-><init>(Lcom/google/android/gms/internal/ads/zzevn;)V

    const-class v3, Ljava/lang/Exception;

    .line 13
    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzgbs;->zze(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzftl;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzevo;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzevo;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgbs;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
