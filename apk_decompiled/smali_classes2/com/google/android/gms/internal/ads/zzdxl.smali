.class public final synthetic Lcom/google/android/gms/internal/ads/zzdxl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgaz;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzhfn;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbuy;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzhfn;Lcom/google/android/gms/internal/ads/zzbuy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxl;->zza:Lcom/google/android/gms/internal/ads/zzhfn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdxl;->zzb:Lcom/google/android/gms/internal/ads/zzbuy;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdvg;

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxl;->zza:Lcom/google/android/gms/internal/ads/zzhfn;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzhfn;->zzb()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdxp;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxl;->zzb:Lcom/google/android/gms/internal/ads/zzbuy;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzdxp;->zzc(Lcom/google/android/gms/internal/ads/zzbuy;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
