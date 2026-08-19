.class final Lcom/google/android/gms/internal/ads/zzeyh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfdc;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcui;

.field private final zzc:Ljava/util/concurrent/Executor;

.field private zzd:Lcom/google/android/gms/internal/ads/zzeyf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfdc;Lcom/google/android/gms/internal/ads/zzcui;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeyh;->zza:Lcom/google/android/gms/internal/ads/zzfdc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeyh;->zzb:Lcom/google/android/gms/internal/ads/zzcui;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeyh;->zzc:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzeyh;)Lcom/google/android/gms/internal/ads/zzeyf;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeyh;->zzd:Lcom/google/android/gms/internal/ads/zzeyf;

    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzeyh;)Lcom/google/android/gms/internal/ads/zzfdm;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeyh;->zze()Lcom/google/android/gms/internal/ads/zzfdm;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzeyh;Lcom/google/android/gms/internal/ads/zzeyf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeyh;->zzd:Lcom/google/android/gms/internal/ads/zzeyf;

    return-void
.end method

.method private final zze()Lcom/google/android/gms/internal/ads/zzfdm;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeyh;->zzb:Lcom/google/android/gms/internal/ads/zzcui;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcui;->zzf()Lcom/google/android/gms/internal/ads/zzfbp;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfbp;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzfbp;->zzf:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfbp;->zzj:Lcom/google/android/gms/ads/internal/client/zzx;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeyh;->zza:Lcom/google/android/gms/internal/ads/zzfdc;

    .line 2
    invoke-interface {v3, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzfdc;->zzc(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzx;)Lcom/google/android/gms/internal/ads/zzfdm;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final zzc()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeyh;->zzd:Lcom/google/android/gms/internal/ads/zzeyf;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbep;->zza:Lcom/google/android/gms/internal/ads/zzbds;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbds;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeyf;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeyh;->zze()Lcom/google/android/gms/internal/ads/zzfdm;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzeyf;-><init>(Lcom/google/android/gms/internal/ads/zzbuy;Lcom/google/android/gms/internal/ads/zzfdm;Lcom/google/android/gms/internal/ads/zzeyg;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeyh;->zzd:Lcom/google/android/gms/internal/ads/zzeyf;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgbs;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeyh;->zzb:Lcom/google/android/gms/internal/ads/zzcui;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeyh;->zza:Lcom/google/android/gms/internal/ads/zzfdc;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcui;->zzb()Lcom/google/android/gms/internal/ads/zzcrk;

    move-result-object v0

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzfdc;->zza()Lcom/google/android/gms/internal/ads/zzfdj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcrk;->zzf(Lcom/google/android/gms/internal/ads/zzfdj;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgbj;->zzE(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzgbj;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeye;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzeye;-><init>(Lcom/google/android/gms/internal/ads/zzeyh;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeyh;->zzc:Ljava/util/concurrent/Executor;

    .line 6
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgbs;->zzm(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzftl;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgbj;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeyd;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzeyd;-><init>(Lcom/google/android/gms/internal/ads/zzeyh;)V

    const-class v3, Lcom/google/android/gms/internal/ads/zzdxq;

    .line 7
    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzgbs;->zze(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzftl;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgbj;

    .line 3
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzeyc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzeyc;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeyh;->zzc:Ljava/util/concurrent/Executor;

    .line 8
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgbs;->zzm(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzftl;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 9
    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgbs;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
