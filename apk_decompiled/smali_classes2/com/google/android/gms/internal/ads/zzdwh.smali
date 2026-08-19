.class public final synthetic Lcom/google/android/gms/internal/ads/zzdwh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgaz;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdwi;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbuy;

.field public final synthetic zzc:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdwi;Lcom/google/android/gms/internal/ads/zzbuy;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwh;->zza:Lcom/google/android/gms/internal/ads/zzdwi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdwh;->zzb:Lcom/google/android/gms/internal/ads/zzbuy;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzdwh;->zzc:I

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwh;->zza:Lcom/google/android/gms/internal/ads/zzdwi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwh;->zzb:Lcom/google/android/gms/internal/ads/zzbuy;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdwh;->zzc:I

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdwi;->zzb(Lcom/google/android/gms/internal/ads/zzdwi;Lcom/google/android/gms/internal/ads/zzbuy;ILjava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
