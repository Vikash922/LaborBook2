.class public final synthetic Lcom/google/android/gms/internal/ads/zzdwt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgaz;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdwu;

.field public final synthetic zzb:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdwu;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwt;->zza:Lcom/google/android/gms/internal/ads/zzdwu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdwt;->zzb:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwt;->zza:Lcom/google/android/gms/internal/ads/zzdwu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwt;->zzb:Ljava/util/List;

    check-cast p1, Ljava/lang/Exception;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdwu;->zza(Lcom/google/android/gms/internal/ads/zzdwu;Ljava/util/List;Ljava/lang/Exception;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
