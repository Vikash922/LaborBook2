.class public Lcom/google/android/gms/internal/ads/zzdee;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdfm;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcel;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdfm;Lcom/google/android/gms/internal/ads/zzcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdee;->zza:Lcom/google/android/gms/internal/ads/zzdfm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdee;->zzb:Lcom/google/android/gms/internal/ads/zzcel;

    return-void
.end method


# virtual methods
.method public final zza()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdee;->zzb:Lcom/google/android/gms/internal/ads/zzcel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcel;->zzG()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdee;->zzb:Lcom/google/android/gms/internal/ads/zzcel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcel;->zzG()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzcel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdee;->zzb:Lcom/google/android/gms/internal/ads/zzcel;

    return-object v0
.end method

.method public final zzd(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdcu;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdcu;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzded;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdee;->zzb:Lcom/google/android/gms/internal/ads/zzcel;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzded;-><init>(Lcom/google/android/gms/internal/ads/zzcel;)V

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdcu;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzdfm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdee;->zza:Lcom/google/android/gms/internal/ads/zzdfm;

    return-object v0
.end method

.method public zzf(Lcom/google/android/gms/internal/ads/zzctx;)Ljava/util/Set;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbzk;->zzg:Lcom/google/android/gms/internal/ads/zzgcd;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdcu;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzdcu;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public zzg(Lcom/google/android/gms/internal/ads/zzctx;)Ljava/util/Set;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbzk;->zzg:Lcom/google/android/gms/internal/ads/zzgcd;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdcu;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzdcu;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
