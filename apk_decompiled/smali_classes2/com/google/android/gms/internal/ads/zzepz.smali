.class public final Lcom/google/android/gms/internal/ads/zzepz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzesv;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgcd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgcd;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepz;->zzb:Lcom/google/android/gms/internal/ads/zzgcd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzepz;->zza:Landroid/content/Context;

    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzepz;)Lcom/google/android/gms/internal/ads/zzeqa;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeqa;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzepz;->zza:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzt(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeqa;-><init>(Ljava/lang/Integer;)V

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/16 v0, 0x39

    return v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzepy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzepy;-><init>(Lcom/google/android/gms/internal/ads/zzepz;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzepz;->zzb:Lcom/google/android/gms/internal/ads/zzgcd;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzgcd;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
