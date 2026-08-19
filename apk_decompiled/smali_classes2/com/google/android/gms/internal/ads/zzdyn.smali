.class public final synthetic Lcom/google/android/gms/internal/ads/zzdyn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgaz;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzesy;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbuy;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzesy;Lcom/google/android/gms/internal/ads/zzbuy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyn;->zza:Lcom/google/android/gms/internal/ads/zzesy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdyn;->zzb:Lcom/google/android/gms/internal/ads/zzbuy;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    check-cast p1, Landroid/os/Bundle;

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzj(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyn;->zzb:Lcom/google/android/gms/internal/ads/zzbuy;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbuy;->zzm:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdyn;->zza:Lcom/google/android/gms/internal/ads/zzesy;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v1, p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzesy;->zza(Ljava/lang/Object;Landroid/os/Bundle;Z)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
