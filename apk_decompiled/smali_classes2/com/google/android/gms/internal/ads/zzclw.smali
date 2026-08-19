.class final Lcom/google/android/gms/internal/ads/zzclw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgbo;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfio;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Lcom/google/android/gms/ads/internal/util/client/zzv;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzclx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzclx;Lcom/google/android/gms/internal/ads/zzfio;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclw;->zza:Lcom/google/android/gms/internal/ads/zzfio;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzv;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzd:Lcom/google/android/gms/internal/ads/zzclx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzd:Lcom/google/android/gms/internal/ads/zzclx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzclx;->zzf(Lcom/google/android/gms/internal/ads/zzclx;)Lcom/google/android/gms/internal/ads/zzgcd;

    move-result-object v0

    new-instance v7, Lcom/google/android/gms/internal/ads/zzclu;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzclw;->zza:Lcom/google/android/gms/internal/ads/zzfio;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzb:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzv;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzclu;-><init>(Lcom/google/android/gms/internal/ads/zzclw;Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzfio;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;)V

    invoke-interface {v0, v7}, Lcom/google/android/gms/internal/ads/zzgcd;->zza(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclw;->zza:Lcom/google/android/gms/internal/ads/zzfio;

    check-cast p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzd:Lcom/google/android/gms/internal/ads/zzclx;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzclx;->zzf(Lcom/google/android/gms/internal/ads/zzclx;)Lcom/google/android/gms/internal/ads/zzgcd;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzclv;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzv;

    invoke-direct {v2, v0, p1, v3}, Lcom/google/android/gms/internal/ads/zzclv;-><init>(Lcom/google/android/gms/internal/ads/zzfio;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;)V

    .line 2
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzgcd;->zza(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method
