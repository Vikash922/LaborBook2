.class public final Lcom/google/android/gms/internal/ads/zzfio;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/util/concurrent/Executor;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgce;

.field private final zzd:Lcom/google/android/gms/ads/internal/util/client/zzu;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfig;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfgq;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzgce;Lcom/google/android/gms/ads/internal/util/client/zzu;Lcom/google/android/gms/internal/ads/zzfig;Lcom/google/android/gms/internal/ads/zzfgq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfio;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfio;->zzb:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfio;->zzc:Lcom/google/android/gms/internal/ads/zzgce;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfio;->zzd:Lcom/google/android/gms/ads/internal/util/client/zzu;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfio;->zze:Lcom/google/android/gms/internal/ads/zzfig;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfio;->zzf:Lcom/google/android/gms/internal/ads/zzfgq;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzfio;Ljava/lang/String;)Lcom/google/android/gms/ads/internal/util/client/zzt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfio;->zzd:Lcom/google/android/gms/ads/internal/util/client/zzu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzu;->zza(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/util/client/zzt;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzfio;)Lcom/google/android/gms/ads/internal/util/client/zzu;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfio;->zzd:Lcom/google/android/gms/ads/internal/util/client/zzu;

    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzfio;)Lcom/google/android/gms/internal/ads/zzfgq;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfio;->zzf:Lcom/google/android/gms/internal/ads/zzfgq;

    return-object p0
.end method


# virtual methods
.method public final zzd(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;Lcom/google/android/gms/internal/ads/zzfgn;Lcom/google/android/gms/internal/ads/zzcxm;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfgq;->zza()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeb;->zzd:Lcom/google/android/gms/internal/ads/zzbds;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbds;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfio;->zza:Landroid/content/Context;

    const/16 v1, 0xe

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfgb;->zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfgc;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzfgc;->zzi()Lcom/google/android/gms/internal/ads/zzfgc;

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfio;->zzd:Lcom/google/android/gms/ads/internal/util/client/zzu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfio;->zzc:Lcom/google/android/gms/internal/ads/zzgce;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfio;->zze:Lcom/google/android/gms/internal/ads/zzfig;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/util/client/zzv;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzx;

    move-result-object p2

    new-instance v4, Lcom/google/android/gms/internal/ads/zzfif;

    invoke-direct {v4, p2, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzfif;-><init>(Lcom/google/android/gms/ads/internal/util/client/zzx;Lcom/google/android/gms/ads/internal/util/client/zzu;Lcom/google/android/gms/internal/ads/zzgce;Lcom/google/android/gms/internal/ads/zzfig;)V

    .line 5
    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/ads/zzfif;->zzd(Ljava/lang/String;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfio;->zzc:Lcom/google/android/gms/internal/ads/zzgce;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfim;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfim;-><init>(Lcom/google/android/gms/internal/ads/zzfio;Ljava/lang/String;)V

    .line 4
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzgce;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 5
    :goto_0
    new-instance p2, Lcom/google/android/gms/internal/ads/zzfin;

    invoke-direct {p2, p0, v1, p3, p4}, Lcom/google/android/gms/internal/ads/zzfin;-><init>(Lcom/google/android/gms/internal/ads/zzfio;Lcom/google/android/gms/internal/ads/zzfgc;Lcom/google/android/gms/internal/ads/zzfgn;Lcom/google/android/gms/internal/ads/zzcxm;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfio;->zzb:Ljava/util/concurrent/Executor;

    .line 6
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgbs;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgbo;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final zze(Ljava/util/List;Lcom/google/android/gms/ads/internal/util/client/zzv;)V
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

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p2, v1, v1}, Lcom/google/android/gms/internal/ads/zzfio;->zzd(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;Lcom/google/android/gms/internal/ads/zzfgn;Lcom/google/android/gms/internal/ads/zzcxm;)V

    goto :goto_0

    :cond_0
    return-void
.end method
