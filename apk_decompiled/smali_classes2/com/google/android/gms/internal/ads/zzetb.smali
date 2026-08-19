.class public final Lcom/google/android/gms/internal/ads/zzetb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzesv;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgcd;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgcd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzetb;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzetb;->zzb:Lcom/google/android/gms/internal/ads/zzgcd;

    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzetb;)Lcom/google/android/gms/internal/ads/zzetc;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzetb;->zza:Landroid/content/Context;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzetc;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbbs;->zzb(Landroid/content/Context;)I

    move-result v1

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbbs;->zza(Landroid/content/Context;)I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzetc;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/16 v0, 0x3b

    return v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbea;->zzb:Lcom/google/android/gms/internal/ads/zzbds;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbds;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzetb;->zzb:Lcom/google/android/gms/internal/ads/zzgcd;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeta;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzeta;-><init>(Lcom/google/android/gms/internal/ads/zzetb;)V

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgcd;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzetc;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzetc;-><init>(II)V

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgbs;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
