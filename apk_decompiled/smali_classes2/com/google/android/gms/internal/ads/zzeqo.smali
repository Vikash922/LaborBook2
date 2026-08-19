.class public final Lcom/google/android/gms/internal/ads/zzeqo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzesv;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgcd;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdud;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgcd;Lcom/google/android/gms/internal/ads/zzdud;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeqo;->zza:Lcom/google/android/gms/internal/ads/zzgcd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeqo;->zzb:Lcom/google/android/gms/internal/ads/zzdud;

    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzeqo;)Lcom/google/android/gms/internal/ads/zzeqp;
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeqo;->zzb:Lcom/google/android/gms/internal/ads/zzdud;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzeqp;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdud;->zzc()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdud;->zzr()Z

    move-result v2

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzt()Lcom/google/android/gms/ads/internal/util/zzay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/zzay;->zzl()Z

    move-result v3

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdud;->zzp()Z

    move-result v4

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdud;->zzs()Z

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzeqp;-><init>(Ljava/lang/String;ZZZZ)V

    return-object v6
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/16 v0, 0x17

    return v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeqn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeqn;-><init>(Lcom/google/android/gms/internal/ads/zzeqo;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeqo;->zza:Lcom/google/android/gms/internal/ads/zzgcd;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzgcd;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
