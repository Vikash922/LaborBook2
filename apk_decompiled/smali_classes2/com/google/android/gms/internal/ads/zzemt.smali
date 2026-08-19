.class public final Lcom/google/android/gms/internal/ads/zzemt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzesv;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgcd;

.field private final zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzgcd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzemt;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzemt;->zza:Lcom/google/android/gms/internal/ads/zzgcd;

    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzemt;)Lcom/google/android/gms/internal/ads/zzemu;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzemt;->zzb:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzemu;->zzc(Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/ads/zzemu;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/16 v0, 0x36

    return v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzems;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzems;-><init>(Lcom/google/android/gms/internal/ads/zzemt;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzemt;->zza:Lcom/google/android/gms/internal/ads/zzgcd;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzgcd;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
