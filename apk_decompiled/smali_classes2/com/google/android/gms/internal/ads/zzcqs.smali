.class public final synthetic Lcom/google/android/gms/internal/ads/zzcqs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgaz;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcqv;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzgbo;

.field public final synthetic zzc:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcqv;Lcom/google/android/gms/internal/ads/zzgbo;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqs;->zza:Lcom/google/android/gms/internal/ads/zzcqv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqs;->zzb:Lcom/google/android/gms/internal/ads/zzgbo;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcqs;->zzc:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqs;->zza:Lcom/google/android/gms/internal/ads/zzcqv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqs;->zzb:Lcom/google/android/gms/internal/ads/zzgbo;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcqs;->zzc:Lcom/google/common/util/concurrent/ListenableFuture;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcqg;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzcqv;->zza(Lcom/google/android/gms/internal/ads/zzcqv;Lcom/google/android/gms/internal/ads/zzgbo;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzcqg;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
