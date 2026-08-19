.class public final Lcom/google/android/gms/internal/ads/zzboj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbnm;

.field private zzb:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbnm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzboj;->zza:Lcom/google/android/gms/internal/ads/zzbnm;

    return-void
.end method

.method private final zzd()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboj;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbzp;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbzp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzboj;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzboj;->zza:Lcom/google/android/gms/internal/ads/zzbnm;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbnm;->zzb(Lcom/google/android/gms/internal/ads/zzauy;)Lcom/google/android/gms/internal/ads/zzbng;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbog;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzbog;-><init>(Lcom/google/android/gms/internal/ads/zzbzp;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzboh;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/zzboh;-><init>(Lcom/google/android/gms/internal/ads/zzbzp;)V

    .line 4
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbzw;->zzj(Lcom/google/android/gms/internal/ads/zzbzt;Lcom/google/android/gms/internal/ads/zzbzr;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbnt;Lcom/google/android/gms/internal/ads/zzbns;)Lcom/google/android/gms/internal/ads/zzbom;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzboj;->zzd()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbom;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboj;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    const-string v1, "google.afma.activeView.handleUpdate"

    invoke-direct {p1, v0, v1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbom;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbnt;Lcom/google/android/gms/internal/ads/zzbns;)V

    return-object p1
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjj;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzboj;->zzd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboj;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzboi;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzboi;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjj;)V

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbzk;->zzg:Lcom/google/android/gms/internal/ads/zzgcd;

    .line 3
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgbs;->zzn(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgaz;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzboj;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public final zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjj;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboj;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbof;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzbof;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjj;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbzk;->zzg:Lcom/google/android/gms/internal/ads/zzgcd;

    .line 2
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgbs;->zzm(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzftl;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzboj;->zzb:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method
