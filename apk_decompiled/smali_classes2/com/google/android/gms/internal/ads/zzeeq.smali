.class public final synthetic Lcom/google/android/gms/internal/ads/zzeeq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgaz;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzeeu;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzdmt;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeeu;Lcom/google/android/gms/internal/ads/zzdmt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeeq;->zza:Lcom/google/android/gms/internal/ads/zzeeu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeeq;->zzb:Lcom/google/android/gms/internal/ads/zzdmt;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeeq;->zza:Lcom/google/android/gms/internal/ads/zzeeu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeeq;->zzb:Lcom/google/android/gms/internal/ads/zzdmt;

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzeeu;->zzf(Lcom/google/android/gms/internal/ads/zzeeu;Lcom/google/android/gms/internal/ads/zzdmt;Lorg/json/JSONObject;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
